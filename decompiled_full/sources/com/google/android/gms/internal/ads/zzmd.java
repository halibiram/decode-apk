package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzmd extends zzii {
    public static final /* synthetic */ int zzc = 0;
    private final int zzd;
    private final int zze;
    private final int[] zzf;
    private final int[] zzg;
    private final zzcx[] zzh;
    private final Object[] zzi;
    private final HashMap zzj;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzmd(Collection collection, zzwk zzwkVar) {
        this(r0, r1, zzwkVar);
        zzcx[] zzcxVarArr = new zzcx[collection.size()];
        Iterator it = collection.iterator();
        int i = 0;
        int i2 = 0;
        while (it.hasNext()) {
            zzcxVarArr[i2] = ((zzlm) it.next()).zza();
            i2++;
        }
        Object[] objArr = new Object[collection.size()];
        Iterator it2 = collection.iterator();
        while (it2.hasNext()) {
            objArr[i] = ((zzlm) it2.next()).zzb();
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcx
    public final int zzb() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzcx
    public final int zzc() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzii
    public final int zzp(Object obj) {
        Integer num = (Integer) this.zzj.get(obj);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override // com.google.android.gms.internal.ads.zzii
    public final int zzq(int i) {
        return zzfy.zzb(this.zzf, i + 1, false, false);
    }

    @Override // com.google.android.gms.internal.ads.zzii
    public final int zzr(int i) {
        return zzfy.zzb(this.zzg, i + 1, false, false);
    }

    @Override // com.google.android.gms.internal.ads.zzii
    public final int zzs(int i) {
        return this.zzf[i];
    }

    @Override // com.google.android.gms.internal.ads.zzii
    public final int zzt(int i) {
        return this.zzg[i];
    }

    @Override // com.google.android.gms.internal.ads.zzii
    public final zzcx zzu(int i) {
        return this.zzh[i];
    }

    @Override // com.google.android.gms.internal.ads.zzii
    public final Object zzv(int i) {
        return this.zzi[i];
    }

    public final List zzw() {
        return Arrays.asList(this.zzh);
    }

    public final zzmd zzx(zzwk zzwkVar) {
        zzcx[] zzcxVarArr = new zzcx[this.zzh.length];
        int i = 0;
        while (true) {
            zzcx[] zzcxVarArr2 = this.zzh;
            if (i < zzcxVarArr2.length) {
                zzcxVarArr[i] = new zzmc(this, zzcxVarArr2[i]);
                i++;
            } else {
                return new zzmd(zzcxVarArr, this.zzi, zzwkVar);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private zzmd(zzcx[] zzcxVarArr, Object[] objArr, zzwk zzwkVar) {
        super(false, zzwkVar);
        int i = 0;
        this.zzh = zzcxVarArr;
        int length = zzcxVarArr.length;
        this.zzf = new int[length];
        this.zzg = new int[length];
        this.zzi = objArr;
        this.zzj = new HashMap();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i < zzcxVarArr.length) {
            zzcx zzcxVar = zzcxVarArr[i];
            this.zzh[i4] = zzcxVar;
            this.zzg[i4] = i2;
            this.zzf[i4] = i3;
            i2 += zzcxVar.zzc();
            i3 += this.zzh[i4].zzb();
            this.zzj.put(objArr[i4], Integer.valueOf(i4));
            i++;
            i4++;
        }
        this.zzd = i2;
        this.zze = i3;
    }
}
