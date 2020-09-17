unit Debug;

interface

uses Windows,kol,Share;

{$include def.inc}
{$include share.inc}

var
   _Init:boolean;

type
{$ifndef _DEBUG_}
  TDebug = TObject;
{$else}
  TDebug = class
    private
    public
     //ID:Cardinal;
     constructor Create;
  end;


procedure CallEvent(PT:byte; Event:THI_Event;const Data:TData);
{$endif}


implementation

uses WinSock;

{$ifdef _DEBUG_}
const
  EB_NONE     = 0;
  EB_TRACE    = 1;
  EB_RUN      = 2;

  EB_SELECT   = 3;
  EB_UNSELECT = 4;

type
 TEventBuf = record
    cmd:cardinal;
    Point:cardinal;
    PointType:cardinal;
    DataType:cardinal;
    data:array[0..127]of Char;
 end;
 
var ms:THandle;

constructor TDebug.Create;
{$ifndef _DEBUG_MAIL_}
var SockAddr:TSockAddr;
{$endif}
begin
   inherited;
   if ms = 0 then
    begin
     {$ifdef _DEBUG_MAIL_}
     ms := CreateMailslot(PChar('\\.\mailslot\hiDebug_'),512,MAILSLOT_WAIT_FOREVER,nil);
     SetMailslotInfo(ms,10);
     if ms = INVALID_HANDLE_VALUE then
      _debug('mail slot failed!');
     {$else}
     UPD_Init;
     ms := socket(PF_INET,SOCK_DGRAM,IPPROTO_UDP);
     FillChar(SockAddr,SizeOf(SockAddr),0);
     SockAddr.sin_family := AF_INET;
     SockAddr.sin_port := htons(_dbServer);
     {$endif}
    end;
end;

procedure Write(Buf:TEventBuf; size:integer);
var {$ifdef _DEBUG_MAIL_}
    hf:cardinal;
    nBytesRead:cardinal;
    {$else}
    SockAddr:TSockAddr;
    {$endif}
begin
  {$ifdef _DEBUG_MAIL_}
  hf := CreateFile(PChar('\\.\mailslot\hiDebug'),GENERIC_WRITE,
      FILE_SHARE_READ,nil,OPEN_EXISTING,FILE_ATTRIBUTE_NORMAL,0);
  WriteFile(hf,Buf,size,nBytesRead,nil);
  CloseHandle(hf);
  {$else}
  SockAddr.sin_family := AF_INET;
  SockAddr.sin_port := htons(_dbClient);
  SockAddr.sin_addr.S_addr := inet_addr('127.0.0.1');
  sendto(ms,Buf,size,0,SockAddr,sizeof(SockAddr));
  {$endif}
end;

var rBuf:TEventBuf;

function Read(var buf:TEventBuf):boolean;
var
  {$ifdef _DEBUG_MAIL_}
  nBytesRead:cardinal;
  {$else}
  FDSet:TFDSet;
  tm:TTimeVal;
  {$endif}
  size:integer;
begin
   if buf.point <> 0 then begin sleep(1); Result := true; exit; end;
   
   {$ifdef _DEBUG_MAIL_}
   Result := ReadFile(ms, buf, size, nBytesRead, nil );
   {$else}
   Result := false;
   FD_ZERO(FDSet);
   FD_SET(ms, FDSet);
   tm.tv_sec := 0;
   tm.tv_usec := 500;
   if select(0,@FDSet,nil,nil,@tm) > 0 then begin
     ioctlsocket(ms, FIONREAD, size);
     if Size = 0 then
     else begin
       Recv(ms,buf,8,0);
       Result := true;
     end;
   end;
   {$endif}
end;

procedure CallEvent(PT:byte; Event:THI_Event;const Data:TData);
var
    Buf:TEventBuf;
    len:integer;
    s:string;
begin
  if not _Init then exit;

  Buf.cmd := EB_SELECT;
  Buf.Point := Event.dbgPoint;
  Buf.PointType := PT;
  len := 4*sizeof(cardinal);
  buf.DataType := Data.data_type; 
  case Data.data_type of
    data_int : 
     begin
       integer(pointer(@buf.data[0])^) := Data.idata;
       inc(len, sizeof(integer));
     end;
    data_real: 
     begin
       real(pointer(@buf.data[0])^) := Data.rdata;
       inc(len, sizeof(real));
     end; 
    data_str: 
     begin
       StrLCopy(@buf.data[0], PChar(Data.sdata), 127);
       inc(len, min(128, length(Data.sdata)));
     end;      
    data_stream:
     begin
       s := 'Size: ' + Int2Str(PStream(Data.idata).Size) + ', Position: ' + int2str(PStream(Data.idata).Position); 
       StrCopy(@buf.data[0], PChar(s));
     end;
    data_bitmap:
     begin
       s := 'Size: ' + Int2Str(PBitmap(Data.idata).Width) + 'x' + Int2Str(PBitmap(Data.idata).Height); 
       StrCopy(@buf.data[0], PChar(s));
     end;
    data_types:
     begin
       s := GetTypeString(PType(data.idata)); 
       StrCopy(@buf.data[0], PChar(s));
     end; 
    else ;
  end;
  Write(Buf,len);
  repeat
   if Read(rBuf)and ((rBuf.Point = Event.dbgPoint)or(rBuf.Point = $FFFFFFFF)or(rBuf.cmd = EB_RUN)) then
     case rBuf.cmd of
      EB_TRACE: break;
      EB_RUN: _Init := false;
     end;
  until not _Init;
  rBuf.Point := 0;
  
  Buf.cmd := EB_UNSELECT;
  Buf.Point := Event.dbgPoint;
  Write(Buf,8);
end;
{$endif}
end.
