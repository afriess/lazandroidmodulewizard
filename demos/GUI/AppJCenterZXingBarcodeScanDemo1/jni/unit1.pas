{hint: Pascal files location: ...\AppJCenterZXingBarcodeScanDemo1\jni }
unit unit1;

{$mode delphi}

interface

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, AndroidWidget, Laz_And_Controls, ujczxingbarcodescan, And_jni;
  
type

  { TAndroidModule1 }

  TAndroidModule1 = class(jForm)
    Button1: jButton;
    Button2: jButton;
    TextView1: jTextView;
    TextView2: jTextView;
    ZXingBarcodeScan1: jcZXingBarcodeScan;
    ZXingBarcodeScan2: jcZXingBarcodeScan;
    procedure AndroidModule1ActivityResult(Sender: TObject;
      requestCode: integer; resultCode: TAndroidResult; intentData: jObject);
    procedure AndroidModule1JNIPrompt(Sender: TObject);
    procedure AndroidModule1RequestPermissionResult(Sender: TObject;
      requestCode: integer; manifestPermission: string;
      grantResult: TManifestPermissionResult);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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

procedure TAndroidModule1.Button1Click(Sender: TObject);
begin
  TextView2.Text:= '***';
  ZXingBarcodeScan1.ScanForResult();  //default: zxfQR_CODE
end;

procedure TAndroidModule1.Button2Click(Sender: TObject);
begin
   TextView2.Text:= '---';
   ZXingBarcodeScan1.ScanForResult(zxfDATA_MATRIX);  //default: zxfQR_CODE
end;

procedure TAndroidModule1.AndroidModule1ActivityResult(Sender: TObject;
  requestCode: integer; resultCode: TAndroidResult; intentData: jObject);
var
  dataResult: string;
begin
   if resultCode = RESULT_OK then
   begin
      if requestCode = ZXingBarcodeScan1.RequestCodeForResult then //default: 49374
      begin
         dataResult:= ZXingBarcodeScan1.GetContentFromResult(intentData);
         TextView2.Text:= dataResult;
         ShowMessage(dataResult); // Success !!!
      end;
   end
   else //RESULT_CANCELED
   begin
      ShowMessage('Cancelled ...');
   end;
end;

procedure TAndroidModule1.AndroidModule1JNIPrompt(Sender: TObject);
begin
   if IsRuntimePermissionNeed() then   // that is, if target API >= 23
   begin
     ShowMessage('Requesting Runtime Permission....');
     Self.RequestRuntimePermission('android.permission.CAMERA', 1113);   //handled by OnRequestPermissionResult
   end
end;

procedure TAndroidModule1.AndroidModule1RequestPermissionResult(
  Sender: TObject; requestCode: integer; manifestPermission: string;
  grantResult: TManifestPermissionResult);
begin
   case requestCode of
     1113:begin
             if grantResult = PERMISSION_GRANTED  then
                 ShowMessage('Success! "'+ manifestPermission + '" granted!')
             else//PERMISSION_DENIED
                 ShowMessage('Sorry... "android.permission.CAMERA" permission not granted... ' );
          end;
   end;
end;

end.
