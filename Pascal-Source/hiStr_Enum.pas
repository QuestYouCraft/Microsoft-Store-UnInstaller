unit hiStr_Enum;
 
interface

uses Kol, Share, Debug;

type
  THIStr_Enum = class(TDebug)
  private
    FStop: boolean;
    eIndex: integer;
    FFrom: integer;
    FTo:   integer;
    FStep: integer;
    FNum: integer;
    FDivG: boolean;
    Dlm: string;
    st: string;
  public
    _prop_onBreakEnable: boolean;
    _prop_Direct: byte;
       
    _data_String: THI_Event;
    _event_onEnum: THI_Event;
    _event_onEndEnum: THI_Event;
    _event_onBreak: THI_Event;

    property _prop_From: integer write FFrom;
    property _prop_To: integer write FTo;
    property _prop_Step: integer write FStep;
    property _prop_Delimiter: string write Dlm;
    property _prop_OnlyDivGroup: boolean write FDivG;
    procedure _work_doEnum0(var _Data: TData; Index: Word); //Forward
    procedure _work_doEnum1(var _Data: TData; Index: Word); //Reverse
    procedure _work_doStop(var _Data: TData; Index: Word);
    procedure _work_doFrom(var _Data: TData; Index: Word);
    procedure _work_doTo(var _Data: TData; Index: Word);
    procedure _work_doDelimiter(var _Data: TData; Index: Word);
    procedure _work_doStep(var _Data: TData; Index: Word);
    procedure _work_doOnlyDivGroup(var _Data: TData; Index: Word);         
                    
    procedure _var_NumSubStr(var _Data: TData; Index: Word);
    procedure _var_Part(var _Data: TData; Index: Word);    
  end;

function FParse(var S: string; const Delimiters: char): string;
function RParse(var S: string; const Delimiters: char): string;
function SRParse(var S: pchar; const Dlm: char; Len: integer): string;
function SFParse(var S: pchar; const Dlm: char; Len: integer): string;

implementation


//------------------------------------------------------------------------------
//
//------------------- Новые функции парсирования строки ------------------------
function StrRScanLen(Str: PChar; Chr: Char; Len: Integer): PChar; assembler;
asm
        PUSH    EDI
        XCHG    EDI, EAX
        XCHG    EAX, EDX
        STD //!!!
        REPNE   SCASB
        CLD //!!!
        XCHG    EAX, EDI
        POP     EDI
        { -> EAX => to next character after found or to the end of Str,
             ZF = 0 if character found. }
end {$IFDEF F_P} [ 'EAX', 'EDX', 'ECX' ] {$ENDIF};


function SRParse(var S:pchar; const Dlm:char; Len:integer): string;
// Ищет символ Dlm влево, начиная с S, но не дальше чем Len символов. 
// Переустанавливает S перед (левее) найденным символом Dlm, или перед Len символами (если Dlm не найден)
// Защиты от Len<=0 -- НЕТ!!!
var F:pchar; L:integer;
begin
  F := StrRScanLen(S, Dlm, Len);
  L := S-F-byte((F+1)^=Dlm); 
  SetLength(Result, L);
  Move((S-L+1)^, Result[1], L);
  S := F;
end;

function SFParse(var S:pchar; const Dlm:char; Len:integer): string;
// Ищет символ Dlm вправо, начиная с S, но не дальше чем Len символов. 
// Переустанавливает S после (правее) найденного символа Dlm, или после Len символов (если Dlm не найден)
// Защиты от Len<=0 -- НЕТ!!!
var F:pchar; L:integer;
begin
  F := StrScanLen(S, Dlm, Len);
  L := F-S-byte((F-1)^=Dlm);
  SetLength(Result, L);
  Move(S^, Result[1], L);
  S := F;
end;

//------------------------------------------------------------------------------
function FParse(var S: string; const Delimiters: char): string;
var
  P, F: PChar;
  L: integer;
begin
  P := PChar(S); 
  F := StrScanLen(P, Delimiters, Length(S));
  L := F - P - byte((F - 1)^ = Delimiters);
  SetLength(Result, L);
  Move(P^, Result[1], L);
  S := string(F);
end;
//------------------------------------------------------------------------------
function RParse(var S: string; const Delimiters: char): string;
var
  P, Q, F: PChar;
  L: integer;  
begin
  Q := PChar(S);
  P := Q + Length(S) - 1;
  F := StrRScanLen(P, Delimiters, Length(S));
  L := P - F - byte((F + 1)^ = Delimiters); 
  SetLength(Result, L);
  Move((P - L + 1)^, Result[1], L);
  SetLength(S, F - Q + 1); 
end;
//------------------------------------------------------------------------------

procedure THIStr_Enum._work_doEnum0;
var
  s, ss: string;
  i: integer;
  P, Q: pchar;
  Ln: integer;
