package com.journeyapps.barcodescanner;

import android.os.Looper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes3.dex */
public class Util {
    public static void validateMainThread() {
        if (Looper.getMainLooper() == Looper.myLooper()) {
        } else {
            throw new IllegalStateException(new ObfuscatedString(new long[]{1456110604473488087L, -5401808085893053576L, 4105226375996536596L, -6960594805249492057L, -4642955414405378500L, -4889525810602733632L}).toString());
        }
    }
}
