{hint: save all files to location: C:\adt32\eclipse\workspace\AppBluetoothClientSocketDemo1\jni}
library controls;  //by Lamw: Lazarus Android Module Wizard: 7/27/2015 23:18:06]
 
{$mode delphi}
 
uses
  Classes, SysUtils, And_jni, And_jni_Bridge, AndroidWidget, Laz_And_Controls,
  Laz_And_Controls_Events, unit1;

{%region /fold 'LAMW generated code'}

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pAppOnCreate
  Signature: (Landroid/content/Context;Landroid/widget/RelativeLayout;Landroid/content/Intent;)V }
procedure pAppOnCreate(PEnv: PJNIEnv; this: JObject; context: JObject;
  layout: JObject; intent: JObject); cdecl;
begin
  Java_Event_pAppOnCreate(PEnv, this, context, layout, intent);
    AndroidModule1.Init(gApp);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pAppOnScreenStyle
  Signature: ()I }
function pAppOnScreenStyle(PEnv: PJNIEnv; this: JObject): JInt; cdecl;
begin
  Result:=Java_Event_pAppOnScreenStyle(PEnv, this);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pAppOnNewIntent
  Signature: (Landroid/content/Intent;)V }
procedure pAppOnNewIntent(PEnv: PJNIEnv; this: JObject; intent: JObject); cdecl;
begin
  Java_Event_pAppOnNewIntent(PEnv, this, intent);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pAppOnDestroy
  Signature: ()V }
procedure pAppOnDestroy(PEnv: PJNIEnv; this: JObject); cdecl;
begin
  Java_Event_pAppOnDestroy(PEnv, this);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pAppOnPause
  Signature: ()V }
procedure pAppOnPause(PEnv: PJNIEnv; this: JObject); cdecl;
begin
  Java_Event_pAppOnPause(PEnv, this);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pAppOnRestart
  Signature: ()V }
procedure pAppOnRestart(PEnv: PJNIEnv; this: JObject); cdecl;
begin
  Java_Event_pAppOnRestart(PEnv, this);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pAppOnResume
  Signature: ()V }
procedure pAppOnResume(PEnv: PJNIEnv; this: JObject); cdecl;
begin
  Java_Event_pAppOnResume(PEnv, this);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pAppOnStart
  Signature: ()V }
procedure pAppOnStart(PEnv: PJNIEnv; this: JObject); cdecl;
begin
  Java_Event_pAppOnStart(PEnv, this);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pAppOnStop
  Signature: ()V }
procedure pAppOnStop(PEnv: PJNIEnv; this: JObject); cdecl;
begin
  Java_Event_pAppOnStop(PEnv, this);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pAppOnBackPressed
  Signature: ()V }
procedure pAppOnBackPressed(PEnv: PJNIEnv; this: JObject); cdecl;
begin
  Java_Event_pAppOnBackPressed(PEnv, this);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pAppOnRotate
  Signature: (I)I }
function pAppOnRotate(PEnv: PJNIEnv; this: JObject; rotate: JInt): JInt; cdecl;
begin
  Result:=Java_Event_pAppOnRotate(PEnv, this, rotate);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pAppOnConfigurationChanged
  Signature: ()V }
procedure pAppOnConfigurationChanged(PEnv: PJNIEnv; this: JObject); cdecl;
begin
  Java_Event_pAppOnConfigurationChanged(PEnv, this);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pAppOnActivityResult
  Signature: (IILandroid/content/Intent;)V }
procedure pAppOnActivityResult(PEnv: PJNIEnv; this: JObject; requestCode: JInt;
  resultCode: JInt; data: JObject); cdecl;
begin
  Java_Event_pAppOnActivityResult(PEnv, this, requestCode, resultCode, data);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pAppOnCreateOptionsMenu
  Signature: (Landroid/view/Menu;)V }
procedure pAppOnCreateOptionsMenu(PEnv: PJNIEnv; this: JObject; menu: JObject);
  cdecl;
begin
  Java_Event_pAppOnCreateOptionsMenu(PEnv, this, menu);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pAppOnClickOptionMenuItem
  Signature: (Landroid/view/MenuItem;ILjava/lang/String;Z)V }
procedure pAppOnClickOptionMenuItem(PEnv: PJNIEnv; this: JObject;
  menuItem: JObject; itemID: JInt; itemCaption: JString; checked: JBoolean);
  cdecl;
begin
  Java_Event_pAppOnClickOptionMenuItem(PEnv, this, menuItem, itemID,
    itemCaption, checked);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pAppOnPrepareOptionsMenu
  Signature: (Landroid/view/Menu;I)Z }
function pAppOnPrepareOptionsMenu(PEnv: PJNIEnv; this: JObject; menu: JObject;
  menuSize: JInt): JBoolean; cdecl;
begin
  Result:=Java_Event_pAppOnPrepareOptionsMenu(PEnv, this, menu, menuSize);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pAppOnPrepareOptionsMenuItem
  Signature: (Landroid/view/Menu;Landroid/view/MenuItem;I)Z }
