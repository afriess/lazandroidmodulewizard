{hint: Pascal files location: ...\AppDatalogicDemo1\jni }
{hint: Insert in build.gradle at dependencies
       implementation 'com.github.datalogic:datalogic-android-sdk:v1.35'}

unit umain;

{$mode delphi}

interface

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, AndroidWidget, Laz_And_Controls, ujcdatalogic;
  
type

  { TAndroidModule1 }

  TAndroidModule1 = class(jForm)
    BuWork: jButton;
    Datalogic1: jcDatalogic;
    EdtScan: jEditText;
    TxtVInfo: jTextView;
    TxtVDL: jTextView;
    TxtVBarcode: jTextView;
    procedure AndroidModule1Create(Sender: TObject);
    procedure AndroidModule1Destroy(Sender: TObject);
    procedure AndroidModule1Init(Sender: TObject);
    procedure AndroidModule1JNIPrompt(Sender: TObject);
    procedure BuWorkClick(Sender: TObject);
    procedure Datalogic1BarcodeRead(Sender: TObject; symbol: string; bc: string
      );
    procedure EdtScanChanged(Sender: TObject; txt: string; count: integer);
  private
    {private declarations}
  public
    {public declarations}
  end;

var
  AndroidModule1: TAndroidModule1;

implementation
  
{$R *.lfm}

function StripStartEnd(bc:string):string;
var
  CurPosRaute,CurPosDollar : integer;
begin
  // the barcode have a startchar '$' and a endchar '#'
  //   we stripp it
  CurPosDollar :=  Pos( '$' ,bc);
  CurPosRaute := Pos( '#' ,bc);
  if (CurPosDollar > 0) and (CurPosRaute > 0) then begin
    Result:= Copy(bc, CurPosDollar + 1, (CurPosRaute - CurPosDollar)-1 );
  end
  else begin
    Result:= '';
  end;
end;

{ TAndroidModule1 }

procedure TAndroidModule1.Datalogic1BarcodeRead(Sender: TObject;
  symbol: string; bc: string);
var
  dummy: string;
begin
  dummy:= 'Symbol:'+symbol+' BC:'+bc;
  TxtVDL.Text:= dummy;
end;

procedure TAndroidModule1.EdtScanChanged(Sender: TObject; txt: string;
  count: integer);
begin
  if SameStr(txt, '') then
    exit; // ==>> nothing to do
  TxtVBarcode.Text:= StripStartEnd(txt);
  EdtScan.Text:= '';
end;

procedure TAndroidModule1.BuWorkClick(Sender: TObject);
begin
  //
  TxtVInfo.Text:= Datalogic1.GetScannerType();
end;

procedure TAndroidModule1.AndroidModule1Init(Sender: TObject);
begin
  //
end;

procedure TAndroidModule1.AndroidModule1JNIPrompt(Sender: TObject);
begin
  //

end;

procedure TAndroidModule1.AndroidModule1Create(Sender: TObject);
begin
  //
end;

procedure TAndroidModule1.AndroidModule1Destroy(Sender: TObject);
begin
  //
end;

end.
