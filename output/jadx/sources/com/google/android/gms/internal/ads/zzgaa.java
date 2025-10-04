package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import j$.util.List;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import java.util.function.UnaryOperator;
import javax.annotation.CheckForNull;

/* loaded from: classes2.dex */
public abstract class zzgaa<E> extends zzfzv<E> implements List<E>, RandomAccess, j$.util.List {
    private static final zzgcf zza = new zzfzy(zzgbk.zza, 0);
    public static final /* synthetic */ int zzd = 0;

    public static zzgaa zzi(Object[] objArr, int i) {
        if (i == 0) {
            return zzgbk.zza;
        }
        return new zzgbk(objArr, i);
    }

    public static zzgaa zzj(Collection collection) {
        if (collection instanceof zzfzv) {
            zzgaa zzd2 = ((zzfzv) collection).zzd();
            if (zzd2.zzf()) {
                Object[] array = zzd2.toArray();
                return zzi(array, array.length);
            }
            return zzd2;
        }
        Object[] array2 = collection.toArray();
        int length = array2.length;
        zzgbi.zzb(array2, length);
        return zzi(array2, length);
    }

    public static zzgaa zzk(Object[] objArr) {
        if (objArr.length == 0) {
            return zzgbk.zza;
        }
        Object[] objArr2 = (Object[]) objArr.clone();
        int length = objArr2.length;
        zzgbi.zzb(objArr2, length);
        return zzi(objArr2, length);
    }

    public static zzgaa zzl() {
        return zzgbk.zza;
    }

    public static zzgaa zzm(Object obj) {
        Object[] objArr = {obj};
        zzgbi.zzb(objArr, 1);
        return zzi(objArr, 1);
    }

    public static zzgaa zzn(Object obj, Object obj2) {
        Object[] objArr = {obj, obj2};
        zzgbi.zzb(objArr, 2);
        return zzi(objArr, 2);
    }

    public static zzgaa zzo(Object obj, Object obj2, Object obj3) {
        Object[] objArr = {obj, obj2, obj3};
        zzgbi.zzb(objArr, 3);
        return zzi(objArr, 3);
    }

    public static zzgaa zzp(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        Object[] objArr = {obj, obj2, obj3, obj4, obj5};
        zzgbi.zzb(objArr, 5);
        return zzi(objArr, 5);
    }

    public static zzgaa zzq(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
        Object[] objArr = {new ObfuscatedString(new long[]{4869325593639466358L, 7079160230858293971L}).toString(), new ObfuscatedString(new long[]{-8751968548068685535L, -9097810908224981022L}).toString(), new ObfuscatedString(new long[]{-6122640327866594774L, -2603074687455281460L}).toString(), new ObfuscatedString(new long[]{3626155545794398217L, 4799576109905543773L}).toString(), new ObfuscatedString(new long[]{-331188083756997791L, 5658104666438259382L}).toString(), new ObfuscatedString(new long[]{-2849304401167190700L, 6769521417193679928L}).toString()};
        zzgbi.zzb(objArr, 6);
        return zzi(objArr, 6);
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final boolean addAll(int i, Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.zzfzv, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@CheckForNull Object obj) {
        if (indexOf(obj) >= 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            int size = size();
            if (size == list.size()) {
                if (list instanceof RandomAccess) {
                    for (int i = 0; i < size; i++) {
                        if (zzfwy.zza(get(i), list.get(i))) {
                        }
                    }
                    return true;
                }
                Iterator<E> it = iterator();
                Iterator<E> it2 = list.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (!it2.hasNext() || !zzfwy.zza(it.next(), it2.next())) {
                            break;
                        }
                    } else if (!it2.hasNext()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int size = size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            i = (i * 31) + get(i2).hashCode();
        }
        return i;
    }

    @Override // java.util.List
    public final int indexOf(@CheckForNull Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (obj.equals(get(i))) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzfzv, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public final int lastIndexOf(@CheckForNull Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public final /* synthetic */ ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    @Deprecated
    public final Object remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, j$.util.List
    public final /* synthetic */ void replaceAll(UnaryOperator unaryOperator) {
        List.CC.$default$replaceAll(this, unaryOperator);
    }

    @Override // java.util.List
    @Deprecated
    public final Object set(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, j$.util.List
    public final /* synthetic */ void sort(Comparator comparator) {
        List.CC.$default$sort(this, comparator);
    }

    @Override // com.google.android.gms.internal.ads.zzfzv
    public int zza(Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i + i2] = get(i2);
        }
        return i + size;
    }

    @Override // com.google.android.gms.internal.ads.zzfzv
    @Deprecated
    public final zzgaa zzd() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfzv
    /* renamed from: zze */
    public final zzgce iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    /* renamed from: zzh, reason: merged with bridge method [inline-methods] */
    public zzgaa subList(int i, int i2) {
        zzfxe.zzh(i, i2, size());
        int i3 = i2 - i;
        if (i3 == size()) {
            return this;
        }
        if (i3 == 0) {
            return zzgbk.zza;
        }
        return new zzfzz(this, i, i3);
    }

    @Override // java.util.List
    /* renamed from: zzr, reason: merged with bridge method [inline-methods] */
    public final zzgcf listIterator(int i) {
        zzfxe.zzb(i, size(), new ObfuscatedString(new long[]{-8169688724661043799L, 6831040719494638646L}).toString());
        if (isEmpty()) {
            return zza;
        }
        return new zzfzy(this, i);
    }
}
