package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
final class zzhbr extends zzgyd {
    final zzhbv zza;
    zzgyf zzb = zzb();
    final /* synthetic */ zzhbx zzc;

    public zzhbr(zzhbx zzhbxVar) {
        this.zzc = zzhbxVar;
        this.zza = new zzhbv(zzhbxVar, null);
    }

    private final zzgyf zzb() {
        zzhbv zzhbvVar = this.zza;
        if (zzhbvVar.hasNext()) {
            return zzhbvVar.next().iterator();
        }
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb != null;
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final byte zza() {
        zzgyf zzgyfVar = this.zzb;
        if (zzgyfVar != null) {
            byte zza = zzgyfVar.zza();
            if (!this.zzb.hasNext()) {
                this.zzb = zzb();
            }
            return zza;
        }
        throw new NoSuchElementException();
    }
}
