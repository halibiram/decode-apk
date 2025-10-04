package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.os.StrictMode;
import com.google.android.gms.internal.ads.zzbxw;
import com.google.android.gms.internal.ads.zzcec;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzch {
    @Deprecated
    public static Object zza(Context context, Callable callable) {
        try {
            StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
            try {
                StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
                return callable.call();
            } finally {
                StrictMode.setThreadPolicy(threadPolicy);
            }
        } catch (Throwable th) {
            zzcec.zzh(new ObfuscatedString(new long[]{114459786441476584L, 6559469530198081643L, 3024783558932405062L, -377008078384968664L}).toString(), th);
            zzbxw.zza(context).zzg(th, new ObfuscatedString(new long[]{9298550958079950L, 2527204516388816056L, 6318264627043022490L, -6030040295790757439L, -8273951166071574162L, 3377540155357479226L}).toString());
            return null;
        }
    }
}
