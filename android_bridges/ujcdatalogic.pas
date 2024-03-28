unit ujcdatalogic;

{$mode delphi}

interface

uses
  Classes, SysUtils, And_jni, {And_jni_Bridge,} AndroidWidget;

type

{Draft Component code by "LAMW: Lazarus Android Module Wizard" [15.03.2024 10:08:52]}
{https://github.com/jmpessoa/lazandroidmodulewizard}

{jControl template}

TOnjcDatalogicBarcodeRead=procedure(Sender:TObject;symbol:string;bc:string) of object;

jcDatalogic = class(jControl)
 private
   FOnBarcodeRead: TOnjcDatalogicBarcodeRead;

 public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Init; override;
    function jCreate(): jObject;
    procedure jFree();
  public
    function GetDeviceImage(): jObject;
    function GetScannerType(): string;
    function GetDeviceDescription(): string;
    procedure GenEvent_OnjcDatalogicBarcodeRead(Sender:TObject;symbol:string;bc:string);
 published
   property OnBarcodeRead: TOnjcDatalogicBarcodeRead read FOnBarcodeRead write FOnBarcodeRead;

end;

function jcDatalogic_jCreate(env: PJNIEnv;_self: int64; this: jObject): jObject;
procedure jcDatalogic_jFree(env: PJNIEnv; _jcdatalogic: JObject);

function jcDatalogic_GetDeviceImage(env: PJNIEnv; _jcdatalogic: JObject): jObject;
function jcDatalogic_GetScannerType(env: PJNIEnv; _jcdatalogic: JObject): string;
function jcDatalogic_GetDeviceDescription(env: PJNIEnv; _jcdatalogic: JObject): string;



implementation

{---------  jcDatalogic  --------------}

constructor jcDatalogic.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
//your code here....
end;

destructor jcDatalogic.Destroy;
begin
  if not (csDesigning in ComponentState) then
  begin
     if FjObject <> nil then
     begin
       jFree();
       FjObject:= nil;
     end;
  end;
  //you others free code here...'
  inherited Destroy;
end;

procedure jcDatalogic.Init;
begin

  if FInitialized  then Exit;
  inherited Init; //set default ViewParent/FjPRLayout as jForm.View!
  //your code here: set/initialize create params....
  FjObject := jCreate(); //jSelf !

  if FjObject = nil then exit;

  FInitialized:= True;
end;


function jcDatalogic.jCreate(): jObject;
begin
   Result:= jcDatalogic_jCreate(gApp.jni.jEnv, int64(Self), gApp.jni.jThis);
end;

procedure jcDatalogic.jFree();
begin
  //in designing component state: set value here...
  if FInitialized then
     jcDatalogic_jFree(gApp.jni.jEnv, FjObject);
end;

{-------- jcDatalogic_JNI_Bridge ----------}

function jcDatalogic_jCreate(env: PJNIEnv;_self: int64; this: jObject): jObject;
var
  jParams: array[0..0] of jValue;
  jMethod: jMethodID=nil;
  jCls: jClass=nil;
label
  _exceptionOcurred;
begin

  Result := nil;

  if (env = nil) or (this = nil) then exit;
  jCls:= Get_gjClass(env);
  if jCls = nil then goto _exceptionOcurred;
  jMethod:= env^.GetMethodID(env, jCls, 'jcDatalogic_jCreate', '(J)Ljava/lang/Object;');
  if jMethod = nil then goto _exceptionOcurred;

  jParams[0].j:= _self;

  Result:= env^.CallObjectMethodA(env, this, jMethod, @jParams);

  Result:= env^.NewGlobalRef(env, Result);

  _exceptionOcurred: if jni_ExceptionOccurred(env) then result := nil;
end;


procedure jcDatalogic_jFree(env: PJNIEnv; _jcdatalogic: JObject);
var
  jMethod: jMethodID=nil;
  jCls: jClass=nil;
label
  _exceptionOcurred;
begin

  if (env = nil) or (_jcdatalogic = nil) then exit;
  jCls:= env^.GetObjectClass(env, _jcdatalogic);
  if jCls = nil then goto _exceptionOcurred;
  jMethod:= env^.GetMethodID(env, jCls, 'jFree', '()V');
  if jMethod = nil then begin env^.DeleteLocalRef(env, jCls); goto _exceptionOcurred; end;

  env^.CallVoidMethod(env, _jcdatalogic, jMethod);

  env^.DeleteLocalRef(env, jCls);

  _exceptionOcurred: jni_ExceptionOccurred(env);
end;

function jcDatalogic.GetDeviceImage(): jObject;
begin
  //in designing component state: result value here...
  if FInitialized then
   Result:= jcDatalogic_GetDeviceImage(gApp.jni.jEnv, FjObject);
end;

function jcDatalogic.GetScannerType(): string;
begin
  //in designing component state: result value here...
  if FInitialized then
   Result:= jcDatalogic_GetScannerType(gApp.jni.jEnv, FjObject);
end;

function jcDatalogic.GetDeviceDescription(): string;
begin
  //in designing component state: result value here...
  if FInitialized then
    Result:= jcDatalogic_GetDeviceDescription(gApp.jni.jEnv, FjObject);
end;


procedure jcDatalogic.GenEvent_OnjcDatalogicBarcodeRead(Sender:TObject;symbol:string;bc:string);
begin
  if Assigned(FOnBarcodeRead) then FOnBarcodeRead(Sender,symbol,bc);
end;


{-------- jcDatalogic_JNI_Bridge ----------}

function jcDatalogic_GetDeviceImage(env: PJNIEnv; _jcdatalogic: JObject): jObject;
var
  jMethod: jMethodID=nil;
  jCls: jClass=nil;
label
  _exceptionOcurred;
begin

  if (env = nil) or (_jcdatalogic = nil) then exit;
  jCls:= env^.GetObjectClass(env, _jcdatalogic);
  if jCls = nil then goto _exceptionOcurred;
  jMethod:= env^.GetMethodID(env, jCls, 'GetDeviceImage', '()Landroid/graphics/Bitmap;');
  if jMethod = nil then begin env^.DeleteLocalRef(env, jCls); goto _exceptionOcurred; end;

  Result:= env^.CallObjectMethod(env, _jcdatalogic, jMethod);

  env^.DeleteLocalRef(env, jCls);

  _exceptionOcurred: jni_ExceptionOccurred(env);
end;


function jcDatalogic_GetScannerType(env: PJNIEnv; _jcdatalogic: JObject): string;
var
  jStr: JString;
  jBoo: JBoolean;
  jMethod: jMethodID=nil;
  jCls: jClass=nil;
label
  _exceptionOcurred;
begin

  if (env = nil) or (_jcdatalogic = nil) then exit;
  jCls:= env^.GetObjectClass(env, _jcdatalogic);
  if jCls = nil then goto _exceptionOcurred;
  jMethod:= env^.GetMethodID(env, jCls, 'GetScannerType', '()Ljava/lang/String;');
  if jMethod = nil then begin env^.DeleteLocalRef(env, jCls); goto _exceptionOcurred; end;

  jStr:= env^.CallObjectMethod(env, _jcdatalogic, jMethod);

  Result := GetPStringAndDeleteLocalRef(env, jStr);

  env^.DeleteLocalRef(env, jCls);

  _exceptionOcurred: jni_ExceptionOccurred(env);
end;


function jcDatalogic_GetDeviceDescription(env: PJNIEnv; _jcdatalogic: JObject): string;
var
  jStr: JString;
  jBoo: JBoolean;
  jMethod: jMethodID=nil;
  jCls: jClass=nil;
label
  _exceptionOcurred;
begin

  if (env = nil) or (_jcdatalogic = nil) then exit;
  jCls:= env^.GetObjectClass(env, _jcdatalogic);
  if jCls = nil then goto _exceptionOcurred;
  jMethod:= env^.GetMethodID(env, jCls, 'GetDeviceDescription', '()Ljava/lang/String;');
  if jMethod = nil then begin env^.DeleteLocalRef(env, jCls); goto _exceptionOcurred; end;

  jStr:= env^.CallObjectMethod(env, _jcdatalogic, jMethod);

  Result := GetPStringAndDeleteLocalRef(env, jStr);

  env^.DeleteLocalRef(env, jCls);

  _exceptionOcurred: jni_ExceptionOccurred(env);
end;


end.


