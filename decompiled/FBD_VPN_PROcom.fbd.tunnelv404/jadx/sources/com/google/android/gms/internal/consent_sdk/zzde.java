package com.google.android.gms.internal.consent_sdk;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.Objects;
import java.util.Arrays;
import java.util.Set;
import javax.annotation.CheckForNull;

/* loaded from: classes2.dex */
public abstract class zzde extends zzda implements Set, j$.util.Set {

    @CheckForNull
    private transient zzdd zza;

    public static int zzf(int i) {
        int max = Math.max(i, 2);
        if (max < 751619276) {
            int highestOneBit = Integer.highestOneBit(max - 1);
            do {
                highestOneBit += highestOneBit;
            } while (highestOneBit * 0.7d < max);
            return highestOneBit;
        }
        if (max < 1073741824) {
            return 1073741824;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{9093961953201940270L, 9093043948962324576L, 5971137608834202823L, -4503879373731038946L}).toString());
    }

    public static zzde zzi() {
        return zzdh.zza;
    }

    public static zzde zzj(Object obj, Object obj2, Object obj3, Object obj4) {
        return zzl(4, new ObfuscatedString(new long[]{-9179475454487395516L, 4263660952361051667L, -8457308226141624878L}).toString(), new ObfuscatedString(new long[]{6635125875440619796L, -750969037890586257L, 1273432817999365499L, 8669769421323547683L}).toString(), new ObfuscatedString(new long[]{648038590650451158L, -2989308064715772336L, 5715384784161291798L}).toString(), new ObfuscatedString(new long[]{5692410896610716567L, 6444915831825519419L, 1878008895078902459L, 944782301199265504L}).toString());
    }

    private static zzde zzl(int i, Object... objArr) {
        if (i != 0) {
            if (i != 1) {
                int zzf = zzf(i);
                Object[] objArr2 = new Object[zzf];
                int i2 = zzf - 1;
                int i3 = 0;
                int i4 = 0;
                for (int i5 = 0; i5 < i; i5++) {
                    Object obj = objArr[i5];
                    if (obj != null) {
                        int hashCode = obj.hashCode();
                        int zza = zzcz.zza(hashCode);
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
                    } else {
                        throw new NullPointerException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-2036669845152241916L, 3685807153964343273L, -4366239001942210610L}), new StringBuilder(), i5));
                    }
                }
                Arrays.fill(objArr, i4, i, (Object) null);
                if (i4 == 1) {
                    Object obj3 = objArr[0];
                    Objects.requireNonNull(obj3);
                    return new zzdi(obj3);
                }
                if (zzf(i4) >= zzf / 2) {
                    if (i4 < 3) {
                        objArr = Arrays.copyOf(objArr, i4);
                    }
                    return new zzdh(objArr, i3, objArr2, i2, i4);
                }
                return zzl(i4, objArr);
            }
            Object obj4 = objArr[0];
            Objects.requireNonNull(obj4);
            return new zzdi(obj4);
        }
        return zzdh.zza;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzde) && zzk() && ((zzde) obj).zzk() && hashCode() != obj.hashCode()) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            try {
                if (size() == set.size()) {
                    if (containsAll(set)) {
                        return true;
                    }
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int i;
        int i2 = 0;
        for (Object obj : this) {
            if (obj != null) {
                i = obj.hashCode();
            } else {
                i = 0;
            }
            i2 += i;
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzda, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* renamed from: zzd, reason: merged with bridge method [inline-methods] */
    public abstract zzdj iterator();

    public final zzdd zzg() {
        zzdd zzddVar = this.zza;
        if (zzddVar == null) {
            zzdd zzh = zzh();
            this.zza = zzh;
            return zzh;
        }
        return zzddVar;
    }

    public zzdd zzh() {
        Object[] array = toArray();
        int i = zzdd.zzd;
        return zzdd.zzg(array, array.length);
    }

    public boolean zzk() {
        return false;
    }
}
