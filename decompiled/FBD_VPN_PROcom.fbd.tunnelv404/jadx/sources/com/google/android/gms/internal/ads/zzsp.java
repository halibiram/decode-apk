package com.google.android.gms.internal.ads;

import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.view.Surface;
import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzsp {
    public final zzsv zza;
    public final MediaFormat zzb;
    public final zzam zzc;

    @Nullable
    public final Surface zzd;

    @Nullable
    public final MediaCrypto zze = null;

    private zzsp(zzsv zzsvVar, MediaFormat mediaFormat, zzam zzamVar, @Nullable Surface surface, @Nullable MediaCrypto mediaCrypto, int i) {
        this.zza = zzsvVar;
        this.zzb = mediaFormat;
        this.zzc = zzamVar;
        this.zzd = surface;
    }

    public static zzsp zza(zzsv zzsvVar, MediaFormat mediaFormat, zzam zzamVar, @Nullable MediaCrypto mediaCrypto) {
        return new zzsp(zzsvVar, mediaFormat, zzamVar, null, null, 0);
    }

    public static zzsp zzb(zzsv zzsvVar, MediaFormat mediaFormat, zzam zzamVar, @Nullable Surface surface, @Nullable MediaCrypto mediaCrypto) {
        return new zzsp(zzsvVar, mediaFormat, zzamVar, surface, null, 0);
    }
}
