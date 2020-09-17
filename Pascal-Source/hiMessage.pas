unit hiMessage;

interface

uses Kol,Share,Windows,Debug;

type
  THIMessage = class(TDebug)
   private
   public
    _prop_Message:string;
    _prop_Caption:string;
    _prop_Type:integer;
    _prop_Icon:integer;
    _prop_DefButton:integer;

    _data_Message:THI_Event;
    _data_Caption:THI_Event;
//    _data_Type:THI_Event;
//    _data_Icon:THI_Event;
//    _data_DefButton:THI_Event;
    
    _event_onMessage:THI_Event;
    _event_onOK:THI_Event;
    _event_onCANCEL:THI_Event;
    _event_onABORT:THI_Event;
    _event_onRETRY:THI_Event;
    _event_onIGNORE:THI_Event;
    _event_onYES:THI_Event;
    _event_onNO:THI_Event;

    procedure _work_doMessage(var _Data:TData; Index:word);
    procedure _work_doType(var _Data:TData; Index:word);
    procedure _work_doIcon(var _Data:TData; Index:word);
    procedure _work_doDefButton(var _Data:TData; Index:word);            
  end;

implementation

procedure THIMessage._work_doMessage;
var
  Mes,Cap:string;
  Res,Tp{,mType,mIcon,mDefButton}:integer;
begin
   Mes := ReadString(_Data,_data_Message,_prop_Message);
   Cap := ReadString(_Data,_data_Caption,_prop_Caption);
//   mType:=ReadInteger(_Data,_data_Type,_prop_Type);
//   mIcon:=ReadInteger(_Data,_data_Icon,_prop_Icon);
//   mDefButton:=ReadInteger(_Data,_data_DefButton,_prop_DefButton);
   Tp := 0;
   case _prop_Type of
     0: Tp := MB_OK;
     1: Tp := MB_OKCANCEL;
     2: Tp := MB_YESNO;
     3: Tp := MB_YESNOCANCEL;
     4: Tp := MB_RETRYCANCEL;
     5: Tp := MB_ABORTRETRYIGNORE;
   end;
   case _prop_Icon of
     0:;
     1: Tp := Tp or MB_ICONHAND;
     2: Tp := Tp or MB_ICONQUESTION;
     3: Tp := Tp or MB_ICONEXCLAMATION;
     4: Tp := Tp or MB_ICONASTERISK;
   end;
   case _prop_DefButton of
     0: Tp := Tp or MB_DEFBUTTON1;
     1: Tp := Tp or MB_DEFBUTTON2;
     2: Tp := Tp or MB_DEFBUTTON3;
   end;
   Res := MessageBox(ReadHandle,PChar(Mes),PChar(Cap),Tp);
   _hi_onEvent(_event_onMessage,Res);
   case Res of
    IDOK:     _hi_CreateEvent(_Data,@_event_onOK);
    IDCANCEL: _hi_CreateEvent(_Data,@_event_onCANCEL);
    IDABORT:  _hi_CreateEvent(_Data,@_event_onABORT);
    IDRETRY:  _hi_CreateEvent(_Data,@_event_onRETRY);
    IDIGNORE: _hi_CreateEvent(_Data,@_event_onIGNORE);
    IDYES:    _hi_CreateEvent(_Data,@_event_onYES);
    IDNO:     _hi_CreateEvent(_Data,@_event_onNO);
   end
end;

procedure THIMessage._work_doType;
begin
  _prop_Type := ToInteger(_Data);
end;

procedure THIMessage._work_doIcon;
begin
  _prop_Icon := ToInteger(_Data);
end;

procedure THIMessage._work_doDefButton; 
begin
  _prop_DefButton := ToInteger(_Data);
end;

end.