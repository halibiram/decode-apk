package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
final class zzor {
    private final zzcu zza;
    private zzgaa zzb = zzgaa.zzl();
    private zzgad zzc = zzgad.zzd();

    @Nullable
    private zzur zzd;
    private zzur zze;
    private zzur zzf;

    public zzor(zzcu zzcuVar) {
        this.zza = zzcuVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    private static zzur zzj(zzco zzcoVar, zzgaa zzgaaVar, @Nullable zzur zzurVar, zzcu zzcuVar) {
        Object zzf;
        int i;
        zzcx zzn = zzcoVar.zzn();
        int zze = zzcoVar.zze();
        if (zzn.zzo()) {
            zzf = null;
        } else {
            zzf = zzn.zzf(zze);
        }
        if (zzcoVar.zzx() || zzn.zzo()) {
            i = -1;
        } else {
            i = zzn.zzd(zze, zzcuVar, false).zzc(zzfy.zzq(zzcoVar.zzk()));
        }
        for (int i2 = 0; i2 < zzgaaVar.size(); i2++) {
            zzur zzurVar2 = (zzur) zzgaaVar.get(i2);
            if (zzm(zzurVar2, zzf, zzcoVar.zzx(), zzcoVar.zzb(), zzcoVar.zzc(), i)) {
                return zzurVar2;
            }
        }
        if (zzgaaVar.isEmpty() && zzurVar != null) {
            if (zzm(zzurVar, zzf, zzcoVar.zzx(), zzcoVar.zzb(), zzcoVar.zzc(), i)) {
                return zzurVar;
            }
        }
        return null;
    }

    private final void zzk(zzgac zzgacVar, @Nullable zzur zzurVar, zzcx zzcxVar) {
        if (zzurVar != null) {
            if (zzcxVar.zza(zzurVar.zza) != -1) {
                zzgacVar.zza(zzurVar, zzcxVar);
                return;
            }
            zzcx zzcxVar2 = (zzcx) this.zzc.get(zzurVar);
            if (zzcxVar2 != null) {
                zzgacVar.zza(zzurVar, zzcxVar2);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void zzl(zzcx zzcxVar) {
        zzgac zzgacVar = new zzgac();
        if (this.zzb.isEmpty()) {
            zzk(zzgacVar, this.zze, zzcxVar);
            if (!zzfwy.zza(this.zzf, this.zze)) {
                zzk(zzgacVar, this.zzf, zzcxVar);
            }
            if (!zzfwy.zza(this.zzd, this.zze) && !zzfwy.zza(this.zzd, this.zzf)) {
                zzk(zzgacVar, this.zzd, zzcxVar);
            }
        } else {
            for (int i = 0; i < this.zzb.size(); i++) {
                zzk(zzgacVar, (zzur) this.zzb.get(i), zzcxVar);
            }
            if (!this.zzb.contains(this.zzd)) {
                zzk(zzgacVar, this.zzd, zzcxVar);
            }
        }
        this.zzc = zzgacVar.zzc();
    }

    private static boolean zzm(zzur zzurVar, @Nullable Object obj, boolean z, int i, int i2, int i3) {
        if (!zzurVar.zza.equals(obj)) {
            return false;
        }
        if (z) {
            if (zzurVar.zzb != i || zzurVar.zzc != i2) {
                return false;
            }
        } else if (zzurVar.zzb != -1 || zzurVar.zze != i3) {
            return false;
        }
        return true;
    }

    @Nullable
    public final zzcx zza(zzur zzurVar) {
        return (zzcx) this.zzc.get(zzurVar);
    }

    @Nullable
    public final zzur zzb() {
        return this.zzd;
    }

    @Nullable
    public final zzur zzc() {
        Object next;
        Object obj;
        if (this.zzb.isEmpty()) {
            return null;
        }
        zzgaa zzgaaVar = this.zzb;
        if (zzgaaVar instanceof List) {
            if (!zzgaaVar.isEmpty()) {
                obj = zzgaaVar.get(zzgaaVar.size() - 1);
            } else {
                throw new NoSuchElementException();
            }
        } else {
            Iterator<E> it = zzgaaVar.iterator();
            do {
                next = it.next();
            } while (it.hasNext());
            obj = next;
        }
        return (zzur) obj;
    }

    @Nullable
    public final zzur zzd() {
        return this.zze;
    }

    @Nullable
    public final zzur zze() {
        return this.zzf;
    }

    public final void zzg(zzco zzcoVar) {
        this.zzd = zzj(zzcoVar, this.zzb, this.zze, this.zza);
    }

    public final void zzh(List list, @Nullable zzur zzurVar, zzco zzcoVar) {
        this.zzb = zzgaa.zzj(list);
        if (!list.isEmpty()) {
            this.zze = (zzur) list.get(0);
            zzurVar.getClass();
            this.zzf = zzurVar;
        }
        if (this.zzd == null) {
            this.zzd = zzj(zzcoVar, this.zzb, this.zze, this.zza);
        }
        zzl(zzcoVar.zzn());
    }

    public final void zzi(zzco zzcoVar) {
        this.zzd = zzj(zzcoVar, this.zzb, this.zze, this.zza);
        zzl(zzcoVar.zzn());
    }
}
