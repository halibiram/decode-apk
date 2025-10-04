package com.google.android.gms.internal.measurement;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC1320xaf50c7e8;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import sun.misc.Unsafe;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzlm<T> implements zzlu<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzmv.zzg();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzlj zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final int[] zzj;
    private final int zzk;
    private final int zzl;
    private final zzkx zzm;
    private final zzml zzn;
    private final zzjp zzo;
    private final zzlo zzp;
    private final zzle zzq;

    private zzlm(int[] iArr, Object[] objArr, int i, int i2, zzlj zzljVar, boolean z, boolean z2, int[] iArr2, int i3, int i4, zzlo zzloVar, zzkx zzkxVar, zzml zzmlVar, zzjp zzjpVar, zzle zzleVar, byte[] bArr) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i;
        this.zzf = i2;
        this.zzi = z;
        boolean z3 = false;
        if (zzjpVar != null && zzjpVar.zzc(zzljVar)) {
            z3 = true;
        }
        this.zzh = z3;
        this.zzj = iArr2;
        this.zzk = i3;
        this.zzl = i4;
        this.zzp = zzloVar;
        this.zzm = zzkxVar;
        this.zzn = zzmlVar;
        this.zzo = zzjpVar;
        this.zzg = zzljVar;
        this.zzq = zzleVar;
    }

    private static int zzA(int i) {
        return (i >>> 20) & 255;
    }

    private final int zzB(int i) {
        return this.zzc[i + 1];
    }

    private static long zzC(Object obj, long j) {
        return ((Long) zzmv.zzf(obj, j)).longValue();
    }

    private final zzkg zzD(int i) {
        int i2 = i / 3;
        return (zzkg) this.zzd[i2 + i2 + 1];
    }

    private final zzlu zzE(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        zzlu zzluVar = (zzlu) this.zzd[i3];
        if (zzluVar != null) {
            return zzluVar;
        }
        zzlu zzb2 = zzlr.zza().zzb((Class) this.zzd[i3 + 1]);
        this.zzd[i3] = zzb2;
        return zzb2;
    }

    private final Object zzF(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    private static Field zzG(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String arrays = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{4142523438231855615L, -804151177450432857L}).toString());
            sb.append(str);
            sb.append(new ObfuscatedString(new long[]{4161595730320772673L, 7980494107331727725L}).toString());
            sb.append(name);
            throw new RuntimeException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-1615497560952200018L, -3330584029842639020L, -4932600505856050015L, -6070295763638714154L, 8683083419974938141L}), sb, arrays));
        }
    }

    private final void zzH(Object obj, Object obj2, int i) {
        long zzB = zzB(i) & 1048575;
        if (!zzO(obj2, i)) {
            return;
        }
        Object zzf = zzmv.zzf(obj, zzB);
        Object zzf2 = zzmv.zzf(obj2, zzB);
        if (zzf != null && zzf2 != null) {
            zzmv.zzs(obj, zzB, zzkk.zzg(zzf, zzf2));
            zzJ(obj, i);
        } else if (zzf2 != null) {
            zzmv.zzs(obj, zzB, zzf2);
            zzJ(obj, i);
        }
    }

    private final void zzI(Object obj, Object obj2, int i) {
        Object obj3;
        int zzB = zzB(i);
        int i2 = this.zzc[i];
        long j = zzB & 1048575;
        if (!zzR(obj2, i2, i)) {
            return;
        }
        if (zzR(obj, i2, i)) {
            obj3 = zzmv.zzf(obj, j);
        } else {
            obj3 = null;
        }
        Object zzf = zzmv.zzf(obj2, j);
        if (obj3 != null && zzf != null) {
            zzmv.zzs(obj, j, zzkk.zzg(obj3, zzf));
            zzK(obj, i2, i);
        } else if (zzf != null) {
            zzmv.zzs(obj, j, zzf);
            zzK(obj, i2, i);
        }
    }

    private final void zzJ(Object obj, int i) {
        int zzy = zzy(i);
        long j = 1048575 & zzy;
        if (j == 1048575) {
            return;
        }
        zzmv.zzq(obj, j, (1 << (zzy >>> 20)) | zzmv.zzc(obj, j));
    }

    private final void zzK(Object obj, int i, int i2) {
        zzmv.zzq(obj, zzy(i2) & 1048575, i);
    }

    private final void zzL(Object obj, zznd zzndVar) {
        int i;
        if (!this.zzh) {
            int length = this.zzc.length;
            Unsafe unsafe = zzb;
            int i2 = 1048575;
            int i3 = 0;
            int i4 = 0;
            int i5 = 1048575;
            while (i3 < length) {
                int zzB = zzB(i3);
                int[] iArr = this.zzc;
                int i6 = iArr[i3];
                int zzA = zzA(zzB);
                if (zzA <= 17) {
                    int i7 = iArr[i3 + 2];
                    int i8 = i7 & i2;
                    if (i8 != i5) {
                        i4 = unsafe.getInt(obj, i8);
                        i5 = i8;
                    }
                    i = 1 << (i7 >>> 20);
                } else {
                    i = 0;
                }
                long j = zzB & i2;
                switch (zzA) {
                    case 0:
                        if ((i4 & i) == 0) {
                            break;
                        } else {
                            zzndVar.zzf(i6, zzmv.zza(obj, j));
                            continue;
                        }
                    case 1:
                        if ((i4 & i) != 0) {
                            zzndVar.zzo(i6, zzmv.zzb(obj, j));
                            break;
                        } else {
                            continue;
                        }
                    case 2:
                        if ((i4 & i) != 0) {
                            zzndVar.zzt(i6, unsafe.getLong(obj, j));
                            break;
                        } else {
                            continue;
                        }
                    case 3:
                        if ((i4 & i) != 0) {
                            zzndVar.zzJ(i6, unsafe.getLong(obj, j));
                            break;
                        } else {
                            continue;
                        }
                    case 4:
                        if ((i4 & i) != 0) {
                            zzndVar.zzr(i6, unsafe.getInt(obj, j));
                            break;
                        } else {
                            continue;
                        }
                    case 5:
                        if ((i4 & i) != 0) {
                            zzndVar.zzm(i6, unsafe.getLong(obj, j));
                            break;
                        } else {
                            continue;
                        }
                    case 6:
                        if ((i4 & i) != 0) {
                            zzndVar.zzk(i6, unsafe.getInt(obj, j));
                            break;
                        } else {
                            continue;
                        }
                    case 7:
                        if ((i4 & i) != 0) {
                            zzndVar.zzb(i6, zzmv.zzw(obj, j));
                            break;
                        } else {
                            continue;
                        }
                    case 8:
                        if ((i4 & i) != 0) {
                            zzT(i6, unsafe.getObject(obj, j), zzndVar);
                            break;
                        } else {
                            continue;
                        }
                    case 9:
                        if ((i4 & i) != 0) {
                            zzndVar.zzv(i6, unsafe.getObject(obj, j), zzE(i3));
                            break;
                        } else {
                            continue;
                        }
                    case 10:
                        if ((i4 & i) != 0) {
                            zzndVar.zzd(i6, (zzjb) unsafe.getObject(obj, j));
                            break;
                        } else {
                            continue;
                        }
                    case 11:
                        if ((i4 & i) != 0) {
                            zzndVar.zzH(i6, unsafe.getInt(obj, j));
                            break;
                        } else {
                            continue;
                        }
                    case 12:
                        if ((i4 & i) != 0) {
                            zzndVar.zzi(i6, unsafe.getInt(obj, j));
                            break;
                        } else {
                            continue;
                        }
                    case 13:
                        if ((i4 & i) != 0) {
                            zzndVar.zzw(i6, unsafe.getInt(obj, j));
                            break;
                        } else {
                            continue;
                        }
                    case 14:
                        if ((i4 & i) != 0) {
                            zzndVar.zzy(i6, unsafe.getLong(obj, j));
                            break;
                        } else {
                            continue;
                        }
                    case 15:
                        if ((i4 & i) != 0) {
                            zzndVar.zzA(i6, unsafe.getInt(obj, j));
                            break;
                        } else {
                            continue;
                        }
                    case 16:
                        if ((i4 & i) != 0) {
                            zzndVar.zzC(i6, unsafe.getLong(obj, j));
                            break;
                        } else {
                            continue;
                        }
                    case 17:
                        if ((i4 & i) != 0) {
                            zzndVar.zzq(i6, unsafe.getObject(obj, j), zzE(i3));
                            break;
                        } else {
                            continue;
                        }
                    case 18:
                        zzlw.zzJ(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, false);
                        continue;
                    case 19:
                        zzlw.zzN(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, false);
                        continue;
                    case 20:
                        zzlw.zzQ(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, false);
                        continue;
                    case 21:
                        zzlw.zzY(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, false);
                        continue;
                    case 22:
                        zzlw.zzP(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, false);
                        continue;
                    case 23:
                        zzlw.zzM(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, false);
                        continue;
                    case 24:
                        zzlw.zzL(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, false);
                        continue;
                    case 25:
                        zzlw.zzH(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, false);
                        continue;
                    case 26:
                        zzlw.zzW(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar);
                        break;
                    case 27:
                        zzlw.zzR(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, zzE(i3));
                        break;
                    case 28:
                        zzlw.zzI(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar);
                        break;
                    case 29:
                        zzlw.zzX(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, false);
                        break;
                    case 30:
                        zzlw.zzK(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, false);
                        break;
                    case 31:
                        zzlw.zzS(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, false);
                        break;
                    case 32:
                        zzlw.zzT(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, false);
                        break;
                    case 33:
                        zzlw.zzU(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, false);
                        break;
                    case 34:
                        zzlw.zzV(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, false);
                        break;
                    case 35:
                        zzlw.zzJ(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, true);
                        break;
                    case 36:
                        zzlw.zzN(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, true);
                        break;
                    case 37:
                        zzlw.zzQ(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, true);
                        break;
                    case 38:
                        zzlw.zzY(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, true);
                        break;
                    case 39:
                        zzlw.zzP(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, true);
                        break;
                    case 40:
                        zzlw.zzM(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, true);
                        break;
                    case 41:
                        zzlw.zzL(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, true);
                        break;
                    case 42:
                        zzlw.zzH(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, true);
                        break;
                    case 43:
                        zzlw.zzX(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, true);
                        break;
                    case 44:
                        zzlw.zzK(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, true);
                        break;
                    case 45:
                        zzlw.zzS(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, true);
                        break;
                    case 46:
                        zzlw.zzT(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, true);
                        break;
                    case 47:
                        zzlw.zzU(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, true);
                        break;
                    case 48:
                        zzlw.zzV(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, true);
                        break;
                    case 49:
                        zzlw.zzO(this.zzc[i3], (List) unsafe.getObject(obj, j), zzndVar, zzE(i3));
                        break;
                    case 50:
                        zzM(zzndVar, i6, unsafe.getObject(obj, j), i3);
                        break;
                    case 51:
                        if (zzR(obj, i6, i3)) {
                            zzndVar.zzf(i6, zzn(obj, j));
                            break;
                        }
                        break;
                    case 52:
                        if (zzR(obj, i6, i3)) {
                            zzndVar.zzo(i6, zzo(obj, j));
                            break;
                        }
                        break;
                    case 53:
                        if (zzR(obj, i6, i3)) {
                            zzndVar.zzt(i6, zzC(obj, j));
                            break;
                        }
                        break;
                    case 54:
                        if (zzR(obj, i6, i3)) {
                            zzndVar.zzJ(i6, zzC(obj, j));
                            break;
                        }
                        break;
                    case 55:
                        if (zzR(obj, i6, i3)) {
                            zzndVar.zzr(i6, zzr(obj, j));
                            break;
                        }
                        break;
                    case 56:
                        if (zzR(obj, i6, i3)) {
                            zzndVar.zzm(i6, zzC(obj, j));
                            break;
                        }
                        break;
                    case 57:
                        if (zzR(obj, i6, i3)) {
                            zzndVar.zzk(i6, zzr(obj, j));
                            break;
                        }
                        break;
                    case 58:
                        if (zzR(obj, i6, i3)) {
                            zzndVar.zzb(i6, zzS(obj, j));
                            break;
                        }
                        break;
                    case 59:
                        if (zzR(obj, i6, i3)) {
                            zzT(i6, unsafe.getObject(obj, j), zzndVar);
                            break;
                        }
                        break;
                    case 60:
                        if (zzR(obj, i6, i3)) {
                            zzndVar.zzv(i6, unsafe.getObject(obj, j), zzE(i3));
                            break;
                        }
                        break;
                    case 61:
                        if (zzR(obj, i6, i3)) {
                            zzndVar.zzd(i6, (zzjb) unsafe.getObject(obj, j));
                            break;
                        }
                        break;
                    case 62:
                        if (zzR(obj, i6, i3)) {
                            zzndVar.zzH(i6, zzr(obj, j));
                            break;
                        }
                        break;
                    case 63:
                        if (zzR(obj, i6, i3)) {
                            zzndVar.zzi(i6, zzr(obj, j));
                            break;
                        }
                        break;
                    case 64:
                        if (zzR(obj, i6, i3)) {
                            zzndVar.zzw(i6, zzr(obj, j));
                            break;
                        }
                        break;
                    case 65:
                        if (zzR(obj, i6, i3)) {
                            zzndVar.zzy(i6, zzC(obj, j));
                            break;
                        }
                        break;
                    case 66:
                        if (zzR(obj, i6, i3)) {
                            zzndVar.zzA(i6, zzr(obj, j));
                            break;
                        }
                        break;
                    case 67:
                        if (zzR(obj, i6, i3)) {
                            zzndVar.zzC(i6, zzC(obj, j));
                            break;
                        }
                        break;
                    case 68:
                        if (zzR(obj, i6, i3)) {
                            zzndVar.zzq(i6, unsafe.getObject(obj, j), zzE(i3));
                            break;
                        }
                        break;
                }
                i3 += 3;
                i2 = 1048575;
            }
            zzml zzmlVar = this.zzn;
            zzmlVar.zzi(zzmlVar.zzc(obj), zzndVar);
            return;
        }
        this.zzo.zza(obj);
        throw null;
    }

    private final void zzM(zznd zzndVar, int i, Object obj, int i2) {
        if (obj == null) {
            return;
        }
        throw null;
    }

    private final boolean zzN(Object obj, Object obj2, int i) {
        if (zzO(obj, i) == zzO(obj2, i)) {
            return true;
        }
        return false;
    }

    private final boolean zzO(Object obj, int i) {
        int zzy = zzy(i);
        long j = zzy & 1048575;
        if (j == 1048575) {
            int zzB = zzB(i);
            long j2 = zzB & 1048575;
            switch (zzA(zzB)) {
                case 0:
                    if (Double.doubleToRawLongBits(zzmv.zza(obj, j2)) == 0) {
                        return false;
                    }
                    return true;
                case 1:
                    if (Float.floatToRawIntBits(zzmv.zzb(obj, j2)) == 0) {
                        return false;
                    }
                    return true;
                case 2:
                    if (zzmv.zzd(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 3:
                    if (zzmv.zzd(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 4:
                    if (zzmv.zzc(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 5:
                    if (zzmv.zzd(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 6:
                    if (zzmv.zzc(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 7:
                    return zzmv.zzw(obj, j2);
                case 8:
                    Object zzf = zzmv.zzf(obj, j2);
                    if (zzf instanceof String) {
                        if (((String) zzf).isEmpty()) {
                            return false;
                        }
                        return true;
                    }
                    if (zzf instanceof zzjb) {
                        if (zzjb.zzb.equals(zzf)) {
                            return false;
                        }
                        return true;
                    }
                    throw new IllegalArgumentException();
                case 9:
                    if (zzmv.zzf(obj, j2) == null) {
                        return false;
                    }
                    return true;
                case 10:
                    if (zzjb.zzb.equals(zzmv.zzf(obj, j2))) {
                        return false;
                    }
                    return true;
                case 11:
                    if (zzmv.zzc(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 12:
                    if (zzmv.zzc(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 13:
                    if (zzmv.zzc(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 14:
                    if (zzmv.zzd(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 15:
                    if (zzmv.zzc(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 16:
                    if (zzmv.zzd(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 17:
                    if (zzmv.zzf(obj, j2) == null) {
                        return false;
                    }
                    return true;
                default:
                    throw new IllegalArgumentException();
            }
        }
        if ((zzmv.zzc(obj, j) & (1 << (zzy >>> 20))) == 0) {
            return false;
        }
        return true;
    }

    private final boolean zzP(Object obj, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return zzO(obj, i);
        }
        if ((i3 & i4) != 0) {
            return true;
        }
        return false;
    }

    private static boolean zzQ(Object obj, int i, zzlu zzluVar) {
        return zzluVar.zzk(zzmv.zzf(obj, i & 1048575));
    }

    private final boolean zzR(Object obj, int i, int i2) {
        if (zzmv.zzc(obj, zzy(i2) & 1048575) == i) {
            return true;
        }
        return false;
    }

    private static boolean zzS(Object obj, long j) {
        return ((Boolean) zzmv.zzf(obj, j)).booleanValue();
    }

    private static final void zzT(int i, Object obj, zznd zzndVar) {
        if (obj instanceof String) {
            zzndVar.zzF(i, (String) obj);
        } else {
            zzndVar.zzd(i, (zzjb) obj);
        }
    }

    public static zzmm zzd(Object obj) {
        zzkc zzkcVar = (zzkc) obj;
        zzmm zzmmVar = zzkcVar.zzc;
        if (zzmmVar == zzmm.zzc()) {
            zzmm zze = zzmm.zze();
            zzkcVar.zzc = zze;
            return zze;
        }
        return zzmmVar;
    }

    public static zzlm zzl(Class cls, zzlg zzlgVar, zzlo zzloVar, zzkx zzkxVar, zzml zzmlVar, zzjp zzjpVar, zzle zzleVar) {
        if (zzlgVar instanceof zzlt) {
            return zzm((zzlt) zzlgVar, zzloVar, zzkxVar, zzmlVar, zzjpVar, zzleVar);
        }
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x0332  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0388  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x025e  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x027a  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x027e  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0264  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static zzlm zzm(zzlt zzltVar, zzlo zzloVar, zzkx zzkxVar, zzml zzmlVar, zzjp zzjpVar, zzle zzleVar) {
        boolean z;
        int i;
        int charAt;
        int charAt2;
        int charAt3;
        int[] iArr;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        char charAt4;
        int i7;
        char charAt5;
        int i8;
        char charAt6;
        int i9;
        char charAt7;
        int i10;
        char charAt8;
        int i11;
        char charAt9;
        int i12;
        char charAt10;
        int i13;
        char charAt11;
        int i14;
        int i15;
        int i16;
        int[] iArr2;
        int i17;
        int i18;
        int i19;
        int objectFieldOffset;
        int i20;
        Object[] objArr;
        int i21;
        int i22;
        int i23;
        Field zzG;
        char charAt12;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        Object obj;
        Field zzG2;
        Object obj2;
        Field zzG3;
        int i29;
        char charAt13;
        int i30;
        char charAt14;
        int i31;
        char charAt15;
        int i32;
        char charAt16;
        if (zzltVar.zzc() == 2) {
            z = true;
        } else {
            z = false;
        }
        String zzd = zzltVar.zzd();
        int length = zzd.length();
        char c = 55296;
        if (zzd.charAt(0) >= 55296) {
            int i33 = 1;
            while (true) {
                i = i33 + 1;
                if (zzd.charAt(i33) < 55296) {
                    break;
                }
                i33 = i;
            }
        } else {
            i = 1;
        }
        int i34 = i + 1;
        int charAt17 = zzd.charAt(i);
        if (charAt17 >= 55296) {
            int i35 = charAt17 & 8191;
            int i36 = 13;
            while (true) {
                i32 = i34 + 1;
                charAt16 = zzd.charAt(i34);
                if (charAt16 < 55296) {
                    break;
                }
                i35 |= (charAt16 & 8191) << i36;
                i36 += 13;
                i34 = i32;
            }
            charAt17 = i35 | (charAt16 << i36);
            i34 = i32;
        }
        if (charAt17 == 0) {
            iArr = zza;
            i3 = 0;
            charAt = 0;
            i5 = 0;
            charAt2 = 0;
            i4 = 0;
            charAt3 = 0;
            i2 = 0;
        } else {
            int i37 = i34 + 1;
            int charAt18 = zzd.charAt(i34);
            if (charAt18 >= 55296) {
                int i38 = charAt18 & 8191;
                int i39 = 13;
                while (true) {
                    i13 = i37 + 1;
                    charAt11 = zzd.charAt(i37);
                    if (charAt11 < 55296) {
                        break;
                    }
                    i38 |= (charAt11 & 8191) << i39;
                    i39 += 13;
                    i37 = i13;
                }
                charAt18 = i38 | (charAt11 << i39);
                i37 = i13;
            }
            int i40 = i37 + 1;
            int charAt19 = zzd.charAt(i37);
            if (charAt19 >= 55296) {
                int i41 = charAt19 & 8191;
                int i42 = 13;
                while (true) {
                    i12 = i40 + 1;
                    charAt10 = zzd.charAt(i40);
                    if (charAt10 < 55296) {
                        break;
                    }
                    i41 |= (charAt10 & 8191) << i42;
                    i42 += 13;
                    i40 = i12;
                }
                charAt19 = i41 | (charAt10 << i42);
                i40 = i12;
            }
            int i43 = i40 + 1;
            charAt = zzd.charAt(i40);
            if (charAt >= 55296) {
                int i44 = charAt & 8191;
                int i45 = 13;
                while (true) {
                    i11 = i43 + 1;
                    charAt9 = zzd.charAt(i43);
                    if (charAt9 < 55296) {
                        break;
                    }
                    i44 |= (charAt9 & 8191) << i45;
                    i45 += 13;
                    i43 = i11;
                }
                charAt = i44 | (charAt9 << i45);
                i43 = i11;
            }
            int i46 = i43 + 1;
            int charAt20 = zzd.charAt(i43);
            if (charAt20 >= 55296) {
                int i47 = charAt20 & 8191;
                int i48 = 13;
                while (true) {
                    i10 = i46 + 1;
                    charAt8 = zzd.charAt(i46);
                    if (charAt8 < 55296) {
                        break;
                    }
                    i47 |= (charAt8 & 8191) << i48;
                    i48 += 13;
                    i46 = i10;
                }
                charAt20 = i47 | (charAt8 << i48);
                i46 = i10;
            }
            int i49 = i46 + 1;
            charAt2 = zzd.charAt(i46);
            if (charAt2 >= 55296) {
                int i50 = charAt2 & 8191;
                int i51 = 13;
                while (true) {
                    i9 = i49 + 1;
                    charAt7 = zzd.charAt(i49);
                    if (charAt7 < 55296) {
                        break;
                    }
                    i50 |= (charAt7 & 8191) << i51;
                    i51 += 13;
                    i49 = i9;
                }
                charAt2 = i50 | (charAt7 << i51);
                i49 = i9;
            }
            int i52 = i49 + 1;
            int charAt21 = zzd.charAt(i49);
            if (charAt21 >= 55296) {
                int i53 = charAt21 & 8191;
                int i54 = 13;
                while (true) {
                    i8 = i52 + 1;
                    charAt6 = zzd.charAt(i52);
                    if (charAt6 < 55296) {
                        break;
                    }
                    i53 |= (charAt6 & 8191) << i54;
                    i54 += 13;
                    i52 = i8;
                }
                charAt21 = i53 | (charAt6 << i54);
                i52 = i8;
            }
            int i55 = i52 + 1;
            int charAt22 = zzd.charAt(i52);
            if (charAt22 >= 55296) {
                int i56 = charAt22 & 8191;
                int i57 = 13;
                while (true) {
                    i7 = i55 + 1;
                    charAt5 = zzd.charAt(i55);
                    if (charAt5 < 55296) {
                        break;
                    }
                    i56 |= (charAt5 & 8191) << i57;
                    i57 += 13;
                    i55 = i7;
                }
                charAt22 = i56 | (charAt5 << i57);
                i55 = i7;
            }
            int i58 = i55 + 1;
            charAt3 = zzd.charAt(i55);
            if (charAt3 >= 55296) {
                int i59 = charAt3 & 8191;
                int i60 = 13;
                while (true) {
                    i6 = i58 + 1;
                    charAt4 = zzd.charAt(i58);
                    if (charAt4 < 55296) {
                        break;
                    }
                    i59 |= (charAt4 & 8191) << i60;
                    i60 += 13;
                    i58 = i6;
                }
                charAt3 = i59 | (charAt4 << i60);
                i58 = i6;
            }
            iArr = new int[charAt3 + charAt21 + charAt22];
            i2 = charAt18 + charAt18 + charAt19;
            i3 = charAt18;
            i34 = i58;
            int i61 = charAt21;
            i4 = charAt20;
            i5 = i61;
        }
        Unsafe unsafe = zzb;
        Object[] zze = zzltVar.zze();
        Class<?> cls = zzltVar.zza().getClass();
        int[] iArr3 = new int[charAt2 * 3];
        Object[] objArr2 = new Object[charAt2 + charAt2];
        int i62 = charAt3 + i5;
        int i63 = charAt3;
        int i64 = i62;
        int i65 = 0;
        int i66 = 0;
        while (i34 < length) {
            int i67 = i34 + 1;
            int charAt23 = zzd.charAt(i34);
            if (charAt23 >= c) {
                int i68 = charAt23 & 8191;
                int i69 = i67;
                int i70 = 13;
                while (true) {
                    i31 = i69 + 1;
                    charAt15 = zzd.charAt(i69);
                    if (charAt15 < c) {
                        break;
                    }
                    i68 |= (charAt15 & 8191) << i70;
                    i70 += 13;
                    i69 = i31;
                }
                charAt23 = i68 | (charAt15 << i70);
                i14 = i31;
            } else {
                i14 = i67;
            }
            int i71 = i14 + 1;
            int charAt24 = zzd.charAt(i14);
            if (charAt24 >= c) {
                int i72 = charAt24 & 8191;
                int i73 = i71;
                int i74 = 13;
                while (true) {
                    i30 = i73 + 1;
                    charAt14 = zzd.charAt(i73);
                    i15 = length;
                    if (charAt14 < 55296) {
                        break;
                    }
                    i72 |= (charAt14 & 8191) << i74;
                    i74 += 13;
                    i73 = i30;
                    length = i15;
                }
                charAt24 = i72 | (charAt14 << i74);
                i16 = i30;
            } else {
                i15 = length;
                i16 = i71;
            }
            int i75 = charAt24 & 255;
            int i76 = charAt3;
            if ((charAt24 & 1024) != 0) {
                iArr[i66] = i65;
                i66++;
            }
            if (i75 >= 51) {
                int i77 = i16 + 1;
                int charAt25 = zzd.charAt(i16);
                if (charAt25 >= 55296) {
                    int i78 = charAt25 & 8191;
                    int i79 = i77;
                    int i80 = 13;
                    while (true) {
                        i29 = i79 + 1;
                        charAt13 = zzd.charAt(i79);
                        i18 = i4;
                        if (charAt13 < 55296) {
                            break;
                        }
                        i78 |= (charAt13 & 8191) << i80;
                        i80 += 13;
                        i79 = i29;
                        i4 = i18;
                    }
                    charAt25 = i78 | (charAt13 << i80);
                    i27 = i29;
                } else {
                    i18 = i4;
                    i27 = i77;
                }
                int i81 = i75 - 51;
                int i82 = i27;
                if (i81 != 9 && i81 != 17) {
                    if (i81 == 12 && !z) {
                        int i83 = i65 / 3;
                        i28 = i2 + 1;
                        objArr2[i83 + i83 + 1] = zze[i2];
                    }
                    int i84 = charAt25 + charAt25;
                    obj = zze[i84];
                    if (!(obj instanceof Field)) {
                        zzG2 = (Field) obj;
                    } else {
                        zzG2 = zzG(cls, (String) obj);
                        zze[i84] = zzG2;
                    }
                    iArr2 = iArr3;
                    i17 = charAt;
                    int objectFieldOffset2 = (int) unsafe.objectFieldOffset(zzG2);
                    int i85 = i84 + 1;
                    obj2 = zze[i85];
                    if (!(obj2 instanceof Field)) {
                        zzG3 = (Field) obj2;
                    } else {
                        zzG3 = zzG(cls, (String) obj2);
                        zze[i85] = zzG3;
                    }
                    objArr = objArr2;
                    i19 = i2;
                    i22 = i82;
                    i21 = i3;
                    i20 = (int) unsafe.objectFieldOffset(zzG3);
                    objectFieldOffset = objectFieldOffset2;
                    i23 = 0;
                } else {
                    int i86 = i65 / 3;
                    i28 = i2 + 1;
                    objArr2[i86 + i86 + 1] = zze[i2];
                }
                i2 = i28;
                int i842 = charAt25 + charAt25;
                obj = zze[i842];
                if (!(obj instanceof Field)) {
                }
                iArr2 = iArr3;
                i17 = charAt;
                int objectFieldOffset22 = (int) unsafe.objectFieldOffset(zzG2);
                int i852 = i842 + 1;
                obj2 = zze[i852];
                if (!(obj2 instanceof Field)) {
                }
                objArr = objArr2;
                i19 = i2;
                i22 = i82;
                i21 = i3;
                i20 = (int) unsafe.objectFieldOffset(zzG3);
                objectFieldOffset = objectFieldOffset22;
                i23 = 0;
            } else {
                iArr2 = iArr3;
                i17 = charAt;
                i18 = i4;
                int i87 = i2 + 1;
                Field zzG4 = zzG(cls, (String) zze[i2]);
                if (i75 != 9 && i75 != 17) {
                    if (i75 != 27 && i75 != 49) {
                        if (i75 != 12 && i75 != 30 && i75 != 44) {
                            if (i75 == 50) {
                                int i88 = i63 + 1;
                                iArr[i63] = i65;
                                int i89 = i65 / 3;
                                int i90 = i89 + i89;
                                int i91 = i2 + 2;
                                objArr2[i90] = zze[i87];
                                if ((charAt24 & 2048) != 0) {
                                    i87 = i2 + 3;
                                    objArr2[i90 + 1] = zze[i91];
                                    i63 = i88;
                                } else {
                                    i63 = i88;
                                    i19 = i91;
                                    objectFieldOffset = (int) unsafe.objectFieldOffset(zzG4);
                                    i20 = 1048575;
                                    objArr = objArr2;
                                    if ((charAt24 & 4096) != 4096 && i75 <= 17) {
                                        int i92 = i16 + 1;
                                        int charAt26 = zzd.charAt(i16);
                                        if (charAt26 >= 55296) {
                                            int i93 = charAt26 & 8191;
                                            int i94 = 13;
                                            while (true) {
                                                i22 = i92 + 1;
                                                charAt12 = zzd.charAt(i92);
                                                if (charAt12 < 55296) {
                                                    break;
                                                }
                                                i93 |= (charAt12 & 8191) << i94;
                                                i94 += 13;
                                                i92 = i22;
                                            }
                                            charAt26 = i93 | (charAt12 << i94);
                                        } else {
                                            i22 = i92;
                                        }
                                        int i95 = (charAt26 / 32) + i3 + i3;
                                        Object obj3 = zze[i95];
                                        if (obj3 instanceof Field) {
                                            zzG = (Field) obj3;
                                        } else {
                                            zzG = zzG(cls, (String) obj3);
                                            zze[i95] = zzG;
                                        }
                                        i21 = i3;
                                        i23 = charAt26 % 32;
                                        i20 = (int) unsafe.objectFieldOffset(zzG);
                                    } else {
                                        i21 = i3;
                                        i22 = i16;
                                        i23 = 0;
                                    }
                                    if (i75 >= 18 && i75 <= 49) {
                                        iArr[i64] = objectFieldOffset;
                                        i64++;
                                    }
                                }
                            }
                        } else if (!z) {
                            int i96 = i65 / 3;
                            i24 = i2 + 2;
                            objArr2[i96 + i96 + 1] = zze[i87];
                        }
                    } else {
                        int i97 = i65 / 3;
                        i24 = i2 + 2;
                        objArr2[i97 + i97 + 1] = zze[i87];
                    }
                    i19 = i24;
                    objectFieldOffset = (int) unsafe.objectFieldOffset(zzG4);
                    i20 = 1048575;
                    objArr = objArr2;
                    if ((charAt24 & 4096) != 4096) {
                    }
                    i21 = i3;
                    i22 = i16;
                    i23 = 0;
                    if (i75 >= 18) {
                        iArr[i64] = objectFieldOffset;
                        i64++;
                    }
                } else {
                    int i98 = i65 / 3;
                    objArr2[i98 + i98 + 1] = zzG4.getType();
                }
                i19 = i87;
                objectFieldOffset = (int) unsafe.objectFieldOffset(zzG4);
                i20 = 1048575;
                objArr = objArr2;
                if ((charAt24 & 4096) != 4096) {
                }
                i21 = i3;
                i22 = i16;
                i23 = 0;
                if (i75 >= 18) {
                }
            }
            int i99 = i65 + 1;
            iArr2[i65] = charAt23;
            int i100 = i65 + 2;
            if ((charAt24 & 512) != 0) {
                i25 = 536870912;
            } else {
                i25 = 0;
            }
            if ((charAt24 & 256) != 0) {
                i26 = 268435456;
            } else {
                i26 = 0;
            }
            iArr2[i99] = i26 | i25 | (i75 << 20) | objectFieldOffset;
            i65 += 3;
            iArr2[i100] = (i23 << 20) | i20;
            i3 = i21;
            i2 = i19;
            charAt = i17;
            charAt3 = i76;
            i34 = i22;
            length = i15;
            objArr2 = objArr;
            iArr3 = iArr2;
            i4 = i18;
            c = 55296;
        }
        return new zzlm(iArr3, objArr2, charAt, i4, zzltVar.zza(), z, false, iArr, charAt3, i62, zzloVar, zzkxVar, zzmlVar, zzjpVar, zzleVar, null);
    }

    private static double zzn(Object obj, long j) {
        return ((Double) zzmv.zzf(obj, j)).doubleValue();
    }

    private static float zzo(Object obj, long j) {
        return ((Float) zzmv.zzf(obj, j)).floatValue();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x0040. Please report as an issue. */
    private final int zzp(Object obj) {
        int i;
        int zzA;
        int zzB;
        int i2;
        int zzA2;
        int zzv;
        int zzo;
        int zzu;
        int zzA3;
        int zzB2;
        int i3;
        int zzA4;
        int zzv2;
        Unsafe unsafe = zzb;
        int i4 = 1048575;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 1048575;
        while (i5 < this.zzc.length) {
            int zzB3 = zzB(i5);
            int[] iArr = this.zzc;
            int i9 = iArr[i5];
            int zzA5 = zzA(zzB3);
            if (zzA5 <= 17) {
                int i10 = iArr[i5 + 2];
                int i11 = i10 & i4;
                i = 1 << (i10 >>> 20);
                if (i11 != i8) {
                    i7 = unsafe.getInt(obj, i11);
                    i8 = i11;
                }
            } else {
                i = 0;
            }
            long j = zzB3 & i4;
            switch (zzA5) {
                case 0:
                    if ((i7 & i) == 0) {
                        break;
                    } else {
                        i6 = AbstractC1320xaf50c7e8.m4359x9e171bf9(i9 << 3, 8, i6);
                        break;
                    }
                case 1:
                    if ((i7 & i) == 0) {
                        break;
                    } else {
                        i6 = AbstractC1320xaf50c7e8.m4359x9e171bf9(i9 << 3, 4, i6);
                        break;
                    }
                case 2:
                    if ((i7 & i) == 0) {
                        break;
                    } else {
                        long j2 = unsafe.getLong(obj, j);
                        zzA = zzjj.zzA(i9 << 3);
                        zzB = zzjj.zzB(j2);
                        i2 = zzB + zzA;
                        i6 += i2;
                        break;
                    }
                case 3:
                    if ((i7 & i) == 0) {
                        break;
                    } else {
                        long j3 = unsafe.getLong(obj, j);
                        zzA = zzjj.zzA(i9 << 3);
                        zzB = zzjj.zzB(j3);
                        i2 = zzB + zzA;
                        i6 += i2;
                        break;
                    }
                case 4:
                    if ((i7 & i) == 0) {
                        break;
                    } else {
                        int i12 = unsafe.getInt(obj, j);
                        zzA2 = zzjj.zzA(i9 << 3);
                        zzv = zzjj.zzv(i12);
                        i2 = zzv + zzA2;
                        i6 += i2;
                        break;
                    }
                case 5:
                    if ((i7 & i) == 0) {
                        break;
                    } else {
                        i6 = AbstractC1320xaf50c7e8.m4359x9e171bf9(i9 << 3, 8, i6);
                        break;
                    }
                case 6:
                    if ((i7 & i) == 0) {
                        break;
                    } else {
                        i6 = AbstractC1320xaf50c7e8.m4359x9e171bf9(i9 << 3, 4, i6);
                        break;
                    }
                case 7:
                    if ((i7 & i) == 0) {
                        break;
                    } else {
                        i6 = AbstractC1320xaf50c7e8.m4359x9e171bf9(i9 << 3, 1, i6);
                        break;
                    }
                case 8:
                    if ((i7 & i) == 0) {
                        break;
                    } else {
                        Object object = unsafe.getObject(obj, j);
                        if (object instanceof zzjb) {
                            int zzA6 = zzjj.zzA(i9 << 3);
                            int zzd = ((zzjb) object).zzd();
                            i6 = AbstractC1320xaf50c7e8.m4355x3271d0aa(zzd, zzd, zzA6, i6);
                            break;
                        } else {
                            zzA2 = zzjj.zzA(i9 << 3);
                            zzv = zzjj.zzy((String) object);
                            i2 = zzv + zzA2;
                            i6 += i2;
                            break;
                        }
                    }
                case 9:
                    if ((i7 & i) == 0) {
                        break;
                    } else {
                        zzo = zzlw.zzo(i9, unsafe.getObject(obj, j), zzE(i5));
                        i6 += zzo;
                        break;
                    }
                case 10:
                    if ((i7 & i) == 0) {
                        break;
                    } else {
                        zzjb zzjbVar = (zzjb) unsafe.getObject(obj, j);
                        int zzA7 = zzjj.zzA(i9 << 3);
                        int zzd2 = zzjbVar.zzd();
                        i6 = AbstractC1320xaf50c7e8.m4355x3271d0aa(zzd2, zzd2, zzA7, i6);
                        break;
                    }
                case 11:
                    if ((i7 & i) == 0) {
                        break;
                    } else {
                        i6 = AbstractC1320xaf50c7e8.m4359x9e171bf9(unsafe.getInt(obj, j), zzjj.zzA(i9 << 3), i6);
                        break;
                    }
                case 12:
                    if ((i7 & i) == 0) {
                        break;
                    } else {
                        int i13 = unsafe.getInt(obj, j);
                        zzA2 = zzjj.zzA(i9 << 3);
                        zzv = zzjj.zzv(i13);
                        i2 = zzv + zzA2;
                        i6 += i2;
                        break;
                    }
                case 13:
                    if ((i7 & i) == 0) {
                        break;
                    } else {
                        i6 = AbstractC1320xaf50c7e8.m4359x9e171bf9(i9 << 3, 4, i6);
                        break;
                    }
                case 14:
                    if ((i7 & i) == 0) {
                        break;
                    } else {
                        i6 = AbstractC1320xaf50c7e8.m4359x9e171bf9(i9 << 3, 8, i6);
                        break;
                    }
                case 15:
                    if ((i7 & i) == 0) {
                        break;
                    } else {
                        int i14 = unsafe.getInt(obj, j);
                        i6 = AbstractC1320xaf50c7e8.m4359x9e171bf9((i14 >> 31) ^ (i14 + i14), zzjj.zzA(i9 << 3), i6);
                        break;
                    }
                case 16:
                    if ((i & i7) == 0) {
                        break;
                    } else {
                        long j4 = unsafe.getLong(obj, j);
                        i2 = zzjj.zzB((j4 >> 63) ^ (j4 + j4)) + zzjj.zzA(i9 << 3);
                        i6 += i2;
                        break;
                    }
                case 17:
                    if ((i7 & i) == 0) {
                        break;
                    } else {
                        i2 = zzjj.zzu(i9, (zzlj) unsafe.getObject(obj, j), zzE(i5));
                        i6 += i2;
                        break;
                    }
                case 18:
                    zzo = zzlw.zzh(i9, (List) unsafe.getObject(obj, j), false);
                    i6 += zzo;
                    break;
                case 19:
                    zzo = zzlw.zzf(i9, (List) unsafe.getObject(obj, j), false);
                    i6 += zzo;
                    break;
                case 20:
                    zzo = zzlw.zzm(i9, (List) unsafe.getObject(obj, j), false);
                    i6 += zzo;
                    break;
                case 21:
                    zzo = zzlw.zzx(i9, (List) unsafe.getObject(obj, j), false);
                    i6 += zzo;
                    break;
                case 22:
                    zzo = zzlw.zzk(i9, (List) unsafe.getObject(obj, j), false);
                    i6 += zzo;
                    break;
                case 23:
                    zzo = zzlw.zzh(i9, (List) unsafe.getObject(obj, j), false);
                    i6 += zzo;
                    break;
                case 24:
                    zzo = zzlw.zzf(i9, (List) unsafe.getObject(obj, j), false);
                    i6 += zzo;
                    break;
                case 25:
                    zzo = zzlw.zza(i9, (List) unsafe.getObject(obj, j), false);
                    i6 += zzo;
                    break;
                case 26:
                    zzu = zzlw.zzu(i9, (List) unsafe.getObject(obj, j));
                    i6 += zzu;
                    break;
                case 27:
                    zzu = zzlw.zzp(i9, (List) unsafe.getObject(obj, j), zzE(i5));
                    i6 += zzu;
                    break;
                case 28:
                    zzu = zzlw.zzc(i9, (List) unsafe.getObject(obj, j));
                    i6 += zzu;
                    break;
                case 29:
                    zzu = zzlw.zzv(i9, (List) unsafe.getObject(obj, j), false);
                    i6 += zzu;
                    break;
                case 30:
                    zzu = zzlw.zzd(i9, (List) unsafe.getObject(obj, j), false);
                    i6 += zzu;
                    break;
                case 31:
                    zzu = zzlw.zzf(i9, (List) unsafe.getObject(obj, j), false);
                    i6 += zzu;
                    break;
                case 32:
                    zzu = zzlw.zzh(i9, (List) unsafe.getObject(obj, j), false);
                    i6 += zzu;
                    break;
                case 33:
                    zzu = zzlw.zzq(i9, (List) unsafe.getObject(obj, j), false);
                    i6 += zzu;
                    break;
                case 34:
                    zzu = zzlw.zzs(i9, (List) unsafe.getObject(obj, j), false);
                    i6 += zzu;
                    break;
                case 35:
                    int zzi = zzlw.zzi((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        i6 = AbstractC1320xaf50c7e8.m4355x3271d0aa(zzi, zzjj.zzz(i9), zzi, i6);
                    }
                    break;
                case 36:
                    int zzg = zzlw.zzg((List) unsafe.getObject(obj, j));
                    if (zzg > 0) {
                        i6 = AbstractC1320xaf50c7e8.m4355x3271d0aa(zzg, zzjj.zzz(i9), zzg, i6);
                    }
                    break;
                case 37:
                    int zzn = zzlw.zzn((List) unsafe.getObject(obj, j));
                    if (zzn > 0) {
                        i6 = AbstractC1320xaf50c7e8.m4355x3271d0aa(zzn, zzjj.zzz(i9), zzn, i6);
                    }
                    break;
                case 38:
                    int zzy = zzlw.zzy((List) unsafe.getObject(obj, j));
                    if (zzy > 0) {
                        i6 = AbstractC1320xaf50c7e8.m4355x3271d0aa(zzy, zzjj.zzz(i9), zzy, i6);
                    }
                    break;
                case 39:
                    int zzl = zzlw.zzl((List) unsafe.getObject(obj, j));
                    if (zzl > 0) {
                        i6 = AbstractC1320xaf50c7e8.m4355x3271d0aa(zzl, zzjj.zzz(i9), zzl, i6);
                    }
                    break;
                case 40:
                    int zzi2 = zzlw.zzi((List) unsafe.getObject(obj, j));
                    if (zzi2 > 0) {
                        i6 = AbstractC1320xaf50c7e8.m4355x3271d0aa(zzi2, zzjj.zzz(i9), zzi2, i6);
                    }
                    break;
                case 41:
                    int zzg2 = zzlw.zzg((List) unsafe.getObject(obj, j));
                    if (zzg2 > 0) {
                        i6 = AbstractC1320xaf50c7e8.m4355x3271d0aa(zzg2, zzjj.zzz(i9), zzg2, i6);
                    }
                    break;
                case 42:
                    int zzb2 = zzlw.zzb((List) unsafe.getObject(obj, j));
                    if (zzb2 > 0) {
                        i6 = AbstractC1320xaf50c7e8.m4355x3271d0aa(zzb2, zzjj.zzz(i9), zzb2, i6);
                    }
                    break;
                case 43:
                    int zzw = zzlw.zzw((List) unsafe.getObject(obj, j));
                    if (zzw > 0) {
                        i6 = AbstractC1320xaf50c7e8.m4355x3271d0aa(zzw, zzjj.zzz(i9), zzw, i6);
                    }
                    break;
                case 44:
                    int zze = zzlw.zze((List) unsafe.getObject(obj, j));
                    if (zze > 0) {
                        i6 = AbstractC1320xaf50c7e8.m4355x3271d0aa(zze, zzjj.zzz(i9), zze, i6);
                    }
                    break;
                case 45:
                    int zzg3 = zzlw.zzg((List) unsafe.getObject(obj, j));
                    if (zzg3 > 0) {
                        i6 = AbstractC1320xaf50c7e8.m4355x3271d0aa(zzg3, zzjj.zzz(i9), zzg3, i6);
                    }
                    break;
                case 46:
                    int zzi3 = zzlw.zzi((List) unsafe.getObject(obj, j));
                    if (zzi3 > 0) {
                        i6 = AbstractC1320xaf50c7e8.m4355x3271d0aa(zzi3, zzjj.zzz(i9), zzi3, i6);
                    }
                    break;
                case 47:
                    int zzr = zzlw.zzr((List) unsafe.getObject(obj, j));
                    if (zzr > 0) {
                        i6 = AbstractC1320xaf50c7e8.m4355x3271d0aa(zzr, zzjj.zzz(i9), zzr, i6);
                    }
                    break;
                case 48:
                    int zzt = zzlw.zzt((List) unsafe.getObject(obj, j));
                    if (zzt > 0) {
                        i6 = AbstractC1320xaf50c7e8.m4355x3271d0aa(zzt, zzjj.zzz(i9), zzt, i6);
                    }
                    break;
                case 49:
                    zzu = zzlw.zzj(i9, (List) unsafe.getObject(obj, j), zzE(i5));
                    i6 += zzu;
                    break;
                case 50:
                    zzle.zza(i9, unsafe.getObject(obj, j), zzF(i5));
                    break;
                case 51:
                    if (zzR(obj, i9, i5)) {
                        i6 = AbstractC1320xaf50c7e8.m4359x9e171bf9(i9 << 3, 8, i6);
                    }
                    break;
                case 52:
                    if (zzR(obj, i9, i5)) {
                        i6 = AbstractC1320xaf50c7e8.m4359x9e171bf9(i9 << 3, 4, i6);
                    }
                    break;
                case 53:
                    if (zzR(obj, i9, i5)) {
                        long zzC = zzC(obj, j);
                        zzA3 = zzjj.zzA(i9 << 3);
                        zzB2 = zzjj.zzB(zzC);
                        i3 = zzB2 + zzA3;
                        i6 += i3;
                    }
                    break;
                case 54:
                    if (zzR(obj, i9, i5)) {
                        long zzC2 = zzC(obj, j);
                        zzA3 = zzjj.zzA(i9 << 3);
                        zzB2 = zzjj.zzB(zzC2);
                        i3 = zzB2 + zzA3;
                        i6 += i3;
                    }
                    break;
                case 55:
                    if (zzR(obj, i9, i5)) {
                        int zzr2 = zzr(obj, j);
                        zzA4 = zzjj.zzA(i9 << 3);
                        zzv2 = zzjj.zzv(zzr2);
                        i3 = zzv2 + zzA4;
                        i6 += i3;
                    }
                    break;
                case 56:
                    if (zzR(obj, i9, i5)) {
                        i6 = AbstractC1320xaf50c7e8.m4359x9e171bf9(i9 << 3, 8, i6);
                    }
                    break;
                case 57:
                    if (zzR(obj, i9, i5)) {
                        i6 = AbstractC1320xaf50c7e8.m4359x9e171bf9(i9 << 3, 4, i6);
                    }
                    break;
                case 58:
                    if (zzR(obj, i9, i5)) {
                        i6 = AbstractC1320xaf50c7e8.m4359x9e171bf9(i9 << 3, 1, i6);
                    }
                    break;
                case 59:
                    if (zzR(obj, i9, i5)) {
                        Object object2 = unsafe.getObject(obj, j);
                        if (object2 instanceof zzjb) {
                            int zzA8 = zzjj.zzA(i9 << 3);
                            int zzd3 = ((zzjb) object2).zzd();
                            i6 = AbstractC1320xaf50c7e8.m4355x3271d0aa(zzd3, zzd3, zzA8, i6);
                        } else {
                            zzA4 = zzjj.zzA(i9 << 3);
                            zzv2 = zzjj.zzy((String) object2);
                            i3 = zzv2 + zzA4;
                            i6 += i3;
                        }
                    }
                    break;
                case 60:
                    if (zzR(obj, i9, i5)) {
                        zzu = zzlw.zzo(i9, unsafe.getObject(obj, j), zzE(i5));
                        i6 += zzu;
                    }
                    break;
                case 61:
                    if (zzR(obj, i9, i5)) {
                        zzjb zzjbVar2 = (zzjb) unsafe.getObject(obj, j);
                        int zzA9 = zzjj.zzA(i9 << 3);
                        int zzd4 = zzjbVar2.zzd();
                        i6 = AbstractC1320xaf50c7e8.m4355x3271d0aa(zzd4, zzd4, zzA9, i6);
                    }
                    break;
                case 62:
                    if (zzR(obj, i9, i5)) {
                        i6 = AbstractC1320xaf50c7e8.m4359x9e171bf9(zzr(obj, j), zzjj.zzA(i9 << 3), i6);
                    }
                    break;
                case 63:
                    if (zzR(obj, i9, i5)) {
                        int zzr3 = zzr(obj, j);
                        zzA4 = zzjj.zzA(i9 << 3);
                        zzv2 = zzjj.zzv(zzr3);
                        i3 = zzv2 + zzA4;
                        i6 += i3;
                    }
                    break;
                case 64:
                    if (zzR(obj, i9, i5)) {
                        i6 = AbstractC1320xaf50c7e8.m4359x9e171bf9(i9 << 3, 4, i6);
                    }
                    break;
                case 65:
                    if (zzR(obj, i9, i5)) {
                        i6 = AbstractC1320xaf50c7e8.m4359x9e171bf9(i9 << 3, 8, i6);
                    }
                    break;
                case 66:
                    if (zzR(obj, i9, i5)) {
                        int zzr4 = zzr(obj, j);
                        i6 = AbstractC1320xaf50c7e8.m4359x9e171bf9((zzr4 >> 31) ^ (zzr4 + zzr4), zzjj.zzA(i9 << 3), i6);
                    }
                    break;
                case 67:
                    if (zzR(obj, i9, i5)) {
                        long zzC3 = zzC(obj, j);
                        i3 = zzjj.zzB((zzC3 >> 63) ^ (zzC3 + zzC3)) + zzjj.zzA(i9 << 3);
                        i6 += i3;
                    }
                    break;
                case 68:
                    if (zzR(obj, i9, i5)) {
                        i3 = zzjj.zzu(i9, (zzlj) unsafe.getObject(obj, j), zzE(i5));
                        i6 += i3;
                    }
                    break;
            }
            i5 += 3;
            i4 = 1048575;
        }
        zzml zzmlVar = this.zzn;
        int zza2 = i6 + zzmlVar.zza(zzmlVar.zzc(obj));
        if (!this.zzh) {
            return zza2;
        }
        this.zzo.zza(obj);
        throw null;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x0037. Please report as an issue. */
    private final int zzq(Object obj) {
        int zzA;
        int zzB;
        int zzA2;
        int zzv;
        int zzo;
        int zzu;
        Unsafe unsafe = zzb;
        int i = 0;
        for (int i2 = 0; i2 < this.zzc.length; i2 += 3) {
            int zzB2 = zzB(i2);
            int zzA3 = zzA(zzB2);
            int i3 = this.zzc[i2];
            long j = zzB2 & 1048575;
            if (zzA3 >= zzju.zzJ.zza() && zzA3 <= zzju.zzW.zza()) {
                int i4 = this.zzc[i2 + 2];
            }
            switch (zzA3) {
                case 0:
                    if (zzO(obj, i2)) {
                        i = AbstractC1320xaf50c7e8.m4359x9e171bf9(i3 << 3, 8, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzO(obj, i2)) {
                        i = AbstractC1320xaf50c7e8.m4359x9e171bf9(i3 << 3, 4, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zzO(obj, i2)) {
                        long zzd = zzmv.zzd(obj, j);
                        zzA = zzjj.zzA(i3 << 3);
                        zzB = zzjj.zzB(zzd);
                        zzu = zzB + zzA;
                        i += zzu;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zzO(obj, i2)) {
                        long zzd2 = zzmv.zzd(obj, j);
                        zzA = zzjj.zzA(i3 << 3);
                        zzB = zzjj.zzB(zzd2);
                        zzu = zzB + zzA;
                        i += zzu;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zzO(obj, i2)) {
                        int zzc = zzmv.zzc(obj, j);
                        zzA2 = zzjj.zzA(i3 << 3);
                        zzv = zzjj.zzv(zzc);
                        zzu = zzv + zzA2;
                        i += zzu;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zzO(obj, i2)) {
                        i = AbstractC1320xaf50c7e8.m4359x9e171bf9(i3 << 3, 8, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zzO(obj, i2)) {
                        i = AbstractC1320xaf50c7e8.m4359x9e171bf9(i3 << 3, 4, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zzO(obj, i2)) {
                        i = AbstractC1320xaf50c7e8.m4359x9e171bf9(i3 << 3, 1, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zzO(obj, i2)) {
                        Object zzf = zzmv.zzf(obj, j);
                        if (zzf instanceof zzjb) {
                            int zzA4 = zzjj.zzA(i3 << 3);
                            int zzd3 = ((zzjb) zzf).zzd();
                            i = AbstractC1320xaf50c7e8.m4355x3271d0aa(zzd3, zzd3, zzA4, i);
                            break;
                        } else {
                            zzA2 = zzjj.zzA(i3 << 3);
                            zzv = zzjj.zzy((String) zzf);
                            zzu = zzv + zzA2;
                            i += zzu;
                            break;
                        }
                    } else {
                        break;
                    }
                case 9:
                    if (zzO(obj, i2)) {
                        zzo = zzlw.zzo(i3, zzmv.zzf(obj, j), zzE(i2));
                        i += zzo;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (zzO(obj, i2)) {
                        zzjb zzjbVar = (zzjb) zzmv.zzf(obj, j);
                        int zzA5 = zzjj.zzA(i3 << 3);
                        int zzd4 = zzjbVar.zzd();
                        i = AbstractC1320xaf50c7e8.m4355x3271d0aa(zzd4, zzd4, zzA5, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zzO(obj, i2)) {
                        i = AbstractC1320xaf50c7e8.m4359x9e171bf9(zzmv.zzc(obj, j), zzjj.zzA(i3 << 3), i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zzO(obj, i2)) {
                        int zzc2 = zzmv.zzc(obj, j);
                        zzA2 = zzjj.zzA(i3 << 3);
                        zzv = zzjj.zzv(zzc2);
                        zzu = zzv + zzA2;
                        i += zzu;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zzO(obj, i2)) {
                        i = AbstractC1320xaf50c7e8.m4359x9e171bf9(i3 << 3, 4, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zzO(obj, i2)) {
                        i = AbstractC1320xaf50c7e8.m4359x9e171bf9(i3 << 3, 8, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zzO(obj, i2)) {
                        int zzc3 = zzmv.zzc(obj, j);
                        i = AbstractC1320xaf50c7e8.m4359x9e171bf9((zzc3 >> 31) ^ (zzc3 + zzc3), zzjj.zzA(i3 << 3), i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zzO(obj, i2)) {
                        long zzd5 = zzmv.zzd(obj, j);
                        zzA = zzjj.zzA(i3 << 3);
                        zzB = zzjj.zzB((zzd5 >> 63) ^ (zzd5 + zzd5));
                        zzu = zzB + zzA;
                        i += zzu;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (zzO(obj, i2)) {
                        zzu = zzjj.zzu(i3, (zzlj) zzmv.zzf(obj, j), zzE(i2));
                        i += zzu;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    zzo = zzlw.zzh(i3, (List) zzmv.zzf(obj, j), false);
                    i += zzo;
                    break;
                case 19:
                    zzo = zzlw.zzf(i3, (List) zzmv.zzf(obj, j), false);
                    i += zzo;
                    break;
                case 20:
                    zzo = zzlw.zzm(i3, (List) zzmv.zzf(obj, j), false);
                    i += zzo;
                    break;
                case 21:
                    zzo = zzlw.zzx(i3, (List) zzmv.zzf(obj, j), false);
                    i += zzo;
                    break;
                case 22:
                    zzo = zzlw.zzk(i3, (List) zzmv.zzf(obj, j), false);
                    i += zzo;
                    break;
                case 23:
                    zzo = zzlw.zzh(i3, (List) zzmv.zzf(obj, j), false);
                    i += zzo;
                    break;
                case 24:
                    zzo = zzlw.zzf(i3, (List) zzmv.zzf(obj, j), false);
                    i += zzo;
                    break;
                case 25:
                    zzo = zzlw.zza(i3, (List) zzmv.zzf(obj, j), false);
                    i += zzo;
                    break;
                case 26:
                    zzo = zzlw.zzu(i3, (List) zzmv.zzf(obj, j));
                    i += zzo;
                    break;
                case 27:
                    zzo = zzlw.zzp(i3, (List) zzmv.zzf(obj, j), zzE(i2));
                    i += zzo;
                    break;
                case 28:
                    zzo = zzlw.zzc(i3, (List) zzmv.zzf(obj, j));
                    i += zzo;
                    break;
                case 29:
                    zzo = zzlw.zzv(i3, (List) zzmv.zzf(obj, j), false);
                    i += zzo;
                    break;
                case 30:
                    zzo = zzlw.zzd(i3, (List) zzmv.zzf(obj, j), false);
                    i += zzo;
                    break;
                case 31:
                    zzo = zzlw.zzf(i3, (List) zzmv.zzf(obj, j), false);
                    i += zzo;
                    break;
                case 32:
                    zzo = zzlw.zzh(i3, (List) zzmv.zzf(obj, j), false);
                    i += zzo;
                    break;
                case 33:
                    zzo = zzlw.zzq(i3, (List) zzmv.zzf(obj, j), false);
                    i += zzo;
                    break;
                case 34:
                    zzo = zzlw.zzs(i3, (List) zzmv.zzf(obj, j), false);
                    i += zzo;
                    break;
                case 35:
                    int zzi = zzlw.zzi((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        i = AbstractC1320xaf50c7e8.m4355x3271d0aa(zzi, zzjj.zzz(i3), zzi, i);
                        break;
                    } else {
                        break;
                    }
                case 36:
                    int zzg = zzlw.zzg((List) unsafe.getObject(obj, j));
                    if (zzg > 0) {
                        i = AbstractC1320xaf50c7e8.m4355x3271d0aa(zzg, zzjj.zzz(i3), zzg, i);
                        break;
                    } else {
                        break;
                    }
                case 37:
                    int zzn = zzlw.zzn((List) unsafe.getObject(obj, j));
                    if (zzn > 0) {
                        i = AbstractC1320xaf50c7e8.m4355x3271d0aa(zzn, zzjj.zzz(i3), zzn, i);
                        break;
                    } else {
                        break;
                    }
                case 38:
                    int zzy = zzlw.zzy((List) unsafe.getObject(obj, j));
                    if (zzy > 0) {
                        i = AbstractC1320xaf50c7e8.m4355x3271d0aa(zzy, zzjj.zzz(i3), zzy, i);
                        break;
                    } else {
                        break;
                    }
                case 39:
                    int zzl = zzlw.zzl((List) unsafe.getObject(obj, j));
                    if (zzl > 0) {
                        i = AbstractC1320xaf50c7e8.m4355x3271d0aa(zzl, zzjj.zzz(i3), zzl, i);
                        break;
                    } else {
                        break;
                    }
                case 40:
                    int zzi2 = zzlw.zzi((List) unsafe.getObject(obj, j));
                    if (zzi2 > 0) {
                        i = AbstractC1320xaf50c7e8.m4355x3271d0aa(zzi2, zzjj.zzz(i3), zzi2, i);
                        break;
                    } else {
                        break;
                    }
                case 41:
                    int zzg2 = zzlw.zzg((List) unsafe.getObject(obj, j));
                    if (zzg2 > 0) {
                        i = AbstractC1320xaf50c7e8.m4355x3271d0aa(zzg2, zzjj.zzz(i3), zzg2, i);
                        break;
                    } else {
                        break;
                    }
                case 42:
                    int zzb2 = zzlw.zzb((List) unsafe.getObject(obj, j));
                    if (zzb2 > 0) {
                        i = AbstractC1320xaf50c7e8.m4355x3271d0aa(zzb2, zzjj.zzz(i3), zzb2, i);
                        break;
                    } else {
                        break;
                    }
                case 43:
                    int zzw = zzlw.zzw((List) unsafe.getObject(obj, j));
                    if (zzw > 0) {
                        i = AbstractC1320xaf50c7e8.m4355x3271d0aa(zzw, zzjj.zzz(i3), zzw, i);
                        break;
                    } else {
                        break;
                    }
                case 44:
                    int zze = zzlw.zze((List) unsafe.getObject(obj, j));
                    if (zze > 0) {
                        i = AbstractC1320xaf50c7e8.m4355x3271d0aa(zze, zzjj.zzz(i3), zze, i);
                        break;
                    } else {
                        break;
                    }
                case 45:
                    int zzg3 = zzlw.zzg((List) unsafe.getObject(obj, j));
                    if (zzg3 > 0) {
                        i = AbstractC1320xaf50c7e8.m4355x3271d0aa(zzg3, zzjj.zzz(i3), zzg3, i);
                        break;
                    } else {
                        break;
                    }
                case 46:
                    int zzi3 = zzlw.zzi((List) unsafe.getObject(obj, j));
                    if (zzi3 > 0) {
                        i = AbstractC1320xaf50c7e8.m4355x3271d0aa(zzi3, zzjj.zzz(i3), zzi3, i);
                        break;
                    } else {
                        break;
                    }
                case 47:
                    int zzr = zzlw.zzr((List) unsafe.getObject(obj, j));
                    if (zzr > 0) {
                        i = AbstractC1320xaf50c7e8.m4355x3271d0aa(zzr, zzjj.zzz(i3), zzr, i);
                        break;
                    } else {
                        break;
                    }
                case 48:
                    int zzt = zzlw.zzt((List) unsafe.getObject(obj, j));
                    if (zzt > 0) {
                        i = AbstractC1320xaf50c7e8.m4355x3271d0aa(zzt, zzjj.zzz(i3), zzt, i);
                        break;
                    } else {
                        break;
                    }
                case 49:
                    zzo = zzlw.zzj(i3, (List) zzmv.zzf(obj, j), zzE(i2));
                    i += zzo;
                    break;
                case 50:
                    zzle.zza(i3, zzmv.zzf(obj, j), zzF(i2));
                    break;
                case 51:
                    if (zzR(obj, i3, i2)) {
                        i = AbstractC1320xaf50c7e8.m4359x9e171bf9(i3 << 3, 8, i);
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zzR(obj, i3, i2)) {
                        i = AbstractC1320xaf50c7e8.m4359x9e171bf9(i3 << 3, 4, i);
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zzR(obj, i3, i2)) {
                        long zzC = zzC(obj, j);
                        zzA = zzjj.zzA(i3 << 3);
                        zzB = zzjj.zzB(zzC);
                        zzu = zzB + zzA;
                        i += zzu;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zzR(obj, i3, i2)) {
                        long zzC2 = zzC(obj, j);
                        zzA = zzjj.zzA(i3 << 3);
                        zzB = zzjj.zzB(zzC2);
                        zzu = zzB + zzA;
                        i += zzu;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zzR(obj, i3, i2)) {
                        int zzr2 = zzr(obj, j);
                        zzA2 = zzjj.zzA(i3 << 3);
                        zzv = zzjj.zzv(zzr2);
                        zzu = zzv + zzA2;
                        i += zzu;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zzR(obj, i3, i2)) {
                        i = AbstractC1320xaf50c7e8.m4359x9e171bf9(i3 << 3, 8, i);
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zzR(obj, i3, i2)) {
                        i = AbstractC1320xaf50c7e8.m4359x9e171bf9(i3 << 3, 4, i);
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zzR(obj, i3, i2)) {
                        i = AbstractC1320xaf50c7e8.m4359x9e171bf9(i3 << 3, 1, i);
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (zzR(obj, i3, i2)) {
                        Object zzf2 = zzmv.zzf(obj, j);
                        if (zzf2 instanceof zzjb) {
                            int zzA6 = zzjj.zzA(i3 << 3);
                            int zzd6 = ((zzjb) zzf2).zzd();
                            i = AbstractC1320xaf50c7e8.m4355x3271d0aa(zzd6, zzd6, zzA6, i);
                            break;
                        } else {
                            zzA2 = zzjj.zzA(i3 << 3);
                            zzv = zzjj.zzy((String) zzf2);
                            zzu = zzv + zzA2;
                            i += zzu;
                            break;
                        }
                    } else {
                        break;
                    }
                case 60:
                    if (zzR(obj, i3, i2)) {
                        zzo = zzlw.zzo(i3, zzmv.zzf(obj, j), zzE(i2));
                        i += zzo;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zzR(obj, i3, i2)) {
                        zzjb zzjbVar2 = (zzjb) zzmv.zzf(obj, j);
                        int zzA7 = zzjj.zzA(i3 << 3);
                        int zzd7 = zzjbVar2.zzd();
                        i = AbstractC1320xaf50c7e8.m4355x3271d0aa(zzd7, zzd7, zzA7, i);
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zzR(obj, i3, i2)) {
                        i = AbstractC1320xaf50c7e8.m4359x9e171bf9(zzr(obj, j), zzjj.zzA(i3 << 3), i);
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zzR(obj, i3, i2)) {
                        int zzr3 = zzr(obj, j);
                        zzA2 = zzjj.zzA(i3 << 3);
                        zzv = zzjj.zzv(zzr3);
                        zzu = zzv + zzA2;
                        i += zzu;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zzR(obj, i3, i2)) {
                        i = AbstractC1320xaf50c7e8.m4359x9e171bf9(i3 << 3, 4, i);
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zzR(obj, i3, i2)) {
                        i = AbstractC1320xaf50c7e8.m4359x9e171bf9(i3 << 3, 8, i);
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zzR(obj, i3, i2)) {
                        int zzr4 = zzr(obj, j);
                        i = AbstractC1320xaf50c7e8.m4359x9e171bf9((zzr4 >> 31) ^ (zzr4 + zzr4), zzjj.zzA(i3 << 3), i);
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zzR(obj, i3, i2)) {
                        long zzC3 = zzC(obj, j);
                        zzA = zzjj.zzA(i3 << 3);
                        zzB = zzjj.zzB((zzC3 >> 63) ^ (zzC3 + zzC3));
                        zzu = zzB + zzA;
                        i += zzu;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zzR(obj, i3, i2)) {
                        zzu = zzjj.zzu(i3, (zzlj) zzmv.zzf(obj, j), zzE(i2));
                        i += zzu;
                        break;
                    } else {
                        break;
                    }
            }
        }
        zzml zzmlVar = this.zzn;
        return i + zzmlVar.zza(zzmlVar.zzc(obj));
    }

    private static int zzr(Object obj, long j) {
        return ((Integer) zzmv.zzf(obj, j)).intValue();
    }

    private final int zzs(Object obj, byte[] bArr, int i, int i2, int i3, long j, zzio zzioVar) {
        Unsafe unsafe = zzb;
        Object zzF = zzF(i3);
        Object object = unsafe.getObject(obj, j);
        if (!((zzld) object).zze()) {
            zzld zzb2 = zzld.zza().zzb();
            zzle.zzb(zzb2, object);
            unsafe.putObject(obj, j, zzb2);
        }
        throw null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0026. Please report as an issue. */
    private final int zzt(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, zzio zzioVar) {
        Unsafe unsafe = zzb;
        long j2 = this.zzc[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(obj, j, Double.valueOf(Double.longBitsToDouble(zzip.zzn(bArr, i))));
                    unsafe.putInt(obj, j2, i4);
                    return i + 8;
                }
                return i;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(obj, j, Float.valueOf(Float.intBitsToFloat(zzip.zzb(bArr, i))));
                    unsafe.putInt(obj, j2, i4);
                    return i + 4;
                }
                return i;
            case 53:
            case 54:
                if (i5 == 0) {
                    int zzm = zzip.zzm(bArr, i, zzioVar);
                    unsafe.putObject(obj, j, Long.valueOf(zzioVar.zzb));
                    unsafe.putInt(obj, j2, i4);
                    return zzm;
                }
                return i;
            case 55:
            case 62:
                if (i5 == 0) {
                    int zzj = zzip.zzj(bArr, i, zzioVar);
                    unsafe.putObject(obj, j, Integer.valueOf(zzioVar.zza));
                    unsafe.putInt(obj, j2, i4);
                    return zzj;
                }
                return i;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(obj, j, Long.valueOf(zzip.zzn(bArr, i)));
                    unsafe.putInt(obj, j2, i4);
                    return i + 8;
                }
                return i;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(obj, j, Integer.valueOf(zzip.zzb(bArr, i)));
                    unsafe.putInt(obj, j2, i4);
                    return i + 4;
                }
                return i;
            case 58:
                if (i5 == 0) {
                    int zzm2 = zzip.zzm(bArr, i, zzioVar);
                    unsafe.putObject(obj, j, Boolean.valueOf(zzioVar.zzb != 0));
                    unsafe.putInt(obj, j2, i4);
                    return zzm2;
                }
                return i;
            case 59:
                if (i5 == 2) {
                    int zzj2 = zzip.zzj(bArr, i, zzioVar);
                    int i9 = zzioVar.zza;
                    if (i9 == 0) {
                        unsafe.putObject(obj, j, new ObfuscatedString(new long[]{5233077311417729121L}).toString());
                    } else {
                        if ((i6 & 536870912) != 0 && !zzna.zzf(bArr, zzj2, zzj2 + i9)) {
                            throw zzkm.zzc();
                        }
                        unsafe.putObject(obj, j, new String(bArr, zzj2, i9, zzkk.zzb));
                        zzj2 += i9;
                    }
                    unsafe.putInt(obj, j2, i4);
                    return zzj2;
                }
                return i;
            case 60:
                if (i5 == 2) {
                    int zzd = zzip.zzd(zzE(i8), bArr, i, i2, zzioVar);
                    Object object = unsafe.getInt(obj, j2) == i4 ? unsafe.getObject(obj, j) : null;
                    if (object == null) {
                        unsafe.putObject(obj, j, zzioVar.zzc);
                    } else {
                        unsafe.putObject(obj, j, zzkk.zzg(object, zzioVar.zzc));
                    }
                    unsafe.putInt(obj, j2, i4);
                    return zzd;
                }
                return i;
            case 61:
                if (i5 == 2) {
                    int zza2 = zzip.zza(bArr, i, zzioVar);
                    unsafe.putObject(obj, j, zzioVar.zzc);
                    unsafe.putInt(obj, j2, i4);
                    return zza2;
                }
                return i;
            case 63:
                if (i5 == 0) {
                    int zzj3 = zzip.zzj(bArr, i, zzioVar);
                    int i10 = zzioVar.zza;
                    zzkg zzD = zzD(i8);
                    if (zzD != null && !zzD.zza(i10)) {
                        zzd(obj).zzh(i3, Long.valueOf(i10));
                    } else {
                        unsafe.putObject(obj, j, Integer.valueOf(i10));
                        unsafe.putInt(obj, j2, i4);
                    }
                    return zzj3;
                }
                return i;
            case 66:
                if (i5 == 0) {
                    int zzj4 = zzip.zzj(bArr, i, zzioVar);
                    unsafe.putObject(obj, j, Integer.valueOf(zzjf.zzb(zzioVar.zza)));
                    unsafe.putInt(obj, j2, i4);
                    return zzj4;
                }
                return i;
            case 67:
                if (i5 == 0) {
                    int zzm3 = zzip.zzm(bArr, i, zzioVar);
                    unsafe.putObject(obj, j, Long.valueOf(zzjf.zzc(zzioVar.zzb)));
                    unsafe.putInt(obj, j2, i4);
                    return zzm3;
                }
                return i;
            case 68:
                if (i5 == 3) {
                    int zzc = zzip.zzc(zzE(i8), bArr, i, i2, (i3 & (-8)) | 4, zzioVar);
                    Object object2 = unsafe.getInt(obj, j2) == i4 ? unsafe.getObject(obj, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(obj, j, zzioVar.zzc);
                    } else {
                        unsafe.putObject(obj, j, zzkk.zzg(object2, zzioVar.zzc));
                    }
                    unsafe.putInt(obj, j2, i4);
                    return zzc;
                }
                return i;
            default:
                return i;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:65:0x0082. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v21, types: [int] */
    private final int zzu(Object obj, byte[] bArr, int i, int i2, zzio zzioVar) {
        byte b;
        int i3;
        int zzw;
        int i4;
        int i5;
        Unsafe unsafe;
        int i6;
        int i7;
        int i8;
        int zzm;
        int zzd;
        int i9;
        int i10;
        int i11;
        zzlm<T> zzlmVar = this;
        Object obj2 = obj;
        byte[] bArr2 = bArr;
        int i12 = i2;
        zzio zzioVar2 = zzioVar;
        Unsafe unsafe2 = zzb;
        int i13 = 1048575;
        int i14 = -1;
        int i15 = i;
        int i16 = -1;
        int i17 = 0;
        int i18 = 0;
        int i19 = 1048575;
        while (i15 < i12) {
            int i20 = i15 + 1;
            byte b2 = bArr2[i15];
            if (b2 < 0) {
                i3 = zzip.zzk(b2, bArr2, i20, zzioVar2);
                b = zzioVar2.zza;
            } else {
                b = b2;
                i3 = i20;
            }
            int i21 = b >>> 3;
            int i22 = b & 7;
            if (i21 > i16) {
                zzw = zzlmVar.zzx(i21, i17 / 3);
            } else {
                zzw = zzlmVar.zzw(i21);
            }
            int i23 = zzw;
            if (i23 == i14) {
                i4 = i3;
                i5 = i21;
                unsafe = unsafe2;
                i6 = 0;
            } else {
                int[] iArr = zzlmVar.zzc;
                int i24 = iArr[i23 + 1];
                int zzA = zzA(i24);
                long j = i24 & i13;
                if (zzA <= 17) {
                    int i25 = iArr[i23 + 2];
                    int i26 = 1 << (i25 >>> 20);
                    int i27 = i25 & 1048575;
                    if (i27 != i19) {
                        if (i19 != 1048575) {
                            unsafe2.putInt(obj2, i19, i18);
                        }
                        if (i27 != 1048575) {
                            i18 = unsafe2.getInt(obj2, i27);
                        }
                        i19 = i27;
                    }
                    switch (zzA) {
                        case 0:
                            zzioVar2 = zzioVar;
                            i7 = i23;
                            i8 = i3;
                            i5 = i21;
                            if (i22 == 1) {
                                zzmv.zzo(obj2, j, Double.longBitsToDouble(zzip.zzn(bArr2, i8)));
                                i15 = i8 + 8;
                                i18 |= i26;
                                i17 = i7;
                                i16 = i5;
                                break;
                            }
                            i4 = i8;
                            unsafe = unsafe2;
                            i6 = i7;
                            break;
                        case 1:
                            zzioVar2 = zzioVar;
                            i7 = i23;
                            i8 = i3;
                            i5 = i21;
                            if (i22 == 5) {
                                zzmv.zzp(obj2, j, Float.intBitsToFloat(zzip.zzb(bArr2, i8)));
                                i15 = i8 + 4;
                                i18 |= i26;
                                i17 = i7;
                                i16 = i5;
                                break;
                            }
                            i4 = i8;
                            unsafe = unsafe2;
                            i6 = i7;
                            break;
                        case 2:
                        case 3:
                            zzioVar2 = zzioVar;
                            i7 = i23;
                            i8 = i3;
                            i5 = i21;
                            if (i22 == 0) {
                                zzm = zzip.zzm(bArr2, i8, zzioVar2);
                                unsafe2.putLong(obj, j, zzioVar2.zzb);
                                i18 |= i26;
                                i15 = zzm;
                                i17 = i7;
                                i16 = i5;
                                break;
                            }
                            i4 = i8;
                            unsafe = unsafe2;
                            i6 = i7;
                            break;
                        case 4:
                        case 11:
                            zzioVar2 = zzioVar;
                            i7 = i23;
                            i8 = i3;
                            i5 = i21;
                            if (i22 == 0) {
                                i15 = zzip.zzj(bArr2, i8, zzioVar2);
                                unsafe2.putInt(obj2, j, zzioVar2.zza);
                                i18 |= i26;
                                i17 = i7;
                                i16 = i5;
                                break;
                            }
                            i4 = i8;
                            unsafe = unsafe2;
                            i6 = i7;
                            break;
                        case 5:
                        case 14:
                            zzioVar2 = zzioVar;
                            i7 = i23;
                            i5 = i21;
                            if (i22 == 1) {
                                i8 = i3;
                                unsafe2.putLong(obj, j, zzip.zzn(bArr2, i3));
                                i15 = i8 + 8;
                                i18 |= i26;
                                i17 = i7;
                                i16 = i5;
                                break;
                            }
                            i8 = i3;
                            i4 = i8;
                            unsafe = unsafe2;
                            i6 = i7;
                            break;
                        case 6:
                        case 13:
                            zzioVar2 = zzioVar;
                            i7 = i23;
                            i5 = i21;
                            if (i22 == 5) {
                                unsafe2.putInt(obj2, j, zzip.zzb(bArr2, i3));
                                i15 = i3 + 4;
                                i18 |= i26;
                                i17 = i7;
                                i16 = i5;
                                break;
                            }
                            i8 = i3;
                            i4 = i8;
                            unsafe = unsafe2;
                            i6 = i7;
                            break;
                        case 7:
                            zzioVar2 = zzioVar;
                            i7 = i23;
                            i5 = i21;
                            if (i22 == 0) {
                                i15 = zzip.zzm(bArr2, i3, zzioVar2);
                                zzmv.zzm(obj2, j, zzioVar2.zzb != 0);
                                i18 |= i26;
                                i17 = i7;
                                i16 = i5;
                                break;
                            }
                            i8 = i3;
                            i4 = i8;
                            unsafe = unsafe2;
                            i6 = i7;
                            break;
                        case 8:
                            zzioVar2 = zzioVar;
                            i7 = i23;
                            i5 = i21;
                            if (i22 == 2) {
                                if ((536870912 & i24) == 0) {
                                    i15 = zzip.zzg(bArr2, i3, zzioVar2);
                                } else {
                                    i15 = zzip.zzh(bArr2, i3, zzioVar2);
                                }
                                unsafe2.putObject(obj2, j, zzioVar2.zzc);
                                i18 |= i26;
                                i17 = i7;
                                i16 = i5;
                                break;
                            }
                            i8 = i3;
                            i4 = i8;
                            unsafe = unsafe2;
                            i6 = i7;
                            break;
                        case 9:
                            zzioVar2 = zzioVar;
                            i7 = i23;
                            i5 = i21;
                            if (i22 == 2) {
                                zzd = zzip.zzd(zzlmVar.zzE(i7), bArr2, i3, i12, zzioVar2);
                                Object object = unsafe2.getObject(obj2, j);
                                if (object == null) {
                                    unsafe2.putObject(obj2, j, zzioVar2.zzc);
                                } else {
                                    unsafe2.putObject(obj2, j, zzkk.zzg(object, zzioVar2.zzc));
                                }
                                i18 |= i26;
                                i15 = zzd;
                                i17 = i7;
                                i16 = i5;
                                break;
                            }
                            i8 = i3;
                            i4 = i8;
                            unsafe = unsafe2;
                            i6 = i7;
                            break;
                        case 10:
                            zzioVar2 = zzioVar;
                            i7 = i23;
                            i5 = i21;
                            if (i22 == 2) {
                                zzd = zzip.zza(bArr2, i3, zzioVar2);
                                unsafe2.putObject(obj2, j, zzioVar2.zzc);
                                i18 |= i26;
                                i15 = zzd;
                                i17 = i7;
                                i16 = i5;
                                break;
                            }
                            i8 = i3;
                            i4 = i8;
                            unsafe = unsafe2;
                            i6 = i7;
                            break;
                        case 12:
                            zzioVar2 = zzioVar;
                            i7 = i23;
                            i5 = i21;
                            if (i22 == 0) {
                                zzd = zzip.zzj(bArr2, i3, zzioVar2);
                                unsafe2.putInt(obj2, j, zzioVar2.zza);
                                i18 |= i26;
                                i15 = zzd;
                                i17 = i7;
                                i16 = i5;
                                break;
                            }
                            i8 = i3;
                            i4 = i8;
                            unsafe = unsafe2;
                            i6 = i7;
                            break;
                        case 15:
                            zzioVar2 = zzioVar;
                            i7 = i23;
                            i5 = i21;
                            if (i22 == 0) {
                                zzd = zzip.zzj(bArr2, i3, zzioVar2);
                                unsafe2.putInt(obj2, j, zzjf.zzb(zzioVar2.zza));
                                i18 |= i26;
                                i15 = zzd;
                                i17 = i7;
                                i16 = i5;
                                break;
                            }
                            i8 = i3;
                            i4 = i8;
                            unsafe = unsafe2;
                            i6 = i7;
                            break;
                        case 16:
                            if (i22 != 0) {
                                i5 = i21;
                                i7 = i23;
                                i8 = i3;
                                i4 = i8;
                                unsafe = unsafe2;
                                i6 = i7;
                                break;
                            } else {
                                zzioVar2 = zzioVar;
                                zzm = zzip.zzm(bArr2, i3, zzioVar2);
                                i7 = i23;
                                i5 = i21;
                                unsafe2.putLong(obj, j, zzjf.zzc(zzioVar2.zzb));
                                i18 |= i26;
                                i15 = zzm;
                                i17 = i7;
                                i16 = i5;
                                break;
                            }
                        default:
                            i5 = i21;
                            i7 = i23;
                            i8 = i3;
                            i4 = i8;
                            unsafe = unsafe2;
                            i6 = i7;
                            break;
                    }
                } else {
                    zzioVar2 = zzioVar;
                    i7 = i23;
                    int i28 = i3;
                    i5 = i21;
                    if (zzA == 27) {
                        if (i22 == 2) {
                            zzkj zzkjVar = (zzkj) unsafe2.getObject(obj2, j);
                            if (!zzkjVar.zzc()) {
                                int size = zzkjVar.size();
                                zzkjVar = zzkjVar.zzd(size == 0 ? 10 : size + size);
                                unsafe2.putObject(obj2, j, zzkjVar);
                            }
                            i15 = zzip.zze(zzlmVar.zzE(i7), b, bArr, i28, i2, zzkjVar, zzioVar);
                            i18 = i18;
                            i17 = i7;
                            i16 = i5;
                        } else {
                            i9 = i28;
                            i10 = i18;
                            i11 = i19;
                            unsafe = unsafe2;
                            i6 = i7;
                        }
                    } else if (zzA <= 49) {
                        i10 = i18;
                        i11 = i19;
                        unsafe = unsafe2;
                        i6 = i7;
                        i15 = zzv(obj, bArr, i28, i2, b, i5, i22, i7, i24, zzA, j, zzioVar);
                        if (i15 != i28) {
                            obj2 = obj;
                            bArr2 = bArr;
                            i12 = i2;
                            zzioVar2 = zzioVar;
                            i19 = i11;
                            i16 = i5;
                            i18 = i10;
                            i17 = i6;
                            unsafe2 = unsafe;
                            i14 = -1;
                            i13 = 1048575;
                            zzlmVar = this;
                        } else {
                            i4 = i15;
                            i19 = i11;
                            i18 = i10;
                        }
                    } else {
                        i9 = i28;
                        i10 = i18;
                        i11 = i19;
                        unsafe = unsafe2;
                        i6 = i7;
                        if (zzA != 50) {
                            i15 = zzt(obj, bArr, i9, i2, b, i5, i22, i24, zzA, j, i6, zzioVar);
                            if (i15 != i9) {
                                obj2 = obj;
                                bArr2 = bArr;
                                i12 = i2;
                                zzioVar2 = zzioVar;
                                i19 = i11;
                                i16 = i5;
                                i18 = i10;
                                i17 = i6;
                                unsafe2 = unsafe;
                                i14 = -1;
                                i13 = 1048575;
                                zzlmVar = this;
                            } else {
                                i4 = i15;
                                i19 = i11;
                                i18 = i10;
                            }
                        } else if (i22 == 2) {
                            i15 = zzs(obj, bArr, i9, i2, i6, j, zzioVar);
                            if (i15 != i9) {
                                obj2 = obj;
                                bArr2 = bArr;
                                i12 = i2;
                                zzioVar2 = zzioVar;
                                i19 = i11;
                                i16 = i5;
                                i18 = i10;
                                i17 = i6;
                                unsafe2 = unsafe;
                                i14 = -1;
                                i13 = 1048575;
                                zzlmVar = this;
                            } else {
                                i4 = i15;
                                i19 = i11;
                                i18 = i10;
                            }
                        }
                    }
                    i4 = i9;
                    i19 = i11;
                    i18 = i10;
                }
                i14 = -1;
                i13 = 1048575;
            }
            i15 = zzip.zzi(b, bArr, i4, i2, zzd(obj), zzioVar);
            zzlmVar = this;
            obj2 = obj;
            bArr2 = bArr;
            i12 = i2;
            zzioVar2 = zzioVar;
            i16 = i5;
            i17 = i6;
            unsafe2 = unsafe;
            i14 = -1;
            i13 = 1048575;
        }
        int i29 = i18;
        int i30 = i19;
        Unsafe unsafe3 = unsafe2;
        if (i30 != 1048575) {
            unsafe3.putInt(obj, i30, i29);
        }
        if (i15 == i2) {
            return i15;
        }
        throw zzkm.zze();
    }

    private final int zzv(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7, long j2, zzio zzioVar) {
        int i8;
        int i9;
        int i10;
        int i11;
        int zzl;
        int i12 = i;
        Unsafe unsafe = zzb;
        zzkj zzkjVar = (zzkj) unsafe.getObject(obj, j2);
        if (!zzkjVar.zzc()) {
            int size = zzkjVar.size();
            zzkjVar = zzkjVar.zzd(size == 0 ? 10 : size + size);
            unsafe.putObject(obj, j2, zzkjVar);
        }
        switch (i7) {
            case 18:
            case 35:
                if (i5 == 2) {
                    zzjl zzjlVar = (zzjl) zzkjVar;
                    int zzj = zzip.zzj(bArr, i12, zzioVar);
                    int i13 = zzioVar.zza + zzj;
                    while (zzj < i13) {
                        zzjlVar.zze(Double.longBitsToDouble(zzip.zzn(bArr, zzj)));
                        zzj += 8;
                    }
                    if (zzj == i13) {
                        return zzj;
                    }
                    throw zzkm.zzf();
                }
                if (i5 == 1) {
                    zzjl zzjlVar2 = (zzjl) zzkjVar;
                    zzjlVar2.zze(Double.longBitsToDouble(zzip.zzn(bArr, i)));
                    while (true) {
                        i8 = i12 + 8;
                        if (i8 < i2) {
                            i12 = zzip.zzj(bArr, i8, zzioVar);
                            if (i3 == zzioVar.zza) {
                                zzjlVar2.zze(Double.longBitsToDouble(zzip.zzn(bArr, i12)));
                            }
                        }
                    }
                    return i8;
                }
                break;
            case 19:
            case 36:
                if (i5 == 2) {
                    zzjv zzjvVar = (zzjv) zzkjVar;
                    int zzj2 = zzip.zzj(bArr, i12, zzioVar);
                    int i14 = zzioVar.zza + zzj2;
                    while (zzj2 < i14) {
                        zzjvVar.zze(Float.intBitsToFloat(zzip.zzb(bArr, zzj2)));
                        zzj2 += 4;
                    }
                    if (zzj2 == i14) {
                        return zzj2;
                    }
                    throw zzkm.zzf();
                }
                if (i5 == 5) {
                    zzjv zzjvVar2 = (zzjv) zzkjVar;
                    zzjvVar2.zze(Float.intBitsToFloat(zzip.zzb(bArr, i)));
                    while (true) {
                        i9 = i12 + 4;
                        if (i9 < i2) {
                            i12 = zzip.zzj(bArr, i9, zzioVar);
                            if (i3 == zzioVar.zza) {
                                zzjvVar2.zze(Float.intBitsToFloat(zzip.zzb(bArr, i12)));
                            }
                        }
                    }
                    return i9;
                }
                break;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i5 == 2) {
                    zzky zzkyVar = (zzky) zzkjVar;
                    int zzj3 = zzip.zzj(bArr, i12, zzioVar);
                    int i15 = zzioVar.zza + zzj3;
                    while (zzj3 < i15) {
                        zzj3 = zzip.zzm(bArr, zzj3, zzioVar);
                        zzkyVar.zzg(zzioVar.zzb);
                    }
                    if (zzj3 == i15) {
                        return zzj3;
                    }
                    throw zzkm.zzf();
                }
                if (i5 == 0) {
                    zzky zzkyVar2 = (zzky) zzkjVar;
                    int zzm = zzip.zzm(bArr, i12, zzioVar);
                    zzkyVar2.zzg(zzioVar.zzb);
                    while (zzm < i2) {
                        int zzj4 = zzip.zzj(bArr, zzm, zzioVar);
                        if (i3 != zzioVar.zza) {
                            return zzm;
                        }
                        zzm = zzip.zzm(bArr, zzj4, zzioVar);
                        zzkyVar2.zzg(zzioVar.zzb);
                    }
                    return zzm;
                }
                break;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i5 == 2) {
                    return zzip.zzf(bArr, i12, zzkjVar, zzioVar);
                }
                if (i5 == 0) {
                    return zzip.zzl(i3, bArr, i, i2, zzkjVar, zzioVar);
                }
                break;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i5 == 2) {
                    zzky zzkyVar3 = (zzky) zzkjVar;
                    int zzj5 = zzip.zzj(bArr, i12, zzioVar);
                    int i16 = zzioVar.zza + zzj5;
                    while (zzj5 < i16) {
                        zzkyVar3.zzg(zzip.zzn(bArr, zzj5));
                        zzj5 += 8;
                    }
                    if (zzj5 == i16) {
                        return zzj5;
                    }
                    throw zzkm.zzf();
                }
                if (i5 == 1) {
                    zzky zzkyVar4 = (zzky) zzkjVar;
                    zzkyVar4.zzg(zzip.zzn(bArr, i));
                    while (true) {
                        i10 = i12 + 8;
                        if (i10 < i2) {
                            i12 = zzip.zzj(bArr, i10, zzioVar);
                            if (i3 == zzioVar.zza) {
                                zzkyVar4.zzg(zzip.zzn(bArr, i12));
                            }
                        }
                    }
                    return i10;
                }
                break;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i5 == 2) {
                    zzkd zzkdVar = (zzkd) zzkjVar;
                    int zzj6 = zzip.zzj(bArr, i12, zzioVar);
                    int i17 = zzioVar.zza + zzj6;
                    while (zzj6 < i17) {
                        zzkdVar.zzh(zzip.zzb(bArr, zzj6));
                        zzj6 += 4;
                    }
                    if (zzj6 == i17) {
                        return zzj6;
                    }
                    throw zzkm.zzf();
                }
                if (i5 == 5) {
                    zzkd zzkdVar2 = (zzkd) zzkjVar;
                    zzkdVar2.zzh(zzip.zzb(bArr, i));
                    while (true) {
                        i11 = i12 + 4;
                        if (i11 < i2) {
                            i12 = zzip.zzj(bArr, i11, zzioVar);
                            if (i3 == zzioVar.zza) {
                                zzkdVar2.zzh(zzip.zzb(bArr, i12));
                            }
                        }
                    }
                    return i11;
                }
                break;
            case 25:
            case 42:
                if (i5 == 2) {
                    zziq zziqVar = (zziq) zzkjVar;
                    int zzj7 = zzip.zzj(bArr, i12, zzioVar);
                    int i18 = zzioVar.zza + zzj7;
                    while (zzj7 < i18) {
                        zzj7 = zzip.zzm(bArr, zzj7, zzioVar);
                        zziqVar.zze(zzioVar.zzb != 0);
                    }
                    if (zzj7 == i18) {
                        return zzj7;
                    }
                    throw zzkm.zzf();
                }
                if (i5 == 0) {
                    zziq zziqVar2 = (zziq) zzkjVar;
                    int zzm2 = zzip.zzm(bArr, i12, zzioVar);
                    zziqVar2.zze(zzioVar.zzb != 0);
                    while (zzm2 < i2) {
                        int zzj8 = zzip.zzj(bArr, zzm2, zzioVar);
                        if (i3 != zzioVar.zza) {
                            return zzm2;
                        }
                        zzm2 = zzip.zzm(bArr, zzj8, zzioVar);
                        zziqVar2.zze(zzioVar.zzb != 0);
                    }
                    return zzm2;
                }
                break;
            case 26:
                if (i5 == 2) {
                    if ((j & 536870912) == 0) {
                        int zzj9 = zzip.zzj(bArr, i12, zzioVar);
                        int i19 = zzioVar.zza;
                        if (i19 < 0) {
                            throw zzkm.zzd();
                        }
                        if (i19 == 0) {
                            zzkjVar.add(new ObfuscatedString(new long[]{-7115871415378323154L}).toString());
                        } else {
                            zzkjVar.add(new String(bArr, zzj9, i19, zzkk.zzb));
                            zzj9 += i19;
                        }
                        while (zzj9 < i2) {
                            int zzj10 = zzip.zzj(bArr, zzj9, zzioVar);
                            if (i3 != zzioVar.zza) {
                                return zzj9;
                            }
                            zzj9 = zzip.zzj(bArr, zzj10, zzioVar);
                            int i20 = zzioVar.zza;
                            if (i20 < 0) {
                                throw zzkm.zzd();
                            }
                            if (i20 == 0) {
                                zzkjVar.add(new ObfuscatedString(new long[]{2971524898714637183L}).toString());
                            } else {
                                zzkjVar.add(new String(bArr, zzj9, i20, zzkk.zzb));
                                zzj9 += i20;
                            }
                        }
                        return zzj9;
                    }
                    int zzj11 = zzip.zzj(bArr, i12, zzioVar);
                    int i21 = zzioVar.zza;
                    if (i21 < 0) {
                        throw zzkm.zzd();
                    }
                    if (i21 == 0) {
                        zzkjVar.add(new ObfuscatedString(new long[]{22062598798804531L}).toString());
                    } else {
                        int i22 = zzj11 + i21;
                        if (zzna.zzf(bArr, zzj11, i22)) {
                            zzkjVar.add(new String(bArr, zzj11, i21, zzkk.zzb));
                            zzj11 = i22;
                        } else {
                            throw zzkm.zzc();
                        }
                    }
                    while (zzj11 < i2) {
                        int zzj12 = zzip.zzj(bArr, zzj11, zzioVar);
                        if (i3 != zzioVar.zza) {
                            return zzj11;
                        }
                        zzj11 = zzip.zzj(bArr, zzj12, zzioVar);
                        int i23 = zzioVar.zza;
                        if (i23 < 0) {
                            throw zzkm.zzd();
                        }
                        if (i23 == 0) {
                            zzkjVar.add(new ObfuscatedString(new long[]{6566313273988901225L}).toString());
                        } else {
                            int i24 = zzj11 + i23;
                            if (zzna.zzf(bArr, zzj11, i24)) {
                                zzkjVar.add(new String(bArr, zzj11, i23, zzkk.zzb));
                                zzj11 = i24;
                            } else {
                                throw zzkm.zzc();
                            }
                        }
                    }
                    return zzj11;
                }
                break;
            case 27:
                if (i5 == 2) {
                    return zzip.zze(zzE(i6), i3, bArr, i, i2, zzkjVar, zzioVar);
                }
                break;
            case 28:
                if (i5 == 2) {
                    int zzj13 = zzip.zzj(bArr, i12, zzioVar);
                    int i25 = zzioVar.zza;
                    if (i25 >= 0) {
                        if (i25 > bArr.length - zzj13) {
                            throw zzkm.zzf();
                        }
                        if (i25 == 0) {
                            zzkjVar.add(zzjb.zzb);
                        } else {
                            zzkjVar.add(zzjb.zzl(bArr, zzj13, i25));
                            zzj13 += i25;
                        }
                        while (zzj13 < i2) {
                            int zzj14 = zzip.zzj(bArr, zzj13, zzioVar);
                            if (i3 != zzioVar.zza) {
                                return zzj13;
                            }
                            zzj13 = zzip.zzj(bArr, zzj14, zzioVar);
                            int i26 = zzioVar.zza;
                            if (i26 >= 0) {
                                if (i26 > bArr.length - zzj13) {
                                    throw zzkm.zzf();
                                }
                                if (i26 == 0) {
                                    zzkjVar.add(zzjb.zzb);
                                } else {
                                    zzkjVar.add(zzjb.zzl(bArr, zzj13, i26));
                                    zzj13 += i26;
                                }
                            } else {
                                throw zzkm.zzd();
                            }
                        }
                        return zzj13;
                    }
                    throw zzkm.zzd();
                }
                break;
            case 30:
            case 44:
                if (i5 == 2) {
                    zzl = zzip.zzf(bArr, i12, zzkjVar, zzioVar);
                } else if (i5 == 0) {
                    zzl = zzip.zzl(i3, bArr, i, i2, zzkjVar, zzioVar);
                }
                zzkc zzkcVar = (zzkc) obj;
                zzmm zzmmVar = zzkcVar.zzc;
                if (zzmmVar == zzmm.zzc()) {
                    zzmmVar = null;
                }
                Object zzC = zzlw.zzC(i4, zzkjVar, zzD(i6), zzmmVar, this.zzn);
                if (zzC == null) {
                    return zzl;
                }
                zzkcVar.zzc = (zzmm) zzC;
                return zzl;
            case 33:
            case 47:
                if (i5 == 2) {
                    zzkd zzkdVar3 = (zzkd) zzkjVar;
                    int zzj15 = zzip.zzj(bArr, i12, zzioVar);
                    int i27 = zzioVar.zza + zzj15;
                    while (zzj15 < i27) {
                        zzj15 = zzip.zzj(bArr, zzj15, zzioVar);
                        zzkdVar3.zzh(zzjf.zzb(zzioVar.zza));
                    }
                    if (zzj15 == i27) {
                        return zzj15;
                    }
                    throw zzkm.zzf();
                }
                if (i5 == 0) {
                    zzkd zzkdVar4 = (zzkd) zzkjVar;
                    int zzj16 = zzip.zzj(bArr, i12, zzioVar);
                    zzkdVar4.zzh(zzjf.zzb(zzioVar.zza));
                    while (zzj16 < i2) {
                        int zzj17 = zzip.zzj(bArr, zzj16, zzioVar);
                        if (i3 != zzioVar.zza) {
                            return zzj16;
                        }
                        zzj16 = zzip.zzj(bArr, zzj17, zzioVar);
                        zzkdVar4.zzh(zzjf.zzb(zzioVar.zza));
                    }
                    return zzj16;
                }
                break;
            case 34:
            case 48:
                if (i5 == 2) {
                    zzky zzkyVar5 = (zzky) zzkjVar;
                    int zzj18 = zzip.zzj(bArr, i12, zzioVar);
                    int i28 = zzioVar.zza + zzj18;
                    while (zzj18 < i28) {
                        zzj18 = zzip.zzm(bArr, zzj18, zzioVar);
                        zzkyVar5.zzg(zzjf.zzc(zzioVar.zzb));
                    }
                    if (zzj18 == i28) {
                        return zzj18;
                    }
                    throw zzkm.zzf();
                }
                if (i5 == 0) {
                    zzky zzkyVar6 = (zzky) zzkjVar;
                    int zzm3 = zzip.zzm(bArr, i12, zzioVar);
                    zzkyVar6.zzg(zzjf.zzc(zzioVar.zzb));
                    while (zzm3 < i2) {
                        int zzj19 = zzip.zzj(bArr, zzm3, zzioVar);
                        if (i3 != zzioVar.zza) {
                            return zzm3;
                        }
                        zzm3 = zzip.zzm(bArr, zzj19, zzioVar);
                        zzkyVar6.zzg(zzjf.zzc(zzioVar.zzb));
                    }
                    return zzm3;
                }
                break;
            default:
                if (i5 == 3) {
                    zzlu zzE = zzE(i6);
                    int i29 = (i3 & (-8)) | 4;
                    int zzc = zzip.zzc(zzE, bArr, i, i2, i29, zzioVar);
                    zzkjVar.add(zzioVar.zzc);
                    while (zzc < i2) {
                        int zzj20 = zzip.zzj(bArr, zzc, zzioVar);
                        if (i3 != zzioVar.zza) {
                            return zzc;
                        }
                        zzc = zzip.zzc(zzE, bArr, zzj20, i2, i29, zzioVar);
                        zzkjVar.add(zzioVar.zzc);
                    }
                    return zzc;
                }
                break;
        }
        return i12;
    }

    private final int zzw(int i) {
        if (i >= this.zze && i <= this.zzf) {
            return zzz(i, 0);
        }
        return -1;
    }

    private final int zzx(int i, int i2) {
        if (i >= this.zze && i <= this.zzf) {
            return zzz(i, i2);
        }
        return -1;
    }

    private final int zzy(int i) {
        return this.zzc[i + 2];
    }

    private final int zzz(int i, int i2) {
        int length = (this.zzc.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.zzc[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final int zza(Object obj) {
        if (this.zzi) {
            return zzq(obj);
        }
        return zzp(obj);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x001a. Please report as an issue. */
    @Override // com.google.android.gms.internal.measurement.zzlu
    public final int zzb(Object obj) {
        int i;
        int zzc;
        int i2;
        int zzc2;
        int length = this.zzc.length;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4 += 3) {
            int zzB = zzB(i4);
            int i5 = this.zzc[i4];
            long j = 1048575 & zzB;
            int i6 = 37;
            switch (zzA(zzB)) {
                case 0:
                    i = i3 * 53;
                    zzc = zzkk.zzc(Double.doubleToLongBits(zzmv.zza(obj, j)));
                    i3 = zzc + i;
                    break;
                case 1:
                    i = i3 * 53;
                    zzc = Float.floatToIntBits(zzmv.zzb(obj, j));
                    i3 = zzc + i;
                    break;
                case 2:
                    i = i3 * 53;
                    zzc = zzkk.zzc(zzmv.zzd(obj, j));
                    i3 = zzc + i;
                    break;
                case 3:
                    i = i3 * 53;
                    zzc = zzkk.zzc(zzmv.zzd(obj, j));
                    i3 = zzc + i;
                    break;
                case 4:
                    i2 = i3 * 53;
                    zzc2 = zzmv.zzc(obj, j);
                    i3 = i2 + zzc2;
                    break;
                case 5:
                    i = i3 * 53;
                    zzc = zzkk.zzc(zzmv.zzd(obj, j));
                    i3 = zzc + i;
                    break;
                case 6:
                    i2 = i3 * 53;
                    zzc2 = zzmv.zzc(obj, j);
                    i3 = i2 + zzc2;
                    break;
                case 7:
                    i = i3 * 53;
                    zzc = zzkk.zza(zzmv.zzw(obj, j));
                    i3 = zzc + i;
                    break;
                case 8:
                    i = i3 * 53;
                    zzc = ((String) zzmv.zzf(obj, j)).hashCode();
                    i3 = zzc + i;
                    break;
                case 9:
                    Object zzf = zzmv.zzf(obj, j);
                    if (zzf != null) {
                        i6 = zzf.hashCode();
                    }
                    i3 = (i3 * 53) + i6;
                    break;
                case 10:
                    i = i3 * 53;
                    zzc = zzmv.zzf(obj, j).hashCode();
                    i3 = zzc + i;
                    break;
                case 11:
                    i2 = i3 * 53;
                    zzc2 = zzmv.zzc(obj, j);
                    i3 = i2 + zzc2;
                    break;
                case 12:
                    i2 = i3 * 53;
                    zzc2 = zzmv.zzc(obj, j);
                    i3 = i2 + zzc2;
                    break;
                case 13:
                    i2 = i3 * 53;
                    zzc2 = zzmv.zzc(obj, j);
                    i3 = i2 + zzc2;
                    break;
                case 14:
                    i = i3 * 53;
                    zzc = zzkk.zzc(zzmv.zzd(obj, j));
                    i3 = zzc + i;
                    break;
                case 15:
                    i2 = i3 * 53;
                    zzc2 = zzmv.zzc(obj, j);
                    i3 = i2 + zzc2;
                    break;
                case 16:
                    i = i3 * 53;
                    zzc = zzkk.zzc(zzmv.zzd(obj, j));
                    i3 = zzc + i;
                    break;
                case 17:
                    Object zzf2 = zzmv.zzf(obj, j);
                    if (zzf2 != null) {
                        i6 = zzf2.hashCode();
                    }
                    i3 = (i3 * 53) + i6;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i = i3 * 53;
                    zzc = zzmv.zzf(obj, j).hashCode();
                    i3 = zzc + i;
                    break;
                case 50:
                    i = i3 * 53;
                    zzc = zzmv.zzf(obj, j).hashCode();
                    i3 = zzc + i;
                    break;
                case 51:
                    if (zzR(obj, i5, i4)) {
                        i = i3 * 53;
                        zzc = zzkk.zzc(Double.doubleToLongBits(zzn(obj, j)));
                        i3 = zzc + i;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zzR(obj, i5, i4)) {
                        i = i3 * 53;
                        zzc = Float.floatToIntBits(zzo(obj, j));
                        i3 = zzc + i;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zzR(obj, i5, i4)) {
                        i = i3 * 53;
                        zzc = zzkk.zzc(zzC(obj, j));
                        i3 = zzc + i;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zzR(obj, i5, i4)) {
                        i = i3 * 53;
                        zzc = zzkk.zzc(zzC(obj, j));
                        i3 = zzc + i;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zzR(obj, i5, i4)) {
                        i2 = i3 * 53;
                        zzc2 = zzr(obj, j);
                        i3 = i2 + zzc2;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zzR(obj, i5, i4)) {
                        i = i3 * 53;
                        zzc = zzkk.zzc(zzC(obj, j));
                        i3 = zzc + i;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zzR(obj, i5, i4)) {
                        i2 = i3 * 53;
                        zzc2 = zzr(obj, j);
                        i3 = i2 + zzc2;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zzR(obj, i5, i4)) {
                        i = i3 * 53;
                        zzc = zzkk.zza(zzS(obj, j));
                        i3 = zzc + i;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (zzR(obj, i5, i4)) {
                        i = i3 * 53;
                        zzc = ((String) zzmv.zzf(obj, j)).hashCode();
                        i3 = zzc + i;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (zzR(obj, i5, i4)) {
                        i = i3 * 53;
                        zzc = zzmv.zzf(obj, j).hashCode();
                        i3 = zzc + i;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zzR(obj, i5, i4)) {
                        i = i3 * 53;
                        zzc = zzmv.zzf(obj, j).hashCode();
                        i3 = zzc + i;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zzR(obj, i5, i4)) {
                        i2 = i3 * 53;
                        zzc2 = zzr(obj, j);
                        i3 = i2 + zzc2;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zzR(obj, i5, i4)) {
                        i2 = i3 * 53;
                        zzc2 = zzr(obj, j);
                        i3 = i2 + zzc2;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zzR(obj, i5, i4)) {
                        i2 = i3 * 53;
                        zzc2 = zzr(obj, j);
                        i3 = i2 + zzc2;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zzR(obj, i5, i4)) {
                        i = i3 * 53;
                        zzc = zzkk.zzc(zzC(obj, j));
                        i3 = zzc + i;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zzR(obj, i5, i4)) {
                        i2 = i3 * 53;
                        zzc2 = zzr(obj, j);
                        i3 = i2 + zzc2;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zzR(obj, i5, i4)) {
                        i = i3 * 53;
                        zzc = zzkk.zzc(zzC(obj, j));
                        i3 = zzc + i;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zzR(obj, i5, i4)) {
                        i = i3 * 53;
                        zzc = zzmv.zzf(obj, j).hashCode();
                        i3 = zzc + i;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = this.zzn.zzc(obj).hashCode() + (i3 * 53);
        if (!this.zzh) {
            return hashCode;
        }
        this.zzo.zza(obj);
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:217:0x03a9, code lost:
    
        if (r0 != r20) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:218:0x03ab, code lost:
    
        r15 = r30;
        r14 = r31;
        r12 = r32;
        r2 = r33;
        r13 = r34;
        r11 = r35;
        r9 = r36;
        r5 = r20;
        r1 = r21;
        r3 = r22;
        r6 = r23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:219:0x03c5, code lost:
    
        r2 = r0;
        r7 = r21;
        r6 = r23;
        r0 = r35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:225:0x03ee, code lost:
    
        if (r0 != r15) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:227:0x0414, code lost:
    
        if (r0 != r15) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0492, code lost:
    
        if (r6 == 1048575) goto L159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0494, code lost:
    
        r28.putInt(r12, r6, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x049a, code lost:
    
        r3 = r8.zzk;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x049e, code lost:
    
        if (r3 >= r8.zzl) goto L237;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x04a0, code lost:
    
        r4 = r8.zzj[r3];
        r5 = r8.zzc[r4];
        r5 = com.google.android.gms.internal.measurement.zzmv.zzf(r12, r8.zzB(r4) & 1048575);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x04b2, code lost:
    
        if (r5 != null) goto L165;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x04b9, code lost:
    
        if (r8.zzD(r4) != null) goto L236;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x04be, code lost:
    
        r5 = (com.google.android.gms.internal.measurement.zzld) r5;
        r0 = (com.google.android.gms.internal.measurement.zzlc) r8.zzF(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x04c6, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x04bb, code lost:
    
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x04c7, code lost:
    
        if (r9 != 0) goto L176;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x04cb, code lost:
    
        if (r0 != r34) goto L174;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x04d2, code lost:
    
        throw com.google.android.gms.internal.measurement.zzkm.zze();
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x04d9, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x04d5, code lost:
    
        if (r0 > r34) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x04d7, code lost:
    
        if (r1 != r9) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x04de, code lost:
    
        throw com.google.android.gms.internal.measurement.zzkm.zze();
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:21:0x0090. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zzc(Object obj, byte[] bArr, int i, int i2, int i3, zzio zzioVar) {
        Unsafe unsafe;
        int i4;
        Object obj2;
        zzlm<T> zzlmVar;
        int i5;
        int zzw;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        Object obj3;
        int i12;
        zzio zzioVar2;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int zzh;
        zzlm<T> zzlmVar2 = this;
        Object obj4 = obj;
        byte[] bArr2 = bArr;
        int i26 = i2;
        int i27 = i3;
        zzio zzioVar3 = zzioVar;
        Unsafe unsafe2 = zzb;
        int i28 = i;
        int i29 = 0;
        int i30 = -1;
        int i31 = 0;
        int i32 = 0;
        int i33 = 1048575;
        while (true) {
            if (i28 < i26) {
                int i34 = i28 + 1;
                byte b = bArr2[i28];
                if (b < 0) {
                    int zzk = zzip.zzk(b, bArr2, i34, zzioVar3);
                    i5 = zzioVar3.zza;
                    i34 = zzk;
                } else {
                    i5 = b;
                }
                int i35 = i5 >>> 3;
                int i36 = i5 & 7;
                if (i35 > i30) {
                    zzw = zzlmVar2.zzx(i35, i31 / 3);
                } else {
                    zzw = zzlmVar2.zzw(i35);
                }
                int i37 = zzw;
                if (i37 == -1) {
                    i6 = i35;
                    i7 = i34;
                    i8 = i5;
                    i9 = i32;
                    unsafe = unsafe2;
                    i10 = i27;
                    i11 = 0;
                } else {
                    int[] iArr = zzlmVar2.zzc;
                    int i38 = iArr[i37 + 1];
                    int zzA = zzA(i38);
                    int i39 = i34;
                    long j = i38 & 1048575;
                    int i40 = i5;
                    if (zzA <= 17) {
                        int i41 = iArr[i37 + 2];
                        int i42 = 1 << (i41 >>> 20);
                        int i43 = i41 & 1048575;
                        if (i43 != i33) {
                            i16 = i37;
                            if (i33 != 1048575) {
                                unsafe2.putInt(obj4, i33, i32);
                            }
                            i15 = i43;
                            i17 = unsafe2.getInt(obj4, i43);
                        } else {
                            i16 = i37;
                            i15 = i33;
                            i17 = i32;
                        }
                        switch (zzA) {
                            case 0:
                                i18 = i35;
                                i19 = i16;
                                i20 = i39;
                                bArr2 = bArr;
                                if (i36 != 1) {
                                    i10 = i3;
                                    i9 = i17;
                                    unsafe = unsafe2;
                                    i6 = i18;
                                    i7 = i20;
                                    i8 = i40;
                                    i33 = i15;
                                    i11 = i19;
                                    break;
                                } else {
                                    zzmv.zzo(obj4, j, Double.longBitsToDouble(zzip.zzn(bArr2, i20)));
                                    i28 = i20 + 8;
                                    i32 = i17 | i42;
                                    i26 = i2;
                                    i30 = i18;
                                    i29 = i40;
                                    i33 = i15;
                                    i31 = i19;
                                    i27 = i3;
                                    break;
                                }
                            case 1:
                                i18 = i35;
                                i19 = i16;
                                i20 = i39;
                                bArr2 = bArr;
                                if (i36 != 5) {
                                    i10 = i3;
                                    i9 = i17;
                                    unsafe = unsafe2;
                                    i6 = i18;
                                    i7 = i20;
                                    i8 = i40;
                                    i33 = i15;
                                    i11 = i19;
                                    break;
                                } else {
                                    zzmv.zzp(obj4, j, Float.intBitsToFloat(zzip.zzb(bArr2, i20)));
                                    i28 = i20 + 4;
                                    i32 = i17 | i42;
                                    i26 = i2;
                                    i30 = i18;
                                    i29 = i40;
                                    i33 = i15;
                                    i31 = i19;
                                    i27 = i3;
                                    break;
                                }
                            case 2:
                            case 3:
                                i18 = i35;
                                i19 = i16;
                                i20 = i39;
                                bArr2 = bArr;
                                if (i36 != 0) {
                                    i10 = i3;
                                    i9 = i17;
                                    unsafe = unsafe2;
                                    i6 = i18;
                                    i7 = i20;
                                    i8 = i40;
                                    i33 = i15;
                                    i11 = i19;
                                    break;
                                } else {
                                    int zzm = zzip.zzm(bArr2, i20, zzioVar3);
                                    unsafe2.putLong(obj, j, zzioVar3.zzb);
                                    i32 = i17 | i42;
                                    i26 = i2;
                                    i28 = zzm;
                                    i30 = i18;
                                    i29 = i40;
                                    i33 = i15;
                                    i31 = i19;
                                    i27 = i3;
                                    break;
                                }
                            case 4:
                            case 11:
                                i18 = i35;
                                i19 = i16;
                                i20 = i39;
                                bArr2 = bArr;
                                if (i36 != 0) {
                                    i10 = i3;
                                    i9 = i17;
                                    unsafe = unsafe2;
                                    i6 = i18;
                                    i7 = i20;
                                    i8 = i40;
                                    i33 = i15;
                                    i11 = i19;
                                    break;
                                } else {
                                    i28 = zzip.zzj(bArr2, i20, zzioVar3);
                                    unsafe2.putInt(obj4, j, zzioVar3.zza);
                                    i32 = i17 | i42;
                                    i26 = i2;
                                    i30 = i18;
                                    i29 = i40;
                                    i33 = i15;
                                    i31 = i19;
                                    i27 = i3;
                                    break;
                                }
                            case 5:
                            case 14:
                                i18 = i35;
                                i21 = i16;
                                i22 = i39;
                                i23 = i40;
                                bArr2 = bArr;
                                if (i36 != 1) {
                                    i19 = i21;
                                    i40 = i23;
                                    i20 = i22;
                                    i10 = i3;
                                    i9 = i17;
                                    unsafe = unsafe2;
                                    i6 = i18;
                                    i7 = i20;
                                    i8 = i40;
                                    i33 = i15;
                                    i11 = i19;
                                    break;
                                } else {
                                    i19 = i21;
                                    i40 = i23;
                                    i20 = i22;
                                    unsafe2.putLong(obj, j, zzip.zzn(bArr2, i22));
                                    i28 = i20 + 8;
                                    i32 = i17 | i42;
                                    i26 = i2;
                                    i30 = i18;
                                    i29 = i40;
                                    i33 = i15;
                                    i31 = i19;
                                    i27 = i3;
                                    break;
                                }
                            case 6:
                            case 13:
                                i18 = i35;
                                i21 = i16;
                                i22 = i39;
                                i23 = i40;
                                bArr2 = bArr;
                                if (i36 != 5) {
                                    i19 = i21;
                                    i40 = i23;
                                    i20 = i22;
                                    i10 = i3;
                                    i9 = i17;
                                    unsafe = unsafe2;
                                    i6 = i18;
                                    i7 = i20;
                                    i8 = i40;
                                    i33 = i15;
                                    i11 = i19;
                                    break;
                                } else {
                                    unsafe2.putInt(obj4, j, zzip.zzb(bArr2, i22));
                                    int i44 = i22 + 4;
                                    i32 = i17 | i42;
                                    i31 = i21;
                                    i28 = i44;
                                    i30 = i18;
                                    i29 = i23;
                                    i33 = i15;
                                    i26 = i2;
                                    i27 = i3;
                                    break;
                                }
                            case 7:
                                i25 = i2;
                                i18 = i35;
                                i21 = i16;
                                i22 = i39;
                                i23 = i40;
                                bArr2 = bArr;
                                if (i36 != 0) {
                                    i19 = i21;
                                    i40 = i23;
                                    i20 = i22;
                                    i10 = i3;
                                    i9 = i17;
                                    unsafe = unsafe2;
                                    i6 = i18;
                                    i7 = i20;
                                    i8 = i40;
                                    i33 = i15;
                                    i11 = i19;
                                    break;
                                } else {
                                    int zzm2 = zzip.zzm(bArr2, i22, zzioVar3);
                                    zzmv.zzm(obj4, j, zzioVar3.zzb != 0);
                                    int i45 = i17 | i42;
                                    i31 = i21;
                                    i28 = zzm2;
                                    i33 = i15;
                                    i32 = i45;
                                    i30 = i18;
                                    i27 = i3;
                                    int i46 = i23;
                                    i26 = i25;
                                    i29 = i46;
                                    break;
                                }
                            case 8:
                                i25 = i2;
                                i18 = i35;
                                i21 = i16;
                                i22 = i39;
                                i23 = i40;
                                bArr2 = bArr;
                                if (i36 != 2) {
                                    i19 = i21;
                                    i40 = i23;
                                    i20 = i22;
                                    i10 = i3;
                                    i9 = i17;
                                    unsafe = unsafe2;
                                    i6 = i18;
                                    i7 = i20;
                                    i8 = i40;
                                    i33 = i15;
                                    i11 = i19;
                                    break;
                                } else {
                                    if ((536870912 & i38) == 0) {
                                        zzh = zzip.zzg(bArr2, i22, zzioVar3);
                                    } else {
                                        zzh = zzip.zzh(bArr2, i22, zzioVar3);
                                    }
                                    unsafe2.putObject(obj4, j, zzioVar3.zzc);
                                    i32 = i17 | i42;
                                    i31 = i21;
                                    i28 = zzh;
                                    i30 = i18;
                                    i33 = i15;
                                    i27 = i3;
                                    int i462 = i23;
                                    i26 = i25;
                                    i29 = i462;
                                    break;
                                }
                            case 9:
                                i18 = i35;
                                i24 = i16;
                                i22 = i39;
                                i23 = i40;
                                bArr2 = bArr;
                                if (i36 != 2) {
                                    i19 = i24;
                                    i40 = i23;
                                    i20 = i22;
                                    i10 = i3;
                                    i9 = i17;
                                    unsafe = unsafe2;
                                    i6 = i18;
                                    i7 = i20;
                                    i8 = i40;
                                    i33 = i15;
                                    i11 = i19;
                                    break;
                                } else {
                                    i25 = i2;
                                    i28 = zzip.zzd(zzlmVar2.zzE(i24), bArr2, i22, i25, zzioVar3);
                                    if ((i17 & i42) == 0) {
                                        unsafe2.putObject(obj4, j, zzioVar3.zzc);
                                    } else {
                                        unsafe2.putObject(obj4, j, zzkk.zzg(unsafe2.getObject(obj4, j), zzioVar3.zzc));
                                    }
                                    i32 = i17 | i42;
                                    i31 = i24;
                                    i30 = i18;
                                    i33 = i15;
                                    i27 = i3;
                                    int i4622 = i23;
                                    i26 = i25;
                                    i29 = i4622;
                                    break;
                                }
                            case 10:
                                i18 = i35;
                                i24 = i16;
                                i22 = i39;
                                i23 = i40;
                                bArr2 = bArr;
                                if (i36 != 2) {
                                    i19 = i24;
                                    i40 = i23;
                                    i20 = i22;
                                    i10 = i3;
                                    i9 = i17;
                                    unsafe = unsafe2;
                                    i6 = i18;
                                    i7 = i20;
                                    i8 = i40;
                                    i33 = i15;
                                    i11 = i19;
                                    break;
                                } else {
                                    i28 = zzip.zza(bArr2, i22, zzioVar3);
                                    unsafe2.putObject(obj4, j, zzioVar3.zzc);
                                    i32 = i17 | i42;
                                    i31 = i24;
                                    i30 = i18;
                                    i29 = i23;
                                    i33 = i15;
                                    i26 = i2;
                                    i27 = i3;
                                    break;
                                }
                            case 12:
                                i18 = i35;
                                i24 = i16;
                                i22 = i39;
                                i23 = i40;
                                bArr2 = bArr;
                                if (i36 != 0) {
                                    i19 = i24;
                                    i40 = i23;
                                    i20 = i22;
                                    i10 = i3;
                                    i9 = i17;
                                    unsafe = unsafe2;
                                    i6 = i18;
                                    i7 = i20;
                                    i8 = i40;
                                    i33 = i15;
                                    i11 = i19;
                                    break;
                                } else {
                                    i28 = zzip.zzj(bArr2, i22, zzioVar3);
                                    int i47 = zzioVar3.zza;
                                    zzkg zzD = zzlmVar2.zzD(i24);
                                    if (zzD != null && !zzD.zza(i47)) {
                                        zzd(obj).zzh(i23, Long.valueOf(i47));
                                        i32 = i17;
                                        i31 = i24;
                                        i30 = i18;
                                        i29 = i23;
                                        i33 = i15;
                                        i26 = i2;
                                        i27 = i3;
                                    } else {
                                        unsafe2.putInt(obj4, j, i47);
                                        i32 = i17 | i42;
                                        i31 = i24;
                                        i30 = i18;
                                        i29 = i23;
                                        i33 = i15;
                                        i26 = i2;
                                        i27 = i3;
                                        break;
                                    }
                                }
                                break;
                            case 15:
                                i18 = i35;
                                i24 = i16;
                                i22 = i39;
                                i23 = i40;
                                bArr2 = bArr;
                                if (i36 != 0) {
                                    i19 = i24;
                                    i40 = i23;
                                    i20 = i22;
                                    i10 = i3;
                                    i9 = i17;
                                    unsafe = unsafe2;
                                    i6 = i18;
                                    i7 = i20;
                                    i8 = i40;
                                    i33 = i15;
                                    i11 = i19;
                                    break;
                                } else {
                                    i28 = zzip.zzj(bArr2, i22, zzioVar3);
                                    unsafe2.putInt(obj4, j, zzjf.zzb(zzioVar3.zza));
                                    i32 = i17 | i42;
                                    i31 = i24;
                                    i30 = i18;
                                    i29 = i23;
                                    i33 = i15;
                                    i26 = i2;
                                    i27 = i3;
                                    break;
                                }
                            case 16:
                                i18 = i35;
                                int i48 = i16;
                                if (i36 != 0) {
                                    i40 = i40;
                                    i20 = i39;
                                    i19 = i48;
                                    i10 = i3;
                                    i9 = i17;
                                    unsafe = unsafe2;
                                    i6 = i18;
                                    i7 = i20;
                                    i8 = i40;
                                    i33 = i15;
                                    i11 = i19;
                                    break;
                                } else {
                                    bArr2 = bArr;
                                    int zzm3 = zzip.zzm(bArr2, i39, zzioVar3);
                                    i23 = i40;
                                    unsafe2.putLong(obj, j, zzjf.zzc(zzioVar3.zzb));
                                    i32 = i17 | i42;
                                    i31 = i48;
                                    i28 = zzm3;
                                    i30 = i18;
                                    i29 = i23;
                                    i33 = i15;
                                    i26 = i2;
                                    i27 = i3;
                                    break;
                                }
                            default:
                                if (i36 != 3) {
                                    i18 = i35;
                                    i19 = i16;
                                    i20 = i39;
                                    i10 = i3;
                                    i9 = i17;
                                    unsafe = unsafe2;
                                    i6 = i18;
                                    i7 = i20;
                                    i8 = i40;
                                    i33 = i15;
                                    i11 = i19;
                                    break;
                                } else {
                                    int i49 = i16;
                                    i28 = zzip.zzc(zzlmVar2.zzE(i49), bArr, i39, i2, (i35 << 3) | 4, zzioVar);
                                    if ((i17 & i42) == 0) {
                                        unsafe2.putObject(obj4, j, zzioVar3.zzc);
                                    } else {
                                        unsafe2.putObject(obj4, j, zzkk.zzg(unsafe2.getObject(obj4, j), zzioVar3.zzc));
                                    }
                                    i32 = i17 | i42;
                                    bArr2 = bArr;
                                    i26 = i2;
                                    i31 = i49;
                                    i29 = i40;
                                    i30 = i35;
                                    i33 = i15;
                                    i27 = i3;
                                    break;
                                }
                        }
                    } else {
                        bArr2 = bArr;
                        if (zzA != 27) {
                            i9 = i32;
                            i13 = i33;
                            i11 = i37;
                            if (zzA <= 49) {
                                i6 = i35;
                                unsafe = unsafe2;
                                i28 = zzv(obj, bArr, i39, i2, i40, i6, i36, i11, i38, zzA, j, zzioVar);
                            } else {
                                i6 = i35;
                                unsafe = unsafe2;
                                i14 = i39;
                                if (zzA != 50) {
                                    i28 = zzt(obj, bArr, i14, i2, i40, i6, i36, i38, zzA, j, i11, zzioVar);
                                } else if (i36 == 2) {
                                    i28 = zzs(obj, bArr, i14, i2, i11, j, zzioVar);
                                }
                            }
                        } else if (i36 == 2) {
                            zzkj zzkjVar = (zzkj) unsafe2.getObject(obj4, j);
                            if (!zzkjVar.zzc()) {
                                int size = zzkjVar.size();
                                zzkjVar = zzkjVar.zzd(size == 0 ? 10 : size + size);
                                unsafe2.putObject(obj4, j, zzkjVar);
                            }
                            i29 = i40;
                            i15 = i33;
                            i28 = zzip.zze(zzlmVar2.zzE(i37), i29, bArr, i39, i2, zzkjVar, zzioVar);
                            i26 = i2;
                            i31 = i37;
                            i30 = i35;
                            i32 = i32;
                            i33 = i15;
                            i27 = i3;
                        } else {
                            i9 = i32;
                            i13 = i33;
                            i6 = i35;
                            unsafe = unsafe2;
                            i14 = i39;
                            i11 = i37;
                        }
                        i10 = i3;
                        i7 = i14;
                        i8 = i40;
                        i33 = i13;
                    }
                }
                if (i8 != i10 || i10 == 0) {
                    int i50 = i10;
                    if (this.zzh) {
                        zzioVar2 = zzioVar;
                        if (zzioVar2.zzd != zzjo.zza()) {
                            i12 = i6;
                            if (zzioVar2.zzd.zzc(this.zzg, i12) == null) {
                                i28 = zzip.zzi(i8, bArr, i7, i2, zzd(obj), zzioVar);
                                obj3 = obj;
                                i26 = i2;
                                i29 = i8;
                                zzlmVar2 = this;
                                i30 = i12;
                                obj4 = obj3;
                                i32 = i9;
                                i31 = i11;
                                bArr2 = bArr;
                                i27 = i50;
                                zzioVar3 = zzioVar2;
                                unsafe2 = unsafe;
                            } else {
                                throw null;
                            }
                        } else {
                            obj3 = obj;
                            i12 = i6;
                        }
                    } else {
                        obj3 = obj;
                        i12 = i6;
                        zzioVar2 = zzioVar;
                    }
                    i28 = zzip.zzi(i8, bArr, i7, i2, zzd(obj), zzioVar);
                    i26 = i2;
                    i29 = i8;
                    zzlmVar2 = this;
                    i30 = i12;
                    obj4 = obj3;
                    i32 = i9;
                    i31 = i11;
                    bArr2 = bArr;
                    i27 = i50;
                    zzioVar3 = zzioVar2;
                    unsafe2 = unsafe;
                } else {
                    zzlmVar = this;
                    obj2 = obj;
                    i4 = i10;
                    i28 = i7;
                    i29 = i8;
                    i32 = i9;
                }
            } else {
                unsafe = unsafe2;
                i4 = i27;
                obj2 = obj4;
                zzlmVar = zzlmVar2;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final Object zze() {
        return ((zzkc) this.zzg).zzl(4, null, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final void zzf(Object obj) {
        int i;
        int i2 = this.zzk;
        while (true) {
            i = this.zzl;
            if (i2 >= i) {
                break;
            }
            long zzB = zzB(this.zzj[i2]) & 1048575;
            Object zzf = zzmv.zzf(obj, zzB);
            if (zzf != null) {
                ((zzld) zzf).zzc();
                zzmv.zzs(obj, zzB, zzf);
            }
            i2++;
        }
        int length = this.zzj.length;
        while (i < length) {
            this.zzm.zza(obj, this.zzj[i]);
            i++;
        }
        this.zzn.zzg(obj);
        if (this.zzh) {
            this.zzo.zzb(obj);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final void zzg(Object obj, Object obj2) {
        obj2.getClass();
        for (int i = 0; i < this.zzc.length; i += 3) {
            int zzB = zzB(i);
            long j = 1048575 & zzB;
            int i2 = this.zzc[i];
            switch (zzA(zzB)) {
                case 0:
                    if (zzO(obj2, i)) {
                        zzmv.zzo(obj, j, zzmv.zza(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzO(obj2, i)) {
                        zzmv.zzp(obj, j, zzmv.zzb(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zzO(obj2, i)) {
                        zzmv.zzr(obj, j, zzmv.zzd(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zzO(obj2, i)) {
                        zzmv.zzr(obj, j, zzmv.zzd(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zzO(obj2, i)) {
                        zzmv.zzq(obj, j, zzmv.zzc(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zzO(obj2, i)) {
                        zzmv.zzr(obj, j, zzmv.zzd(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zzO(obj2, i)) {
                        zzmv.zzq(obj, j, zzmv.zzc(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zzO(obj2, i)) {
                        zzmv.zzm(obj, j, zzmv.zzw(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zzO(obj2, i)) {
                        zzmv.zzs(obj, j, zzmv.zzf(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    zzH(obj, obj2, i);
                    break;
                case 10:
                    if (zzO(obj2, i)) {
                        zzmv.zzs(obj, j, zzmv.zzf(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zzO(obj2, i)) {
                        zzmv.zzq(obj, j, zzmv.zzc(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zzO(obj2, i)) {
                        zzmv.zzq(obj, j, zzmv.zzc(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zzO(obj2, i)) {
                        zzmv.zzq(obj, j, zzmv.zzc(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zzO(obj2, i)) {
                        zzmv.zzr(obj, j, zzmv.zzd(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zzO(obj2, i)) {
                        zzmv.zzq(obj, j, zzmv.zzc(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zzO(obj2, i)) {
                        zzmv.zzr(obj, j, zzmv.zzd(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    zzH(obj, obj2, i);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    this.zzm.zzb(obj, obj2, j);
                    break;
                case 50:
                    zzlw.zzaa(this.zzq, obj, obj2, j);
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (zzR(obj2, i2, i)) {
                        zzmv.zzs(obj, j, zzmv.zzf(obj2, j));
                        zzK(obj, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    zzI(obj, obj2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zzR(obj2, i2, i)) {
                        zzmv.zzs(obj, j, zzmv.zzf(obj2, j));
                        zzK(obj, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    zzI(obj, obj2, i);
                    break;
            }
        }
        zzlw.zzF(this.zzn, obj, obj2);
        if (this.zzh) {
            zzlw.zzE(this.zzo, obj, obj2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final void zzh(Object obj, byte[] bArr, int i, int i2, zzio zzioVar) {
        if (this.zzi) {
            zzu(obj, bArr, i, i2, zzioVar);
        } else {
            zzc(obj, bArr, i, i2, 0, zzioVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final void zzi(Object obj, zznd zzndVar) {
        if (this.zzi) {
            if (!this.zzh) {
                int length = this.zzc.length;
                for (int i = 0; i < length; i += 3) {
                    int zzB = zzB(i);
                    int i2 = this.zzc[i];
                    switch (zzA(zzB)) {
                        case 0:
                            if (zzO(obj, i)) {
                                zzndVar.zzf(i2, zzmv.zza(obj, zzB & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 1:
                            if (zzO(obj, i)) {
                                zzndVar.zzo(i2, zzmv.zzb(obj, zzB & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 2:
                            if (zzO(obj, i)) {
                                zzndVar.zzt(i2, zzmv.zzd(obj, zzB & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 3:
                            if (zzO(obj, i)) {
                                zzndVar.zzJ(i2, zzmv.zzd(obj, zzB & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 4:
                            if (zzO(obj, i)) {
                                zzndVar.zzr(i2, zzmv.zzc(obj, zzB & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 5:
                            if (zzO(obj, i)) {
                                zzndVar.zzm(i2, zzmv.zzd(obj, zzB & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 6:
                            if (zzO(obj, i)) {
                                zzndVar.zzk(i2, zzmv.zzc(obj, zzB & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 7:
                            if (zzO(obj, i)) {
                                zzndVar.zzb(i2, zzmv.zzw(obj, zzB & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 8:
                            if (zzO(obj, i)) {
                                zzT(i2, zzmv.zzf(obj, zzB & 1048575), zzndVar);
                                break;
                            } else {
                                break;
                            }
                        case 9:
                            if (zzO(obj, i)) {
                                zzndVar.zzv(i2, zzmv.zzf(obj, zzB & 1048575), zzE(i));
                                break;
                            } else {
                                break;
                            }
                        case 10:
                            if (zzO(obj, i)) {
                                zzndVar.zzd(i2, (zzjb) zzmv.zzf(obj, zzB & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 11:
                            if (zzO(obj, i)) {
                                zzndVar.zzH(i2, zzmv.zzc(obj, zzB & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 12:
                            if (zzO(obj, i)) {
                                zzndVar.zzi(i2, zzmv.zzc(obj, zzB & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 13:
                            if (zzO(obj, i)) {
                                zzndVar.zzw(i2, zzmv.zzc(obj, zzB & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 14:
                            if (zzO(obj, i)) {
                                zzndVar.zzy(i2, zzmv.zzd(obj, zzB & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 15:
                            if (zzO(obj, i)) {
                                zzndVar.zzA(i2, zzmv.zzc(obj, zzB & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 16:
                            if (zzO(obj, i)) {
                                zzndVar.zzC(i2, zzmv.zzd(obj, zzB & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 17:
                            if (zzO(obj, i)) {
                                zzndVar.zzq(i2, zzmv.zzf(obj, zzB & 1048575), zzE(i));
                                break;
                            } else {
                                break;
                            }
                        case 18:
                            zzlw.zzJ(i2, (List) zzmv.zzf(obj, zzB & 1048575), zzndVar, false);
                            break;
                        case 19:
                            zzlw.zzN(i2, (List) zzmv.zzf(obj, zzB & 1048575), zzndVar, false);
                            break;
                        case 20:
                            zzlw.zzQ(i2, (List) zzmv.zzf(obj, zzB & 1048575), zzndVar, false);
                            break;
                        case 21:
                            zzlw.zzY(i2, (List) zzmv.zzf(obj, zzB & 1048575), zzndVar, false);
                            break;
                        case 22:
                            zzlw.zzP(i2, (List) zzmv.zzf(obj, zzB & 1048575), zzndVar, false);
                            break;
                        case 23:
                            zzlw.zzM(i2, (List) zzmv.zzf(obj, zzB & 1048575), zzndVar, false);
                            break;
                        case 24:
                            zzlw.zzL(i2, (List) zzmv.zzf(obj, zzB & 1048575), zzndVar, false);
                            break;
                        case 25:
                            zzlw.zzH(i2, (List) zzmv.zzf(obj, zzB & 1048575), zzndVar, false);
                            break;
                        case 26:
                            zzlw.zzW(i2, (List) zzmv.zzf(obj, zzB & 1048575), zzndVar);
                            break;
                        case 27:
                            zzlw.zzR(i2, (List) zzmv.zzf(obj, zzB & 1048575), zzndVar, zzE(i));
                            break;
                        case 28:
                            zzlw.zzI(i2, (List) zzmv.zzf(obj, zzB & 1048575), zzndVar);
                            break;
                        case 29:
                            zzlw.zzX(i2, (List) zzmv.zzf(obj, zzB & 1048575), zzndVar, false);
                            break;
                        case 30:
                            zzlw.zzK(i2, (List) zzmv.zzf(obj, zzB & 1048575), zzndVar, false);
                            break;
                        case 31:
                            zzlw.zzS(i2, (List) zzmv.zzf(obj, zzB & 1048575), zzndVar, false);
                            break;
                        case 32:
                            zzlw.zzT(i2, (List) zzmv.zzf(obj, zzB & 1048575), zzndVar, false);
                            break;
                        case 33:
                            zzlw.zzU(i2, (List) zzmv.zzf(obj, zzB & 1048575), zzndVar, false);
                            break;
                        case 34:
                            zzlw.zzV(i2, (List) zzmv.zzf(obj, zzB & 1048575), zzndVar, false);
                            break;
                        case 35:
                            zzlw.zzJ(i2, (List) zzmv.zzf(obj, zzB & 1048575), zzndVar, true);
                            break;
                        case 36:
                            zzlw.zzN(i2, (List) zzmv.zzf(obj, zzB & 1048575), zzndVar, true);
                            break;
                        case 37:
                            zzlw.zzQ(i2, (List) zzmv.zzf(obj, zzB & 1048575), zzndVar, true);
                            break;
                        case 38:
                            zzlw.zzY(i2, (List) zzmv.zzf(obj, zzB & 1048575), zzndVar, true);
                            break;
                        case 39:
                            zzlw.zzP(i2, (List) zzmv.zzf(obj, zzB & 1048575), zzndVar, true);
                            break;
                        case 40:
                            zzlw.zzM(i2, (List) zzmv.zzf(obj, zzB & 1048575), zzndVar, true);
                            break;
                        case 41:
                            zzlw.zzL(i2, (List) zzmv.zzf(obj, zzB & 1048575), zzndVar, true);
                            break;
                        case 42:
                            zzlw.zzH(i2, (List) zzmv.zzf(obj, zzB & 1048575), zzndVar, true);
                            break;
                        case 43:
                            zzlw.zzX(i2, (List) zzmv.zzf(obj, zzB & 1048575), zzndVar, true);
                            break;
                        case 44:
                            zzlw.zzK(i2, (List) zzmv.zzf(obj, zzB & 1048575), zzndVar, true);
                            break;
                        case 45:
                            zzlw.zzS(i2, (List) zzmv.zzf(obj, zzB & 1048575), zzndVar, true);
                            break;
                        case 46:
                            zzlw.zzT(i2, (List) zzmv.zzf(obj, zzB & 1048575), zzndVar, true);
                            break;
                        case 47:
                            zzlw.zzU(i2, (List) zzmv.zzf(obj, zzB & 1048575), zzndVar, true);
                            break;
                        case 48:
                            zzlw.zzV(i2, (List) zzmv.zzf(obj, zzB & 1048575), zzndVar, true);
                            break;
                        case 49:
                            zzlw.zzO(i2, (List) zzmv.zzf(obj, zzB & 1048575), zzndVar, zzE(i));
                            break;
                        case 50:
                            zzM(zzndVar, i2, zzmv.zzf(obj, zzB & 1048575), i);
                            break;
                        case 51:
                            if (zzR(obj, i2, i)) {
                                zzndVar.zzf(i2, zzn(obj, zzB & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 52:
                            if (zzR(obj, i2, i)) {
                                zzndVar.zzo(i2, zzo(obj, zzB & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 53:
                            if (zzR(obj, i2, i)) {
                                zzndVar.zzt(i2, zzC(obj, zzB & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 54:
                            if (zzR(obj, i2, i)) {
                                zzndVar.zzJ(i2, zzC(obj, zzB & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 55:
                            if (zzR(obj, i2, i)) {
                                zzndVar.zzr(i2, zzr(obj, zzB & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 56:
                            if (zzR(obj, i2, i)) {
                                zzndVar.zzm(i2, zzC(obj, zzB & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 57:
                            if (zzR(obj, i2, i)) {
                                zzndVar.zzk(i2, zzr(obj, zzB & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 58:
                            if (zzR(obj, i2, i)) {
                                zzndVar.zzb(i2, zzS(obj, zzB & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 59:
                            if (zzR(obj, i2, i)) {
                                zzT(i2, zzmv.zzf(obj, zzB & 1048575), zzndVar);
                                break;
                            } else {
                                break;
                            }
                        case 60:
                            if (zzR(obj, i2, i)) {
                                zzndVar.zzv(i2, zzmv.zzf(obj, zzB & 1048575), zzE(i));
                                break;
                            } else {
                                break;
                            }
                        case 61:
                            if (zzR(obj, i2, i)) {
                                zzndVar.zzd(i2, (zzjb) zzmv.zzf(obj, zzB & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 62:
                            if (zzR(obj, i2, i)) {
                                zzndVar.zzH(i2, zzr(obj, zzB & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 63:
                            if (zzR(obj, i2, i)) {
                                zzndVar.zzi(i2, zzr(obj, zzB & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 64:
                            if (zzR(obj, i2, i)) {
                                zzndVar.zzw(i2, zzr(obj, zzB & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 65:
                            if (zzR(obj, i2, i)) {
                                zzndVar.zzy(i2, zzC(obj, zzB & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 66:
                            if (zzR(obj, i2, i)) {
                                zzndVar.zzA(i2, zzr(obj, zzB & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 67:
                            if (zzR(obj, i2, i)) {
                                zzndVar.zzC(i2, zzC(obj, zzB & 1048575));
                                break;
                            } else {
                                break;
                            }
                        case 68:
                            if (zzR(obj, i2, i)) {
                                zzndVar.zzq(i2, zzmv.zzf(obj, zzB & 1048575), zzE(i));
                                break;
                            } else {
                                break;
                            }
                    }
                }
                zzml zzmlVar = this.zzn;
                zzmlVar.zzi(zzmlVar.zzc(obj), zzndVar);
                return;
            }
            this.zzo.zza(obj);
            throw null;
        }
        zzL(obj, zzndVar);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0015. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:17:0x01c4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x01c0 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.measurement.zzlu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean zzj(Object obj, Object obj2) {
        boolean zzZ;
        int length = this.zzc.length;
        for (int i = 0; i < length; i += 3) {
            int zzB = zzB(i);
            long j = zzB & 1048575;
            switch (zzA(zzB)) {
                case 0:
                    if (zzN(obj, obj2, i) && Double.doubleToLongBits(zzmv.zza(obj, j)) == Double.doubleToLongBits(zzmv.zza(obj2, j))) {
                    }
                    return false;
                case 1:
                    if (zzN(obj, obj2, i) && Float.floatToIntBits(zzmv.zzb(obj, j)) == Float.floatToIntBits(zzmv.zzb(obj2, j))) {
                    }
                    return false;
                case 2:
                    if (zzN(obj, obj2, i) && zzmv.zzd(obj, j) == zzmv.zzd(obj2, j)) {
                    }
                    return false;
                case 3:
                    if (zzN(obj, obj2, i) && zzmv.zzd(obj, j) == zzmv.zzd(obj2, j)) {
                    }
                    return false;
                case 4:
                    if (zzN(obj, obj2, i) && zzmv.zzc(obj, j) == zzmv.zzc(obj2, j)) {
                    }
                    return false;
                case 5:
                    if (zzN(obj, obj2, i) && zzmv.zzd(obj, j) == zzmv.zzd(obj2, j)) {
                    }
                    return false;
                case 6:
                    if (zzN(obj, obj2, i) && zzmv.zzc(obj, j) == zzmv.zzc(obj2, j)) {
                    }
                    return false;
                case 7:
                    if (zzN(obj, obj2, i) && zzmv.zzw(obj, j) == zzmv.zzw(obj2, j)) {
                    }
                    return false;
                case 8:
                    if (zzN(obj, obj2, i) && zzlw.zzZ(zzmv.zzf(obj, j), zzmv.zzf(obj2, j))) {
                    }
                    return false;
                case 9:
                    if (zzN(obj, obj2, i) && zzlw.zzZ(zzmv.zzf(obj, j), zzmv.zzf(obj2, j))) {
                    }
                    return false;
                case 10:
                    if (zzN(obj, obj2, i) && zzlw.zzZ(zzmv.zzf(obj, j), zzmv.zzf(obj2, j))) {
                    }
                    return false;
                case 11:
                    if (zzN(obj, obj2, i) && zzmv.zzc(obj, j) == zzmv.zzc(obj2, j)) {
                    }
                    return false;
                case 12:
                    if (zzN(obj, obj2, i) && zzmv.zzc(obj, j) == zzmv.zzc(obj2, j)) {
                    }
                    return false;
                case 13:
                    if (zzN(obj, obj2, i) && zzmv.zzc(obj, j) == zzmv.zzc(obj2, j)) {
                    }
                    return false;
                case 14:
                    if (zzN(obj, obj2, i) && zzmv.zzd(obj, j) == zzmv.zzd(obj2, j)) {
                    }
                    return false;
                case 15:
                    if (zzN(obj, obj2, i) && zzmv.zzc(obj, j) == zzmv.zzc(obj2, j)) {
                    }
                    return false;
                case 16:
                    if (zzN(obj, obj2, i) && zzmv.zzd(obj, j) == zzmv.zzd(obj2, j)) {
                    }
                    return false;
                case 17:
                    if (zzN(obj, obj2, i) && zzlw.zzZ(zzmv.zzf(obj, j), zzmv.zzf(obj2, j))) {
                    }
                    return false;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    zzZ = zzlw.zzZ(zzmv.zzf(obj, j), zzmv.zzf(obj2, j));
                    if (zzZ) {
                        return false;
                    }
                case 50:
                    zzZ = zzlw.zzZ(zzmv.zzf(obj, j), zzmv.zzf(obj2, j));
                    if (zzZ) {
                    }
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                case 60:
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                case 68:
                    long zzy = zzy(i) & 1048575;
                    if (zzmv.zzc(obj, zzy) == zzmv.zzc(obj2, zzy) && zzlw.zzZ(zzmv.zzf(obj, j), zzmv.zzf(obj2, j))) {
                    }
                    return false;
                default:
            }
        }
        if (!this.zzn.zzc(obj).equals(this.zzn.zzc(obj2))) {
            return false;
        }
        if (!this.zzh) {
            return true;
        }
        this.zzo.zza(obj);
        this.zzo.zza(obj2);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final boolean zzk(Object obj) {
        int i;
        int i2;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i5 < this.zzk) {
            int i6 = this.zzj[i5];
            int i7 = this.zzc[i6];
            int zzB = zzB(i6);
            int i8 = this.zzc[i6 + 2];
            int i9 = i8 & 1048575;
            int i10 = 1 << (i8 >>> 20);
            if (i9 != i3) {
                if (i9 != 1048575) {
                    i4 = zzb.getInt(obj, i9);
                }
                i2 = i4;
                i = i9;
            } else {
                i = i3;
                i2 = i4;
            }
            if ((268435456 & zzB) != 0 && !zzP(obj, i6, i, i2, i10)) {
                return false;
            }
            int zzA = zzA(zzB);
            if (zzA != 9 && zzA != 17) {
                if (zzA != 27) {
                    if (zzA != 60 && zzA != 68) {
                        if (zzA != 49) {
                            if (zzA == 50 && !((zzld) zzmv.zzf(obj, zzB & 1048575)).isEmpty()) {
                                throw null;
                            }
                        }
                    } else if (zzR(obj, i7, i6) && !zzQ(obj, zzB, zzE(i6))) {
                        return false;
                    }
                }
                List list = (List) zzmv.zzf(obj, zzB & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzlu zzE = zzE(i6);
                    for (int i11 = 0; i11 < list.size(); i11++) {
                        if (!zzE.zzk(list.get(i11))) {
                            return false;
                        }
                    }
                }
            } else if (zzP(obj, i6, i, i2, i10) && !zzQ(obj, zzB, zzE(i6))) {
                return false;
            }
            i5++;
            i3 = i;
            i4 = i2;
        }
        if (!this.zzh) {
            return true;
        }
        this.zzo.zza(obj);
        throw null;
    }
}
