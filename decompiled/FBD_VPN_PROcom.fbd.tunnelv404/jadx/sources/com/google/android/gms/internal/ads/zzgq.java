package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class zzgq implements zzgw {
    private final boolean zza;
    private final ArrayList zzb = new ArrayList(1);
    private int zzc;

    @Nullable
    private zzhb zzd;

    public zzgq(boolean z) {
        this.zza = z;
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public /* synthetic */ Map zze() {
        return Collections.emptyMap();
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final void zzf(zzhy zzhyVar) {
        zzhyVar.getClass();
        if (!this.zzb.contains(zzhyVar)) {
            this.zzb.add(zzhyVar);
            this.zzc++;
        }
    }

    public final void zzg(int i) {
        zzhb zzhbVar = this.zzd;
        int i2 = zzfy.zza;
        for (int i3 = 0; i3 < this.zzc; i3++) {
            ((zzhy) this.zzb.get(i3)).zza(this, zzhbVar, this.zza, i);
        }
    }

    public final void zzh() {
        zzhb zzhbVar = this.zzd;
        int i = zzfy.zza;
        for (int i2 = 0; i2 < this.zzc; i2++) {
            ((zzhy) this.zzb.get(i2)).zzb(this, zzhbVar, this.zza);
        }
        this.zzd = null;
    }

    public final void zzi(zzhb zzhbVar) {
        for (int i = 0; i < this.zzc; i++) {
            ((zzhy) this.zzb.get(i)).zzc(this, zzhbVar, this.zza);
        }
    }

    public final void zzj(zzhb zzhbVar) {
        this.zzd = zzhbVar;
        for (int i = 0; i < this.zzc; i++) {
            ((zzhy) this.zzb.get(i)).zzd(this, zzhbVar, this.zza);
        }
    }
}