function pAppOnPrepareOptionsMenuItem(PEnv: PJNIEnv; this: JObject;
  menu: JObject; menuItem: JObject; itemIndex: JInt): JBoolean; cdecl;
begin
  Result:=Java_Event_pAppOnPrepareOptionsMenuItem(PEnv, this, menu, menuItem,
    itemIndex);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pAppOnCreateContextMenu
  Signature: (Landroid/view/ContextMenu;)V }
procedure pAppOnCreateContextMenu(PEnv: PJNIEnv; this: JObject; menu: JObject);
  cdecl;
begin
  Java_Event_pAppOnCreateContextMenu(PEnv, this, menu);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pAppOnClickContextMenuItem
  Signature: (Landroid/view/MenuItem;ILjava/lang/String;Z)V }
procedure pAppOnClickContextMenuItem(PEnv: PJNIEnv; this: JObject;
  menuItem: JObject; itemID: JInt; itemCaption: JString; checked: JBoolean);
  cdecl;
begin
  Java_Event_pAppOnClickContextMenuItem(PEnv, this, menuItem, itemID,
    itemCaption, checked);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pOnDraw
  Signature: (J)V }
procedure pOnDraw(PEnv: PJNIEnv; this: JObject; pasobj: JLong); cdecl;
begin
  Java_Event_pOnDraw(PEnv, this, TObject(pasobj));
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pOnTouch
  Signature: (JIIFFFF)V }
procedure pOnTouch(PEnv: PJNIEnv; this: JObject; pasobj: JLong; act: JInt;
  cnt: JInt; x1: JFloat; y1: JFloat; x2: JFloat; y2: JFloat); cdecl;
begin
  Java_Event_pOnTouch(PEnv, this, TObject(pasobj), act, cnt, x1, y1, x2, y2);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pOnClickGeneric
  Signature: (JI)V }
procedure pOnClickGeneric(PEnv: PJNIEnv; this: JObject; pasobj: JLong;
  value: JInt); cdecl;
begin
  Java_Event_pOnClickGeneric(PEnv, this, TObject(pasobj), value);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pAppOnSpecialKeyDown
  Signature: (CILjava/lang/String;)Z }
function pAppOnSpecialKeyDown(PEnv: PJNIEnv; this: JObject; keyChar: JChar;
  keyCode: JInt; keyCodeString: JString): JBoolean; cdecl;
begin
  Result:=Java_Event_pAppOnSpecialKeyDown(PEnv, this, keyChar, keyCode,
    keyCodeString);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pOnClick
  Signature: (JI)V }
procedure pOnClick(PEnv: PJNIEnv; this: JObject; pasobj: JLong; value: JInt);
  cdecl;
begin
  Java_Event_pOnClick(PEnv, this, TObject(pasobj), value);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pOnLongClick
  Signature: (JI)V }
procedure pOnLongClick(PEnv: PJNIEnv; this: JObject; pasobj: JLong; value: JInt
  ); cdecl;
begin
  Java_Event_pOnLongClick(PEnv, this, TObject(pasobj), value);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pOnChange
  Signature: (JLjava/lang/String;I)V }
procedure pOnChange(PEnv: PJNIEnv; this: JObject; pasobj: JLong; txt: JString;
  count: JInt); cdecl;
begin
  Java_Event_pOnChange(PEnv, this, TObject(pasobj), txt, count);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pOnChanged
  Signature: (JLjava/lang/String;I)V }
procedure pOnChanged(PEnv: PJNIEnv; this: JObject; pasobj: JLong; txt: JString;
  count: JInt); cdecl;
begin
  Java_Event_pOnChanged(PEnv, this, TObject(pasobj), txt, count);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pOnEnter
  Signature: (J)V }
procedure pOnEnter(PEnv: PJNIEnv; this: JObject; pasobj: JLong); cdecl;
begin
  Java_Event_pOnEnter(PEnv, this, TObject(pasobj));
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pOnClose
  Signature: (J)V }
procedure pOnClose(PEnv: PJNIEnv; this: JObject; pasobj: JLong); cdecl;
begin
  Java_Event_pOnClose(PEnv, this, TObject(pasobj));
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pAppOnViewClick
  Signature: (Landroid/view/View;I)V }
procedure pAppOnViewClick(PEnv: PJNIEnv; this: JObject; view: JObject; id: JInt
  ); cdecl;
begin
  Java_Event_pAppOnViewClick(PEnv, this, view, id);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pAppOnListItemClick
  Signature: (Landroid/widget/AdapterView;Landroid/view/View;II)V }
procedure pAppOnListItemClick(PEnv: PJNIEnv; this: JObject; adapter: JObject;
  view: JObject; position: JInt; id: JInt); cdecl;
begin
  Java_Event_pAppOnListItemClick(PEnv, this, adapter, view, position, id);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pOnFlingGestureDetected
  Signature: (JI)V }
