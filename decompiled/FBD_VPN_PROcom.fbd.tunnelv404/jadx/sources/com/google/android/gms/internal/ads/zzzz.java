package com.google.android.gms.internal.ads;

import android.content.Context;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzzz implements zzabo {
    private final Context zza;
    private final zzaab zzb;

    public zzzz(Context context, zzaab zzaabVar, zzcq zzcqVar) {
        this.zza = context;
        this.zzb = zzaabVar;
        int i = zzfy.zza;
        if (i >= 29 && context.getApplicationInfo().targetSdkVersion >= 29 && i == 30) {
            String str = zzfy.zzd;
            if (!zzfwk.zzc(str, new ObfuscatedString(new long[]{-8643857513741792236L, 4437013704947299993L, 2162872539031489575L}).toString())) {
                zzfwk.zzc(str, new ObfuscatedString(new long[]{4898269814690124995L, 3695860633549771312L}).toString());
            }
        }
        throw null;
    }
}
