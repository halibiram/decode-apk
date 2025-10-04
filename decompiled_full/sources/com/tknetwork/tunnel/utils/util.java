package com.tknetwork.tunnel.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.Signature;
import android.graphics.Typeface;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.widget.Toast;
import androidx.preference.Preference;
import com.panda912.muddy.ObfuscatedString;
import com.tknetwork.tunnel.activities.OpenVPNApplication;
import com.tknetwork.tunnel.config.SettingsConstants;
import config.ConfigUtil;
import java.lang.reflect.Field;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;

@SuppressLint({"StaticFieldLeak"})
/* loaded from: classes3.dex */
public class util implements SettingsConstants {
    private static ConfigUtil mConfig;
    private static Context mContext;
    public static String x = "DexterEskalarte2024";

    public util(Context context) {
        mContext = context;
        mConfig = ConfigUtil.getInstance(context);
    }

    public static String b(Context context) {
        try {
            StringBuilder sb = new StringBuilder();
            for (Signature signature : context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures) {
                sb.append(signature.toCharsString());
            }
            return sb.toString();
        } catch (Exception unused) {
            return new ObfuscatedString(new long[]{-6309520809505495864L}).toString();
        }
    }

    public static String getLocalIP() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress nextElement = inetAddresses.nextElement();
                    if (!nextElement.isLoopbackAddress() && (nextElement instanceof Inet4Address)) {
                        return nextElement.getHostAddress();
                    }
                }
            }
            return new ObfuscatedString(new long[]{8284692229436093602L, 8070601856439780904L, -798035921272469130L}).toString();
        } catch (SocketException unused) {
            return new ObfuscatedString(new long[]{9217263080885593329L, 3130701595041647856L, -7992122571047804333L, 4898302045226057690L}).toString();
        }
    }

    public static String getNetworkType() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) mContext().getSystemService(new ObfuscatedString(new long[]{-7393117806965858288L, -8544000112151567645L, -4056808240619988397L}).toString())).getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            if (activeNetworkInfo.getType() == 1) {
                return new ObfuscatedString(new long[]{6141914564007001224L, -4987987903306568894L, -5365919611801073097L}).toString();
            }
            if (activeNetworkInfo.getType() == 0) {
                int subtype = activeNetworkInfo.getSubtype();
                if (subtype != 1 && subtype != 2 && subtype != 4 && subtype != 7 && subtype != 11 && subtype != 16) {
                    if (subtype != 3 && subtype != 5 && subtype != 6 && subtype != 8 && subtype != 9 && subtype != 10 && subtype != 12 && subtype != 14 && subtype != 15 && subtype != 17) {
                        if (subtype != 13 && subtype != 18 && subtype != 19) {
                            if (subtype == 20) {
                                return new ObfuscatedString(new long[]{-394650187525273705L, 2751450486219001883L, 3291060482935713368L}).toString();
                            }
                            return new ObfuscatedString(new long[]{-6962710271535145981L, 4122090776759255234L, 7796956435698114239L}).toString();
                        }
                        return new ObfuscatedString(new long[]{-3772826665845557086L, -8908304402366459445L, 3991142297664467628L, -3214564481384013247L}).toString();
                    }
                    return new ObfuscatedString(new long[]{7328006340135532806L, 5938900026654037108L, 2145276094281117136L}).toString();
                }
                return new ObfuscatedString(new long[]{5284896562059623814L, 750107726228089991L, 3067863477912568759L}).toString();
            }
            return new ObfuscatedString(new long[]{-1808556132479139110L, -4360755747778011979L, -1007270261379689347L}).toString();
        }
        return new ObfuscatedString(new long[]{2275990271845005230L, -4351781389615184724L, -1973547238582502029L}).toString();
    }

    public static boolean isNetworkAvailable(Context context) {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService(new ObfuscatedString(new long[]{7654350039963430704L, -7176190500597144536L, -2977092641386920483L}).toString());
        if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isAvailable() || !activeNetworkInfo.isConnected()) {
            return false;
        }
        return true;
    }

    private static Context mContext() {
        Context context = mContext;
        if (context == null) {
            return OpenVPNApplication.getApp();
        }
        return context;
    }

    public static String pw_repl(String str, String str2) {
        return str2;
    }

    @Override // com.tknetwork.tunnel.config.SettingsConstants
    public boolean onPreferenceChange(Preference preference, Object obj) {
        return false;
    }

    public void overrideFont(String str, String str2) {
        try {
            Typeface createFromAsset = Typeface.createFromAsset(mContext().getAssets(), str2);
            Field declaredField = Typeface.class.getDeclaredField(str);
            declaredField.setAccessible(true);
            declaredField.set(null, createFromAsset);
        } catch (Exception e) {
            Toast.makeText(mContext(), e.getMessage(), 0).show();
        }
    }
}
