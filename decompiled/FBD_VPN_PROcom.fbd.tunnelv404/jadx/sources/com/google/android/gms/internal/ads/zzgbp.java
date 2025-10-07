package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;
import java.util.Arrays;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzgbp extends zzgad {
    static final zzgad zza = new zzgbp(null, new Object[0], 0);
    final transient Object[] zzb;

    @CheckForNull
    private final transient Object zzc;
    private final transient int zzd;

    private zzgbp(@CheckForNull Object obj, Object[] objArr, int i) {
        this.zzc = obj;
        this.zzb = objArr;
        this.zzd = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r4v2, types: [int[]] */
    /* JADX WARN: Type inference failed for: r4v5 */
    public static zzgbp zzj(int i, Object[] objArr, zzgac zzgacVar) {
        short[] sArr;
        Object[] objArr2;
        int i2 = i;
        Object[] objArr3 = objArr;
        char c = 65535;
        char c2 = 2;
        if (i2 == 0) {
            return (zzgbp) zza;
        }
        Object obj = null;
        if (i2 == 1) {
            Object obj2 = objArr3[0];
            Objects.requireNonNull(obj2);
            Object obj3 = objArr3[1];
            Objects.requireNonNull(obj3);
            zzfyx.zzb(obj2, obj3);
            return new zzgbp(null, objArr3, 1);
        }
        zzfxe.zzb(i2, objArr3.length >> 1, new ObfuscatedString(new long[]{2396881598526017754L, 5623261791960128702L}).toString());
        int zzh = zzgaf.zzh(i);
        if (i2 == 1) {
            Object obj4 = objArr3[0];
            Objects.requireNonNull(obj4);
            Object obj5 = objArr3[1];
            Objects.requireNonNull(obj5);
            zzfyx.zzb(obj4, obj5);
            i2 = 1;
        } else {
            int i3 = zzh - 1;
            if (zzh <= 128) {
                byte[] bArr = new byte[zzh];
                Arrays.fill(bArr, (byte) -1);
                int i4 = 0;
                for (int i5 = 0; i5 < i2; i5++) {
                    int i6 = i4 + i4;
                    int i7 = i5 + i5;
                    Object obj6 = objArr3[i7];
                    Objects.requireNonNull(obj6);
                    Object obj7 = objArr3[i7 ^ 1];
                    Objects.requireNonNull(obj7);
                    zzfyx.zzb(obj6, obj7);
                    int zza2 = zzfzs.zza(obj6.hashCode());
                    while (true) {
                        int i8 = zza2 & i3;
                        int i9 = bArr[i8] & 255;
                        if (i9 == 255) {
                            bArr[i8] = (byte) i6;
                            if (i4 < i5) {
                                objArr3[i6] = obj6;
                                objArr3[i6 ^ 1] = obj7;
                            }
                            i4++;
                        } else {
                            if (obj6.equals(objArr3[i9])) {
                                int i10 = i9 ^ 1;
                                Object obj8 = objArr3[i10];
                                Objects.requireNonNull(obj8);
                                obj = new zzgab(obj6, obj7, obj8);
                                objArr3[i10] = obj7;
                                break;
                            }
                            zza2 = i8 + 1;
                        }
                    }
                }
                if (i4 == i2) {
                    obj = bArr;
                    c2 = 2;
                } else {
                    c2 = 2;
                    objArr2 = new Object[]{bArr, Integer.valueOf(i4), obj};
                    obj = objArr2;
                }
            } else if (zzh <= 32768) {
                sArr = new short[zzh];
                Arrays.fill(sArr, (short) -1);
                int i11 = 0;
                for (int i12 = 0; i12 < i2; i12++) {
                    int i13 = i11 + i11;
                    int i14 = i12 + i12;
                    Object obj9 = objArr3[i14];
                    Objects.requireNonNull(obj9);
                    Object obj10 = objArr3[i14 ^ 1];
                    Objects.requireNonNull(obj10);
                    zzfyx.zzb(obj9, obj10);
                    int zza3 = zzfzs.zza(obj9.hashCode());
                    while (true) {
                        int i15 = zza3 & i3;
                        char c3 = (char) sArr[i15];
                        if (c3 == 65535) {
                            sArr[i15] = (short) i13;
                            if (i11 < i12) {
                                objArr3[i13] = obj9;
                                objArr3[i13 ^ 1] = obj10;
                            }
                            i11++;
                        } else {
                            if (obj9.equals(objArr3[c3])) {
                                int i16 = c3 ^ 1;
                                Object obj11 = objArr3[i16];
                                Objects.requireNonNull(obj11);
                                zzgab zzgabVar = new zzgab(obj9, obj10, obj11);
                                objArr3[i16] = obj10;
                                obj = zzgabVar;
                                break;
                            }
                            zza3 = i15 + 1;
                        }
                    }
                }
                if (i11 != i2) {
                    c2 = 2;
                    objArr2 = new Object[]{sArr, Integer.valueOf(i11), obj};
                    obj = objArr2;
                }
                obj = sArr;
                c2 = 2;
            } else {
                sArr = new int[zzh];
                Arrays.fill((int[]) sArr, -1);
                zzgab zzgabVar2 = null;
                int i17 = 0;
                int i18 = 0;
                while (i18 < i2) {
                    int i19 = i17 + i17;
                    int i20 = i18 + i18;
                    Object obj12 = objArr3[i20];
                    Objects.requireNonNull(obj12);
                    Object obj13 = objArr3[i20 ^ 1];
                    Objects.requireNonNull(obj13);
                    zzfyx.zzb(obj12, obj13);
                    int zza4 = zzfzs.zza(obj12.hashCode());
                    while (true) {
                        int i21 = zza4 & i3;
                        ?? r15 = sArr[i21];
                        if (r15 == c) {
                            sArr[i21] = i19;
                            if (i17 < i18) {
                                objArr3[i19] = obj12;
                                objArr3[i19 ^ 1] = obj13;
                            }
                            i17++;
                        } else {
                            if (obj12.equals(objArr3[r15])) {
                                int i22 = r15 ^ 1;
                                Object obj14 = objArr3[i22];
                                Objects.requireNonNull(obj14);
                                zzgabVar2 = new zzgab(obj12, obj13, obj14);
                                objArr3[i22] = obj13;
                                break;
                            }
                            zza4 = i21 + 1;
                            c = 65535;
                        }
                    }
                    i18++;
                    c = 65535;
                }
                if (i17 != i2) {
                    c2 = 2;
                    objArr2 = new Object[]{sArr, Integer.valueOf(i17), zzgabVar2};
                    obj = objArr2;
                }
                obj = sArr;
                c2 = 2;
            }
        }
        boolean z = obj instanceof Object[];
        Object obj15 = obj;
        if (z) {
            Object[] objArr4 = (Object[]) obj;
            zzgab zzgabVar3 = (zzgab) objArr4[c2];
            if (zzgacVar != null) {
                zzgacVar.zzc = zzgabVar3;
                Object obj16 = objArr4[0];
                int intValue = ((Integer) objArr4[1]).intValue();
                objArr3 = Arrays.copyOf(objArr3, intValue + intValue);
                obj15 = obj16;
                i2 = intValue;
            } else {
                throw zzgabVar3.zza();
            }
        }
        return new zzgbp(obj15, objArr3, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x009e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x009f A[RETURN] */
    @Override // com.google.android.gms.internal.ads.zzgad, java.util.Map
    @CheckForNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object get(@CheckForNull Object obj) {
        Object obj2;
        if (obj != null) {
            int i = this.zzd;
            Object[] objArr = this.zzb;
            if (i == 1) {
                Object obj3 = objArr[0];
                Objects.requireNonNull(obj3);
                if (obj3.equals(obj)) {
                    obj2 = objArr[1];
                    Objects.requireNonNull(obj2);
                }
            } else {
                Object obj4 = this.zzc;
                if (obj4 != null) {
                    if (obj4 instanceof byte[]) {
                        byte[] bArr = (byte[]) obj4;
                        int length = bArr.length - 1;
                        int zza2 = zzfzs.zza(obj.hashCode());
                        while (true) {
                            int i2 = zza2 & length;
                            int i3 = bArr[i2] & 255;
                            if (i3 == 255) {
                                break;
                            }
                            if (obj.equals(objArr[i3])) {
                                obj2 = objArr[i3 ^ 1];
                                break;
                            }
                            zza2 = i2 + 1;
                        }
                    } else if (obj4 instanceof short[]) {
                        short[] sArr = (short[]) obj4;
                        int length2 = sArr.length - 1;
                        int zza3 = zzfzs.zza(obj.hashCode());
                        while (true) {
                            int i4 = zza3 & length2;
                            char c = (char) sArr[i4];
                            if (c == 65535) {
                                break;
                            }
                            if (obj.equals(objArr[c])) {
                                obj2 = objArr[c ^ 1];
                                break;
                            }
                            zza3 = i4 + 1;
                        }
                    } else {
                        int[] iArr = (int[]) obj4;
                        int length3 = iArr.length - 1;
                        int zza4 = zzfzs.zza(obj.hashCode());
                        while (true) {
                            int i5 = zza4 & length3;
                            int i6 = iArr[i5];
                            if (i6 == -1) {
                                break;
                            }
                            if (obj.equals(objArr[i6])) {
                                obj2 = objArr[i6 ^ 1];
                                break;
                            }
                            zza4 = i5 + 1;
                        }
                    }
                }
            }
            if (obj2 != null) {
                return null;
            }
            return obj2;
        }
        obj2 = null;
        if (obj2 != null) {
        }
    }

    @Override // java.util.Map
    public final int size() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzgad
    public final zzfzv zza() {
        return new zzgbo(this.zzb, 1, this.zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzgad
    public final zzgaf zzf() {
        return new zzgbm(this, this.zzb, 0, this.zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzgad
    public final zzgaf zzg() {
        return new zzgbn(this, new zzgbo(this.zzb, 0, this.zzd));
    }
}
