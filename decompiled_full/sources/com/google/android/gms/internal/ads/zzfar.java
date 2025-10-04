package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzfar {
    private final zzbze zza;
    private final int zzb;

    public zzfar(zzbze zzbzeVar, int i) {
        this.zza = zzbzeVar;
        this.zzb = i;
    }

    public final int zza() {
        return this.zzb;
    }

    @Nullable
    public final PackageInfo zzb() {
        return this.zza.zzf;
    }

    public final String zzc() {
        return this.zza.zzd;
    }

    public final String zzd() {
        return zzfxt.zzc(this.zza.zza.getString(new ObfuscatedString(new long[]{7570324847087661822L, 2115299617521613794L}).toString()));
    }

    public final String zze() {
        return this.zza.zzh;
    }

    public final List zzf() {
        return this.zza.zze;
    }

    public final boolean zzg() {
        return this.zza.zzl;
    }

    public final boolean zzh() {
        return this.zza.zza.getBoolean(new ObfuscatedString(new long[]{7322057764311272288L, -6592539460179286002L}).toString());
    }

    public final boolean zzi() {
        return this.zza.zzk;
    }
}
