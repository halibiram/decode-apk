package com.google.android.gms.internal.consent_sdk;

import android.os.Handler;
import android.os.Looper;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzcr {
    public static final Handler zza = new Handler(Looper.getMainLooper());
    public static final Executor zzb = new zzcq(new ObfuscatedString(new long[]{-8753869316721924086L, 6223833815820215912L, -4957802622457607284L, 3106401587944562797L}).toString());

    public static void zza() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
        } else {
            throw new IllegalStateException(new ObfuscatedString(new long[]{-8253085716896399416L, -2344838285419274000L, 1197429168041065164L, 5941776814963035416L, -6971699342765550974L, 8412075438635867091L}).toString());
        }
    }
}