procedure pOnFlingGestureDetected(PEnv: PJNIEnv; this: JObject; pasobj: JLong;
  direction: JInt); cdecl;
begin
  Java_Event_pOnFlingGestureDetected(PEnv, this, TObject(pasobj), direction);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pOnPinchZoomGestureDetected
  Signature: (JFI)V }
procedure pOnPinchZoomGestureDetected(PEnv: PJNIEnv; this: JObject;
  pasobj: JLong; scaleFactor: JFloat; state: JInt); cdecl;
begin
  Java_Event_pOnPinchZoomGestureDetected(PEnv, this, TObject(pasobj),
    scaleFactor, state);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pOnLostFocus
  Signature: (JLjava/lang/String;)V }
procedure pOnLostFocus(PEnv: PJNIEnv; this: JObject; pasobj: JLong;
  text: JString); cdecl;
begin
  Java_Event_pOnLostFocus(PEnv, this, TObject(pasobj), text);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pOnBeforeDispatchDraw
  Signature: (JLandroid/graphics/Canvas;I)V }
procedure pOnBeforeDispatchDraw(PEnv: PJNIEnv; this: JObject; pasobj: JLong;
  canvas: JObject; tag: JInt); cdecl;
begin
  Java_Event_pOnBeforeDispatchDraw(PEnv, this, TObject(pasobj), canvas, tag);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pOnAfterDispatchDraw
  Signature: (JLandroid/graphics/Canvas;I)V }
procedure pOnAfterDispatchDraw(PEnv: PJNIEnv; this: JObject; pasobj: JLong;
  canvas: JObject; tag: JInt); cdecl;
begin
  Java_Event_pOnAfterDispatchDraw(PEnv, this, TObject(pasobj), canvas, tag);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pOnLayouting
  Signature: (JZ)V }
procedure pOnLayouting(PEnv: PJNIEnv; this: JObject; pasobj: JLong;
  changed: JBoolean); cdecl;
begin
  Java_Event_pOnLayouting(PEnv, this, TObject(pasobj), changed);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pOnBluetoothEnabled
  Signature: (J)V }
procedure pOnBluetoothEnabled(PEnv: PJNIEnv; this: JObject; pasobj: JLong);
  cdecl;
begin
  Java_Event_pOnBluetoothEnabled(PEnv, this, TObject(pasobj));
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pOnBluetoothDisabled
  Signature: (J)V }
procedure pOnBluetoothDisabled(PEnv: PJNIEnv; this: JObject; pasobj: JLong);
  cdecl;
begin
  Java_Event_pOnBluetoothDisabled(PEnv, this, TObject(pasobj));
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pOnBluetoothDeviceFound
  Signature: (JLjava/lang/String;Ljava/lang/String;)V }
procedure pOnBluetoothDeviceFound(PEnv: PJNIEnv; this: JObject; pasobj: JLong;
  deviceName: JString; deviceAddress: JString); cdecl;
begin
  Java_Event_pOnBluetoothDeviceFound(PEnv, this, TObject(pasobj), deviceName,
    deviceAddress);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pOnBluetoothDiscoveryStarted
  Signature: (J)V }
procedure pOnBluetoothDiscoveryStarted(PEnv: PJNIEnv; this: JObject;
  pasobj: JLong); cdecl;
begin
  Java_Event_pOnBluetoothDiscoveryStarted(PEnv, this, TObject(pasobj));
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pOnBluetoothDiscoveryFinished
  Signature: (JII)V }
procedure pOnBluetoothDiscoveryFinished(PEnv: PJNIEnv; this: JObject;
  pasobj: JLong; countFoundedDevices: JInt; countPairedDevices: JInt); cdecl;
begin
  Java_Event_pOnBluetoothDiscoveryFinished(PEnv, this, TObject(pasobj),
    countFoundedDevices, countPairedDevices);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pOnBluetoothDeviceBondStateChanged
  Signature: (JILjava/lang/String;Ljava/lang/String;)V }
procedure pOnBluetoothDeviceBondStateChanged(PEnv: PJNIEnv; this: JObject;
  pasobj: JLong; state: JInt; deviceName: JString; deviceAddress: JString);
  cdecl;
begin
  Java_Event_pOnBluetoothDeviceBondStateChanged(PEnv, this, TObject(pasobj),
    state, deviceName, deviceAddress);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pOnBluetoothClientSocketConnected
  Signature: (JLjava/lang/String;Ljava/lang/String;)V }
procedure pOnBluetoothClientSocketConnected(PEnv: PJNIEnv; this: JObject;
  pasobj: JLong; deviceName: JString; deviceAddress: JString); cdecl;
begin
  Java_Event_pOnBluetoothClientSocketConnected(PEnv, this, TObject(pasobj),
    deviceName, deviceAddress);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pOnBluetoothClientSocketIncomingData
  Signature: (J[B[B)V }
procedure pOnBluetoothClientSocketIncomingData(PEnv: PJNIEnv; this: JObject;
  pasobj: JLong; byteArrayContent: JByteArray; byteArrayHeader: JByteArray);
  cdecl;
begin
  Java_Event_pOnBluetoothClientSocketIncomingData(PEnv, this, TObject(pasobj),
    byteArrayContent, byteArrayHeader);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pOnBluetoothClientSocketDisconnected
  Signature: (J)V }
