{*************************************************************}
{            Russian Code Tables unit for Delphi 16/32        }
{ Version:   1.0                                              }
{ Author:    Aleksey Kuznetsov                                }
{ E-Mail:    aleksey@utilmind.com                             }
{ Home Page: http://www.utilmind.com                          }
{ Created:   December 30, 1999                                }
{ Modified:  December 30, 1999                                }
{*************************************************************}
{ This unit provides several functions for opteration and     }
{ convertions the text of three major russian code tables:    }
{ DOS, CP-1251 (Windows) and KOI-8.                           }
{*************************************************************}
{                     IMPORTANT NOTE:                         }
{ This software is provided 'as-is', without any express or   }
{ implied warranty. In no event will the author be held       }
{ liable for any damages arising from the use of this         }
{ software.                                                   }
{ Permission is granted to anyone to use this software for    }
{ any purpose, including commercial applications, and to      }
{ alter it and redistribute it freely, subject to the         }
{ following restrictions:                                     }
{ 1. The origin of this software must not be misrepresented,  }
{    you must not claim that you wrote the original software. }
{    If you use this software in a product, an acknowledgment }
{    in the product documentation would be appreciated but is }
{    not required.                                            }
{ 2. Altered source versions must be plainly marked as such,  }
{    and must not be misrepresented as being the original     }
{    software.                                                }
{ 3. This notice may not be removed or altered from any       }
{    source distribution.                                     }
{*************************************************************}

unit RussianCodeTables;

interface

function DOSToKOI(St: AnsiString): AnsiString;
function DOSToWin(St: AnsiString): AnsiString;
function WinToDOS(St: AnsiString): AnsiString;
function WinToKOI(St: AnsiString): AnsiString;
function KOIToDOS(St: AnsiString): AnsiString;
function KOIToWin(St: AnsiString): AnsiString;

implementation

const
  DOS_2_KOI: Array[$80..$FF] of Byte = (
   $E1,$E2,$F7,$E7,$E4,$E5,$F6,$FA,$E9,$EA,$EB,$EC,$ED,$EE,$EF,$F0,
   $F2,$F3,$F4,$F5,$E6,$E8,$E3,$FE,$FB,$FD,$FF,$F9,$F8,$FC,$E0,$F1,
   $C1,$C2,$D7,$C7,$C4,$C5,$D6,$DA,$C9,$CA,$CB,$CC,$CD,$CE,$CF,$D0,
   $90,$91,$92,$81,$87,$B2,$B4,$A7,$A6,$B5,$A1,$A8,$AE,$AD,$AC,$83,
   $84,$89,$88,$86,$80,$8A,$AF,$B0,$AB,$A5,$BB,$B8,$B1,$A0,$BE,$B9,
   $BA,$B6,$B7,$AA,$A9,$A2,$A4,$BD,$BC,$85,$82,$8D,$8C,$8E,$8F,$8B,
   $D2,$D3,$D4,$D5,$C6,$C8,$C3,$DE,$DB,$DD,$DF,$D9,$D8,$DC,$C0,$D1,
   $B3,$A3,$99,$98,$93,$9B,$9F,$97,$9C,$95,$9E,$96,$BF,$9D,$94,$9A);

  DOS_2_Win: Array[$80..$FF] of Byte = (
   $C0,$C1,$C2,$C3,$C4,$C5,$C6,$C7,$C8,$C9,$CA,$CB,$CC,$CD,$CE,$CF,
   $D0,$D1,$D2,$D3,$D4,$D5,$D6,$D7,$D8,$D9,$DA,$DB,$DC,$DD,$DE,$DF,
   $E0,$E1,$E2,$E3,$E4,$E5,$E6,$E7,$E8,$E9,$EA,$EB,$EC,$ED,$EE,$EF,
   $B0,$B1,$B2,$A6,$B4,$B5,$B6,$B7,$B8,$B9,$BA,$BB,$BC,$BD,$BE,$AC,
   $C0,$C1,$C2,$C3,$C4,$86,$C6,$C7,$C8,$C9,$CA,$CB,$CC,$CD,$CE,$CF,
   $D0,$D1,$D2,$D3,$D4,$D5,$D6,$D7,$87,$D9,$DA,$DB,$DC,$DD,$DE,$DF,
   $F0,$F1,$F2,$F3,$F4,$F5,$F6,$F7,$F8,$F9,$FA,$FB,$FC,$FD,$FE,$FF,
   $A8,$B8,$AA,$BA,$AF,$BF,$A1,$A2,$B0,$F9,$B7,$FB,$B9,$A4,$FE,$A0);

  KOI_2_DOS: Array[$80..$FF] of Byte = (
   $C4,$C3,$Da,$BF,$C0,$D9,$C3,$B4,$C2,$C1,$C5,$DF,$DC,$DB,$DD,$DE,
   $B0,$B1,$b2,$f4,$fe,$f9,$fb,$f7,$f3,$f2,$ff,$f5,$f8,$fd,$fa,$f6,
   $cd,$ba,$d5,$f1,$d6,$c9,$b8,$b7,$bb,$d4,$d3,$c8,$be,$bd,$bc,$c6,
   $c7,$cc,$b5,$f0,$b6,$b9,$d1,$d2,$cb,$cf,$d0,$ca,$d8,$d7,$ce,$fc,
   $ee,$a0,$a1,$e6,$a4,$a5,$e4,$a3,$e5,$a8,$a9,$aa,$ab,$ac,$ad,$ae,
   $af,$ef,$e0,$e1,$e2,$e3,$a6,$a2,$ec,$eb,$a7,$e8,$ed,$e9,$e7,$ea,
   $9e,$80,$81,$96,$84,$85,$94,$83,$95,$88,$89,$8a,$8b,$8c,$8d,$8e,
   $8f,$9f,$90,$91,$92,$93,$86,$82,$9c,$9b,$87,$98,$9d,$99,$97,$9a);

  Win_2_DOS: Array[$80..$FF] of Byte = (
   $3f,$3f,$27,$3f,$22,$3a,$c5,$d8,$3f,$25,$3f,$3c,$3f,$3f,$3f,$3f,
   $3f,$27,$27,$22,$22,$07,$2d,$2d,$3f,$54,$3f,$3e,$3f,$3f,$3f,$3f,
   $ff,$f6,$f7,$3f,$fd,$3f,$b3,$15,$f0,$63,$f2,$3c,$bf,$2d,$52,$f4,
   $f8,$2b,$49,$69,$3f,$e7,$14,$fa,$f1,$fc,$f3,$3e,$3f,$3f,$3f,$f5,
   $80,$81,$82,$83,$84,$85,$86,$87,$88,$89,$8a,$8b,$8c,$8d,$8e,$8f,
   $90,$91,$92,$93,$94,$95,$96,$97,$98,$99,$9a,$9b,$9c,$9d,$9e,$9f,
   $a0,$a1,$a2,$a3,$a4,$a5,$a6,$a7,$a8,$a9,$aa,$ab,$ac,$ad,$ae,$af,
   $e0,$e1,$e2,$e3,$e4,$e5,$e6,$e7,$e8,$e9,$ea,$eb,$ec,$ed,$ee,$ef);

function DOSToKOI(St: AnsiString): AnsiString;
var
  i: Integer;
begin
  i := Length(St);
  if i <> 0 then
   for i := 1 to i do
    if byte(St[i]) > $7F then
     St[i] := AnsiChar(DOS_2_KOI[byte(St[i])]);
  Result := St;   
end;

function DOSToWin(St: AnsiString): AnsiString;
var
  i: Integer;
begin
  i := Length(St);
  if i <> 0 then
   for i := 1 to i do
    if byte(St[i]) > $7F then
     St[i] := AnsiChar(DOS_2_Win[byte(St[i])]);
  Result := St;
end;

function WinToDOS(St: AnsiString): AnsiString;
var
  i: Integer;
begin
  i := Length(St);
  if i <> 0 then
   for i := 1 to i do
    if byte(St[i]) > $7F then
     St[i] := AnsiChar(Win_2_DOS[byte(St[i])]);
  Result := St;
end;

function WinToKOI(St: AnsiString): AnsiString;
var
  i: Integer;
begin
  i := Length(St);
  if i <> 0 then
   for i := 1 to i do
    if byte(St[i]) > $7F then
     St[i] := AnsiChar(DOS_2_KOI[Win_2_DOS[byte(St[i])]]);
  Result := St;
end;

function KOIToDOS(St: AnsiString): AnsiString;
var
  i: Integer;
begin
  i := Length(St);
  if i <> 0 then
   for i := 1 to i do
    if byte(St[i]) > $7F then
     St[i] := AnsiChar(KOI_2_DOS[byte(St[i])]);
  Result := St;
end;

function KOIToWin(St: AnsiString): AnsiString;
var
  i: Integer;
begin
  i := Length(St);
  if i <> 0 then
   for i := 1 to i do
    if byte(St[i]) > $7F then
     St[i] := AnsiChar(DOS_2_Win[KOI_2_DOS[byte(St[i])]]);
  Result := St;
end;

end.
