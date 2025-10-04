package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.provider.Settings;
import com.google.android.gms.internal.ads.zzbhw;
import com.google.android.gms.internal.ads.zzceb;
import com.google.android.gms.internal.ads.zzcec;
import com.google.android.gms.internal.ads.zzces;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzd {
    public static void zza(Context context) {
        int i = zzceb.zza;
        if (((Boolean) zzbhw.zza.zze()).booleanValue()) {
            try {
                if (Settings.Global.getInt(context.getContentResolver(), new ObfuscatedString(new long[]{5931046948804943521L, 1849744852692728939L, -2990195672309924053L, -233629564674171805L, 4241705078137150084L}).toString(), 0) != 0 && !zzceb.zzl()) {
                    ListenableFuture zzb = new zzc(context).zzb();
                    zzcec.zzi(new ObfuscatedString(new long[]{-475092431247929764L, 1230883774169290902L, 6212008904391604770L, -8501948404950473952L, 2134849706451682755L, -5781410518621174613L}).toString());
                    zzces.zza(zzb, new ObfuscatedString(new long[]{9072820808096433827L, 4678155857073978214L, 970231310949996796L, 7656798723712415658L, -3937316521050894272L, -6021704594787438563L}).toString());
                }
            } catch (Exception e) {
                zzcec.zzk(new ObfuscatedString(new long[]{1083887635846510365L, -890288418987250428L, -1033778065641817237L, 1492277450251911609L, 7580733827026586741L}).toString(), e);
            }
        }
    }
}
