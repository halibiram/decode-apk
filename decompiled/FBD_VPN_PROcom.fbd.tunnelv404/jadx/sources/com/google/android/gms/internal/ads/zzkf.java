package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.metrics.LogSessionId;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
@RequiresApi(31)
/* loaded from: classes2.dex */
public final class zzkf {
    @DoNotInline
    public static zzpb zza(Context context, zzko zzkoVar, boolean z) {
        LogSessionId logSessionId;
        zzox zzb = zzox.zzb(context);
        if (zzb == null) {
            zzff.zzf(new ObfuscatedString(new long[]{-298268511308677222L, -1395301370429430273L, -8852374819829609575L}).toString(), new ObfuscatedString(new long[]{-9001363032608250123L, 1371552577141276924L, -7154385329296399900L, -1992803506317986672L, 209373581262650083L}).toString());
            logSessionId = LogSessionId.LOG_SESSION_ID_NONE;
            return new zzpb(logSessionId);
        }
        if (z) {
            zzkoVar.zzz(zzb);
        }
        return new zzpb(zzb.zza());
    }
}