procedure pOnBluetoothClientSocketDisconnected(PEnv: PJNIEnv; this: JObject;
  pasobj: JLong); cdecl;
begin
  Java_Event_pOnBluetoothClientSocketDisconnected(PEnv, this, TObject(pasobj));
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pOnClickWidgetItem
  Signature: (JIZ)V }
procedure pOnClickWidgetItem(PEnv: PJNIEnv; this: JObject; pasobj: JLong;
  position: JInt; checked: JBoolean); cdecl;
begin
  Java_Event_pOnClickWidgetItem(PEnv, this, TObject(pasobj), position, checked);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pOnClickCaptionItem
  Signature: (JILjava/lang/String;)V }
procedure pOnClickCaptionItem(PEnv: PJNIEnv; this: JObject; pasobj: JLong;
  position: JInt; caption: JString); cdecl;
begin
  Java_Event_pOnClickCaptionItem(PEnv, this, TObject(pasobj), position, caption
    );
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pOnListViewLongClickCaptionItem
  Signature: (JILjava/lang/String;)V }
procedure pOnListViewLongClickCaptionItem(PEnv: PJNIEnv; this: JObject;
  pasobj: JLong; position: JInt; caption: JString); cdecl;
begin
  Java_Event_pOnListViewLongClickCaptionItem(PEnv, this, TObject(pasobj),
    position, caption);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pOnListViewDrawItemCaptionColor
  Signature: (JILjava/lang/String;)I }
function pOnListViewDrawItemCaptionColor(PEnv: PJNIEnv; this: JObject;
  pasobj: JLong; position: JInt; caption: JString): JInt; cdecl;
begin
  Result:=Java_Event_pOnListViewDrawItemCaptionColor(PEnv, this, TObject(pasobj
    ), position, caption);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pOnListViewDrawItemBitmap
  Signature: (JILjava/lang/String;)Landroid/graphics/Bitmap; }
function pOnListViewDrawItemBitmap(PEnv: PJNIEnv; this: JObject; pasobj: JLong;
  position: JInt; caption: JString): JObject; cdecl;
begin
  Result:=Java_Event_pOnListViewDrawItemBitmap(PEnv, this, TObject(pasobj),
    position, caption);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pOnWidgeItemLostFocus
  Signature: (JILjava/lang/String;)V }
procedure pOnWidgeItemLostFocus(PEnv: PJNIEnv; this: JObject; pasobj: JLong;
  position: JInt; widgetText: JString); cdecl;
begin
  Java_Event_pOnWidgeItemLostFocus(PEnv, this, TObject(pasobj), position,
    widgetText);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pOnListViewScrollStateChanged
  Signature: (JIIIZ)V }
procedure pOnListViewScrollStateChanged(PEnv: PJNIEnv; this: JObject;
  pasobj: JLong; firstVisibleItem: JInt; visibleItemCount: JInt;
  totalItemCount: JInt; lastItemReached: JBoolean); cdecl;
begin
  Java_Event_pOnListViewScrollStateChanged(PEnv, this, TObject(pasobj),
    firstVisibleItem, visibleItemCount, totalItemCount, lastItemReached);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pOnListViewDrawItemWidgetTextColor
  Signature: (JILjava/lang/String;)I }
function pOnListViewDrawItemWidgetTextColor(PEnv: PJNIEnv; this: JObject;
  pasobj: JLong; position: JInt; widgetText: JString): JInt; cdecl;
begin
  Result:=Java_Event_pOnListViewDrawItemWidgetTextColor(PEnv, this, TObject(
    pasobj), position, widgetText);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pOnListViewDrawItemWidgetImage
  Signature: (JILjava/lang/String;)Landroid/graphics/Bitmap; }
function pOnListViewDrawItemWidgetImage(PEnv: PJNIEnv; this: JObject;
  pasobj: JLong; position: JInt; widgetText: JString): JObject; cdecl;
begin
  Result:=Java_Event_pOnListViewDrawItemWidgetImage(PEnv, this, TObject(pasobj
    ), position, widgetText);
end;

{ Class:     com_example_appbluetoothclientsocketdemo1_Controls
  Method:    pOnTimer
  Signature: (J)V }
procedure pOnTimer(PEnv: PJNIEnv; this: JObject; pasobj: JLong); cdecl;
begin
  Java_Event_pOnTimer(PEnv, this, TObject(pasobj));
end;

