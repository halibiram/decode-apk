package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
public final class zzhal extends zzgxv implements RandomAccess, zzham {

    @Deprecated
    public static final zzham zza;
    private static final zzhal zzb;
    private final List zzc;

    static {
        zzhal zzhalVar = new zzhal(false);
        zzb = zzhalVar;
        zza = zzhalVar;
    }

    public zzhal() {
        this(10);
    }

    private static String zzj(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzgyl) {
            return ((zzgyl) obj).zzx(zzhae.zzb);
        }
        return zzhae.zzd((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgxv, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        zzbQ();
        this.zzc.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzgxv, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        zzbQ();
        if (collection instanceof zzham) {
            collection = ((zzham) collection).zzh();
        }
        boolean addAll = this.zzc.addAll(i, collection);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // com.google.android.gms.internal.ads.zzgxv, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        zzbQ();
        this.zzc.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzgxv, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        zzbQ();
        Object remove = this.zzc.remove(i);
        ((AbstractList) this).modCount++;
        return zzj(remove);
    }

    @Override // com.google.android.gms.internal.ads.zzgxv, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        zzbQ();
        return zzj(this.zzc.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc.size();
    }

    @Override // com.google.android.gms.internal.ads.zzhad
    public final /* bridge */ /* synthetic */ zzhad zzd(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.zzc);
            return new zzhal(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.ads.zzham
    public final zzham zze() {
        if (zzc()) {
            return new zzhcu(this);
        }
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzham
    public final Object zzf(int i) {
        return this.zzc.get(i);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: zzg, reason: merged with bridge method [inline-methods] */
    public final String get(int i) {
        Object obj = this.zzc.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzgyl) {
            zzgyl zzgylVar = (zzgyl) obj;
            String zzx = zzgylVar.zzx(zzhae.zzb);
            if (zzgylVar.zzp()) {
                this.zzc.set(i, zzx);
            }
            return zzx;
        }
        byte[] bArr = (byte[]) obj;
        String zzd = zzhae.zzd(bArr);
        if (zzhde.zzi(bArr)) {
            this.zzc.set(i, zzd);
        }
        return zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzham
    public final List zzh() {
        return DesugarCollections.unmodifiableList(this.zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzham
    public final void zzi(zzgyl zzgylVar) {
        zzbQ();
        this.zzc.add(zzgylVar);
        ((AbstractList) this).modCount++;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzhal(int i) {
        super(true);
        ArrayList arrayList = new ArrayList(i);
        this.zzc = arrayList;
    }

    private zzhal(ArrayList arrayList) {
        super(true);
        this.zzc = arrayList;
    }

    private zzhal(boolean z) {
        super(false);
        this.zzc = Collections.emptyList();
    }

    @Override // com.google.android.gms.internal.ads.zzgxv, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        return addAll(size(), collection);
    }
}
