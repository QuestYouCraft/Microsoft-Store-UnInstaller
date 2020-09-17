unit hiLabel;

interface

uses Kol,Share,Win;

type
 THILabel = class(THIWin)
   private
     procedure SetAutoSize(Value:boolean);
     procedure SetAlignment(Value:TTextAlign);
     procedure _OnClick( Sender: PObj );
   protected
     procedure _onMouseEnter( Sender: PObj ); override;
     procedure _onMouseLeave( Sender: PObj ); override;
   public
     _event_OnClick:THI_Event;
     _prop_ColorHover:integer;
     _prop_Underline:boolean;
     _prop_Caption:string;
     _prop_CaptionOnClick:boolean;
     _data_Text:THI_Event;

     procedure _work_DoText(var Data:TData; Index:word);
     procedure _work_doAlignment(var Data:TData; Index:word);
     procedure _var_Caption(var Data:TData; Index:word);

     constructor Create(Parent:PControl);
     procedure Init; override;
     property _prop_AutoSize:boolean write SetAutoSize;
     property _prop_Alignment:TTextAlign write SetAlignment;
 end;

implementation

constructor THILabel.Create;
begin
   inherited Create(Parent);
   Control := NewLabel(Parent,'');
   Control.OnClick := _OnClick;
end;

procedure THILabel.Init;
begin
   inherited;
   Control.Caption := _prop_Caption;
   if (_prop_ColorHover <> 0) or _prop_Underline then
    begin
     Control.onMouseEnter := _OnMouseEnter;
     Control.onMouseLeave := _OnMouseLeave;
    end;
end;

procedure THILabel._OnClick;
begin
   if _prop_CaptionOnClick then
     _hi_OnEvent(_event_OnClick, Control.Caption)
   else  
     _hi_OnEvent(_event_OnClick);
end;

procedure THILabel._OnMouseEnter;
begin
   inherited;
   if _prop_ColorHover <> 0 then
      Control.Font.Color := _prop_ColorHover;
//   if _prop_Cursor <> 0 then
//      Control.Cursor := _prop_Cursor;
   if _prop_Underline then
      Control.Font.FontStyle := Control.Font.FontStyle + [fsUnderline];
end;

procedure THILabel._OnMouseLeave;
begin
   inherited;
   if _prop_ColorHover <> 0 then
      Control.Font.Color := _prop_Font.Color;
//   if _prop_Cursor <> 0 then
//      Control.Cursor := crDefault;
   if _prop_Underline then
      Control.Font.FontStyle := Control.Font.FontStyle - [fsUnderline];
end;

procedure THILabel._work_DoText;
begin
   Control.Caption := ReadString(Data,_data_Text);
end;

procedure THILabel._work_doAlignment;
begin
  Control.TextAlign := TTextAlign(ToInteger(Data));
end;

procedure THILabel.SetAlignment;
begin
  Control.TextAlign := Value;
end;

procedure THILabel.SetAutoSize;
begin
   Control.AutoSize( Value );
end;

procedure THILabel._var_Caption;
begin
   dtString(Data,Control.Caption);
end;

end.