const NativeMethods: array[0..55] of JNINativeMethod = (
   (name: 'pAppOnCreate';
    signature: '(Landroid/content/Context;Landroid/widget/RelativeLayout;'
      +'Landroid/content/Intent;)V';
    fnPtr: @pAppOnCreate; ),
   (name: 'pAppOnScreenStyle';
    signature: '()I';
    fnPtr: @pAppOnScreenStyle; ),
   (name: 'pAppOnNewIntent';
    signature: '(Landroid/content/Intent;)V';
    fnPtr: @pAppOnNewIntent; ),
   (name: 'pAppOnDestroy';
    signature: '()V';
    fnPtr: @pAppOnDestroy; ),
   (name: 'pAppOnPause';
    signature: '()V';
    fnPtr: @pAppOnPause; ),
   (name: 'pAppOnRestart';
    signature: '()V';
    fnPtr: @pAppOnRestart; ),
   (name: 'pAppOnResume';
    signature: '()V';
    fnPtr: @pAppOnResume; ),
   (name: 'pAppOnStart';
    signature: '()V';
    fnPtr: @pAppOnStart; ),
   (name: 'pAppOnStop';
    signature: '()V';
    fnPtr: @pAppOnStop; ),
   (name: 'pAppOnBackPressed';
    signature: '()V';
    fnPtr: @pAppOnBackPressed; ),
   (name: 'pAppOnRotate';
    signature: '(I)I';
    fnPtr: @pAppOnRotate; ),
   (name: 'pAppOnConfigurationChanged';
    signature: '()V';
    fnPtr: @pAppOnConfigurationChanged; ),
   (name: 'pAppOnActivityResult';
    signature: '(IILandroid/content/Intent;)V';
    fnPtr: @pAppOnActivityResult; ),
   (name: 'pAppOnCreateOptionsMenu';
    signature: '(Landroid/view/Menu;)V';
    fnPtr: @pAppOnCreateOptionsMenu; ),
   (name: 'pAppOnClickOptionMenuItem';
    signature: '(Landroid/view/MenuItem;ILjava/lang/String;Z)V';
    fnPtr: @pAppOnClickOptionMenuItem; ),
   (name: 'pAppOnPrepareOptionsMenu';
    signature: '(Landroid/view/Menu;I)Z';
    fnPtr: @pAppOnPrepareOptionsMenu; ),
   (name: 'pAppOnPrepareOptionsMenuItem';
    signature: '(Landroid/view/Menu;Landroid/view/MenuItem;I)Z';
    fnPtr: @pAppOnPrepareOptionsMenuItem; ),
   (name: 'pAppOnCreateContextMenu';
    signature: '(Landroid/view/ContextMenu;)V';
    fnPtr: @pAppOnCreateContextMenu; ),
   (name: 'pAppOnClickContextMenuItem';
    signature: '(Landroid/view/MenuItem;ILjava/lang/String;Z)V';
    fnPtr: @pAppOnClickContextMenuItem; ),
   (name: 'pOnDraw';
    signature: '(J)V';
    fnPtr: @pOnDraw; ),
   (name: 'pOnTouch';
    signature: '(JIIFFFF)V';
    fnPtr: @pOnTouch; ),
   (name: 'pOnClickGeneric';
    signature: '(JI)V';
    fnPtr: @pOnClickGeneric; ),
   (name: 'pAppOnSpecialKeyDown';
    signature: '(CILjava/lang/String;)Z';
    fnPtr: @pAppOnSpecialKeyDown; ),
   (name: 'pOnClick';
    signature: '(JI)V';
    fnPtr: @pOnClick; ),
   (name: 'pOnLongClick';
    signature: '(JI)V';
    fnPtr: @pOnLongClick; ),
   (name: 'pOnChange';
    signature: '(JLjava/lang/String;I)V';
    fnPtr: @pOnChange; ),
   (name: 'pOnChanged';
    signature: '(JLjava/lang/String;I)V';
    fnPtr: @pOnChanged; ),
   (name: 'pOnEnter';
    signature: '(J)V';
    fnPtr: @pOnEnter; ),
   (name: 'pOnClose';
    signature: '(J)V';
    fnPtr: @pOnClose; ),
   (name: 'pAppOnViewClick';
    signature: '(Landroid/view/View;I)V';
    fnPtr: @pAppOnViewClick; ),
   (name: 'pAppOnListItemClick';
    signature: '(Landroid/widget/AdapterView;Landroid/view/View;II)V';
    fnPtr: @pAppOnListItemClick; ),
   (name: 'pOnFlingGestureDetected';
    signature: '(JI)V';
    fnPtr: @pOnFlingGestureDetected; ),
   (name: 'pOnPinchZoomGestureDetected';
    signature: '(JFI)V';
    fnPtr: @pOnPinchZoomGestureDetected; ),
   (name: 'pOnLostFocus';
    signature: '(JLjava/lang/String;)V';
    fnPtr: @pOnLostFocus; ),
   (name: 'pOnBeforeDispatchDraw';
    signature: '(JLandroid/graphics/Canvas;I)V';
    fnPtr: @pOnBeforeDispatchDraw; ),
   (name: 'pOnAfterDispatchDraw';
    signature: '(JLandroid/graphics/Canvas;I)V';
    fnPtr: @pOnAfterDispatchDraw; ),
   (name: 'pOnLayouting';
    signature: '(JZ)V';
    fnPtr: @pOnLayouting; ),
   (name: 'pOnBluetoothEnabled';
    signature: '(J)V';
    fnPtr: @pOnBluetoothEnabled; ),
   (name: 'pOnBluetoothDisabled';
    signature: '(J)V';
    fnPtr: @pOnBluetoothDisabled; ),
   (name: 'pOnBluetoothDeviceFound';
    signature: '(JLjava/lang/String;Ljava/lang/String;)V';
    fnPtr: @pOnBluetoothDeviceFound; ),
   (name: 'pOnBluetoothDiscoveryStarted';
    signature: '(J)V';
    fnPtr: @pOnBluetoothDiscoveryStarted; ),
   (name: 'pOnBluetoothDiscoveryFinished';
    signature: '(JII)V';
    fnPtr: @pOnBluetoothDiscoveryFinished; ),
   (name: 'pOnBluetoothDeviceBondStateChanged';
    signature: '(JILjava/lang/String;Ljava/lang/String;)V';
    fnPtr: @pOnBluetoothDeviceBondStateChanged; ),
   (name: 'pOnBluetoothClientSocketConnected';
    signature: '(JLjava/lang/String;Ljava/lang/String;)V';
    fnPtr: @pOnBluetoothClientSocketConnected; ),
   (name: 'pOnBluetoothClientSocketIncomingData';
    signature: '(J[B[B)V';
    fnPtr: @pOnBluetoothClientSocketIncomingData; ),
   (name: 'pOnBluetoothClientSocketDisconnected';
    signature: '(J)V';
    fnPtr: @pOnBluetoothClientSocketDisconnected; ),
   (name: 'pOnClickWidgetItem';
    signature: '(JIZ)V';
    fnPtr: @pOnClickWidgetItem; ),
   (name: 'pOnClickCaptionItem';
    signature: '(JILjava/lang/String;)V';
    fnPtr: @pOnClickCaptionItem; ),
   (name: 'pOnListViewLongClickCaptionItem';
    signature: '(JILjava/lang/String;)V';
    fnPtr: @pOnListViewLongClickCaptionItem; ),
   (name: 'pOnListViewDrawItemCaptionColor';
    signature: '(JILjava/lang/String;)I';
    fnPtr: @pOnListViewDrawItemCaptionColor; ),
   (name: 'pOnListViewDrawItemBitmap';
    signature: '(JILjava/lang/String;)Landroid/graphics/Bitmap;';
    fnPtr: @pOnListViewDrawItemBitmap; ),
   (name: 'pOnWidgeItemLostFocus';
    signature: '(JILjava/lang/String;)V';
    fnPtr: @pOnWidgeItemLostFocus; ),
   (name: 'pOnListViewScrollStateChanged';
    signature: '(JIIIZ)V';
    fnPtr: @pOnListViewScrollStateChanged; ),
   (name: 'pOnListViewDrawItemWidgetTextColor';
    signature: '(JILjava/lang/String;)I';
    fnPtr: @pOnListViewDrawItemWidgetTextColor; ),
   (name: 'pOnListViewDrawItemWidgetImage';
    signature: '(JILjava/lang/String;)Landroid/graphics/Bitmap;';
    fnPtr: @pOnListViewDrawItemWidgetImage; ),
   (name: 'pOnTimer';
    signature: '(J)V';
    fnPtr: @pOnTimer; )
);

