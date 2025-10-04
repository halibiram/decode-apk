package com.google.android.gms.internal.ads;

import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import com.panda912.muddy.ObfuscatedString;

@RequiresApi(31)
/* loaded from: classes2.dex */
final class zzsw {
    @DoNotInline
    public static void zza(zzsp zzspVar, zzpb zzpbVar) {
        LogSessionId logSessionId;
        boolean equals;
        String stringId;
        LogSessionId zza = zzpbVar.zza();
        logSessionId = LogSessionId.LOG_SESSION_ID_NONE;
        equals = zza.equals(logSessionId);
        if (!equals) {
            MediaFormat mediaFormat = zzspVar.zzb;
            stringId = zza.getStringId();
            mediaFormat.setString(new ObfuscatedString(new long[]{-5367158893841522143L, 7637770482798407222L, 2826683547196308177L}).toString(), stringId);
        }
    }
}
