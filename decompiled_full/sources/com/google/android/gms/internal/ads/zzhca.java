package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC1320xaf50c7e8;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzhca {
    public static final /* synthetic */ int zza = 0;
    private static final Class zzb;
    private static final zzhcp zzc;
    private static final zzhcp zzd;

    static {
        Class<?> cls;
        Class<?> cls2;
        zzhcp zzhcpVar = null;
        try {
            cls = Class.forName(new ObfuscatedString(new long[]{3712882439841589494L, 7750161500515888272L, -8880066445397336683L, -4957089519122848968L, -6255834987728616249L, 4907015486880209808L}).toString());
        } catch (Throwable unused) {
            cls = null;
        }
        zzb = cls;
        try {
            cls2 = Class.forName(new ObfuscatedString(new long[]{4259716079979594941L, 7379328002207212444L, 6359121291748331131L, -2535008087188212800L, -4085590744777496304L, -8977606319560589834L, -1984162320068793778L}).toString());
        } catch (Throwable unused2) {
            cls2 = null;
        }
        if (cls2 != null) {
            try {
                zzhcpVar = (zzhcp) cls2.getConstructor(null).newInstance(null);
            } catch (Throwable unused3) {
            }
        }
        zzc = zzhcpVar;
        zzd = new zzhcr();
    }

    public static void zzA(int i, List list, zzgzb zzgzbVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzgzbVar.zzu(i, list, z);
        }
    }

    public static void zzB(int i, List list, zzgzb zzgzbVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzgzbVar.zzx(i, list, z);
        }
    }

    public static void zzC(int i, List list, zzgzb zzgzbVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzgzbVar.zzz(i, list, z);
        }
    }

    public static void zzD(int i, List list, zzgzb zzgzbVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzgzbVar.zzB(i, list, z);
        }
    }

    public static void zzE(int i, List list, zzgzb zzgzbVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzgzbVar.zzD(i, list, z);
        }
    }

    public static void zzF(int i, List list, zzgzb zzgzbVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzgzbVar.zzI(i, list, z);
        }
    }

    public static void zzG(int i, List list, zzgzb zzgzbVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzgzbVar.zzK(i, list, z);
        }
    }

    public static int zza(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzgzv) {
            zzgzv zzgzvVar = (zzgzv) list;
            i = 0;
            while (i2 < size) {
                i += zzgza.zzA(zzgzvVar.zze(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzgza.zzA(((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
        return i;
    }

    public static int zzb(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzgza.zzz(i << 3) + 4) * size;
    }

    public static int zzc(List list) {
        return list.size() * 4;
    }

    public static int zzd(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzgza.zzz(i << 3) + 8) * size;
    }

    public static int zze(List list) {
        return list.size() * 8;
    }

    public static int zzf(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzgzv) {
            zzgzv zzgzvVar = (zzgzv) list;
            i = 0;
            while (i2 < size) {
                i += zzgza.zzA(zzgzvVar.zze(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzgza.zzA(((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
        return i;
    }

    public static int zzg(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzhat) {
            zzhat zzhatVar = (zzhat) list;
            i = 0;
            while (i2 < size) {
                i += zzgza.zzA(zzhatVar.zze(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzgza.zzA(((Long) list.get(i2)).longValue());
                i2++;
            }
        }
        return i;
    }

    public static int zzh(int i, Object obj, zzhby zzhbyVar) {
        int i2 = i << 3;
        if (obj instanceof zzhak) {
            int zzz = zzgza.zzz(i2);
            int zza2 = ((zzhak) obj).zza();
            return AbstractC1320xaf50c7e8.m4354xfbe0c504(zza2, zza2, zzz);
        }
        return zzgza.zzx((zzhbe) obj, zzhbyVar) + zzgza.zzz(i2);
    }

    public static int zzi(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzgzv) {
            zzgzv zzgzvVar = (zzgzv) list;
            i = 0;
            while (i2 < size) {
                int zze = zzgzvVar.zze(i2);
                i += zzgza.zzz((zze >> 31) ^ (zze + zze));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                int intValue = ((Integer) list.get(i2)).intValue();
                i += zzgza.zzz((intValue >> 31) ^ (intValue + intValue));
                i2++;
            }
        }
        return i;
    }

    public static int zzj(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzhat) {
            zzhat zzhatVar = (zzhat) list;
            i = 0;
            while (i2 < size) {
                long zze = zzhatVar.zze(i2);
                i += zzgza.zzA((zze >> 63) ^ (zze + zze));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                long longValue = ((Long) list.get(i2)).longValue();
                i += zzgza.zzA((longValue >> 63) ^ (longValue + longValue));
                i2++;
            }
        }
        return i;
    }

    public static int zzk(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzgzv) {
            zzgzv zzgzvVar = (zzgzv) list;
            i = 0;
            while (i2 < size) {
                i += zzgza.zzz(zzgzvVar.zze(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzgza.zzz(((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
        return i;
    }

    public static int zzl(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzhat) {
            zzhat zzhatVar = (zzhat) list;
            i = 0;
            while (i2 < size) {
                i += zzgza.zzA(zzhatVar.zze(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzgza.zzA(((Long) list.get(i2)).longValue());
                i2++;
            }
        }
        return i;
    }

    public static zzhcp zzm() {
        return zzc;
    }

    public static zzhcp zzn() {
        return zzd;
    }

    public static Object zzo(Object obj, int i, List list, zzgzy zzgzyVar, Object obj2, zzhcp zzhcpVar) {
        if (zzgzyVar == null) {
            return obj2;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                Integer num = (Integer) list.get(i3);
                int intValue = num.intValue();
                if (zzgzyVar.zza(intValue)) {
                    if (i3 != i2) {
                        list.set(i2, num);
                    }
                    i2++;
                } else {
                    obj2 = zzp(obj, i, intValue, obj2, zzhcpVar);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
                return obj2;
            }
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                int intValue2 = ((Integer) it.next()).intValue();
                if (!zzgzyVar.zza(intValue2)) {
                    obj2 = zzp(obj, i, intValue2, obj2, zzhcpVar);
                    it.remove();
                }
            }
        }
        return obj2;
    }

    public static Object zzp(Object obj, int i, int i2, Object obj2, zzhcp zzhcpVar) {
        if (obj2 == null) {
            obj2 = zzhcpVar.zzc(obj);
        }
        zzhcpVar.zzl(obj2, i, i2);
        return obj2;
    }

    public static void zzq(zzhcp zzhcpVar, Object obj, Object obj2) {
        zzhcpVar.zzo(obj, zzhcpVar.zze(zzhcpVar.zzd(obj), zzhcpVar.zzd(obj2)));
    }

    public static void zzr(Class cls) {
        Class cls2;
        if (!zzgzu.class.isAssignableFrom(cls) && (cls2 = zzb) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-8043911919787466662L, -2710351659512599464L, 5214176206968034403L, 9152363197545513995L, -7787226653391633571L, -5946019721787235937L, 1177671825008832810L, 6180042372178764499L, 4707892536202838100L, 8965999539577079832L}).toString());
        }
    }

    public static boolean zzs(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj != null && obj.equals(obj2)) {
            return true;
        }
        return false;
    }

    public static void zzt(int i, List list, zzgzb zzgzbVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzgzbVar.zzc(i, list, z);
        }
    }

    public static void zzu(int i, List list, zzgzb zzgzbVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzgzbVar.zzg(i, list, z);
        }
    }

    public static void zzv(int i, List list, zzgzb zzgzbVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzgzbVar.zzj(i, list, z);
        }
    }

    public static void zzw(int i, List list, zzgzb zzgzbVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzgzbVar.zzl(i, list, z);
        }
    }

    public static void zzx(int i, List list, zzgzb zzgzbVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzgzbVar.zzn(i, list, z);
        }
    }

    public static void zzy(int i, List list, zzgzb zzgzbVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzgzbVar.zzp(i, list, z);
        }
    }

    public static void zzz(int i, List list, zzgzb zzgzbVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zzgzbVar.zzs(i, list, z);
        }
    }
}
