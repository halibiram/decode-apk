package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.Arrays;
import java.util.Iterator;
import javax.annotation.CheckForNull;

/* loaded from: classes2.dex */
public final class zzgae extends zzfzt {

    @CheckForNull
    Object[] zzd;
    private int zze;

    public zzgae() {
        super(4);
    }

    @Override // com.google.android.gms.internal.ads.zzfzt, com.google.android.gms.internal.ads.zzfzu
    public final /* bridge */ /* synthetic */ zzfzu zzb(Object obj) {
        zzf(obj);
        return this;
    }

    public final zzgae zzf(Object obj) {
        obj.getClass();
        if (this.zzd != null) {
            int zzh = zzgaf.zzh(this.zzb);
            Object[] objArr = this.zzd;
            if (zzh <= objArr.length) {
                int length = objArr.length - 1;
                int hashCode = obj.hashCode();
                int zza = zzfzs.zza(hashCode);
                while (true) {
                    int i = zza & length;
                    Object[] objArr2 = this.zzd;
                    Object obj2 = objArr2[i];
                    if (obj2 == null) {
                        objArr2[i] = obj;
                        this.zze += hashCode;
                        zza(obj);
                        break;
                    }
                    if (obj2.equals(obj)) {
                        break;
                    }
                    zza = i + 1;
                }
                return this;
            }
        }
        this.zzd = null;
        zza(obj);
        return this;
    }

    public final zzgae zzg(Iterable iterable) {
        iterable.getClass();
        if (this.zzd != null) {
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                zzf(it.next());
            }
        } else {
            zzc(iterable);
        }
        return this;
    }

    public final zzgaf zzh() {
        zzgaf zzv;
        boolean zzw;
        int i = this.zzb;
        if (i != 0) {
            if (i != 1) {
                if (this.zzd != null && zzgaf.zzh(i) == this.zzd.length) {
                    int i2 = this.zzb;
                    Object[] objArr = this.zza;
                    zzw = zzgaf.zzw(i2, objArr.length);
                    if (zzw) {
                        objArr = Arrays.copyOf(objArr, i2);
                    }
                    zzv = new zzgbq(objArr, this.zze, this.zzd, r6.length - 1, this.zzb);
                } else {
                    zzv = zzgaf.zzv(this.zzb, this.zza);
                    this.zzb = zzv.size();
                }
                this.zzc = true;
                this.zzd = null;
                return zzv;
            }
            Object obj = this.zza[0];
            Objects.requireNonNull(obj);
            return new zzgcb(obj);
        }
        return zzgbq.zza;
    }

    public zzgae(int i) {
        super(i);
        this.zzd = new Object[zzgaf.zzh(i)];
    }
}
