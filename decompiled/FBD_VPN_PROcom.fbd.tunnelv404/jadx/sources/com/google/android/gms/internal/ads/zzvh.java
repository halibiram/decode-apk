package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzvh extends zzua {
    private static final zzbp zza;
    private final zzut[] zzb;
    private final zzcx[] zzc;
    private final ArrayList zzd;
    private final Map zze;
    private final zzgaw zzf;
    private int zzg;
    private long[][] zzh;

    @Nullable
    private zzvg zzi;
    private final zzuc zzj;

    static {
        zzar zzarVar = new zzar();
        zzarVar.zza(new ObfuscatedString(new long[]{-6119207471585872667L, -5254765986651768589L, 3461927272926623193L, 5888845473645693959L}).toString());
        zza = zzarVar.zzc();
    }

    public zzvh(boolean z, boolean z2, zzut... zzutVarArr) {
        zzuc zzucVar = new zzuc();
        this.zzb = zzutVarArr;
        this.zzj = zzucVar;
        this.zzd = new ArrayList(Arrays.asList(zzutVarArr));
        this.zzg = -1;
        this.zzc = new zzcx[zzutVarArr.length];
        this.zzh = new long[0];
        this.zze = new HashMap();
        this.zzf = zzgbe.zzb(8).zzb(2).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzua
    public final /* bridge */ /* synthetic */ void zzA(Object obj, zzut zzutVar, zzcx zzcxVar) {
        int i;
        if (this.zzi == null) {
            if (this.zzg == -1) {
                i = zzcxVar.zzb();
                this.zzg = i;
            } else {
                int zzb = zzcxVar.zzb();
                int i2 = this.zzg;
                if (zzb != i2) {
                    this.zzi = new zzvg(0);
                    return;
                }
                i = i2;
            }
            if (this.zzh.length == 0) {
                this.zzh = (long[][]) Array.newInstance((Class<?>) Long.TYPE, i, this.zzc.length);
            }
            this.zzd.remove(zzutVar);
            this.zzc[((Integer) obj).intValue()] = zzcxVar;
            if (this.zzd.isEmpty()) {
                zzo(this.zzc[0]);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzut
    public final void zzG(zzup zzupVar) {
        zzvf zzvfVar = (zzvf) zzupVar;
        int i = 0;
        while (true) {
            zzut[] zzutVarArr = this.zzb;
            if (i < zzutVarArr.length) {
                zzutVarArr[i].zzG(zzvfVar.zzn(i));
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzut
    public final zzup zzI(zzur zzurVar, zzyx zzyxVar, long j) {
        zzcx[] zzcxVarArr = this.zzc;
        int length = this.zzb.length;
        zzup[] zzupVarArr = new zzup[length];
        int zza2 = zzcxVarArr[0].zza(zzurVar.zza);
        for (int i = 0; i < length; i++) {
            zzupVarArr[i] = this.zzb[i].zzI(zzurVar.zza(this.zzc[i].zzf(zza2)), zzyxVar, j - this.zzh[zza2][i]);
        }
        return new zzvf(this.zzj, this.zzh[zza2], zzupVarArr);
    }

    @Override // com.google.android.gms.internal.ads.zzut
    public final zzbp zzJ() {
        zzut[] zzutVarArr = this.zzb;
        if (zzutVarArr.length > 0) {
            return zzutVarArr[0].zzJ();
        }
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzua, com.google.android.gms.internal.ads.zzts
    public final void zzn(@Nullable zzhy zzhyVar) {
        super.zzn(zzhyVar);
        int i = 0;
        while (true) {
            zzut[] zzutVarArr = this.zzb;
            if (i < zzutVarArr.length) {
                zzB(Integer.valueOf(i), zzutVarArr[i]);
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzua, com.google.android.gms.internal.ads.zzts
    public final void zzq() {
        super.zzq();
        Arrays.fill(this.zzc, (Object) null);
        this.zzg = -1;
        this.zzi = null;
        this.zzd.clear();
        Collections.addAll(this.zzd, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzts, com.google.android.gms.internal.ads.zzut
    public final void zzt(zzbp zzbpVar) {
        this.zzb[0].zzt(zzbpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzua
    @Nullable
    public final /* bridge */ /* synthetic */ zzur zzy(Object obj, zzur zzurVar) {
        if (((Integer) obj).intValue() == 0) {
            return zzurVar;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzua, com.google.android.gms.internal.ads.zzut
    public final void zzz() {
        zzvg zzvgVar = this.zzi;
        if (zzvgVar == null) {
            super.zzz();
            return;
        }
        throw zzvgVar;
    }
}
