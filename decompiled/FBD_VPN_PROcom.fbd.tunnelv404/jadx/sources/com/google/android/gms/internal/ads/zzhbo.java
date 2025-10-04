package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzhbo extends zzgxv implements RandomAccess {
    private static final zzhbo zza = new zzhbo(new Object[0], 0, false);
    private Object[] zzb;
    private int zzc;

    public zzhbo() {
        this(new Object[10], 0, true);
    }

    public static zzhbo zze() {
        return zza;
    }

    private final String zzf(int i) {
        int i2 = this.zzc;
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{5287055845686631240L, -856400492097319590L}).toString());
        sb.append(i);
        return AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-2401594856499451893L, 8091947288429716932L}), sb, i2);
    }

    private final void zzg(int i) {
        if (i >= 0 && i < this.zzc) {
        } else {
            throw new IndexOutOfBoundsException(zzf(i));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgxv, java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        zzbQ();
        if (i >= 0 && i <= (i2 = this.zzc)) {
            int i3 = i + 1;
            Object[] objArr = this.zzb;
            if (i2 < objArr.length) {
                System.arraycopy(objArr, i, objArr, i3, i2 - i);
            } else {
                Object[] objArr2 = new Object[AbstractC0749x8313616e.m3323xfbe0c504(i2, 3, 2, 1)];
                System.arraycopy(objArr, 0, objArr2, 0, i);
                System.arraycopy(this.zzb, i, objArr2, i3, this.zzc - i);
                this.zzb = objArr2;
            }
            this.zzb[i] = obj;
            this.zzc++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(zzf(i));
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        zzg(i);
        return this.zzb[i];
    }

    @Override // com.google.android.gms.internal.ads.zzgxv, java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        zzbQ();
        zzg(i);
        Object[] objArr = this.zzb;
        Object obj = objArr[i];
        if (i < this.zzc - 1) {
            System.arraycopy(objArr, i + 1, objArr, i, (r2 - i) - 1);
        }
        this.zzc--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override // com.google.android.gms.internal.ads.zzgxv, java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        zzbQ();
        zzg(i);
        Object[] objArr = this.zzb;
        Object obj2 = objArr[i];
        objArr[i] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzhad
    public final /* bridge */ /* synthetic */ zzhad zzd(int i) {
        if (i >= this.zzc) {
            return new zzhbo(Arrays.copyOf(this.zzb, i), this.zzc, true);
        }
        throw new IllegalArgumentException();
    }

    private zzhbo(Object[] objArr, int i, boolean z) {
        super(z);
        this.zzb = objArr;
        this.zzc = i;
    }

    @Override // com.google.android.gms.internal.ads.zzgxv, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        zzbQ();
        int i = this.zzc;
        Object[] objArr = this.zzb;
        if (i == objArr.length) {
            this.zzb = Arrays.copyOf(objArr, ((i * 3) / 2) + 1);
        }
        Object[] objArr2 = this.zzb;
        int i2 = this.zzc;
        this.zzc = i2 + 1;
        objArr2[i2] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }
}
