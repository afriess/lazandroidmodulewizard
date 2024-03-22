unit register_jcenter;
  
{$mode objfpc}{$H+}
  
interface
  
uses
  Classes,
  ujcdatalogic,
  ujczxingbarcodescan,
  cwebsocketclient,
  ctoytimerservice,
  cbillingclient,
  cqrgen,
  cbluetoothspp,
  cmail,
  csignaturepad,
  copenmapview,
  clantern,
  cscreenshot,
  cmikrotikrouteros,
  SysUtils,
  LResources;
  
Procedure Register;
  
implementation
  
Procedure Register;
begin
  {$I jcdatalogic_icon.lrs}
  {$I jczxingbarcodescan_icon.lrs}
  {$I jcwebsocketclient_icon.lrs}
  {$I jctoytimerservice_icon.lrs}
  {$I jcbillingclient_icon.lrs}
  {$I jcqrgen_icon.lrs}
  {$I jcbluetoothspp_icon.lrs}
  {$I jcmail_icon.lrs}
  {$I jcsignaturepad_icon.lrs}
  {$I jcopenmapview_icon.lrs}
  {$I jclantern_icon.lrs}
  {$I jcscreenshot_icon.lrs}
  {$I jcmikrotikrouteros_icon.lrs}
  RegisterComponents('Android Bridges jCenter',
    [
      jcDatalogic,
      jcZXingBarcodeScan,
      jcWebSocketClient,
      jcToyTimerService,
      jcBillingClient,
      jcQRGen,
      jcBluetoothSPP,
      jcMail,
      jcSignaturePad,
      jcOpenMapView,
      jcLantern,
      jcScreenShot,
      jcMikrotikRouterOS
    ]
  );
end;
  
end.
