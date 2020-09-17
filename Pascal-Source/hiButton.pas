unit hiButton;

interface

uses Windows,Kol,Share,Win;

{$I share.inc}

type
 THIButton = class(THIWin)
   private
     procedure _OnClick(Obj:PObj);
   public
     _event_onClick:THI_Event;
     _prop_Data:TData;
     _prop_Caption:string;
     _prop_DefaultBtn:boolean;

     procedure Init; override;
     procedure _work_doCaption(var _Data:TData; Index:word);
 end;

implementation

procedure THIButton.Init;
begin
   Control := NewButton(FParent,_prop_Caption);
   Control.OnClick := _OnClick;
   Control.DefaultBtn := _prop_DefaultBtn;
   Control.Style := Control.Style or BS_MULTILINE;
   inherited;
end;

procedure THIButton._work_doCaption;
begin
   Control.Caption := ToString(_Data);
end;

procedure THIButton._OnClick;
begin
  _hi_OnEvent_(_event_onClick,_prop_Data);
end;

end.