begin
  s := ReadString(_Data, _data_String, '');
  FStop := false;
  eIndex := FFrom;

  if (Dlm = '') and (s <> '') and (eIndex > 0) then // выдаем группами символов,
  begin
    if FStep = 1 then
    repeat
      st := s[eIndex];
      _hi_onEvent(_event_onEnum, st);
      if (FStop) or (eIndex = FTo) then break;
      inc(eIndex);
    until eIndex > Length(s)
    else
    begin
      if FTo = -1 then
        ss := Copy(s, (FFrom - 1) * FStep + 1, Length(s) - (FFrom - 1) * FStep)
      else      
        ss := Copy(s, (FFrom - 1) * FStep + 1, (FTo - FFrom + 1) * FStep); 
      eIndex := 1;
      FNum := FFrom;
      repeat
        st := Copy(ss, eIndex, FStep);
        if FDivG and (Length(st) <> FStep) then
        begin
          st := '';
          break;
        end 
        else
          _hi_onEvent(_event_onEnum, st);
        if FStop then break;
        inc(eIndex, FStep);
        inc(FNum);
      until eIndex > Length(ss);
    end;
  end  
  else if (Dlm <> '') and (s <> '') then            // иначе, разбиваем по разделителю
  begin
    i := 1;
    Ln := Length(s);
    P := pchar(s);
    while Ln > 0 do
    begin
      Q := P; 
      st := SFParse(P, Dlm[1], Ln);
      if i < FFrom then
      else if (FStop) or ((i > FTo) and (FTo > 0)) then break
      else
      begin
        _hi_onEvent(_event_onEnum, st);
        inc(eIndex);
      end;  
      dec(Ln, P - Q);
      inc(i);
    end;  
  end;
(*
    while (s <> '') and (i < eIndex) do
    begin
      fparse(s, Dlm[1]);
      inc(i);
    end;
    if s <> '' then 
      repeat
        st := fparse(s, Dlm[1]); 
        _hi_onEvent(_event_onEnum, st);
        if (FStop) or (eIndex = FTo) then break;
        inc(eIndex);
      until s = '';
  end;  
*)
  if FStop and _prop_onBreakEnable then
    _hi_CreateEvent(_Data,@_event_onBreak, st)
  else
    _hi_CreateEvent(_Data,@_event_onEndEnum);
end;

procedure THIStr_Enum._work_doEnum1;
var
  s: string;
  i: integer;
  P, Q: pchar;
  Ln: integer;
begin
  s := ReadString(_Data, _data_String, '');
  FStop := false;
  eIndex := FFrom;

  if (Dlm = '') and (s <> '') and (eIndex > 0)then // выдаем группами символов,
  begin
    if FStep = 1 then
    repeat
      st := s[Length(s) + 1 - eIndex];
      _hi_onEvent(_event_onEnum, st);
      if (FStop) or (eIndex = FTo) then break;
      inc(eIndex);
    until eIndex  > Length(s) 
    else
    begin
      if FTo = -1 then
        DeleteTail(s, (FFrom - 1) * FStep)
      else      
      begin
        DeleteTail(s, (FFrom - 1) * FStep);
        s := Copy(s, Length(s) - (FTo - FFrom + 1) * FStep + 1, (FTo - FFrom + 1) * FStep);
      end;  
      eIndex := 1;
      FNum := FFrom;        
    repeat      
      if (Length(s) + 2 - eIndex - FStep) < 1 then
        st := Copy(s, 1, Length(s) - eIndex + 1)
      else         
        st := Copy(s, Length(s) + 2 - eIndex - FStep, FStep);
      if FDivG and (Length(st) <> FStep) then
      begin
        st := '';
        break;
      end 
      else
        _hi_onEvent(_event_onEnum, st);
      if FStop then break;
      inc(eIndex, FStep);
      inc(FNum);
    until eIndex  > Length(s);
    end;
  end
  else if (Dlm <> '') and (s <> '') then           // иначе, разбиваем по разделителю
  begin
    i := 1;
    Ln := Length(s);
    P := pchar(s) + Ln - 1;
    while Ln > 0 do
    begin
      Q := P; 
      st := SRParse(P, Dlm[1], Ln);
      if i < FFrom then
      else if (FStop) or ((i > FTo) and (FTo > 0)) then break
      else
      begin
        _hi_onEvent(_event_onEnum, st);
        inc(eIndex);
      end;  
      dec(Ln, Q - P);
      inc(i);
    end;
  end;   
(*
    while (s <> '') and (i < eIndex) do
    begin
      rparse(s, Dlm[1]);
      inc(i);
    end; ; 
    repeat
      st := rparse(s, Dlm[1]);
      _hi_onEvent(_event_onEnum, st);
      if (FStop) or (eIndex = FTo) then break;
      inc(eIndex);
    until s = '';
  end;  
*)
  if FStop and _prop_onBreakEnable then
    _hi_CreateEvent(_Data,@_event_onBreak, st)
  else
    _hi_CreateEvent(_Data,@_event_onEndEnum);
end;

procedure THIStr_Enum._work_doStop;
begin
  FStop := true;
end;

procedure THIStr_Enum._work_doFrom;
begin
  FFrom := ToInteger(_Data);
end;

procedure THIStr_Enum._work_doTo;
begin
  FTo := ToInteger(_Data);
end;

procedure THIStr_Enum._work_doDelimiter;
begin
  Dlm := ToString(_Data);
end;

procedure THIStr_Enum._work_doStep;
begin
  FStep := ToInteger(_Data);
end;

procedure  THIStr_Enum._work_doOnlyDivGroup;
begin
  FDivG := ReadBool(_Data);
end;

procedure THIStr_Enum._var_NumSubStr;
begin
  if (FStep = 1) or (Dlm <> '') then
    dtInteger(_Data, eIndex)
  else
    dtInteger(_Data, FNum);
end;

procedure THIStr_Enum._var_Part;
begin
  dtString(_Data, st);
end;

end.
