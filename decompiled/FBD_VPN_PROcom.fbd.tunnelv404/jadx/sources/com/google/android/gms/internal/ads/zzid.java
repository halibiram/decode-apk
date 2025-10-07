package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import androidx.annotation.RequiresApi;
import defpackage.AbstractC1324x3fb6389b;

@RequiresApi(24)
/* loaded from: classes2.dex */
final class zzid {
    private final MediaCodec.CryptoInfo zza;
    private final MediaCodec.CryptoInfo.Pattern zzb = AbstractC1324x3fb6389b.m4385xfbe0c504();

    public static /* bridge */ /* synthetic */ void zza(zzid zzidVar, int i, int i2) {
        zzidVar.zzb.set(i, i2);
        zzidVar.zza.setPattern(zzidVar.zzb);
    }
}
