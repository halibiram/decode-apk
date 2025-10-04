package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;
import java.util.Arrays;
import java.util.Collection;
import java.util.Set;
import javax.annotation.CheckForNull;

/* loaded from: classes2.dex */
public abstract class zzgaf extends zzfzv implements Set, j$.util.Set {

    @CheckForNull
    private transient zzgaa zza;

    public static int zzh(int i) {
        boolean z;
        int max = Math.max(i, 2);
        if (max < 751619276) {
            int highestOneBit = Integer.highestOneBit(max - 1);
            do {
                highestOneBit += highestOneBit;
            } while (highestOneBit * 0.7d < max);
            return highestOneBit;
        }
        if (max < 1073741824) {
            z = true;
        } else {
            z = false;
        }
        zzfxe.zzf(z, new ObfuscatedString(new long[]{-2707465944731291668L, -7151583466348913347L, 5580997964997551353L, -4096508683573472038L}).toString());
        return 1073741824;
    }

    public static zzgae zzj(int i) {
        return new zzgae(i);
    }

    public static zzgaf zzl(Collection collection) {
        Object[] array = collection.toArray();
        return zzv(array.length, array);
    }

    public static zzgaf zzm(Object[] objArr) {
        int length = objArr.length;
        if (length != 0) {
            if (length != 1) {
                return zzv(length, (Object[]) objArr.clone());
            }
            return new zzgcb(objArr[0]);
        }
        return zzgbq.zza;
    }

    public static zzgaf zzn() {
        return zzgbq.zza;
    }

    public static zzgaf zzo(Object obj) {
        return new zzgcb(obj);
    }

    public static zzgaf zzp(Object obj, Object obj2) {
        return zzv(2, obj, obj2);
    }

    public static zzgaf zzq(Object obj, Object obj2, Object obj3) {
        return zzv(3, obj, obj2, obj3);
    }

    public static zzgaf zzr(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        return zzv(5, obj, obj2, obj3, obj4, obj5);
    }

    @SafeVarargs
    public static zzgaf zzs(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object... objArr) {
        Object[] objArr2 = new Object[12];
        objArr2[0] = obj;
        objArr2[1] = obj2;
        objArr2[2] = obj3;
        objArr2[3] = obj4;
        objArr2[4] = obj5;
        objArr2[5] = obj6;
        System.arraycopy(objArr, 0, objArr2, 6, 6);
        return zzv(12, objArr2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzgaf zzv(int i, Object... objArr) {
        if (i != 0) {
            if (i != 1) {
                int zzh = zzh(i);
                Object[] objArr2 = new Object[zzh];
                int i2 = zzh - 1;
                int i3 = 0;
                int i4 = 0;
                for (int i5 = 0; i5 < i; i5++) {
                    Object obj = objArr[i5];
                    zzgbi.zza(obj, i5);
                    int hashCode = obj.hashCode();
                    int zza = zzfzs.zza(hashCode);
                    while (true) {
                        int i6 = zza & i2;
                        Object obj2 = objArr2[i6];
                        if (obj2 == null) {
                            objArr[i4] = obj;
                            objArr2[i6] = obj;
                            i3 += hashCode;
                            i4++;
                            break;
                        }
                        if (!obj2.equals(obj)) {
                            zza++;
                        }
                    }
                }
                Arrays.fill(objArr, i4, i, (Object) null);
                if (i4 == 1) {
                    Object obj3 = objArr[0];
                    Objects.requireNonNull(obj3);
                    return new zzgcb(obj3);
                }
                if (zzh(i4) < zzh / 2) {
                    return zzv(i4, objArr);
                }
                if (zzw(i4, objArr.length)) {
                    objArr = Arrays.copyOf(objArr, i4);
                }
                return new zzgbq(objArr, i3, objArr2, i2, i4);
            }
            Object obj4 = objArr[0];
            Objects.requireNonNull(obj4);
            return new zzgcb(obj4);
        }
        return zzgbq.zza;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zzw(int i, int i2) {
        return i < (i2 >> 1) + (i2 >> 2);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzgaf) && zzu() && ((zzgaf) obj).zzu() && hashCode() != obj.hashCode()) {
            return false;
        }
        return zzgca.zzd(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return zzgca.zza(this);
    }

    @Override // com.google.android.gms.internal.ads.zzfzv
    public zzgaa zzd() {
        zzgaa zzgaaVar = this.zza;
        if (zzgaaVar == null) {
            zzgaa zzi = zzi();
            this.zza = zzi;
            return zzi;
        }
        return zzgaaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfzv, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* renamed from: zze */
    public abstract zzgce iterator();

    public zzgaa zzi() {
        Object[] array = toArray();
        int i = zzgaa.zzd;
        return zzgaa.zzi(array, array.length);
    }

    public boolean zzu() {
        return false;
    }
}
