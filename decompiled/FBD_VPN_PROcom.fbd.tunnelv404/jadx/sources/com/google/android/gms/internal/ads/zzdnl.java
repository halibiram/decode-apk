package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.collection.SimpleArrayMap;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class zzdnl {
    public static final zzdnl zza = new zzdnl(new zzdnj());

    @Nullable
    private final zzbkn zzb;

    @Nullable
    private final zzbkk zzc;

    @Nullable
    private final zzbla zzd;

    @Nullable
    private final zzbkx zze;

    @Nullable
    private final zzbpy zzf;
    private final SimpleArrayMap zzg;
    private final SimpleArrayMap zzh;

    @Nullable
    public final zzbkk zza() {
        return this.zzc;
    }

    @Nullable
    public final zzbkn zzb() {
        return this.zzb;
    }

    @Nullable
    public final zzbkq zzc(String str) {
        return (zzbkq) this.zzh.get(str);
    }

    @Nullable
    public final zzbkt zzd(String str) {
        return (zzbkt) this.zzg.get(str);
    }

    @Nullable
    public final zzbkx zze() {
        return this.zze;
    }

    @Nullable
    public final zzbla zzf() {
        return this.zzd;
    }

    @Nullable
    public final zzbpy zzg() {
        return this.zzf;
    }

    public final ArrayList zzh() {
        ArrayList arrayList = new ArrayList(this.zzg.getSize());
        for (int i = 0; i < this.zzg.getSize(); i++) {
            arrayList.add((String) this.zzg.keyAt(i));
        }
        return arrayList;
    }

    public final ArrayList zzi() {
        ArrayList arrayList = new ArrayList();
        if (this.zzd != null) {
            arrayList.add(Integer.toString(6));
        }
        if (this.zzb != null) {
            arrayList.add(Integer.toString(1));
        }
        if (this.zzc != null) {
            arrayList.add(Integer.toString(2));
        }
        if (!this.zzg.isEmpty()) {
            arrayList.add(Integer.toString(3));
        }
        if (this.zzf != null) {
            arrayList.add(Integer.toString(7));
        }
        return arrayList;
    }

    private zzdnl(zzdnj zzdnjVar) {
        this.zzb = zzdnjVar.zza;
        this.zzc = zzdnjVar.zzb;
        this.zzd = zzdnjVar.zzc;
        this.zzg = new SimpleArrayMap(zzdnjVar.zzf);
        this.zzh = new SimpleArrayMap(zzdnjVar.zzg);
        this.zze = zzdnjVar.zzd;
        this.zzf = zzdnjVar.zze;
    }
}
