unit LowLevel32;

{**************************************************}
{  Graphics32 - Low level routines                 }
{  A Library for Fast 32-Bit Bitmap Manipulation   }
{  Copyright (c) 2000 Alex Denissov                }
{  Version: 0.98                                   }
{  Date: 17-May-2000                               }
{  See Licence.txt for license information         }
{**************************************************}

interface

uses Graphics32, Graphics;

{ Clamp function restricts Value to [0..255] range }
function Clamp(Value: Integer): TColor32;

{ An analogue of FillChar for 32 bit values }
procedure FillLongword(var X; Count: Integer; Value: Longword);

{ Exchange two 32-bit values }
procedure Swap(var A, B: Integer);

{ Exhange A <-> B only if B < A }
procedure TestSwap(var A, B: Integer);

{ Exhange A <-> B only if B < A then restrict both to [0..Size-1] range }
{ returns true if resulting range has common points with [0..Size-1] range }
function TestClip(var A, B: Integer; Size: Integer): Boolean;

{ Returns Value constrained to [Lo..Hi] range}
function Constrain(Value, Lo, Hi: Integer): Integer;

{ shift right with sign conservation }
function SAR_8(Value: Integer): Integer;
function SAR_9(Value: Integer): Integer;
function SAR_12(Value: Integer): Integer;
function SAR_16(Value: Integer): Integer;

{ Colorswap exchanges ARGB <-> ABGR and fill A with $FF }
function ColorSwap(WinColor: TColor): TColor32;

implementation

{$R-}

function Clamp(Value: Integer): TColor32;
begin
  if Value < 0 then Result := 0
  else if Value > 255 then Result := 255
  else Result := Value;
end;

procedure FillLongword(var X; Count: Integer; Value: Longword);
asm
// EAX = X
// EDX = Count
// ECX = Value
        PUSH    EDI

        MOV     EDI,EAX  // Point EDI to destination              
        MOV     EAX,ECX
        MOV     ECX,EDX
        TEST    ECX,ECX
        JS      @@exit

        REP     STOSD    // Fill count dwords
@@exit:
        POP     EDI
end;

procedure Swap(var A, B: Integer);
asm
// EAX = [A]
// EDX = [B]
        MOV     ECX,[EAX]     // ECX := [A]
        XCHG    ECX,[EDX]     // ECX <> [B];
        MOV     [EAX],ECX     // [A] := ECX
end;

procedure TestSwap(var A, B: Integer);
asm
// EAX = [A]
// EDX = [B]
        MOV     ECX,[EAX]     // ECX := [A]
        CMP     ECX,[EDX]     // ECX <= [B]? Exit
        JLE     @@exit
        XCHG    ECX,[EDX]     // ECX <-> [B];
        MOV     [EAX],ECX     // [A] := ECX
@@exit:
end;

function TestClip(var A, B: Integer; Size: Integer): Boolean;
begin
  TestSwap(A, B); // now A = min(A,B) and B = max(A, B)
  if A < 0 then A := 0;
  if B >= Size then B := Size - 1;
  Result := B >= A;
end;

function Constrain(Value, Lo, Hi: Integer): Integer;
begin
  if Value <= Lo then Result := Lo
  else if Value >= Hi then Result := Hi
  else Result := Value;
end;

{ shift right with sign conservation }
function SAR_8(Value: Integer): Integer;
asm
        SAR EAX,8
end;

function SAR_9(Value: Integer): Integer;
asm
        SAR EAX,9
end;

function SAR_12(Value: Integer): Integer;
asm
        SAR EAX,12
end;

function SAR_16(Value: Integer): Integer;
asm
        SAR EAX,16
end;

{ Colorswap exchanges ARGB <-> ABGR and fill A with $FF }
function ColorSwap(WinColor: TColor): TColor32;
asm
// EAX = WinColor
        MOV     ECX,EAX         // this function swaps R and B bytes in ABGR
        SHR     EAX,16
        XCHG    AL,CL
        MOV     AH,$FF          // and writes $FF into A component
        SHL     EAX,16
        MOV     AX, CX
end;

end.
 