function RegisterNativeMethodsArray(PEnv: PJNIEnv; className: PChar;
  methods: PJNINativeMethod; countMethods: integer): integer;
var
  curClass: jClass;
begin
  Result:= JNI_FALSE;
  curClass:= (PEnv^).FindClass(PEnv, className);
  if curClass <> nil then
  begin
    if (PEnv^).RegisterNatives(PEnv, curClass, methods, countMethods) > 0
      then Result:= JNI_TRUE;
  end;
end;

function RegisterNativeMethods(PEnv: PJNIEnv; className: PChar): integer;
begin
  Result:= RegisterNativeMethodsArray(PEnv, className, @NativeMethods[0], Length
    (NativeMethods));
end;

function JNI_OnLoad(VM: PJavaVM; {%H-}reserved: pointer): JInt; cdecl;
var
  PEnv: PPointer;
  curEnv: PJNIEnv;
begin
  PEnv:= nil;
  Result:= JNI_VERSION_1_6;
  (VM^).GetEnv(VM, @PEnv, Result);
  if PEnv <> nil then
  begin
     curEnv:= PJNIEnv(PEnv);
     RegisterNativeMethods(curEnv, 'com/example/appbluetoothclientsocketdemo1/'
       +'Controls');
  end;
  gVM:= VM; {AndroidWidget.pas}
end;

procedure JNI_OnUnload(VM: PJavaVM; {%H-}reserved: pointer); cdecl;
var
  PEnv: PPointer;
  curEnv: PJNIEnv;
