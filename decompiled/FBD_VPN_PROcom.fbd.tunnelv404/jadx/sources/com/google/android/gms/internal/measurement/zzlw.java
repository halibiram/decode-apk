package com.google.android.gms.internal.measurement;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC1320xaf50c7e8;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzlw {
    private static final Class zza;
    private static final zzml zzb;
    private static final zzml zzc;
    private static final zzml zzd;

    static {
        Class<?> cls;
        try {
            cls = Class.forName(new ObfuscatedString(new long[]{-8488705650602599525L, -2101524822811774125L, 3365297377554146190L, 8087902416268958701L, 6969459212168615822L, -6229901542184905653L}).toString());
        } catch (Throwable unused) {
            cls = null;
        }
        zza = cls;
        zzb = zzab(false);
        zzc = zzab(true);
        zzd = new zzmn();
    }

    public static zzml zzA() {
        return zzc;
    }

    public static zzml zzB() {
        return zzd;
    }

    public static Object zzC(int i, List list, zzkg zzkgVar, Object obj, zzml zzmlVar) {
        if (zzkgVar == null) {
            return obj;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                Integer num = (Integer) list.get(i3);
                int intValue = num.intValue();
                if (zzkgVar.zza(intValue)) {
                    if (i3 != i2) {
                        list.set(i2, num);
                    }
                    i2++;
                } else {
                    obj = zzD(i, intValue, obj, zzmlVar);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
                return obj;
            }
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                int intValue2 = ((Integer) it.next()).intValue();
                if (!zzkgVar.zza(intValue2)) {
                    obj = zzD(i, intValue2, obj, zzmlVar);
                    it.remove();
                }
            }
        }
        return obj;
    }

    public static Object zzD(int i, int i2, Object obj, zzml zzmlVar) {
        if (obj == null) {
            obj = zzmlVar.zze();
        }
        zzmlVar.zzf(obj, i, i2);
        return obj;
    }

    public static void zzE(zzjp zzjpVar, Object obj, Object obj2) {
        zzjpVar.zza(obj2);
        throw null;
    }

    public static void zzF(zzml zzmlVar, Object obj, Object obj2) {
        zzmlVar.zzh(obj, zzmlVar.zzd(zzmlVar.zzc(obj), zzmlVar.zzc(obj2)));
    }

    public static void zzG(Class cls) {
        Class cls2;
        if (!zzkc.class.isAssignableFrom(cls) && (cls2 = zza) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{1757653870686297613L, -8149568637124987135L, -1662578328844268725L, -3018152382478221388L, -1020224110818309924L, 1335635504864704062L, 6904027310610187356L, 5503191118098453630L, 996056124354364624L, -4073040282709181025L}).toString());
        }
    }

    public static void zzH(int i, List list, zznd zzndVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzndVar.zzc(i, list, z);
        }
    }

    public static void zzI(int i, List list, zznd zzndVar) {
        if (list != null && !list.isEmpty()) {
            zzndVar.zze(i, list);
        }
    }

    public static void zzJ(int i, List list, zznd zzndVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzndVar.zzg(i, list, z);
        }
    }

    public static void zzK(int i, List list, zznd zzndVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzndVar.zzj(i, list, z);
        }
    }

    public static void zzL(int i, List list, zznd zzndVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzndVar.zzl(i, list, z);
        }
    }

    public static void zzM(int i, List list, zznd zzndVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzndVar.zzn(i, list, z);
        }
    }

    public static void zzN(int i, List list, zznd zzndVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzndVar.zzp(i, list, z);
        }
    }

    public static void zzO(int i, List list, zznd zzndVar, zzlu zzluVar) {
        if (list != null && !list.isEmpty()) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                ((zzjk) zzndVar).zzq(i, list.get(i2), zzluVar);
            }
        }
    }

    public static void zzP(int i, List list, zznd zzndVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzndVar.zzs(i, list, z);
        }
    }

    public static void zzQ(int i, List list, zznd zzndVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzndVar.zzu(i, list, z);
        }
    }

    public static void zzR(int i, List list, zznd zzndVar, zzlu zzluVar) {
        if (list != null && !list.isEmpty()) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                ((zzjk) zzndVar).zzv(i, list.get(i2), zzluVar);
            }
        }
    }

    public static void zzS(int i, List list, zznd zzndVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzndVar.zzx(i, list, z);
        }
    }

    public static void zzT(int i, List list, zznd zzndVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzndVar.zzz(i, list, z);
        }
    }

    public static void zzU(int i, List list, zznd zzndVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzndVar.zzB(i, list, z);
        }
    }

    public static void zzV(int i, List list, zznd zzndVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzndVar.zzD(i, list, z);
        }
    }

    public static void zzW(int i, List list, zznd zzndVar) {
        if (list != null && !list.isEmpty()) {
            zzndVar.zzG(i, list);
        }
    }

    public static void zzX(int i, List list, zznd zzndVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzndVar.zzI(i, list, z);
        }
    }

    public static void zzY(int i, List list, zznd zzndVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzndVar.zzK(i, list, z);
        }
    }

    public static boolean zzZ(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj != null && obj.equals(obj2)) {
            return true;
        }
        return false;
    }

    public static int zza(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzjj.zzA(i << 3) + 1) * size;
    }

    public static void zzaa(zzle zzleVar, Object obj, Object obj2, long j) {
        zzmv.zzs(obj, j, zzle.zzb(zzmv.zzf(obj, j), zzmv.zzf(obj2, j)));
    }

    private static zzml zzab(boolean z) {
        Class<?> cls;
        try {
            cls = Class.forName(new ObfuscatedString(new long[]{3671112461570551166L, -7212585532897618068L, -2940292109429071202L, -4433343638917602832L, 7288903443451939195L, -7487041632426411786L, 4084003373652516816L}).toString());
        } catch (Throwable unused) {
            cls = null;
        }
        if (cls == null) {
            return null;
        }
        try {
            return (zzml) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable unused2) {
            return null;
        }
    }

    public static int zzb(List list) {
        return list.size();
    }

    public static int zzc(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzz = zzjj.zzz(i) * size;
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzz += zzjj.zzt((zzjb) list.get(i2));
        }
        return zzz;
    }

    public static int zzd(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzjj.zzz(i) * size) + zze(list);
    }

    public static int zze(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzkd) {
            zzkd zzkdVar = (zzkd) list;
            i = 0;
            while (i2 < size) {
                i += zzjj.zzv(zzkdVar.zze(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzjj.zzv(((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
        return i;
    }

    public static int zzf(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzjj.zzA(i << 3) + 4) * size;
    }

    public static int zzg(List list) {
        return list.size() * 4;
    }

    public static int zzh(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzjj.zzA(i << 3) + 8) * size;
    }

    public static int zzi(List list) {
        return list.size() * 8;
    }

    public static int zzj(int i, List list, zzlu zzluVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += zzjj.zzu(i, (zzlj) list.get(i3), zzluVar);
        }
        return i2;
    }

    public static int zzk(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzjj.zzz(i) * size) + zzl(list);
    }

    public static int zzl(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzkd) {
            zzkd zzkdVar = (zzkd) list;
            i = 0;
            while (i2 < size) {
                i += zzjj.zzv(zzkdVar.zze(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzjj.zzv(((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
        return i;
    }

    public static int zzm(int i, List list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return (zzjj.zzz(i) * list.size()) + zzn(list);
    }

    public static int zzn(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzky) {
            zzky zzkyVar = (zzky) list;
            i = 0;
            while (i2 < size) {
                i += zzjj.zzB(zzkyVar.zza(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzjj.zzB(((Long) list.get(i2)).longValue());
                i2++;
            }
        }
        return i;
    }

    public static int zzo(int i, Object obj, zzlu zzluVar) {
        if (obj instanceof zzkp) {
            int zzA = zzjj.zzA(i << 3);
            int zza2 = ((zzkp) obj).zza();
            return AbstractC1320xaf50c7e8.m4359x9e171bf9(zza2, zza2, zzA);
        }
        return zzjj.zzx((zzlj) obj, zzluVar) + zzjj.zzA(i << 3);
    }

    public static int zzp(int i, List list, zzlu zzluVar) {
        int zzx;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzz = zzjj.zzz(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            if (obj instanceof zzkp) {
                zzx = zzjj.zzw((zzkp) obj);
            } else {
                zzx = zzjj.zzx((zzlj) obj, zzluVar);
            }
            zzz = zzx + zzz;
        }
        return zzz;
    }

    public static int zzq(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzjj.zzz(i) * size) + zzr(list);
    }

    public static int zzr(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzkd) {
            zzkd zzkdVar = (zzkd) list;
            i = 0;
            while (i2 < size) {
                int zze = zzkdVar.zze(i2);
                i += zzjj.zzA((zze >> 31) ^ (zze + zze));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                int intValue = ((Integer) list.get(i2)).intValue();
                i += zzjj.zzA((intValue >> 31) ^ (intValue + intValue));
                i2++;
            }
        }
        return i;
    }

    public static int zzs(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzjj.zzz(i) * size) + zzt(list);
    }

    public static int zzt(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzky) {
            zzky zzkyVar = (zzky) list;
            i = 0;
            while (i2 < size) {
                long zza2 = zzkyVar.zza(i2);
                i += zzjj.zzB((zza2 >> 63) ^ (zza2 + zza2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                long longValue = ((Long) list.get(i2)).longValue();
                i += zzjj.zzB((longValue >> 63) ^ (longValue + longValue));
                i2++;
            }
        }
        return i;
    }

    public static int zzu(int i, List list) {
        int zzy;
        int zzy2;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        int zzz = zzjj.zzz(i) * size;
        if (list instanceof zzkr) {
            zzkr zzkrVar = (zzkr) list;
            while (i2 < size) {
                Object zzf = zzkrVar.zzf(i2);
                if (zzf instanceof zzjb) {
                    zzy2 = zzjj.zzt((zzjb) zzf);
                } else {
                    zzy2 = zzjj.zzy((String) zzf);
                }
                zzz = zzy2 + zzz;
                i2++;
            }
        } else {
            while (i2 < size) {
                Object obj = list.get(i2);
                if (obj instanceof zzjb) {
                    zzy = zzjj.zzt((zzjb) obj);
                } else {
                    zzy = zzjj.zzy((String) obj);
                }
                zzz = zzy + zzz;
                i2++;
            }
        }
        return zzz;
    }

    public static int zzv(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzjj.zzz(i) * size) + zzw(list);
    }

    public static int zzw(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzkd) {
            zzkd zzkdVar = (zzkd) list;
            i = 0;
            while (i2 < size) {
                i += zzjj.zzA(zzkdVar.zze(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzjj.zzA(((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
        return i;
    }

    public static int zzx(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzjj.zzz(i) * size) + zzy(list);
    }

    public static int zzy(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzky) {
            zzky zzkyVar = (zzky) list;
            i = 0;
            while (i2 < size) {
                i += zzjj.zzB(zzkyVar.zza(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzjj.zzB(((Long) list.get(i2)).longValue());
                i2++;
            }
        }
        return i;
    }

    public static zzml zzz() {
        return zzb;
    }
}
