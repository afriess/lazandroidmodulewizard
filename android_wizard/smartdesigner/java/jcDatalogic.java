
/*Draft java code by "Lazarus Android Module Wizard" [15.03.2024 10:04:36]*/
/*https://github.com/jmpessoa/lazandroidmodulewizard*/
/*jControl LAMW template*/

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;


import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.View.OnTouchListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.datalogic.device.info.SYSTEM;
import com.datalogic.decode.BarcodeManager;
import com.datalogic.decode.DecodeException;
import com.datalogic.decode.DecodeResult;
import com.datalogic.decode.ReadListener;
import com.datalogic.decode.StartListener;
import com.datalogic.decode.StopListener;
import com.datalogic.decode.TimeoutListener;
import com.datalogic.decode.configuration.DisplayNotification;



public class jcDatalogic extends Activity implements ReadListener,
        StartListener, TimeoutListener, StopListener {
  
    private long pascalObj = 0;        //Pascal Object
    private Controls controls  = null; //Java/Pascal [events] Interface ...
    private Context  context   = null;

    // It will display the result
    private EditText showScanResult;
    // Current scan engine status
    private TextView status;
    static final String TAG = "Test-Scanner";
    private BarcodeManager mBarcodeManager;
    private boolean ignoreStop = false;
    private boolean previousNotification;
    private Toast mToast;


    //GUIDELINE: please, preferentially, init all yours params names with "_", ex: int _flag, String _hello ...
  
    public jcDatalogic(Controls _ctrls, long _self) { //Add more others news "_xxx" params if needed!
       //super(_ctrls.activity);
       context   = _ctrls.activity;
       pascalObj = _self;
       controls  = _ctrls;
    }
  
    public void jFree() {
      //free local objects...
    }
  
  //write others [public] methods code here......
  //GUIDELINE: please, preferentially, init all yours params names with "_", ex: int _flag, String _hello ...

    private void initScan() {
        try {
            mBarcodeManager = new BarcodeManager();
        } catch (Exception e) {
            Log.e(TAG, "Error while creating BarcodeManager");
            showMessage("ERROR! Check logcat");
            finish();
            return;
        }

        // Disable Display Notification
        DisplayNotification dn = new DisplayNotification(mBarcodeManager);
        previousNotification = dn.enable.get();
        dn.enable.set(false);
        try {
            dn.store(mBarcodeManager, false);
        } catch (Exception e) {
            Log.e(TAG, "Cannot disable Display Notification", e);
        }

        registerListeners();
    }

    // Register this activity as a listener for several scanner events
    private void registerListeners() {
        try {
            mBarcodeManager.addReadListener(this);
            mBarcodeManager.addStartListener(this);
            mBarcodeManager.addStopListener(this);
            mBarcodeManager.addTimeoutListener(this);
        } catch (Exception e) {
            Log.e(TAG, "Cannot add listener, the app won't work");
            showMessage("ERROR! Check logcat");
            finish();
        }
    }

    // Unregister this activity as a listener
    private void releaseListeners() {
        try {
            mBarcodeManager.removeReadListener(this);
            mBarcodeManager.removeStartListener(this);
            mBarcodeManager.removeStopListener(this);
            mBarcodeManager.removeTimeoutListener(this);
        } catch (DecodeException e) {
            Log.e(TAG, "Cannot remove listeners, the app won't work", e);
            showMessage("ERROR! Check logcat");
            finish();
        }
    }

    void showMessage(String s) {
        if (mToast == null || mToast.getView().getWindowVisibility() != View.VISIBLE) {
            mToast = Toast.makeText(this, s, Toast.LENGTH_SHORT);
            mToast.show();
        } else {
            mToast.setText(s);
        }
    }


    @Override
    protected void onPause() {
        super.onPause();

        // Release barcode manager
        try {
            if (mBarcodeManager != null) {
                mBarcodeManager.stopDecode();

                releaseListeners();

                // restore previous setting
                DisplayNotification dn = new DisplayNotification(mBarcodeManager);
                dn.enable.set(previousNotification);
                dn.store(mBarcodeManager, false);

                mBarcodeManager = null;
            }
        } catch (Exception e) {
            Log.e(TAG, "Cannot detach from Scanner correctly", e);
            showMessage("ERROR! Check logcat");
            finish();
        }
    }

    @Override
    protected void onResume() {
        super.onResume();
        initScan();
        //showScanResult.setHint(getResources().getText(R.string.scanner_hint));
    }

    @Override
    public void onScanStarted() {
        //status.setTextColor(Color.RED);
        //status.setText("Scanning");

        //showScanResult.setText("");
        //showMessage("Scanner Started");
        Log.d(TAG, "Scan start");
    }

    @Override
    public void onRead(DecodeResult result) {
        //status.setTextColor(Color.rgb(51, 153, 51));
        //status.setText("Result");

        showScanResult.append("Barcode Type: " + result.getBarcodeID()+ "\n");
        String string = result.getText();
        if( string!= null) {
            showScanResult.append("Result: " + string);
        }
        ignoreStop = true;

        byte[] bData = result.getRawData();
        String bDataHex = encodeHex(bData);
        String text = result.getText();
        String symb = result.getBarcodeID().toString();

        // All data as log
        Log.d(TAG, "Scan read");
        Log.d(TAG, "Symb: " + symb);
        Log.d(TAG, "Data: " + text);
        Log.d(TAG, "Data[]: " + bData.toString());
        Log.d(TAG, "As hex: " + bDataHex);

        //showMessage("Scanner Read");
	controls.pOnBarcodeRead(pascalObj,symb,text); // return void

        // None: 	pOnBarcodeRead(pascalObj,symb,text); // return void
    }

    @Override
    public void onScanStopped() {
        if(!ignoreStop) {
            //status.setTextColor(statusTextColor);
            status.setText("Ready");
            showMessage("Scanner Stopped");
        } else {
            ignoreStop = false;
        }
    }

    @Override
    public void onScanTimeout() {
        status.setTextColor(Color.WHITE);
        status.setText("Timeout");
        ignoreStop = true;

        showMessage("Scanning timed out");
        Log.d(TAG, "Scan timeout");
    }

/*
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case R.id.action_settings:
                Intent intent = new Intent(this, SettingsActivity.class);
                startActivity(intent);
                return true;
            case R.id.action_release_listeners:
                releaseListeners();
                return true;
            case R.id.action_register_listeners:
                registerListeners();
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }
*/

    String encodeHex(byte[] data) {
        if(data == null)
            return "";

        StringBuffer hexString = new StringBuffer();
        hexString.append('[');
        for (int i = 0; i < data.length; i++) {
            hexString.append(' ');
            String hex = Integer.toHexString(0xFF & data[i]);
            if (hex.length() == 1) {
                hexString.append('0');
            }
            hexString.append(hex);
        }
        hexString.append(']');
        return hexString.toString();
    }

    public Bitmap GetDeviceImage() {
        Bitmap img = SYSTEM.DEVICE_IMAGE;
        float ratio = ((float)img.getHeight()) / ((float)img.getWidth());
        int width = 200;
        int height = (int) Math.ceil(width * ratio);
        return Bitmap.createScaledBitmap(img, width, height, true);
  }
  
  public String GetScannerType() {
        return SYSTEM.BARCODE_SCANNER_TYPE.toString();
  } 
      
  public String GetDeviceDescription() {
        StringBuilder builder = new StringBuilder(
                "Scanner Type: " + GetScannerType() + "\n"
                    + "Boot Type: " + SYSTEM.BOOT_TYPE.toString() + "\n"
                    + "Device Modell: " + Build.MODEL + "\n"
                    + "WiFi Type: " + SYSTEM.WIFI_TYPE.toString() + "\n"
                    + "Firmware Version: " + SYSTEM.getVersions().get("FIRMWARE") + "\n"
                    + "Kernel Version: " + SYSTEM.getVersions().get("KERNEL") + "\n"
        );
        return builder.toString();
  }
}
