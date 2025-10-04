package com.android.volley;

import android.os.SystemClock;
import android.util.Log;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class VolleyLog {
    private static final String CLASS_NAME;
    public static boolean DEBUG;
    public static String TAG;

    /* loaded from: classes.dex */
    public static class MarkerLog {
        public static final boolean ENABLED = VolleyLog.DEBUG;
        private static final long MIN_DURATION_FOR_LOGGING_MS = 0;
        private final List<Marker> mMarkers = new ArrayList();
        private boolean mFinished = false;

        /* loaded from: classes.dex */
        public static class Marker {
            public final String name;
            public final long thread;
            public final long time;

            public Marker(String str, long j, long j2) {
                this.name = str;
                this.thread = j;
                this.time = j2;
            }
        }

        private long getTotalDuration() {
            if (this.mMarkers.size() == 0) {
                return 0L;
            }
            return ((Marker) AbstractC0362x4440ab85.m2928x75d576dc(1, this.mMarkers)).time - this.mMarkers.get(0).time;
        }

        public synchronized void add(String str, long j) {
            if (!this.mFinished) {
                this.mMarkers.add(new Marker(str, j, SystemClock.elapsedRealtime()));
            } else {
                throw new IllegalStateException(new ObfuscatedString(new long[]{-1485500635860188680L, -2989032090564855127L, 6611504744095258402L, 6871873426728035246L, 57342809438657793L}).toString());
            }
        }

        public void finalize() {
            if (!this.mFinished) {
                finish(new ObfuscatedString(new long[]{3395570902515314607L, -9206226974285629768L, -258584501019968828L, -7974647382864781241L}).toString());
                VolleyLog.e(new ObfuscatedString(new long[]{-2545211153989788481L, 6919177004485236174L, 1478422313479103496L, 1083292506755819150L, 1845389536806664260L, 622224373291215809L, -2022130796063474442L, 8121722632459357728L, 7599478765421781140L, 3873916805294538619L}).toString(), new Object[0]);
            }
        }

        public synchronized void finish(String str) {
            this.mFinished = true;
            long totalDuration = getTotalDuration();
            if (totalDuration <= 0) {
                return;
            }
            long j = this.mMarkers.get(0).time;
            VolleyLog.d(new ObfuscatedString(new long[]{-7655942195931681049L, 731070996864135144L, -1295663416425631913L}).toString(), Long.valueOf(totalDuration), str);
            for (Marker marker : this.mMarkers) {
                long j2 = marker.time;
                VolleyLog.d(new ObfuscatedString(new long[]{-8179208387447702104L, -5047171521310656987L, -5939613306693434174L}).toString(), Long.valueOf(j2 - j), Long.valueOf(marker.thread), marker.name);
                j = j2;
            }
        }
    }

    static {
        String obfuscatedString = new ObfuscatedString(new long[]{9182812612102418960L, 7778839040919644060L}).toString();
        TAG = obfuscatedString;
        DEBUG = Log.isLoggable(obfuscatedString, 2);
        CLASS_NAME = VolleyLog.class.getName();
    }

    private static String buildMessage(String str, Object... objArr) {
        if (objArr != null) {
            str = String.format(Locale.US, str, objArr);
        }
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        String obfuscatedString = new ObfuscatedString(new long[]{6508622776592153675L, 136214321494943634L, 2569748809800903538L}).toString();
        int i = 2;
        while (true) {
            if (i >= stackTrace.length) {
                break;
            }
            if (!stackTrace[i].getClassName().equals(CLASS_NAME)) {
                String className = stackTrace[i].getClassName();
                String substring = className.substring(className.lastIndexOf(46) + 1);
                StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(substring.substring(substring.lastIndexOf(36) + 1));
                m3341xc20437a5.append(new ObfuscatedString(new long[]{-3606434998536191764L, -9156062244982848730L}).toString());
                m3341xc20437a5.append(stackTrace[i].getMethodName());
                obfuscatedString = m3341xc20437a5.toString();
                break;
            }
            i++;
        }
        return String.format(Locale.US, new ObfuscatedString(new long[]{3431333224606033423L, 6808519770669388246L, 3306276143684425128L}).toString(), Long.valueOf(Thread.currentThread().getId()), obfuscatedString, str);
    }

    public static void d(String str, Object... objArr) {
        buildMessage(str, objArr);
    }

    public static void e(String str, Object... objArr) {
        buildMessage(str, objArr);
    }

    public static void setTag(String str) {
        d(new ObfuscatedString(new long[]{-381078945790861366L, 6173691128706190476L, 6539244715946532423L, 8116437722541980092L}).toString(), str);
        TAG = str;
        DEBUG = Log.isLoggable(str, 2);
    }

    public static void v(String str, Object... objArr) {
        if (DEBUG) {
            buildMessage(str, objArr);
        }
    }

    public static void wtf(String str, Object... objArr) {
        Log.wtf(TAG, buildMessage(str, objArr));
    }

    public static void e(Throwable th, String str, Object... objArr) {
        buildMessage(str, objArr);
    }

    public static void wtf(Throwable th, String str, Object... objArr) {
        Log.wtf(TAG, buildMessage(str, objArr), th);
    }
}
