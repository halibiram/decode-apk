package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzcwx {
    private final zzfgy zza;
    private final zzfgm zzb;
    private final String zzc;

    public zzcwx(zzfgy zzfgyVar, zzfgm zzfgmVar, @Nullable String str) {
        this.zza = zzfgyVar;
        this.zzb = zzfgmVar;
        this.zzc = str == null ? new ObfuscatedString(new long[]{-2046887819431811589L, 6914230731348654479L, 8487773895747950587L, 9083462478497670556L, 2135995589277511743L, 4676506182257220815L, 6125975847803197942L}).toString() : str;
    }

    public final zzfgm zza() {
        return this.zzb;
    }

    public final zzfgp zzb() {
        return this.zza.zzb.zzb;
    }

    public final zzfgy zzc() {
        return this.zza;
    }

    public final String zzd() {
        return this.zzc;
    }
}
