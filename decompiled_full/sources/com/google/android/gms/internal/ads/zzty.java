package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzty implements zzvb, zzrt {
    final /* synthetic */ zzua zza;
    private final Object zzb;
    private zzva zzc;
    private zzrs zzd;

    public zzty(zzua zzuaVar, Object obj) {
        this.zza = zzuaVar;
        this.zzc = zzuaVar.zze(null);
        this.zzd = zzuaVar.zzc(null);
        this.zzb = obj;
    }

    private final zzun zzf(zzun zzunVar, @Nullable zzur zzurVar) {
        zzua zzuaVar = this.zza;
        Object obj = this.zzb;
        long j = zzunVar.zzc;
        zzuaVar.zzx(obj, j, zzurVar);
        zzua zzuaVar2 = this.zza;
        Object obj2 = this.zzb;
        long j2 = zzunVar.zzd;
        zzuaVar2.zzx(obj2, j2, zzurVar);
        if (j == zzunVar.zzc && j2 == zzunVar.zzd) {
            return zzunVar;
        }
        return new zzun(1, zzunVar.zza, zzunVar.zzb, 0, null, j, j2);
    }

    private final boolean zzg(int i, @Nullable zzur zzurVar) {
        zzur zzurVar2;
        if (zzurVar != null) {
            zzurVar2 = this.zza.zzy(this.zzb, zzurVar);
            if (zzurVar2 == null) {
                return false;
            }
        } else {
            zzurVar2 = null;
        }
        this.zza.zzw(this.zzb, 0);
        zzva zzvaVar = this.zzc;
        int i2 = zzvaVar.zza;
        if (!zzfy.zzF(zzvaVar.zzb, zzurVar2)) {
            this.zzc = this.zza.zzf(0, zzurVar2);
        }
        zzrs zzrsVar = this.zzd;
        int i3 = zzrsVar.zza;
        if (!zzfy.zzF(zzrsVar.zzb, zzurVar2)) {
            this.zzd = this.zza.zzd(0, zzurVar2);
            return true;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzvb
    public final void zzae(int i, @Nullable zzur zzurVar, zzun zzunVar) {
        if (zzg(0, zzurVar)) {
            this.zzc.zzc(zzf(zzunVar, zzurVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvb
    public final void zzaf(int i, @Nullable zzur zzurVar, zzui zzuiVar, zzun zzunVar) {
        if (zzg(0, zzurVar)) {
            this.zzc.zzd(zzuiVar, zzf(zzunVar, zzurVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvb
    public final void zzag(int i, @Nullable zzur zzurVar, zzui zzuiVar, zzun zzunVar) {
        if (zzg(0, zzurVar)) {
            this.zzc.zze(zzuiVar, zzf(zzunVar, zzurVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvb
    public final void zzah(int i, @Nullable zzur zzurVar, zzui zzuiVar, zzun zzunVar, IOException iOException, boolean z) {
        if (zzg(0, zzurVar)) {
            this.zzc.zzf(zzuiVar, zzf(zzunVar, zzurVar), iOException, z);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvb
    public final void zzai(int i, @Nullable zzur zzurVar, zzui zzuiVar, zzun zzunVar) {
        if (zzg(0, zzurVar)) {
            this.zzc.zzg(zzuiVar, zzf(zzunVar, zzurVar));
        }
    }
}
