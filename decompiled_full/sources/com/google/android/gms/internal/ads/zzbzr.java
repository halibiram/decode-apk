package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.Objects;

/* loaded from: classes2.dex */
public final class zzbzr extends zzbzt {
    private final String zza;
    private final int zzb;

    public zzbzr(String str, int i) {
        this.zza = str;
        this.zzb = i;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof zzbzr)) {
            zzbzr zzbzrVar = (zzbzr) obj;
            if (Objects.equal(this.zza, zzbzrVar.zza)) {
                if (Objects.equal(Integer.valueOf(this.zzb), Integer.valueOf(zzbzrVar.zzb))) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbzu
    public final int zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbzu
    public final String zzc() {
        return this.zza;
    }
}
