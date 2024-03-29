{hint: Pascal files location: ...\AppDatalogicDemo1\jni }
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
    EditText1: jEditText;
    procedure Datalogic1BarcodeRead(Sender: TObject; symbol: string; bc: string
      );
  private
    {private declarations}
  public
    {public declarations}
  end;

var
  AndroidModule1: TAndroidModule1;

implementation
  
{$R *.lfm}
  

{ TAndroidModule1 }

procedure TAndroidModule1.Datalogic1BarcodeRead(Sender: TObject;
  symbol: string; bc: string);
var
  dummy: string;
begin
  dummy:= 'Symbol:'+symbol+' BC:'+bc;
  EditText1.Text:= dummy;
end;

end.
