unit hiCheckBox;

interface

uses Windows,Kol,Share,Win;

{$I share.inc}

type
  THICheckBox = class(THIWin)
   private
     procedure _OnClick(Obj:PObj);
     procedure SetCaption(const Value:string);
     procedure SetChecked(Value:byte);
   public
    _event_onCheck:THI_Event;
    _event_onClick:THI_Event;

    constructor Create(Parent:PControl);
    procedure _work_doCheck(var _Data:TData; Index:word);
    procedure _work_doCaption(var _Data:TData; Index:word);
    procedure _var_Checked(var _Data:TData; Index:word);
    property _prop_Checked:byte write SetChecked;
    property _prop_Caption:string write SetCaption;
  end;

implementation

constructor THICheckBox.Create;
begin
   inherited Create(Parent);
   Control := NewCheckbox(Parent,'CheckBox');
   Control.OnClick := _OnClick;
end;

procedure THICheckBox._work_doCheck;
begin
   Control.Checked := ReadBool(_Data);
   _hi_onEvent(_event_onCheck,byte(Control.Checked ));
end;

procedure THICheckBox._work_doCaption;
begin
   Control.Caption := ToString(_Data);
end;

procedure THICheckBox._var_Checked;
begin
   dtInteger(_Data,integer(Control.Checked));
end;

procedure THICheckBox.SetCaption;
begin
   Control.Caption := Value;
end;

procedure THICheckBox.SetChecked;
begin
   Control.Checked := Value = 0;
end;

procedure THICheckBox._OnClick;
begin
   _hi_onEvent(_event_onCheck,byte(Control.Checked ));
   _hi_onEvent(_event_onClick,byte(Control.Checked ));
end;

end.
