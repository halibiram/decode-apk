package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.IntentFilter;
import androidx.annotation.NonNull;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzfpr {
    private static int zza = 2;

    public static void zza(@NonNull Context context) {
        context.registerReceiver(new zzfpq(), new IntentFilter(new ObfuscatedString(new long[]{-3036446914292914861L, 5079962707477491228L, -7132785684589764761L, -6794306231839151864L, 3345974965389692255L, -9134853819030774650L}).toString()));
    }

    public static int zzb() {
        if (zzfpn.zza() != zzfoj.zza) {
            return 2;
        }
        return zza;
    }
}
