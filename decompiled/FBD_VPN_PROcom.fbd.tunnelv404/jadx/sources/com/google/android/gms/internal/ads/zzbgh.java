package com.google.android.gms.internal.ads;

import android.os.StrictMode;

/* loaded from: classes2.dex */
public final class zzbgh {
    public static Object zza(zzfxu zzfxuVar) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        try {
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
            return zzfxuVar.zza();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }
}
