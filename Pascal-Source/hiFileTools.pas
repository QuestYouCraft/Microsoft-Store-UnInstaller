unit hiFileTools;

interface

uses Kol,Share,windows,Debug;

type
  THIFileTools = class(TDebug)
   private
   public
    _prop_DelToRecycle:byte;
    _prop_FileName:string;
    _prop_NewFileName:string;        
    _data_NewFileName:THI_Event;
    _data_FileName:THI_Event;
    _event_onEnd:THI_Event;

    procedure _work_doMove(var _Data:TData; Index:word);
    procedure _work_doCopy(var _Data:TData; Index:word);
    procedure _work_doDelete(var _Data:TData; Index:word);
    procedure _work_doFileExists(var _Data:TData; Index:word);
  end;

implementation

uses hiStr_Enum;

procedure THIFileTools._work_doMove;
var
   F1,F2:string;
begin
   F1 := ReadString(_Data,_data_FileName,_prop_FileName);
   F2 := ReadString(_Data,_data_NewFileName,_prop_NewFileName);
   MoveFile(PChar(F1),PChar(F2));
   if FileExists(F2) then
     _hi_CreateEvent(_Data,@_event_onEnd);
end;

procedure THIFileTools._work_doCopy;
var
   F1,F2:string;
begin
   F1 := ReadString(_Data,_data_FileName,_prop_FileName);
   F2 := ReadString(_Data,_data_NewFileName,_prop_NewFileName);
   CopyFile(PChar(F1),PChar(F2),false);
   if FileExists(F2) then
     _hi_CreateEvent(_Data,@_event_onEnd);
end;

procedure THIFileTools._work_doDelete;
var F1:string;
  function DeleteFiles( const DirPath: String ): Boolean;
  var
    Files, Name: String;
  begin
    Files := GetFileListStr( ExtractFilePath( DirPath ), ExtractFileName( DirPath ) );
    Result := TRUE;
    while Files <> '' do
    begin
      Name := fParse( Files, ';' );
      Result := Result and DeleteFile( PChar( Name ) );
    end;
  end;
begin
   F1 := ReadString(_Data,_data_FileName,_prop_FileName);
   if _prop_DelToRecycle = 0 then
      DeleteFile2Recycle(f1)
   else DeleteFiles(F1);
   if not FileExists(F1) then
     _hi_CreateEvent(_Data,@_event_onEnd);
end;

procedure THIFileTools._work_doFileExists;
begin
   _hi_CreateEvent(_Data,@_event_onEnd,integer(FileExists(ReadString(_Data,_data_FileName,_prop_FileName))));
end;

end.
