package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;
import java.util.List;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzgsd {
    private final zzgrw zza;
    private final List zzb;

    @Nullable
    private final Integer zzc;

    public /* synthetic */ zzgsd(zzgrw zzgrwVar, List list, Integer num, zzgsc zzgscVar) {
        this.zza = zzgrwVar;
        this.zzb = list;
        this.zzc = num;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgsd)) {
            return false;
        }
        zzgsd zzgsdVar = (zzgsd) obj;
        if (!this.zza.equals(zzgsdVar.zza) || !this.zzb.equals(zzgsdVar.zzb) || !Objects.equals(this.zzc, zzgsdVar.zzc)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(this.zza, this.zzb);
    }

    public final String toString() {
        return String.format(new ObfuscatedString(new long[]{-5854105647398673278L, 704159977010575619L, 5344152557981466633L, 423877665798551631L, -7912770124842158336L, -5863971274937315708L, -2989871333440601982L}).toString(), this.zza, this.zzb, this.zzc);
    }
}