begin
  PEnv:= nil;
  (VM^).GetEnv(VM, @PEnv, JNI_VERSION_1_6);
  if PEnv <> nil then
  begin
    curEnv:= PJNIEnv(PEnv);
    (curEnv^).DeleteGlobalRef(curEnv, gjClass);
    gjClass:= nil; {AndroidWidget.pas}
    gVM:= nil; {AndroidWidget.pas}
  end;
  gApp.Terminate;
  FreeAndNil(gApp);
end;

exports
  JNI_OnLoad name 'JNI_OnLoad',
  JNI_OnUnload name 'JNI_OnUnload',
  pAppOnCreate name 'Java_com_example_appbluetoothclientsocketdemo1_Controls_'
    +'pAppOnCreate',
  pAppOnScreenStyle name 'Java_com_example_appbluetoothclientsocketdemo1_'
    +'Controls_pAppOnScreenStyle',
  pAppOnNewIntent name 'Java_com_example_appbluetoothclientsocketdemo1_'
    +'Controls_pAppOnNewIntent',
  pAppOnDestroy name 'Java_com_example_appbluetoothclientsocketdemo1_Controls_'
    +'pAppOnDestroy',
  pAppOnPause name 'Java_com_example_appbluetoothclientsocketdemo1_Controls_'
    +'pAppOnPause',
  pAppOnRestart name 'Java_com_example_appbluetoothclientsocketdemo1_Controls_'
    +'pAppOnRestart',
  pAppOnResume name 'Java_com_example_appbluetoothclientsocketdemo1_Controls_'
    +'pAppOnResume',
  pAppOnStart name 'Java_com_example_appbluetoothclientsocketdemo1_Controls_'
    +'pAppOnStart',
  pAppOnStop name 'Java_com_example_appbluetoothclientsocketdemo1_Controls_'
    +'pAppOnStop',
  pAppOnBackPressed name 'Java_com_example_appbluetoothclientsocketdemo1_'
    +'Controls_pAppOnBackPressed',
  pAppOnRotate name 'Java_com_example_appbluetoothclientsocketdemo1_Controls_'
    +'pAppOnRotate',
  pAppOnConfigurationChanged name 'Java_com_example_appbluetoothclientsocketdem'
    +'o1_Controls_pAppOnConfigurationChanged',
  pAppOnActivityResult name 'Java_com_example_appbluetoothclientsocketdemo1_'
    +'Controls_pAppOnActivityResult',
  pAppOnCreateOptionsMenu name 'Java_com_example_appbluetoothclientsocketdemo1'
    +'_Controls_pAppOnCreateOptionsMenu',
  pAppOnClickOptionMenuItem name 'Java_com_example_appbluetoothclientsocketdemo'
    +'1_Controls_pAppOnClickOptionMenuItem',
  pAppOnPrepareOptionsMenu name 'Java_com_example_appbluetoothclientsocketdemo'
    +'1_Controls_pAppOnPrepareOptionsMenu',
  pAppOnPrepareOptionsMenuItem name 'Java_com_example_appbluetoothclientsocketd'
    +'emo1_Controls_pAppOnPrepareOptionsMenuItem',
  pAppOnCreateContextMenu name 'Java_com_example_appbluetoothclientsocketdemo1'
    +'_Controls_pAppOnCreateContextMenu',
  pAppOnClickContextMenuItem name 'Java_com_example_appbluetoothclientsocketdem'
    +'o1_Controls_pAppOnClickContextMenuItem',
  pOnDraw name
    'Java_com_example_appbluetoothclientsocketdemo1_Controls_pOnDraw',
  pOnTouch name 'Java_com_example_appbluetoothclientsocketdemo1_Controls_'
    +'pOnTouch',
  pOnClickGeneric name 'Java_com_example_appbluetoothclientsocketdemo1_'
    +'Controls_pOnClickGeneric',
  pAppOnSpecialKeyDown name 'Java_com_example_appbluetoothclientsocketdemo1_'
    +'Controls_pAppOnSpecialKeyDown',
  pOnClick name 'Java_com_example_appbluetoothclientsocketdemo1_Controls_'
    +'pOnClick',
  pOnLongClick name 'Java_com_example_appbluetoothclientsocketdemo1_Controls_'
    +'pOnLongClick',
  pOnChange name 'Java_com_example_appbluetoothclientsocketdemo1_Controls_'
    +'pOnChange',
  pOnChanged name 'Java_com_example_appbluetoothclientsocketdemo1_Controls_'
    +'pOnChanged',
  pOnEnter name 'Java_com_example_appbluetoothclientsocketdemo1_Controls_'
    +'pOnEnter',
  pOnClose name 'Java_com_example_appbluetoothclientsocketdemo1_Controls_'
    +'pOnClose',
  pAppOnViewClick name 'Java_com_example_appbluetoothclientsocketdemo1_'
    +'Controls_pAppOnViewClick',
  pAppOnListItemClick name 'Java_com_example_appbluetoothclientsocketdemo1_'
    +'Controls_pAppOnListItemClick',
  pOnFlingGestureDetected name 'Java_com_example_appbluetoothclientsocketdemo1'
    +'_Controls_pOnFlingGestureDetected',
  pOnPinchZoomGestureDetected name 'Java_com_example_appbluetoothclientsocketde'
    +'mo1_Controls_pOnPinchZoomGestureDetected',
  pOnLostFocus name 'Java_com_example_appbluetoothclientsocketdemo1_Controls_'
    +'pOnLostFocus',
  pOnBeforeDispatchDraw name 'Java_com_example_appbluetoothclientsocketdemo1_'
    +'Controls_pOnBeforeDispatchDraw',
  pOnAfterDispatchDraw name 'Java_com_example_appbluetoothclientsocketdemo1_'
    +'Controls_pOnAfterDispatchDraw',
  pOnLayouting name 'Java_com_example_appbluetoothclientsocketdemo1_Controls_'
    +'pOnLayouting',
  pOnBluetoothEnabled name 'Java_com_example_appbluetoothclientsocketdemo1_'
    +'Controls_pOnBluetoothEnabled',
  pOnBluetoothDisabled name 'Java_com_example_appbluetoothclientsocketdemo1_'
    +'Controls_pOnBluetoothDisabled',
  pOnBluetoothDeviceFound name 'Java_com_example_appbluetoothclientsocketdemo1'
    +'_Controls_pOnBluetoothDeviceFound',
  pOnBluetoothDiscoveryStarted name 'Java_com_example_appbluetoothclientsocketd'
    +'emo1_Controls_pOnBluetoothDiscoveryStarted',
  pOnBluetoothDiscoveryFinished name 'Java_com_example_appbluetoothclientsocket'
    +'demo1_Controls_pOnBluetoothDiscoveryFinished',
  pOnBluetoothDeviceBondStateChanged name 'Java_com_example_appbluetoothclients'
    +'ocketdemo1_Controls_pOnBluetoothDeviceBondStateChanged',
  pOnBluetoothClientSocketConnected name 'Java_com_example_appbluetoothclientso'
    +'cketdemo1_Controls_pOnBluetoothClientSocketConnected',
  pOnBluetoothClientSocketIncomingData name 'Java_com_example_'
    +'appbluetoothclientsocketdemo1_Controls_'
    +'pOnBluetoothClientSocketIncomingData',
  pOnBluetoothClientSocketDisconnected name 'Java_com_example_'
    +'appbluetoothclientsocketdemo1_Controls_'
    +'pOnBluetoothClientSocketDisconnected',
  pOnClickWidgetItem name 'Java_com_example_appbluetoothclientsocketdemo1_'
    +'Controls_pOnClickWidgetItem',
  pOnClickCaptionItem name 'Java_com_example_appbluetoothclientsocketdemo1_'
    +'Controls_pOnClickCaptionItem',
  pOnListViewLongClickCaptionItem name 'Java_com_example_appbluetoothclientsock'
    +'etdemo1_Controls_pOnListViewLongClickCaptionItem',
  pOnListViewDrawItemCaptionColor name 'Java_com_example_appbluetoothclientsock'
    +'etdemo1_Controls_pOnListViewDrawItemCaptionColor',
  pOnListViewDrawItemBitmap name 'Java_com_example_appbluetoothclientsocketdemo'
    +'1_Controls_pOnListViewDrawItemBitmap',
  pOnWidgeItemLostFocus name 'Java_com_example_appbluetoothclientsocketdemo1_'
    +'Controls_pOnWidgeItemLostFocus',
  pOnListViewScrollStateChanged name 'Java_com_example_appbluetoothclientsocket'
    +'demo1_Controls_pOnListViewScrollStateChanged',
  pOnListViewDrawItemWidgetTextColor name 'Java_com_example_appbluetoothclients'
    +'ocketdemo1_Controls_pOnListViewDrawItemWidgetTextColor',
  pOnListViewDrawItemWidgetImage name 'Java_com_example_appbluetoothclientsocke'
    +'tdemo1_Controls_pOnListViewDrawItemWidgetImage',
  pOnTimer name 'Java_com_example_appbluetoothclientsocketdemo1_Controls_'
    +'pOnTimer';

{%endregion}

begin
  gApp:= jApp.Create(nil);{AndroidWidget.pas}
  gApp.Title:= 'My Android Bridges Library';
  gjAppName:= 'com.example.appbluetoothclientsocketdemo1';{AndroidWidget.pas}
  gjClassName:= 'com/example/appbluetoothclientsocketdemo1/Controls';{AndroidWidget.pas}
  gApp.AppName:=gjAppName;
  gApp.ClassName:=gjClassName;
  gApp.Initialize;
  gApp.CreateForm(TAndroidModule1, AndroidModule1);
end.
(*last [smart] upgrade: 7/3/2016 22:08:14*)
