package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzws {
    public final int zzc;
    private final zzgaa zze;
    private int zzf;
    public static final zzws zza = new zzws(new zzcz[0]);
    private static final String zzd = Integer.toString(0, 36);

    @Deprecated
    public static final zzn zzb = new zzn() { // from class: com.google.android.gms.internal.ads.zzwr
    };

    /* JADX WARN: Multi-variable type inference failed */
    public zzws(zzcz... zzczVarArr) {
        this.zze = zzgaa.zzk(zzczVarArr);
        this.zzc = zzczVarArr.length;
        int i = 0;
        while (i < this.zze.size()) {
            int i2 = i + 1;
            for (int i3 = i2; i3 < this.zze.size(); i3++) {
                if (((zzcz) this.zze.get(i)).equals(this.zze.get(i3))) {
                    zzff.zzd(new ObfuscatedString(new long[]{-7975752432043654656L, 6307963711097871631L, -7839551027270117450L}).toString(), new ObfuscatedString(new long[]{5904184731418098258L}).toString(), new IllegalArgumentException(new ObfuscatedString(new long[]{7746688357502528486L, -3325633288448886107L, -3818219990283960385L, 2393684207111362286L, 6972134827256867207L, 788994177411138319L, -7756466774231664502L, -1804717705976339064L, 7502013549572535189L}).toString()));
                }
            }
            i = i2;
        }
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzws.class == obj.getClass()) {
            zzws zzwsVar = (zzws) obj;
            if (this.zzc == zzwsVar.zzc && this.zze.equals(zzwsVar.zze)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zzf;
        if (i == 0) {
            int hashCode = this.zze.hashCode();
            this.zzf = hashCode;
            return hashCode;
        }
        return i;
    }

    public final int zza(zzcz zzczVar) {
        int indexOf = this.zze.indexOf(zzczVar);
        if (indexOf >= 0) {
            return indexOf;
        }
        return -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzcz zzb(int i) {
        return (zzcz) this.zze.get(i);
    }
}
