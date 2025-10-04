package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC1320xaf50c7e8;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzhbh<T> implements zzhby<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzhcz.zzi();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzhbe zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final int[] zzj;
    private final int zzk;
    private final int zzl;
    private final zzhas zzm;
    private final zzhcp zzn;
    private final zzgzg zzo;
    private final zzhbj zzp;
    private final zzhaz zzq;

    private zzhbh(int[] iArr, Object[] objArr, int i, int i2, zzhbe zzhbeVar, int i3, boolean z, int[] iArr2, int i4, int i5, zzhbj zzhbjVar, zzhas zzhasVar, zzhcp zzhcpVar, zzgzg zzgzgVar, zzhaz zzhazVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i;
        this.zzf = i2;
        this.zzi = zzhbeVar instanceof zzgzu;
        boolean z2 = false;
        if (zzgzgVar != null && zzgzgVar.zzh(zzhbeVar)) {
            z2 = true;
        }
        this.zzh = z2;
        this.zzj = iArr2;
        this.zzk = i4;
        this.zzl = i5;
        this.zzp = zzhbjVar;
        this.zzm = zzhasVar;
        this.zzn = zzhcpVar;
        this.zzo = zzgzgVar;
        this.zzg = zzhbeVar;
        this.zzq = zzhazVar;
    }

    private final Object zzA(Object obj, int i) {
        zzhby zzx = zzx(i);
        int zzu = zzu(i) & 1048575;
        if (!zzN(obj, i)) {
            return zzx.zze();
        }
        Object object = zzb.getObject(obj, zzu);
        if (zzQ(object)) {
            return object;
        }
        Object zze = zzx.zze();
        if (object != null) {
            zzx.zzg(zze, object);
        }
        return zze;
    }

    private final Object zzB(Object obj, int i, int i2) {
        zzhby zzx = zzx(i2);
        if (!zzR(obj, i, i2)) {
            return zzx.zze();
        }
        Object object = zzb.getObject(obj, zzu(i2) & 1048575);
        if (zzQ(object)) {
            return object;
        }
        Object zze = zzx.zze();
        if (object != null) {
            zzx.zzg(zze, object);
        }
        return zze;
    }

    private static Field zzC(Class cls, String str) {
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
            sb.append(new ObfuscatedString(new long[]{1864530789201555379L, 5015282764800974540L}).toString());
            sb.append(str);
            sb.append(new ObfuscatedString(new long[]{7420959272330133416L, 3233796501522073382L}).toString());
            sb.append(name);
            throw new RuntimeException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-6902047353873533965L, 2302617094763935944L, -8446169902750071673L, -4676664426817328584L, -6771249327657269106L}), sb, arrays));
        }
    }

    private static void zzD(Object obj) {
        if (zzQ(obj)) {
            return;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{2615352976649906791L, 1688090465044606312L, -2443777643780293293L, -553053069482028442L, -2729102221666355192L}).toString().concat(String.valueOf(obj)));
    }

    private final void zzE(Object obj, Object obj2, int i) {
        if (!zzN(obj2, i)) {
            return;
        }
        int zzu = zzu(i) & 1048575;
        Unsafe unsafe = zzb;
        long j = zzu;
        Object object = unsafe.getObject(obj2, j);
        if (object != null) {
            zzhby zzx = zzx(i);
            if (!zzN(obj, i)) {
                if (!zzQ(object)) {
                    unsafe.putObject(obj, j, object);
                } else {
                    Object zze = zzx.zze();
                    zzx.zzg(zze, object);
                    unsafe.putObject(obj, j, zze);
                }
                zzH(obj, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzQ(object2)) {
                Object zze2 = zzx.zze();
                zzx.zzg(zze2, object2);
                unsafe.putObject(obj, j, zze2);
                object2 = zze2;
            }
            zzx.zzg(object2, object);
            return;
        }
        int i2 = this.zzc[i];
        String obj3 = obj2.toString();
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-7778965516426637992L, -8809801089721577594L, 7672183064587238793L}).toString());
        sb.append(i2);
        throw new IllegalStateException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{5991428705283676523L, 4954046614187958387L, 5034244384179261626L, 3125764553912006660L}), sb, obj3));
    }

    private final void zzF(Object obj, Object obj2, int i) {
        int i2 = this.zzc[i];
        if (!zzR(obj2, i2, i)) {
            return;
        }
        int zzu = zzu(i) & 1048575;
        Unsafe unsafe = zzb;
        long j = zzu;
        Object object = unsafe.getObject(obj2, j);
        if (object != null) {
            zzhby zzx = zzx(i);
            if (!zzR(obj, i2, i)) {
                if (!zzQ(object)) {
                    unsafe.putObject(obj, j, object);
                } else {
                    Object zze = zzx.zze();
                    zzx.zzg(zze, object);
                    unsafe.putObject(obj, j, zze);
                }
                zzI(obj, i2, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzQ(object2)) {
                Object zze2 = zzx.zze();
                zzx.zzg(zze2, object2);
                unsafe.putObject(obj, j, zze2);
                object2 = zze2;
            }
            zzx.zzg(object2, object);
            return;
        }
        int i3 = this.zzc[i];
        String obj3 = obj2.toString();
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{5443415055809780639L, -9009253108495691232L, 5830989754422229081L}).toString());
        sb.append(i3);
        throw new IllegalStateException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-7678615227303949590L, -9071529779452038497L, -5922452852349059477L, 2054885632215409738L}), sb, obj3));
    }

    private final void zzG(Object obj, int i, zzhbq zzhbqVar) {
        long j = i & 1048575;
        if (zzM(i)) {
            zzhcz.zzv(obj, j, zzhbqVar.zzs());
        } else if (this.zzi) {
            zzhcz.zzv(obj, j, zzhbqVar.zzr());
        } else {
            zzhcz.zzv(obj, j, zzhbqVar.zzp());
        }
    }

    private final void zzH(Object obj, int i) {
        int zzr = zzr(i);
        long j = 1048575 & zzr;
        if (j == 1048575) {
            return;
        }
        zzhcz.zzt(obj, j, (1 << (zzr >>> 20)) | zzhcz.zzd(obj, j));
    }

    private final void zzI(Object obj, int i, int i2) {
        zzhcz.zzt(obj, zzr(i2) & 1048575, i);
    }

    private final void zzJ(Object obj, int i, Object obj2) {
        zzb.putObject(obj, zzu(i) & 1048575, obj2);
        zzH(obj, i);
    }

    private final void zzK(Object obj, int i, int i2, Object obj2) {
        zzb.putObject(obj, zzu(i2) & 1048575, obj2);
        zzI(obj, i, i2);
    }

    private final boolean zzL(Object obj, Object obj2, int i) {
        if (zzN(obj, i) == zzN(obj2, i)) {
            return true;
        }
        return false;
    }

    private static boolean zzM(int i) {
        return (i & 536870912) != 0;
    }

    private final boolean zzN(Object obj, int i) {
        int zzr = zzr(i);
        long j = zzr & 1048575;
        if (j == 1048575) {
            int zzu = zzu(i);
            long j2 = zzu & 1048575;
            switch (zzt(zzu)) {
                case 0:
                    if (Double.doubleToRawLongBits(zzhcz.zzb(obj, j2)) == 0) {
                        return false;
                    }
                    return true;
                case 1:
                    if (Float.floatToRawIntBits(zzhcz.zzc(obj, j2)) == 0) {
                        return false;
                    }
                    return true;
                case 2:
                    if (zzhcz.zzf(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 3:
                    if (zzhcz.zzf(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 4:
                    if (zzhcz.zzd(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 5:
                    if (zzhcz.zzf(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 6:
                    if (zzhcz.zzd(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 7:
                    return zzhcz.zzz(obj, j2);
                case 8:
                    Object zzh = zzhcz.zzh(obj, j2);
                    if (zzh instanceof String) {
                        if (((String) zzh).isEmpty()) {
                            return false;
                        }
                        return true;
                    }
                    if (zzh instanceof zzgyl) {
                        if (zzgyl.zzb.equals(zzh)) {
                            return false;
                        }
                        return true;
                    }
                    throw new IllegalArgumentException();
                case 9:
                    if (zzhcz.zzh(obj, j2) == null) {
                        return false;
                    }
                    return true;
                case 10:
                    if (zzgyl.zzb.equals(zzhcz.zzh(obj, j2))) {
                        return false;
                    }
                    return true;
                case 11:
                    if (zzhcz.zzd(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 12:
                    if (zzhcz.zzd(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 13:
                    if (zzhcz.zzd(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 14:
                    if (zzhcz.zzf(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 15:
                    if (zzhcz.zzd(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 16:
                    if (zzhcz.zzf(obj, j2) == 0) {
                        return false;
                    }
                    return true;
                case 17:
                    if (zzhcz.zzh(obj, j2) == null) {
                        return false;
                    }
                    return true;
                default:
                    throw new IllegalArgumentException();
            }
        }
        if ((zzhcz.zzd(obj, j) & (1 << (zzr >>> 20))) == 0) {
            return false;
        }
        return true;
    }

    private final boolean zzO(Object obj, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return zzN(obj, i);
        }
        if ((i3 & i4) != 0) {
            return true;
        }
        return false;
    }

    private static boolean zzP(Object obj, int i, zzhby zzhbyVar) {
        return zzhbyVar.zzk(zzhcz.zzh(obj, i & 1048575));
    }

    private static boolean zzQ(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzgzu) {
            return ((zzgzu) obj).zzaY();
        }
        return true;
    }

    private final boolean zzR(Object obj, int i, int i2) {
        if (zzhcz.zzd(obj, zzr(i2) & 1048575) == i) {
            return true;
        }
        return false;
    }

    private static boolean zzS(Object obj, long j) {
        return ((Boolean) zzhcz.zzh(obj, j)).booleanValue();
    }

    private static final void zzT(int i, Object obj, zzgzb zzgzbVar) {
        if (obj instanceof String) {
            zzgzbVar.zzF(i, (String) obj);
        } else {
            zzgzbVar.zzd(i, (zzgyl) obj);
        }
    }

    public static zzhcq zzd(Object obj) {
        zzgzu zzgzuVar = (zzgzu) obj;
        zzhcq zzhcqVar = zzgzuVar.zzc;
        if (zzhcqVar == zzhcq.zzc()) {
            zzhcq zzf = zzhcq.zzf();
            zzgzuVar.zzc = zzf;
            return zzf;
        }
        return zzhcqVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0283  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x026a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static zzhbh zzl(Class cls, zzhbb zzhbbVar, zzhbj zzhbjVar, zzhas zzhasVar, zzhcp zzhcpVar, zzgzg zzgzgVar, zzhaz zzhazVar) {
        int i;
        int charAt;
        int charAt2;
        int i2;
        int[] iArr;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        char charAt3;
        int i8;
        char charAt4;
        int i9;
        char charAt5;
        int i10;
        char charAt6;
        int i11;
        char charAt7;
        int i12;
        char charAt8;
        int i13;
        char charAt9;
        int i14;
        char charAt10;
        int i15;
        int i16;
        int i17;
        int i18;
        zzhbp zzhbpVar;
        int i19;
        String str;
        int i20;
        int i21;
        int i22;
        int i23;
        Field zzC;
        char charAt11;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        int i30;
        Object obj;
        Field zzC2;
        Object obj2;
        Field zzC3;
        int i31;
        char charAt12;
        int i32;
        char charAt13;
        int i33;
        char charAt14;
        int i34;
        char charAt15;
        if (zzhbbVar instanceof zzhbp) {
            zzhbp zzhbpVar2 = (zzhbp) zzhbbVar;
            String zzd = zzhbpVar2.zzd();
            int length = zzd.length();
            char c = 55296;
            if (zzd.charAt(0) >= 55296) {
                int i35 = 1;
                while (true) {
                    i = i35 + 1;
                    if (zzd.charAt(i35) < 55296) {
                        break;
                    }
                    i35 = i;
                }
            } else {
                i = 1;
            }
            int i36 = i + 1;
            int charAt16 = zzd.charAt(i);
            if (charAt16 >= 55296) {
                int i37 = charAt16 & 8191;
                int i38 = 13;
                while (true) {
                    i34 = i36 + 1;
                    charAt15 = zzd.charAt(i36);
                    if (charAt15 < 55296) {
                        break;
                    }
                    i37 |= (charAt15 & 8191) << i38;
                    i38 += 13;
                    i36 = i34;
                }
                charAt16 = i37 | (charAt15 << i38);
                i36 = i34;
            }
            if (charAt16 == 0) {
                iArr = zza;
                i5 = 0;
                charAt = 0;
                charAt2 = 0;
                i3 = 0;
                i6 = 0;
                i2 = 0;
                i4 = 0;
            } else {
                int i39 = i36 + 1;
                int charAt17 = zzd.charAt(i36);
                if (charAt17 >= 55296) {
                    int i40 = charAt17 & 8191;
                    int i41 = 13;
                    while (true) {
                        i14 = i39 + 1;
                        charAt10 = zzd.charAt(i39);
                        if (charAt10 < 55296) {
                            break;
                        }
                        i40 |= (charAt10 & 8191) << i41;
                        i41 += 13;
                        i39 = i14;
                    }
                    charAt17 = i40 | (charAt10 << i41);
                    i39 = i14;
                }
                int i42 = i39 + 1;
                int charAt18 = zzd.charAt(i39);
                if (charAt18 >= 55296) {
                    int i43 = charAt18 & 8191;
                    int i44 = 13;
                    while (true) {
                        i13 = i42 + 1;
                        charAt9 = zzd.charAt(i42);
                        if (charAt9 < 55296) {
                            break;
                        }
                        i43 |= (charAt9 & 8191) << i44;
                        i44 += 13;
                        i42 = i13;
                    }
                    charAt18 = i43 | (charAt9 << i44);
                    i42 = i13;
                }
                int i45 = i42 + 1;
                int charAt19 = zzd.charAt(i42);
                if (charAt19 >= 55296) {
                    int i46 = charAt19 & 8191;
                    int i47 = 13;
                    while (true) {
                        i12 = i45 + 1;
                        charAt8 = zzd.charAt(i45);
                        if (charAt8 < 55296) {
                            break;
                        }
                        i46 |= (charAt8 & 8191) << i47;
                        i47 += 13;
                        i45 = i12;
                    }
                    charAt19 = i46 | (charAt8 << i47);
                    i45 = i12;
                }
                int i48 = i45 + 1;
                int charAt20 = zzd.charAt(i45);
                if (charAt20 >= 55296) {
                    int i49 = charAt20 & 8191;
                    int i50 = 13;
                    while (true) {
                        i11 = i48 + 1;
                        charAt7 = zzd.charAt(i48);
                        if (charAt7 < 55296) {
                            break;
                        }
                        i49 |= (charAt7 & 8191) << i50;
                        i50 += 13;
                        i48 = i11;
                    }
                    charAt20 = i49 | (charAt7 << i50);
                    i48 = i11;
                }
                int i51 = i48 + 1;
                charAt = zzd.charAt(i48);
                if (charAt >= 55296) {
                    int i52 = charAt & 8191;
                    int i53 = 13;
                    while (true) {
                        i10 = i51 + 1;
                        charAt6 = zzd.charAt(i51);
                        if (charAt6 < 55296) {
                            break;
                        }
                        i52 |= (charAt6 & 8191) << i53;
                        i53 += 13;
                        i51 = i10;
                    }
                    charAt = i52 | (charAt6 << i53);
                    i51 = i10;
                }
                int i54 = i51 + 1;
                charAt2 = zzd.charAt(i51);
                if (charAt2 >= 55296) {
                    int i55 = charAt2 & 8191;
                    int i56 = 13;
                    while (true) {
                        i9 = i54 + 1;
                        charAt5 = zzd.charAt(i54);
                        if (charAt5 < 55296) {
                            break;
                        }
                        i55 |= (charAt5 & 8191) << i56;
                        i56 += 13;
                        i54 = i9;
                    }
                    charAt2 = i55 | (charAt5 << i56);
                    i54 = i9;
                }
                int i57 = i54 + 1;
                int charAt21 = zzd.charAt(i54);
                if (charAt21 >= 55296) {
                    int i58 = charAt21 & 8191;
                    int i59 = 13;
                    while (true) {
                        i8 = i57 + 1;
                        charAt4 = zzd.charAt(i57);
                        if (charAt4 < 55296) {
                            break;
                        }
                        i58 |= (charAt4 & 8191) << i59;
                        i59 += 13;
                        i57 = i8;
                    }
                    charAt21 = i58 | (charAt4 << i59);
                    i57 = i8;
                }
                int i60 = i57 + 1;
                int charAt22 = zzd.charAt(i57);
                if (charAt22 >= 55296) {
                    int i61 = charAt22 & 8191;
                    int i62 = 13;
                    while (true) {
                        i7 = i60 + 1;
                        charAt3 = zzd.charAt(i60);
                        if (charAt3 < 55296) {
                            break;
                        }
                        i61 |= (charAt3 & 8191) << i62;
                        i62 += 13;
                        i60 = i7;
                    }
                    charAt22 = i61 | (charAt3 << i62);
                    i60 = i7;
                }
                i2 = charAt17 + charAt17 + charAt18;
                iArr = new int[charAt22 + charAt2 + charAt21];
                i3 = charAt19;
                i4 = charAt22;
                i5 = charAt17;
                i6 = charAt20;
                i36 = i60;
            }
            Unsafe unsafe = zzb;
            Object[] zze = zzhbpVar2.zze();
            Class<?> cls2 = zzhbpVar2.zza().getClass();
            int i63 = i4 + charAt2;
            int i64 = charAt + charAt;
            int[] iArr2 = new int[charAt * 3];
            Object[] objArr = new Object[i64];
            int i65 = i4;
            int i66 = i63;
            int i67 = 0;
            int i68 = 0;
            while (i36 < length) {
                int i69 = i36 + 1;
                int charAt23 = zzd.charAt(i36);
                if (charAt23 >= c) {
                    int i70 = charAt23 & 8191;
                    int i71 = i69;
                    int i72 = 13;
                    while (true) {
                        i33 = i71 + 1;
                        charAt14 = zzd.charAt(i71);
                        if (charAt14 < c) {
                            break;
                        }
                        i70 |= (charAt14 & 8191) << i72;
                        i72 += 13;
                        i71 = i33;
                    }
                    charAt23 = i70 | (charAt14 << i72);
                    i15 = i33;
                } else {
                    i15 = i69;
                }
                int i73 = i15 + 1;
                int charAt24 = zzd.charAt(i15);
                if (charAt24 >= c) {
                    int i74 = charAt24 & 8191;
                    int i75 = i73;
                    int i76 = 13;
                    while (true) {
                        i32 = i75 + 1;
                        charAt13 = zzd.charAt(i75);
                        if (charAt13 < c) {
                            break;
                        }
                        i74 |= (charAt13 & 8191) << i76;
                        i76 += 13;
                        i75 = i32;
                    }
                    charAt24 = i74 | (charAt13 << i76);
                    i16 = i32;
                } else {
                    i16 = i73;
                }
                if ((charAt24 & 1024) != 0) {
                    iArr[i67] = i68;
                    i67++;
                }
                int i77 = charAt24 & 255;
                int i78 = charAt24 & 2048;
                int i79 = length;
                if (i77 >= 51) {
                    int i80 = i16 + 1;
                    int charAt25 = zzd.charAt(i16);
                    char c2 = 55296;
                    if (charAt25 >= 55296) {
                        int i81 = 13;
                        int i82 = charAt25 & 8191;
                        int i83 = i80;
                        while (true) {
                            i31 = i83 + 1;
                            charAt12 = zzd.charAt(i83);
                            if (charAt12 < c2) {
                                break;
                            }
                            i82 |= (charAt12 & 8191) << i81;
                            i81 += 13;
                            i83 = i31;
                            c2 = 55296;
                        }
                        charAt25 = i82 | (charAt12 << i81);
                        i29 = i31;
                    } else {
                        i29 = i80;
                    }
                    int i84 = i29;
                    int i85 = i77 - 51;
                    i18 = i6;
                    if (i85 != 9 && i85 != 17) {
                        if (i85 == 12) {
                            if (zzhbpVar2.zzc() != 1 && i78 == 0) {
                                i78 = 0;
                            } else {
                                i30 = i2 + 1;
                                int i86 = i68 / 3;
                                objArr[i86 + i86 + 1] = zze[i2];
                            }
                        }
                        int i87 = charAt25 + charAt25;
                        obj = zze[i87];
                        if (!(obj instanceof Field)) {
                            zzC2 = (Field) obj;
                        } else {
                            zzC2 = zzC(cls2, (String) obj);
                            zze[i87] = zzC2;
                        }
                        i17 = i3;
                        i23 = (int) unsafe.objectFieldOffset(zzC2);
                        int i88 = i87 + 1;
                        obj2 = zze[i88];
                        if (!(obj2 instanceof Field)) {
                            zzC3 = (Field) obj2;
                        } else {
                            zzC3 = zzC(cls2, (String) obj2);
                            zze[i88] = zzC3;
                        }
                        zzhbpVar = zzhbpVar2;
                        str = zzd;
                        i22 = i2;
                        i20 = i84;
                        i19 = (int) unsafe.objectFieldOffset(zzC3);
                        i21 = 0;
                    } else {
                        i30 = i2 + 1;
                        int i89 = i68 / 3;
                        objArr[i89 + i89 + 1] = zze[i2];
                    }
                    i2 = i30;
                    int i872 = charAt25 + charAt25;
                    obj = zze[i872];
                    if (!(obj instanceof Field)) {
                    }
                    i17 = i3;
                    i23 = (int) unsafe.objectFieldOffset(zzC2);
                    int i882 = i872 + 1;
                    obj2 = zze[i882];
                    if (!(obj2 instanceof Field)) {
                    }
                    zzhbpVar = zzhbpVar2;
                    str = zzd;
                    i22 = i2;
                    i20 = i84;
                    i19 = (int) unsafe.objectFieldOffset(zzC3);
                    i21 = 0;
                } else {
                    i17 = i3;
                    i18 = i6;
                    int i90 = i2 + 1;
                    Field zzC4 = zzC(cls2, (String) zze[i2]);
                    if (i77 == 9 || i77 == 17) {
                        zzhbpVar = zzhbpVar2;
                        int i91 = i68 / 3;
                        objArr[i91 + i91 + 1] = zzC4.getType();
                    } else {
                        if (i77 != 27) {
                            if (i77 == 49) {
                                i25 = i2 + 2;
                                zzhbpVar = zzhbpVar2;
                                i24 = 1;
                            } else if (i77 != 12 && i77 != 30 && i77 != 44) {
                                if (i77 == 50) {
                                    int i92 = i2 + 2;
                                    int i93 = i65 + 1;
                                    iArr[i65] = i68;
                                    int i94 = i68 / 3;
                                    int i95 = i94 + i94;
                                    objArr[i95] = zze[i90];
                                    if (i78 != 0) {
                                        i90 = i2 + 3;
                                        objArr[i95 + 1] = zze[i92];
                                        i65 = i93;
                                    } else {
                                        i90 = i92;
                                        i65 = i93;
                                        i78 = 0;
                                    }
                                }
                                zzhbpVar = zzhbpVar2;
                            } else {
                                zzhbpVar = zzhbpVar2;
                                if (zzhbpVar2.zzc() != 1 && i78 == 0) {
                                    i78 = 0;
                                } else {
                                    i25 = i2 + 2;
                                    int i96 = i68 / 3;
                                    objArr[i96 + i96 + 1] = zze[i90];
                                    i90 = i25;
                                }
                            }
                        } else {
                            zzhbpVar = zzhbpVar2;
                            i24 = 1;
                            i25 = i2 + 2;
                        }
                        int i97 = i68 / 3;
                        objArr[i97 + i97 + i24] = zze[i90];
                        i90 = i25;
                    }
                    int objectFieldOffset = (int) unsafe.objectFieldOffset(zzC4);
                    i19 = 1048575;
                    if ((charAt24 & 4096) != 0 && i77 <= 17) {
                        int i98 = i16 + 1;
                        int charAt26 = zzd.charAt(i16);
                        if (charAt26 >= 55296) {
                            int i99 = charAt26 & 8191;
                            int i100 = 13;
                            while (true) {
                                i20 = i98 + 1;
                                charAt11 = zzd.charAt(i98);
                                if (charAt11 < 55296) {
                                    break;
                                }
                                i99 |= (charAt11 & 8191) << i100;
                                i100 += 13;
                                i98 = i20;
                            }
                            charAt26 = i99 | (charAt11 << i100);
                        } else {
                            i20 = i98;
                        }
                        int i101 = (charAt26 / 32) + i5 + i5;
                        Object obj3 = zze[i101];
                        if (obj3 instanceof Field) {
                            zzC = (Field) obj3;
                        } else {
                            zzC = zzC(cls2, (String) obj3);
                            zze[i101] = zzC;
                        }
                        str = zzd;
                        i21 = charAt26 % 32;
                        i19 = (int) unsafe.objectFieldOffset(zzC);
                    } else {
                        str = zzd;
                        i20 = i16;
                        i21 = 0;
                    }
                    if (i77 >= 18 && i77 <= 49) {
                        iArr[i66] = objectFieldOffset;
                        i66++;
                    }
                    i22 = i90;
                    i23 = objectFieldOffset;
                }
                int i102 = i68 + 1;
                iArr2[i68] = charAt23;
                int i103 = i68 + 2;
                if ((charAt24 & 512) != 0) {
                    i26 = 536870912;
                } else {
                    i26 = 0;
                }
                if ((charAt24 & 256) != 0) {
                    i27 = 268435456;
                } else {
                    i27 = 0;
                }
                if (i78 != 0) {
                    i28 = Integer.MIN_VALUE;
                } else {
                    i28 = 0;
                }
                iArr2[i102] = i23 | i27 | i26 | i28 | (i77 << 20);
                i68 += 3;
                iArr2[i103] = (i21 << 20) | i19;
                i2 = i22;
                i36 = i20;
                length = i79;
                zzhbpVar2 = zzhbpVar;
                zzd = str;
                i6 = i18;
                i3 = i17;
                c = 55296;
            }
            zzhbp zzhbpVar3 = zzhbpVar2;
            return new zzhbh(iArr2, objArr, i3, i6, zzhbpVar3.zza(), zzhbpVar3.zzc(), false, iArr, i4, i63, zzhbjVar, zzhasVar, zzhcpVar, zzgzgVar, zzhazVar);
        }
        throw null;
    }

    private static double zzn(Object obj, long j) {
        return ((Double) zzhcz.zzh(obj, j)).doubleValue();
    }

    private static float zzo(Object obj, long j) {
        return ((Float) zzhcz.zzh(obj, j)).floatValue();
    }

    private static int zzp(Object obj, long j) {
        return ((Integer) zzhcz.zzh(obj, j)).intValue();
    }

    private final int zzq(int i) {
        if (i >= this.zze && i <= this.zzf) {
            return zzs(i, 0);
        }
        return -1;
    }

    private final int zzr(int i) {
        return this.zzc[i + 2];
    }

    private final int zzs(int i, int i2) {
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

    private static int zzt(int i) {
        return (i >>> 20) & 255;
    }

    private final int zzu(int i) {
        return this.zzc[i + 1];
    }

    private static long zzv(Object obj, long j) {
        return ((Long) zzhcz.zzh(obj, j)).longValue();
    }

    private final zzgzy zzw(int i) {
        int i2 = i / 3;
        return (zzgzy) this.zzd[i2 + i2 + 1];
    }

    private final zzhby zzx(int i) {
        Object[] objArr = this.zzd;
        int i2 = i / 3;
        int i3 = i2 + i2;
        zzhby zzhbyVar = (zzhby) objArr[i3];
        if (zzhbyVar != null) {
            return zzhbyVar;
        }
        zzhby zzb2 = zzhbn.zza().zzb((Class) objArr[i3 + 1]);
        this.zzd[i3] = zzb2;
        return zzb2;
    }

    private final Object zzy(Object obj, int i, Object obj2, zzhcp zzhcpVar, Object obj3) {
        int i2 = this.zzc[i];
        Object zzh = zzhcz.zzh(obj, zzu(i) & 1048575);
        if (zzh == null || zzw(i) == null) {
            return obj2;
        }
        throw null;
    }

    private final Object zzz(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:16:0x0058. Please report as an issue. */
    @Override // com.google.android.gms.internal.ads.zzhby
    public final int zza(Object obj) {
        int i;
        int i2;
        int i3;
        int i4;
        int zzz;
        int zzA;
        int zzz2;
        int zzd;
        int zzz3;
        int zzd2;
        int zzz4;
        int size;
        int zzl;
        int zzz5;
        int zzz6;
        int zzz7;
        int size2;
        int zzk;
        int zzz8;
        int zze;
        int zzz9;
        int zzz10;
        int zzz11;
        int zzA2;
        Unsafe unsafe = zzb;
        int i5 = 1048575;
        int i6 = 1048575;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (i8 < this.zzc.length) {
            int zzu = zzu(i8);
            int zzt = zzt(zzu);
            int[] iArr = this.zzc;
            int i10 = iArr[i8];
            int i11 = iArr[i8 + 2];
            int i12 = i11 & i5;
            if (zzt <= 17) {
                if (i12 != i6) {
                    if (i12 == i5) {
                        i7 = 0;
                    } else {
                        i7 = unsafe.getInt(obj, i12);
                    }
                    i6 = i12;
                }
                i3 = 1 << (i11 >>> 20);
                i = i6;
                i2 = i7;
            } else {
                i = i6;
                i2 = i7;
                i3 = 0;
            }
            int i13 = zzu & i5;
            if (zzt >= zzgzl.zzJ.zza()) {
                zzgzl.zzW.zza();
            }
            long j = i13;
            switch (zzt) {
                case 0:
                    i4 = i8;
                    if (zzO(obj, i4, i, i2, i3)) {
                        i9 = AbstractC1320xaf50c7e8.m4354xfbe0c504(i10 << 3, 8, i9);
                    }
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 1:
                    i4 = i8;
                    if (zzO(obj, i4, i, i2, i3)) {
                        i9 = AbstractC1320xaf50c7e8.m4354xfbe0c504(i10 << 3, 4, i9);
                    }
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 2:
                    i4 = i8;
                    if (zzO(obj, i4, i, i2, i3)) {
                        long j2 = unsafe.getLong(obj, j);
                        zzz = zzgza.zzz(i10 << 3);
                        zzA = zzgza.zzA(j2);
                        i9 += zzA + zzz;
                        i8 = i4 + 3;
                        i6 = i;
                        i7 = i2;
                        i5 = 1048575;
                    } else {
                        i8 = i4 + 3;
                        i6 = i;
                        i7 = i2;
                        i5 = 1048575;
                    }
                case 3:
                    i4 = i8;
                    if (zzO(obj, i4, i, i2, i3)) {
                        long j3 = unsafe.getLong(obj, j);
                        zzz = zzgza.zzz(i10 << 3);
                        zzA = zzgza.zzA(j3);
                        i9 += zzA + zzz;
                        i8 = i4 + 3;
                        i6 = i;
                        i7 = i2;
                        i5 = 1048575;
                    } else {
                        i8 = i4 + 3;
                        i6 = i;
                        i7 = i2;
                        i5 = 1048575;
                    }
                case 4:
                    i4 = i8;
                    if (zzO(obj, i4, i, i2, i3)) {
                        long j4 = unsafe.getInt(obj, j);
                        zzz = zzgza.zzz(i10 << 3);
                        zzA = zzgza.zzA(j4);
                        i9 += zzA + zzz;
                        i8 = i4 + 3;
                        i6 = i;
                        i7 = i2;
                        i5 = 1048575;
                    } else {
                        i8 = i4 + 3;
                        i6 = i;
                        i7 = i2;
                        i5 = 1048575;
                    }
                case 5:
                    i4 = i8;
                    if (zzO(obj, i4, i, i2, i3)) {
                        i9 = AbstractC1320xaf50c7e8.m4354xfbe0c504(i10 << 3, 8, i9);
                    }
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 6:
                    i4 = i8;
                    if (zzO(obj, i4, i, i2, i3)) {
                        i9 = AbstractC1320xaf50c7e8.m4354xfbe0c504(i10 << 3, 4, i9);
                    }
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 7:
                    i4 = i8;
                    if (zzO(obj, i4, i, i2, i3)) {
                        i9 = AbstractC1320xaf50c7e8.m4354xfbe0c504(i10 << 3, 1, i9);
                    }
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 8:
                    int i14 = i8;
                    i4 = i14;
                    if (zzO(obj, i14, i, i2, i3)) {
                        int i15 = i10 << 3;
                        Object object = unsafe.getObject(obj, j);
                        if (object instanceof zzgyl) {
                            zzz2 = zzgza.zzz(i15);
                            zzd = ((zzgyl) object).zzd();
                            zzz3 = zzgza.zzz(zzd);
                            i9 += zzz3 + zzd + zzz2;
                            i8 = i4 + 3;
                            i6 = i;
                            i7 = i2;
                            i5 = 1048575;
                        } else {
                            zzz = zzgza.zzz(i15);
                            zzA = zzgza.zzy((String) object);
                            i9 += zzA + zzz;
                            i8 = i4 + 3;
                            i6 = i;
                            i7 = i2;
                            i5 = 1048575;
                        }
                    } else {
                        i8 = i4 + 3;
                        i6 = i;
                        i7 = i2;
                        i5 = 1048575;
                    }
                case 9:
                    i4 = i8;
                    if (zzO(obj, i4, i, i2, i3)) {
                        i9 += zzhca.zzh(i10, unsafe.getObject(obj, j), zzx(i4));
                    }
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 10:
                    i4 = i8;
                    if (zzO(obj, i4, i, i2, i3)) {
                        zzgyl zzgylVar = (zzgyl) unsafe.getObject(obj, j);
                        zzz2 = zzgza.zzz(i10 << 3);
                        zzd = zzgylVar.zzd();
                        zzz3 = zzgza.zzz(zzd);
                        i9 += zzz3 + zzd + zzz2;
                        i8 = i4 + 3;
                        i6 = i;
                        i7 = i2;
                        i5 = 1048575;
                    } else {
                        i8 = i4 + 3;
                        i6 = i;
                        i7 = i2;
                        i5 = 1048575;
                    }
                case 11:
                    i4 = i8;
                    if (zzO(obj, i4, i, i2, i3)) {
                        i9 = AbstractC1320xaf50c7e8.m4354xfbe0c504(unsafe.getInt(obj, j), zzgza.zzz(i10 << 3), i9);
                    }
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 12:
                    i4 = i8;
                    if (zzO(obj, i4, i, i2, i3)) {
                        long j5 = unsafe.getInt(obj, j);
                        zzz = zzgza.zzz(i10 << 3);
                        zzA = zzgza.zzA(j5);
                        i9 += zzA + zzz;
                        i8 = i4 + 3;
                        i6 = i;
                        i7 = i2;
                        i5 = 1048575;
                    } else {
                        i8 = i4 + 3;
                        i6 = i;
                        i7 = i2;
                        i5 = 1048575;
                    }
                case 13:
                    i4 = i8;
                    if (zzO(obj, i4, i, i2, i3)) {
                        i9 = AbstractC1320xaf50c7e8.m4354xfbe0c504(i10 << 3, 4, i9);
                    }
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 14:
                    i4 = i8;
                    if (zzO(obj, i4, i, i2, i3)) {
                        i9 = AbstractC1320xaf50c7e8.m4354xfbe0c504(i10 << 3, 8, i9);
                    }
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 15:
                    i4 = i8;
                    if (zzO(obj, i4, i, i2, i3)) {
                        int i16 = unsafe.getInt(obj, j);
                        i9 = AbstractC1320xaf50c7e8.m4354xfbe0c504((i16 >> 31) ^ (i16 + i16), zzgza.zzz(i10 << 3), i9);
                    }
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 16:
                    int i17 = i8;
                    i4 = i17;
                    if (zzO(obj, i17, i, i2, i3)) {
                        long j6 = unsafe.getLong(obj, j);
                        i9 += zzgza.zzA((j6 >> 63) ^ (j6 + j6)) + zzgza.zzz(i10 << 3);
                    }
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 17:
                    i4 = i8;
                    if (zzO(obj, i8, i, i2, i3)) {
                        i9 += zzgza.zzw(i10, (zzhbe) unsafe.getObject(obj, j), zzx(i4));
                    }
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 18:
                    zzd2 = zzhca.zzd(i10, (List) unsafe.getObject(obj, j), false);
                    i9 += zzd2;
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 19:
                    zzd2 = zzhca.zzb(i10, (List) unsafe.getObject(obj, j), false);
                    i9 += zzd2;
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 20:
                    List list = (List) unsafe.getObject(obj, j);
                    int i18 = zzhca.zza;
                    if (list.size() != 0) {
                        zzz4 = (zzgza.zzz(i10 << 3) * list.size()) + zzhca.zzg(list);
                        i9 += zzz4;
                        i4 = i8;
                        i8 = i4 + 3;
                        i6 = i;
                        i7 = i2;
                        i5 = 1048575;
                    }
                    zzz4 = 0;
                    i9 += zzz4;
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 21:
                    List list2 = (List) unsafe.getObject(obj, j);
                    int i19 = zzhca.zza;
                    size = list2.size();
                    if (size != 0) {
                        zzl = zzhca.zzl(list2);
                        zzz5 = zzgza.zzz(i10 << 3);
                        zzz4 = (zzz5 * size) + zzl;
                        i9 += zzz4;
                        i4 = i8;
                        i8 = i4 + 3;
                        i6 = i;
                        i7 = i2;
                        i5 = 1048575;
                    }
                    zzz4 = 0;
                    i9 += zzz4;
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 22:
                    List list3 = (List) unsafe.getObject(obj, j);
                    int i20 = zzhca.zza;
                    size = list3.size();
                    if (size != 0) {
                        zzl = zzhca.zzf(list3);
                        zzz5 = zzgza.zzz(i10 << 3);
                        zzz4 = (zzz5 * size) + zzl;
                        i9 += zzz4;
                        i4 = i8;
                        i8 = i4 + 3;
                        i6 = i;
                        i7 = i2;
                        i5 = 1048575;
                    }
                    zzz4 = 0;
                    i9 += zzz4;
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 23:
                    zzd2 = zzhca.zzd(i10, (List) unsafe.getObject(obj, j), false);
                    i9 += zzd2;
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 24:
                    zzd2 = zzhca.zzb(i10, (List) unsafe.getObject(obj, j), false);
                    i9 += zzd2;
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 25:
                    List list4 = (List) unsafe.getObject(obj, j);
                    int i21 = zzhca.zza;
                    int size3 = list4.size();
                    if (size3 != 0) {
                        zzd2 = size3 * (zzgza.zzz(i10 << 3) + 1);
                        i9 += zzd2;
                        i4 = i8;
                        i8 = i4 + 3;
                        i6 = i;
                        i7 = i2;
                        i5 = 1048575;
                    }
                    zzd2 = 0;
                    i9 += zzd2;
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 26:
                    List list5 = (List) unsafe.getObject(obj, j);
                    int i22 = zzhca.zza;
                    int size4 = list5.size();
                    if (size4 != 0) {
                        int zzz12 = zzgza.zzz(i10 << 3) * size4;
                        if (list5 instanceof zzham) {
                            zzham zzhamVar = (zzham) list5;
                            zzz4 = zzz12;
                            for (int i23 = 0; i23 < size4; i23++) {
                                Object zzf = zzhamVar.zzf(i23);
                                if (zzf instanceof zzgyl) {
                                    int zzd3 = ((zzgyl) zzf).zzd();
                                    zzz4 = AbstractC1320xaf50c7e8.m4354xfbe0c504(zzd3, zzd3, zzz4);
                                } else {
                                    zzz4 = zzgza.zzy((String) zzf) + zzz4;
                                }
                            }
                        } else {
                            zzz4 = zzz12;
                            for (int i24 = 0; i24 < size4; i24++) {
                                Object obj2 = list5.get(i24);
                                if (obj2 instanceof zzgyl) {
                                    int zzd4 = ((zzgyl) obj2).zzd();
                                    zzz4 = AbstractC1320xaf50c7e8.m4354xfbe0c504(zzd4, zzd4, zzz4);
                                } else {
                                    zzz4 = zzgza.zzy((String) obj2) + zzz4;
                                }
                            }
                        }
                        i9 += zzz4;
                        i4 = i8;
                        i8 = i4 + 3;
                        i6 = i;
                        i7 = i2;
                        i5 = 1048575;
                    }
                    zzz4 = 0;
                    i9 += zzz4;
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 27:
                    List list6 = (List) unsafe.getObject(obj, j);
                    zzhby zzx = zzx(i8);
                    int i25 = zzhca.zza;
                    int size5 = list6.size();
                    if (size5 != 0) {
                        zzz6 = zzgza.zzz(i10 << 3) * size5;
                        for (int i26 = 0; i26 < size5; i26++) {
                            Object obj3 = list6.get(i26);
                            if (obj3 instanceof zzhak) {
                                int zza2 = ((zzhak) obj3).zza();
                                zzz6 = AbstractC1320xaf50c7e8.m4354xfbe0c504(zza2, zza2, zzz6);
                            } else {
                                zzz6 = zzgza.zzx((zzhbe) obj3, zzx) + zzz6;
                            }
                        }
                        i9 += zzz6;
                        i4 = i8;
                        i8 = i4 + 3;
                        i6 = i;
                        i7 = i2;
                        i5 = 1048575;
                    }
                    zzz6 = 0;
                    i9 += zzz6;
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 28:
                    List list7 = (List) unsafe.getObject(obj, j);
                    int i27 = zzhca.zza;
                    int size6 = list7.size();
                    if (size6 == 0) {
                        zzz7 = 0;
                    } else {
                        zzz7 = zzgza.zzz(i10 << 3) * size6;
                        for (int i28 = 0; i28 < list7.size(); i28++) {
                            int zzd5 = ((zzgyl) list7.get(i28)).zzd();
                            zzz7 = AbstractC1320xaf50c7e8.m4354xfbe0c504(zzd5, zzd5, zzz7);
                        }
                    }
                    i9 += zzz7;
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 29:
                    List list8 = (List) unsafe.getObject(obj, j);
                    int i29 = zzhca.zza;
                    size2 = list8.size();
                    if (size2 != 0) {
                        zzk = zzhca.zzk(list8);
                        zzz8 = zzgza.zzz(i10 << 3);
                        zzd2 = zzk + (zzz8 * size2);
                        i9 += zzd2;
                        i4 = i8;
                        i8 = i4 + 3;
                        i6 = i;
                        i7 = i2;
                        i5 = 1048575;
                    }
                    zzd2 = 0;
                    i9 += zzd2;
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 30:
                    List list9 = (List) unsafe.getObject(obj, j);
                    int i30 = zzhca.zza;
                    size2 = list9.size();
                    if (size2 != 0) {
                        zzk = zzhca.zza(list9);
                        zzz8 = zzgza.zzz(i10 << 3);
                        zzd2 = zzk + (zzz8 * size2);
                        i9 += zzd2;
                        i4 = i8;
                        i8 = i4 + 3;
                        i6 = i;
                        i7 = i2;
                        i5 = 1048575;
                    }
                    zzd2 = 0;
                    i9 += zzd2;
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 31:
                    zzd2 = zzhca.zzb(i10, (List) unsafe.getObject(obj, j), false);
                    i9 += zzd2;
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 32:
                    zzd2 = zzhca.zzd(i10, (List) unsafe.getObject(obj, j), false);
                    i9 += zzd2;
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 33:
                    List list10 = (List) unsafe.getObject(obj, j);
                    int i31 = zzhca.zza;
                    size2 = list10.size();
                    if (size2 != 0) {
                        zzk = zzhca.zzi(list10);
                        zzz8 = zzgza.zzz(i10 << 3);
                        zzd2 = zzk + (zzz8 * size2);
                        i9 += zzd2;
                        i4 = i8;
                        i8 = i4 + 3;
                        i6 = i;
                        i7 = i2;
                        i5 = 1048575;
                    }
                    zzd2 = 0;
                    i9 += zzd2;
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 34:
                    List list11 = (List) unsafe.getObject(obj, j);
                    int i32 = zzhca.zza;
                    size2 = list11.size();
                    if (size2 != 0) {
                        zzk = zzhca.zzj(list11);
                        zzz8 = zzgza.zzz(i10 << 3);
                        zzd2 = zzk + (zzz8 * size2);
                        i9 += zzd2;
                        i4 = i8;
                        i8 = i4 + 3;
                        i6 = i;
                        i7 = i2;
                        i5 = 1048575;
                    }
                    zzd2 = 0;
                    i9 += zzd2;
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 35:
                    zze = zzhca.zze((List) unsafe.getObject(obj, j));
                    if (zze > 0) {
                        zzz9 = zzgza.zzz(i10 << 3);
                        zzz10 = zzgza.zzz(zze);
                        i9 += zzz10 + zzz9 + zze;
                    }
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 36:
                    zze = zzhca.zzc((List) unsafe.getObject(obj, j));
                    if (zze > 0) {
                        zzz9 = zzgza.zzz(i10 << 3);
                        zzz10 = zzgza.zzz(zze);
                        i9 += zzz10 + zzz9 + zze;
                    }
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 37:
                    zze = zzhca.zzg((List) unsafe.getObject(obj, j));
                    if (zze > 0) {
                        zzz9 = zzgza.zzz(i10 << 3);
                        zzz10 = zzgza.zzz(zze);
                        i9 += zzz10 + zzz9 + zze;
                    }
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 38:
                    zze = zzhca.zzl((List) unsafe.getObject(obj, j));
                    if (zze > 0) {
                        zzz9 = zzgza.zzz(i10 << 3);
                        zzz10 = zzgza.zzz(zze);
                        i9 += zzz10 + zzz9 + zze;
                    }
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 39:
                    zze = zzhca.zzf((List) unsafe.getObject(obj, j));
                    if (zze > 0) {
                        zzz9 = zzgza.zzz(i10 << 3);
                        zzz10 = zzgza.zzz(zze);
                        i9 += zzz10 + zzz9 + zze;
                    }
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 40:
                    zze = zzhca.zze((List) unsafe.getObject(obj, j));
                    if (zze > 0) {
                        zzz9 = zzgza.zzz(i10 << 3);
                        zzz10 = zzgza.zzz(zze);
                        i9 += zzz10 + zzz9 + zze;
                    }
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 41:
                    zze = zzhca.zzc((List) unsafe.getObject(obj, j));
                    if (zze > 0) {
                        zzz9 = zzgza.zzz(i10 << 3);
                        zzz10 = zzgza.zzz(zze);
                        i9 += zzz10 + zzz9 + zze;
                    }
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 42:
                    List list12 = (List) unsafe.getObject(obj, j);
                    int i33 = zzhca.zza;
                    zze = list12.size();
                    if (zze > 0) {
                        zzz9 = zzgza.zzz(i10 << 3);
                        zzz10 = zzgza.zzz(zze);
                        i9 += zzz10 + zzz9 + zze;
                    }
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 43:
                    zze = zzhca.zzk((List) unsafe.getObject(obj, j));
                    if (zze > 0) {
                        zzz9 = zzgza.zzz(i10 << 3);
                        zzz10 = zzgza.zzz(zze);
                        i9 += zzz10 + zzz9 + zze;
                    }
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 44:
                    zze = zzhca.zza((List) unsafe.getObject(obj, j));
                    if (zze > 0) {
                        zzz9 = zzgza.zzz(i10 << 3);
                        zzz10 = zzgza.zzz(zze);
                        i9 += zzz10 + zzz9 + zze;
                    }
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 45:
                    zze = zzhca.zzc((List) unsafe.getObject(obj, j));
                    if (zze > 0) {
                        zzz9 = zzgza.zzz(i10 << 3);
                        zzz10 = zzgza.zzz(zze);
                        i9 += zzz10 + zzz9 + zze;
                    }
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 46:
                    zze = zzhca.zze((List) unsafe.getObject(obj, j));
                    if (zze > 0) {
                        zzz9 = zzgza.zzz(i10 << 3);
                        zzz10 = zzgza.zzz(zze);
                        i9 += zzz10 + zzz9 + zze;
                    }
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 47:
                    zze = zzhca.zzi((List) unsafe.getObject(obj, j));
                    if (zze > 0) {
                        zzz9 = zzgza.zzz(i10 << 3);
                        zzz10 = zzgza.zzz(zze);
                        i9 += zzz10 + zzz9 + zze;
                    }
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 48:
                    zze = zzhca.zzj((List) unsafe.getObject(obj, j));
                    if (zze > 0) {
                        zzz9 = zzgza.zzz(i10 << 3);
                        zzz10 = zzgza.zzz(zze);
                        i9 += zzz10 + zzz9 + zze;
                    }
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 49:
                    List list13 = (List) unsafe.getObject(obj, j);
                    zzhby zzx2 = zzx(i8);
                    int i34 = zzhca.zza;
                    int size7 = list13.size();
                    if (size7 != 0) {
                        zzz6 = 0;
                        for (int i35 = 0; i35 < size7; i35++) {
                            zzz6 += zzgza.zzw(i10, (zzhbe) list13.get(i35), zzx2);
                        }
                        i9 += zzz6;
                        i4 = i8;
                        i8 = i4 + 3;
                        i6 = i;
                        i7 = i2;
                        i5 = 1048575;
                    }
                    zzz6 = 0;
                    i9 += zzz6;
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 50:
                    zzhay zzhayVar = (zzhay) unsafe.getObject(obj, j);
                    if (!zzhayVar.isEmpty()) {
                        Iterator it = zzhayVar.entrySet().iterator();
                        if (it.hasNext()) {
                            Map.Entry entry = (Map.Entry) it.next();
                            entry.getKey();
                            entry.getValue();
                            throw null;
                        }
                    }
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 51:
                    if (zzR(obj, i10, i8)) {
                        i9 = AbstractC1320xaf50c7e8.m4354xfbe0c504(i10 << 3, 8, i9);
                    }
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 52:
                    if (zzR(obj, i10, i8)) {
                        i9 = AbstractC1320xaf50c7e8.m4354xfbe0c504(i10 << 3, 4, i9);
                    }
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 53:
                    if (zzR(obj, i10, i8)) {
                        long zzv = zzv(obj, j);
                        zzz11 = zzgza.zzz(i10 << 3);
                        zzA2 = zzgza.zzA(zzv);
                        i9 += zzA2 + zzz11;
                    }
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 54:
                    if (zzR(obj, i10, i8)) {
                        long zzv2 = zzv(obj, j);
                        zzz11 = zzgza.zzz(i10 << 3);
                        zzA2 = zzgza.zzA(zzv2);
                        i9 += zzA2 + zzz11;
                    }
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 55:
                    if (zzR(obj, i10, i8)) {
                        long zzp = zzp(obj, j);
                        zzz11 = zzgza.zzz(i10 << 3);
                        zzA2 = zzgza.zzA(zzp);
                        i9 += zzA2 + zzz11;
                    }
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 56:
                    if (zzR(obj, i10, i8)) {
                        i9 = AbstractC1320xaf50c7e8.m4354xfbe0c504(i10 << 3, 8, i9);
                    }
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 57:
                    if (zzR(obj, i10, i8)) {
                        i9 = AbstractC1320xaf50c7e8.m4354xfbe0c504(i10 << 3, 4, i9);
                    }
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 58:
                    if (zzR(obj, i10, i8)) {
                        i9 = AbstractC1320xaf50c7e8.m4354xfbe0c504(i10 << 3, 1, i9);
                    }
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 59:
                    if (zzR(obj, i10, i8)) {
                        int i36 = i10 << 3;
                        Object object2 = unsafe.getObject(obj, j);
                        if (object2 instanceof zzgyl) {
                            zze = zzgza.zzz(i36);
                            zzz9 = ((zzgyl) object2).zzd();
                            zzz10 = zzgza.zzz(zzz9);
                            i9 += zzz10 + zzz9 + zze;
                        } else {
                            zzz11 = zzgza.zzz(i36);
                            zzA2 = zzgza.zzy((String) object2);
                            i9 += zzA2 + zzz11;
                        }
                    }
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 60:
                    if (zzR(obj, i10, i8)) {
                        zzd2 = zzhca.zzh(i10, unsafe.getObject(obj, j), zzx(i8));
                        i9 += zzd2;
                    }
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 61:
                    if (zzR(obj, i10, i8)) {
                        zzgyl zzgylVar2 = (zzgyl) unsafe.getObject(obj, j);
                        zze = zzgza.zzz(i10 << 3);
                        zzz9 = zzgylVar2.zzd();
                        zzz10 = zzgza.zzz(zzz9);
                        i9 += zzz10 + zzz9 + zze;
                    }
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 62:
                    if (zzR(obj, i10, i8)) {
                        i9 = AbstractC1320xaf50c7e8.m4354xfbe0c504(zzp(obj, j), zzgza.zzz(i10 << 3), i9);
                    }
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 63:
                    if (zzR(obj, i10, i8)) {
                        long zzp2 = zzp(obj, j);
                        zzz11 = zzgza.zzz(i10 << 3);
                        zzA2 = zzgza.zzA(zzp2);
                        i9 += zzA2 + zzz11;
                    }
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 64:
                    if (zzR(obj, i10, i8)) {
                        i9 = AbstractC1320xaf50c7e8.m4354xfbe0c504(i10 << 3, 4, i9);
                    }
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 65:
                    if (zzR(obj, i10, i8)) {
                        i9 = AbstractC1320xaf50c7e8.m4354xfbe0c504(i10 << 3, 8, i9);
                    }
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 66:
                    if (zzR(obj, i10, i8)) {
                        int zzp3 = zzp(obj, j);
                        i9 = AbstractC1320xaf50c7e8.m4354xfbe0c504((zzp3 >> 31) ^ (zzp3 + zzp3), zzgza.zzz(i10 << 3), i9);
                    }
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 67:
                    if (zzR(obj, i10, i8)) {
                        long zzv3 = zzv(obj, j);
                        zzz11 = zzgza.zzz(i10 << 3);
                        zzA2 = zzgza.zzA((zzv3 >> 63) ^ (zzv3 + zzv3));
                        i9 += zzA2 + zzz11;
                    }
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                case 68:
                    if (zzR(obj, i10, i8)) {
                        i9 += zzgza.zzw(i10, (zzhbe) unsafe.getObject(obj, j), zzx(i8));
                    }
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
                default:
                    i4 = i8;
                    i8 = i4 + 3;
                    i6 = i;
                    i7 = i2;
                    i5 = 1048575;
            }
        }
        zzhcp zzhcpVar = this.zzn;
        int zza3 = i9 + zzhcpVar.zza(zzhcpVar.zzd(obj));
        if (!this.zzh) {
            return zza3;
        }
        this.zzo.zza(obj);
        throw null;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001c. Please report as an issue. */
    @Override // com.google.android.gms.internal.ads.zzhby
    public final int zzb(Object obj) {
        int i;
        long doubleToLongBits;
        int i2;
        int floatToIntBits;
        int i3;
        int zzd;
        int i4;
        int i5 = 0;
        for (int i6 = 0; i6 < this.zzc.length; i6 += 3) {
            int zzu = zzu(i6);
            int[] iArr = this.zzc;
            int i7 = 1048575 & zzu;
            int zzt = zzt(zzu);
            int i8 = iArr[i6];
            long j = i7;
            int i9 = 37;
            switch (zzt) {
                case 0:
                    i = i5 * 53;
                    doubleToLongBits = Double.doubleToLongBits(zzhcz.zzb(obj, j));
                    byte[] bArr = zzhae.zzd;
                    i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                    break;
                case 1:
                    i2 = i5 * 53;
                    floatToIntBits = Float.floatToIntBits(zzhcz.zzc(obj, j));
                    i5 = floatToIntBits + i2;
                    break;
                case 2:
                    i = i5 * 53;
                    doubleToLongBits = zzhcz.zzf(obj, j);
                    byte[] bArr2 = zzhae.zzd;
                    i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                    break;
                case 3:
                    i = i5 * 53;
                    doubleToLongBits = zzhcz.zzf(obj, j);
                    byte[] bArr3 = zzhae.zzd;
                    i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                    break;
                case 4:
                    i3 = i5 * 53;
                    zzd = zzhcz.zzd(obj, j);
                    i5 = i3 + zzd;
                    break;
                case 5:
                    i = i5 * 53;
                    doubleToLongBits = zzhcz.zzf(obj, j);
                    byte[] bArr4 = zzhae.zzd;
                    i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                    break;
                case 6:
                    i3 = i5 * 53;
                    zzd = zzhcz.zzd(obj, j);
                    i5 = i3 + zzd;
                    break;
                case 7:
                    i2 = i5 * 53;
                    floatToIntBits = zzhae.zza(zzhcz.zzz(obj, j));
                    i5 = floatToIntBits + i2;
                    break;
                case 8:
                    i2 = i5 * 53;
                    floatToIntBits = ((String) zzhcz.zzh(obj, j)).hashCode();
                    i5 = floatToIntBits + i2;
                    break;
                case 9:
                    i4 = i5 * 53;
                    Object zzh = zzhcz.zzh(obj, j);
                    if (zzh != null) {
                        i9 = zzh.hashCode();
                    }
                    i5 = i4 + i9;
                    break;
                case 10:
                    i2 = i5 * 53;
                    floatToIntBits = zzhcz.zzh(obj, j).hashCode();
                    i5 = floatToIntBits + i2;
                    break;
                case 11:
                    i3 = i5 * 53;
                    zzd = zzhcz.zzd(obj, j);
                    i5 = i3 + zzd;
                    break;
                case 12:
                    i3 = i5 * 53;
                    zzd = zzhcz.zzd(obj, j);
                    i5 = i3 + zzd;
                    break;
                case 13:
                    i3 = i5 * 53;
                    zzd = zzhcz.zzd(obj, j);
                    i5 = i3 + zzd;
                    break;
                case 14:
                    i = i5 * 53;
                    doubleToLongBits = zzhcz.zzf(obj, j);
                    byte[] bArr5 = zzhae.zzd;
                    i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                    break;
                case 15:
                    i3 = i5 * 53;
                    zzd = zzhcz.zzd(obj, j);
                    i5 = i3 + zzd;
                    break;
                case 16:
                    i = i5 * 53;
                    doubleToLongBits = zzhcz.zzf(obj, j);
                    byte[] bArr6 = zzhae.zzd;
                    i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                    break;
                case 17:
                    i4 = i5 * 53;
                    Object zzh2 = zzhcz.zzh(obj, j);
                    if (zzh2 != null) {
                        i9 = zzh2.hashCode();
                    }
                    i5 = i4 + i9;
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
                    i2 = i5 * 53;
                    floatToIntBits = zzhcz.zzh(obj, j).hashCode();
                    i5 = floatToIntBits + i2;
                    break;
                case 50:
                    i2 = i5 * 53;
                    floatToIntBits = zzhcz.zzh(obj, j).hashCode();
                    i5 = floatToIntBits + i2;
                    break;
                case 51:
                    if (zzR(obj, i8, i6)) {
                        i = i5 * 53;
                        doubleToLongBits = Double.doubleToLongBits(zzn(obj, j));
                        byte[] bArr7 = zzhae.zzd;
                        i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zzR(obj, i8, i6)) {
                        i2 = i5 * 53;
                        floatToIntBits = Float.floatToIntBits(zzo(obj, j));
                        i5 = floatToIntBits + i2;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zzR(obj, i8, i6)) {
                        i = i5 * 53;
                        doubleToLongBits = zzv(obj, j);
                        byte[] bArr8 = zzhae.zzd;
                        i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zzR(obj, i8, i6)) {
                        i = i5 * 53;
                        doubleToLongBits = zzv(obj, j);
                        byte[] bArr9 = zzhae.zzd;
                        i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zzR(obj, i8, i6)) {
                        i3 = i5 * 53;
                        zzd = zzp(obj, j);
                        i5 = i3 + zzd;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zzR(obj, i8, i6)) {
                        i = i5 * 53;
                        doubleToLongBits = zzv(obj, j);
                        byte[] bArr10 = zzhae.zzd;
                        i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zzR(obj, i8, i6)) {
                        i3 = i5 * 53;
                        zzd = zzp(obj, j);
                        i5 = i3 + zzd;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zzR(obj, i8, i6)) {
                        i2 = i5 * 53;
                        floatToIntBits = zzhae.zza(zzS(obj, j));
                        i5 = floatToIntBits + i2;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (zzR(obj, i8, i6)) {
                        i2 = i5 * 53;
                        floatToIntBits = ((String) zzhcz.zzh(obj, j)).hashCode();
                        i5 = floatToIntBits + i2;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (zzR(obj, i8, i6)) {
                        i2 = i5 * 53;
                        floatToIntBits = zzhcz.zzh(obj, j).hashCode();
                        i5 = floatToIntBits + i2;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zzR(obj, i8, i6)) {
                        i2 = i5 * 53;
                        floatToIntBits = zzhcz.zzh(obj, j).hashCode();
                        i5 = floatToIntBits + i2;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zzR(obj, i8, i6)) {
                        i3 = i5 * 53;
                        zzd = zzp(obj, j);
                        i5 = i3 + zzd;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zzR(obj, i8, i6)) {
                        i3 = i5 * 53;
                        zzd = zzp(obj, j);
                        i5 = i3 + zzd;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zzR(obj, i8, i6)) {
                        i3 = i5 * 53;
                        zzd = zzp(obj, j);
                        i5 = i3 + zzd;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zzR(obj, i8, i6)) {
                        i = i5 * 53;
                        doubleToLongBits = zzv(obj, j);
                        byte[] bArr11 = zzhae.zzd;
                        i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zzR(obj, i8, i6)) {
                        i3 = i5 * 53;
                        zzd = zzp(obj, j);
                        i5 = i3 + zzd;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zzR(obj, i8, i6)) {
                        i = i5 * 53;
                        doubleToLongBits = zzv(obj, j);
                        byte[] bArr12 = zzhae.zzd;
                        i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zzR(obj, i8, i6)) {
                        i2 = i5 * 53;
                        floatToIntBits = zzhcz.zzh(obj, j).hashCode();
                        i5 = floatToIntBits + i2;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = this.zzn.zzd(obj).hashCode() + (i5 * 53);
        if (!this.zzh) {
            return hashCode;
        }
        this.zzo.zza(obj);
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x0cb2, code lost:
    
        if (r11 == 1048575) goto L499;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0cb4, code lost:
    
        r27.putInt(r7, r11, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0cba, code lost:
    
        r11 = r30.zzk;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0cbf, code lost:
    
        if (r11 >= r30.zzl) goto L600;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0cc1, code lost:
    
        zzy(r31, r30.zzj[r11], null, r30.zzn, r31);
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0cd4, code lost:
    
        if (r9 != 0) goto L509;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0cd8, code lost:
    
        if (r8 != r34) goto L507;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0cdf, code lost:
    
        throw com.google.android.gms.internal.ads.zzhag.zzg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0ce6, code lost:
    
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0ce2, code lost:
    
        if (r8 > r34) goto L513;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0ce4, code lost:
    
        if (r10 != r9) goto L513;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0ceb, code lost:
    
        throw com.google.android.gms.internal.ads.zzhag.zzg();
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:413:0x09d2. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:507:0x00a3. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:85:0x043a. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:104:0x097c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:417:0x0c40 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:419:0x0c50 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0969 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zzc(Object obj, byte[] bArr, int i, int i2, int i3, zzgxx zzgxxVar) {
        int i4;
        Unsafe unsafe;
        int i5;
        int i6;
        int zzq;
        zzgxx zzgxxVar2;
        int i7;
        int i8;
        int i9;
        int zzg;
        zzgzf zzgzfVar;
        int i10;
        int i11;
        int i12;
        int i13;
        zzgxx zzgxxVar3;
        int i14;
        int i15;
        int zzh;
        int i16;
        Unsafe unsafe2;
        int i17;
        int i18;
        zzgxx zzgxxVar4;
        int i19;
        int i20;
        int i21;
        zzgxx zzgxxVar5;
        int i22;
        int i23;
        Unsafe unsafe3;
        int i24;
        int i25;
        int i26;
        int i27;
        int zzf;
        int i28;
        int i29;
        int i30;
        int zzj;
        int i31;
        Object obj2 = obj;
        byte[] bArr2 = bArr;
        int i32 = i2;
        int i33 = i3;
        zzgxx zzgxxVar6 = zzgxxVar;
        int i34 = 3;
        zzD(obj);
        Unsafe unsafe4 = zzb;
        int i35 = -1;
        int i36 = i;
        int i37 = -1;
        int i38 = 0;
        int i39 = 1048575;
        int i40 = 0;
        int i41 = 0;
        while (true) {
            if (i36 < i32) {
                int i42 = i36 + 1;
                int i43 = bArr2[i36];
                if (i43 < 0) {
                    i42 = zzgxy.zzi(i43, bArr2, i42, zzgxxVar6);
                    i43 = zzgxxVar6.zza;
                }
                int i44 = i43 >>> 3;
                if (i44 > i37) {
                    zzq = (i44 < this.zze || i44 > this.zzf) ? -1 : zzs(i44, i38 / i34);
                } else {
                    zzq = zzq(i44);
                }
                i38 = zzq;
                if (i38 == i35) {
                    zzgxxVar2 = zzgxxVar6;
                    i7 = i42;
                    i4 = i33;
                    i8 = i43;
                    unsafe = unsafe4;
                    i38 = 0;
                } else {
                    int i45 = i43 & 7;
                    int[] iArr = this.zzc;
                    int i46 = iArr[i38 + 1];
                    int zzt = zzt(i46);
                    long j = i46 & 1048575;
                    int i47 = i43;
                    if (zzt <= 17) {
                        int i48 = iArr[i38 + 2];
                        int i49 = 1 << (i48 >>> 20);
                        int i50 = 1048575;
                        int i51 = i48 & 1048575;
                        if (i51 != i39) {
                            if (i39 != 1048575) {
                                unsafe4.putInt(obj2, i39, i40);
                                i50 = 1048575;
                            }
                            i10 = i51 == i50 ? 0 : unsafe4.getInt(obj2, i51);
                            i11 = i51;
                        } else {
                            i10 = i40;
                            i11 = i39;
                        }
                        switch (zzt) {
                            case 0:
                                zzgxxVar3 = zzgxxVar;
                                i13 = i44;
                                i12 = i47;
                                if (i45 == 1) {
                                    i14 = i42 + 8;
                                    i10 |= i49;
                                    zzhcz.zzr(obj2, j, Double.longBitsToDouble(zzgxy.zzn(bArr2, i42)));
                                    i32 = i2;
                                    i33 = i3;
                                    zzgxxVar6 = zzgxxVar3;
                                    i41 = i12;
                                    i39 = i11;
                                    i37 = i13;
                                    i35 = -1;
                                    i36 = i14;
                                    i40 = i10;
                                    i34 = 3;
                                    break;
                                } else {
                                    i4 = i3;
                                    i7 = i42;
                                    zzgxxVar2 = zzgxxVar3;
                                    i8 = i12;
                                    unsafe = unsafe4;
                                    i39 = i11;
                                    i44 = i13;
                                    i40 = i10;
                                    break;
                                }
                            case 1:
                                zzgxxVar3 = zzgxxVar;
                                i13 = i44;
                                i12 = i47;
                                if (i45 == 5) {
                                    i14 = i42 + 4;
                                    i10 |= i49;
                                    zzhcz.zzs(obj2, j, Float.intBitsToFloat(zzgxy.zzb(bArr2, i42)));
                                    i32 = i2;
                                    i33 = i3;
                                    zzgxxVar6 = zzgxxVar3;
                                    i41 = i12;
                                    i39 = i11;
                                    i37 = i13;
                                    i35 = -1;
                                    i36 = i14;
                                    i40 = i10;
                                    i34 = 3;
                                    break;
                                } else {
                                    i4 = i3;
                                    i7 = i42;
                                    zzgxxVar2 = zzgxxVar3;
                                    i8 = i12;
                                    unsafe = unsafe4;
                                    i39 = i11;
                                    i44 = i13;
                                    i40 = i10;
                                    break;
                                }
                            case 2:
                            case 3:
                                zzgxxVar3 = zzgxxVar;
                                i13 = i44;
                                i12 = i47;
                                if (i45 == 0) {
                                    int i52 = i10 | i49;
                                    int zzk = zzgxy.zzk(bArr2, i42, zzgxxVar3);
                                    unsafe4.putLong(obj, j, zzgxxVar3.zzb);
                                    i32 = i2;
                                    i33 = i3;
                                    zzgxxVar6 = zzgxxVar3;
                                    i41 = i12;
                                    i36 = zzk;
                                    i39 = i11;
                                    i34 = 3;
                                    i35 = -1;
                                    i40 = i52;
                                    i37 = i13;
                                    break;
                                } else {
                                    i4 = i3;
                                    i7 = i42;
                                    zzgxxVar2 = zzgxxVar3;
                                    i8 = i12;
                                    unsafe = unsafe4;
                                    i39 = i11;
                                    i44 = i13;
                                    i40 = i10;
                                    break;
                                }
                            case 4:
                            case 11:
                                zzgxxVar3 = zzgxxVar;
                                i13 = i44;
                                i12 = i47;
                                if (i45 == 0) {
                                    i15 = i10 | i49;
                                    zzh = zzgxy.zzh(bArr2, i42, zzgxxVar3);
                                    unsafe4.putInt(obj2, j, zzgxxVar3.zza);
                                    i32 = i2;
                                    i33 = i3;
                                    zzgxxVar6 = zzgxxVar3;
                                    i41 = i12;
                                    i39 = i11;
                                    i37 = i13;
                                    i35 = -1;
                                    i40 = i15;
                                    i36 = zzh;
                                    i34 = 3;
                                    break;
                                } else {
                                    i4 = i3;
                                    i7 = i42;
                                    zzgxxVar2 = zzgxxVar3;
                                    i8 = i12;
                                    unsafe = unsafe4;
                                    i39 = i11;
                                    i44 = i13;
                                    i40 = i10;
                                    break;
                                }
                            case 5:
                            case 14:
                                zzgxxVar3 = zzgxxVar;
                                i13 = i44;
                                i12 = i47;
                                if (i45 == 1) {
                                    int i53 = i49 | i10;
                                    unsafe4.putLong(obj, j, zzgxy.zzn(bArr2, i42));
                                    i32 = i2;
                                    i33 = i3;
                                    zzgxxVar6 = zzgxxVar3;
                                    i36 = i42 + 8;
                                    i41 = i12;
                                    i39 = i11;
                                    i37 = i13;
                                    i34 = 3;
                                    i40 = i53;
                                    i35 = -1;
                                    break;
                                } else {
                                    i4 = i3;
                                    i7 = i42;
                                    zzgxxVar2 = zzgxxVar3;
                                    i8 = i12;
                                    unsafe = unsafe4;
                                    i39 = i11;
                                    i44 = i13;
                                    i40 = i10;
                                    break;
                                }
                            case 6:
                            case 13:
                                zzgxxVar3 = zzgxxVar;
                                i13 = i44;
                                i12 = i47;
                                if (i45 == 5) {
                                    i14 = i42 + 4;
                                    i10 |= i49;
                                    unsafe4.putInt(obj2, j, zzgxy.zzb(bArr2, i42));
                                    i32 = i2;
                                    i33 = i3;
                                    zzgxxVar6 = zzgxxVar3;
                                    i41 = i12;
                                    i39 = i11;
                                    i37 = i13;
                                    i35 = -1;
                                    i36 = i14;
                                    i40 = i10;
                                    i34 = 3;
                                    break;
                                } else {
                                    i4 = i3;
                                    i7 = i42;
                                    zzgxxVar2 = zzgxxVar3;
                                    i8 = i12;
                                    unsafe = unsafe4;
                                    i39 = i11;
                                    i44 = i13;
                                    i40 = i10;
                                    break;
                                }
                            case 7:
                                zzgxxVar3 = zzgxxVar;
                                i13 = i44;
                                i12 = i47;
                                if (i45 == 0) {
                                    i15 = i10 | i49;
                                    zzh = zzgxy.zzk(bArr2, i42, zzgxxVar3);
                                    zzhcz.zzp(obj2, j, zzgxxVar3.zzb != 0);
                                    i32 = i2;
                                    i33 = i3;
                                    zzgxxVar6 = zzgxxVar3;
                                    i41 = i12;
                                    i39 = i11;
                                    i37 = i13;
                                    i35 = -1;
                                    i40 = i15;
                                    i36 = zzh;
                                    i34 = 3;
                                    break;
                                } else {
                                    i4 = i3;
                                    i7 = i42;
                                    zzgxxVar2 = zzgxxVar3;
                                    i8 = i12;
                                    unsafe = unsafe4;
                                    i39 = i11;
                                    i44 = i13;
                                    i40 = i10;
                                    break;
                                }
                            case 8:
                                zzgxxVar3 = zzgxxVar;
                                i13 = i44;
                                i12 = i47;
                                if (i45 == 2) {
                                    if (zzM(i46)) {
                                        i14 = zzgxy.zzh(bArr2, i42, zzgxxVar3);
                                        i16 = zzgxxVar3.zza;
                                        if (i16 < 0) {
                                            throw zzhag.zzf();
                                        }
                                        i10 |= i49;
                                        if (i16 == 0) {
                                            zzgxxVar3.zzc = new ObfuscatedString(new long[]{-2995363945289079588L}).toString();
                                            unsafe4.putObject(obj2, j, zzgxxVar3.zzc);
                                            i32 = i2;
                                            i33 = i3;
                                        } else {
                                            zzgxxVar3.zzc = zzhde.zzh(bArr2, i14, i16);
                                            i14 += i16;
                                            unsafe4.putObject(obj2, j, zzgxxVar3.zzc);
                                            i32 = i2;
                                            i33 = i3;
                                        }
                                    } else {
                                        i14 = zzgxy.zzh(bArr2, i42, zzgxxVar3);
                                        i16 = zzgxxVar3.zza;
                                        if (i16 < 0) {
                                            throw zzhag.zzf();
                                        }
                                        i10 |= i49;
                                        if (i16 == 0) {
                                            zzgxxVar3.zzc = new ObfuscatedString(new long[]{1863976998207880347L}).toString();
                                            unsafe4.putObject(obj2, j, zzgxxVar3.zzc);
                                            i32 = i2;
                                            i33 = i3;
                                        } else {
                                            zzgxxVar3.zzc = new String(bArr2, i14, i16, zzhae.zzb);
                                            i14 += i16;
                                            unsafe4.putObject(obj2, j, zzgxxVar3.zzc);
                                            i32 = i2;
                                            i33 = i3;
                                        }
                                    }
                                    zzgxxVar6 = zzgxxVar3;
                                    i41 = i12;
                                    i39 = i11;
                                    i37 = i13;
                                    i35 = -1;
                                    i36 = i14;
                                    i40 = i10;
                                    i34 = 3;
                                    break;
                                } else {
                                    i4 = i3;
                                    i7 = i42;
                                    zzgxxVar2 = zzgxxVar3;
                                    i8 = i12;
                                    unsafe = unsafe4;
                                    i39 = i11;
                                    i44 = i13;
                                    i40 = i10;
                                    break;
                                }
                            case 9:
                                zzgxxVar3 = zzgxxVar;
                                i13 = i44;
                                unsafe2 = unsafe4;
                                i12 = i47;
                                if (i45 == 2) {
                                    int i54 = i10 | i49;
                                    Object zzA = zzA(obj2, i38);
                                    unsafe4 = unsafe2;
                                    i32 = i2;
                                    int zzm = zzgxy.zzm(zzA, zzx(i38), bArr, i42, i32, zzgxxVar);
                                    zzJ(obj2, i38, zzA);
                                    i33 = i3;
                                    zzgxxVar6 = zzgxxVar3;
                                    i41 = i12;
                                    i39 = i11;
                                    i34 = 3;
                                    i35 = -1;
                                    i36 = zzm;
                                    i40 = i54;
                                    i37 = i13;
                                    break;
                                }
                                unsafe4 = unsafe2;
                                i4 = i3;
                                i7 = i42;
                                zzgxxVar2 = zzgxxVar3;
                                i8 = i12;
                                unsafe = unsafe4;
                                i39 = i11;
                                i44 = i13;
                                i40 = i10;
                                break;
                            case 10:
                                zzgxxVar3 = zzgxxVar;
                                i13 = i44;
                                unsafe2 = unsafe4;
                                i12 = i47;
                                if (i45 == 2) {
                                    int i55 = i10 | i49;
                                    bArr2 = bArr;
                                    int zza2 = zzgxy.zza(bArr2, i42, zzgxxVar3);
                                    unsafe2.putObject(obj2, j, zzgxxVar3.zzc);
                                    i32 = i2;
                                    i33 = i3;
                                    unsafe4 = unsafe2;
                                    zzgxxVar6 = zzgxxVar3;
                                    i41 = i12;
                                    i39 = i11;
                                    i37 = i13;
                                    i35 = -1;
                                    i40 = i55;
                                    i36 = zza2;
                                    i34 = 3;
                                    break;
                                } else {
                                    bArr2 = bArr;
                                    unsafe4 = unsafe2;
                                    i4 = i3;
                                    i7 = i42;
                                    zzgxxVar2 = zzgxxVar3;
                                    i8 = i12;
                                    unsafe = unsafe4;
                                    i39 = i11;
                                    i44 = i13;
                                    i40 = i10;
                                    break;
                                }
                            case 12:
                                zzgxxVar3 = zzgxxVar;
                                i13 = i44;
                                unsafe2 = unsafe4;
                                i12 = i47;
                                if (i45 == 0) {
                                    i14 = zzgxy.zzh(bArr2, i42, zzgxxVar3);
                                    int i56 = zzgxxVar3.zza;
                                    zzgzy zzw = zzw(i38);
                                    if ((i46 & Integer.MIN_VALUE) != 0 && zzw != null && !zzw.zza(i56)) {
                                        zzd(obj).zzj(i12, Long.valueOf(i56));
                                    } else {
                                        i10 |= i49;
                                        unsafe2.putInt(obj2, j, i56);
                                    }
                                    bArr2 = bArr;
                                    i32 = i2;
                                    i33 = i3;
                                    unsafe4 = unsafe2;
                                    zzgxxVar6 = zzgxxVar3;
                                    i41 = i12;
                                    i39 = i11;
                                    i37 = i13;
                                    i35 = -1;
                                    i36 = i14;
                                    i40 = i10;
                                    i34 = 3;
                                    break;
                                } else {
                                    bArr2 = bArr;
                                    unsafe4 = unsafe2;
                                    i4 = i3;
                                    i7 = i42;
                                    zzgxxVar2 = zzgxxVar3;
                                    i8 = i12;
                                    unsafe = unsafe4;
                                    i39 = i11;
                                    i44 = i13;
                                    i40 = i10;
                                    break;
                                }
                            case 15:
                                zzgxxVar3 = zzgxxVar;
                                i13 = i44;
                                i12 = i47;
                                Unsafe unsafe5 = unsafe4;
                                if (i45 == 0) {
                                    i15 = i10 | i49;
                                    zzh = zzgxy.zzh(bArr2, i42, zzgxxVar3);
                                    unsafe5.putInt(obj2, j, zzgyt.zzF(zzgxxVar3.zza));
                                    i32 = i2;
                                    i33 = i3;
                                    zzgxxVar6 = zzgxxVar3;
                                    unsafe4 = unsafe5;
                                    i41 = i12;
                                    i39 = i11;
                                    i37 = i13;
                                    i35 = -1;
                                    i40 = i15;
                                    i36 = zzh;
                                    i34 = 3;
                                    break;
                                } else {
                                    unsafe4 = unsafe5;
                                    i4 = i3;
                                    i7 = i42;
                                    zzgxxVar2 = zzgxxVar3;
                                    i8 = i12;
                                    unsafe = unsafe4;
                                    i39 = i11;
                                    i44 = i13;
                                    i40 = i10;
                                    break;
                                }
                            case 16:
                                i12 = i47;
                                Unsafe unsafe6 = unsafe4;
                                if (i45 == 0) {
                                    int i57 = i10 | i49;
                                    int zzk2 = zzgxy.zzk(bArr2, i42, zzgxxVar);
                                    unsafe6.putLong(obj, j, zzgyt.zzG(zzgxxVar.zzb));
                                    unsafe4 = unsafe6;
                                    i32 = i2;
                                    i33 = i3;
                                    zzgxxVar6 = zzgxxVar;
                                    i41 = i12;
                                    i37 = i44;
                                    i34 = 3;
                                    i35 = -1;
                                    int i58 = i11;
                                    i40 = i57;
                                    i36 = zzk2;
                                    i39 = i58;
                                    break;
                                } else {
                                    i13 = i44;
                                    unsafe4 = unsafe6;
                                    zzgxxVar3 = zzgxxVar;
                                    i4 = i3;
                                    i7 = i42;
                                    zzgxxVar2 = zzgxxVar3;
                                    i8 = i12;
                                    unsafe = unsafe4;
                                    i39 = i11;
                                    i44 = i13;
                                    i40 = i10;
                                    break;
                                }
                            default:
                                if (i45 == 3) {
                                    int i59 = i10 | i49;
                                    Object zzA2 = zzA(obj2, i38);
                                    i36 = zzgxy.zzl(zzA2, zzx(i38), bArr, i42, i2, (i44 << 3) | 4, zzgxxVar);
                                    zzJ(obj2, i38, zzA2);
                                    unsafe4 = unsafe4;
                                    zzgxxVar6 = zzgxxVar;
                                    i37 = i44;
                                    i41 = i47;
                                    i38 = i38;
                                    i39 = i11;
                                    i34 = 3;
                                    i35 = -1;
                                    i32 = i2;
                                    i33 = i3;
                                    i40 = i59;
                                    break;
                                } else {
                                    zzgxxVar3 = zzgxxVar;
                                    i13 = i44;
                                    i12 = i47;
                                    i4 = i3;
                                    i7 = i42;
                                    zzgxxVar2 = zzgxxVar3;
                                    i8 = i12;
                                    unsafe = unsafe4;
                                    i39 = i11;
                                    i44 = i13;
                                    i40 = i10;
                                    break;
                                }
                        }
                    } else {
                        zzgxx zzgxxVar7 = zzgxxVar6;
                        int i60 = i47;
                        if (zzt != 27) {
                            i17 = i39;
                            Unsafe unsafe7 = unsafe4;
                            if (zzt <= 49) {
                                int i61 = i42;
                                long j2 = i46;
                                Unsafe unsafe8 = zzb;
                                zzhad zzhadVar = (zzhad) unsafe8.getObject(obj2, j);
                                if (zzhadVar.zzc()) {
                                    unsafe3 = unsafe7;
                                } else {
                                    int size = zzhadVar.size();
                                    if (size == 0) {
                                        unsafe3 = unsafe7;
                                        i31 = 10;
                                    } else {
                                        int i62 = size + size;
                                        unsafe3 = unsafe7;
                                        i31 = i62;
                                    }
                                    zzhad zzd = zzhadVar.zzd(i31);
                                    unsafe8.putObject(obj2, j, zzd);
                                    zzhadVar = zzd;
                                }
                                switch (zzt) {
                                    case 18:
                                    case 35:
                                        i24 = i2;
                                        i18 = i44;
                                        i25 = i61;
                                        unsafe = unsafe3;
                                        zzgxxVar4 = zzgxxVar7;
                                        i60 = i60;
                                        if (i45 == 2) {
                                            zzgzc zzgzcVar = (zzgzc) zzhadVar;
                                            i19 = zzgxy.zzh(bArr2, i25, zzgxxVar4);
                                            int i63 = zzgxxVar4.zza + i19;
                                            while (i19 < i63) {
                                                zzgzcVar.zze(Double.longBitsToDouble(zzgxy.zzn(bArr2, i19)));
                                                i19 += 8;
                                            }
                                            if (i19 != i63) {
                                                throw zzhag.zzj();
                                            }
                                        } else {
                                            if (i45 == 1) {
                                                i19 = i25 + 8;
                                                zzgzc zzgzcVar2 = (zzgzc) zzhadVar;
                                                zzgzcVar2.zze(Double.longBitsToDouble(zzgxy.zzn(bArr2, i25)));
                                                while (i19 < i24) {
                                                    int zzh2 = zzgxy.zzh(bArr2, i19, zzgxxVar4);
                                                    if (i60 == zzgxxVar4.zza) {
                                                        zzgzcVar2.zze(Double.longBitsToDouble(zzgxy.zzn(bArr2, zzh2)));
                                                        i19 = zzh2 + 8;
                                                    }
                                                }
                                            }
                                            i19 = i25;
                                        }
                                        if (i19 == i25) {
                                            obj2 = obj;
                                            i33 = i3;
                                            i36 = i19;
                                            i32 = i24;
                                            i41 = i60;
                                            zzgxxVar6 = zzgxxVar4;
                                            i39 = i17;
                                            unsafe4 = unsafe;
                                            i37 = i18;
                                            i34 = 3;
                                            i35 = -1;
                                            break;
                                        } else {
                                            obj2 = obj;
                                            break;
                                        }
                                    case 19:
                                    case 36:
                                        i24 = i2;
                                        i18 = i44;
                                        i25 = i61;
                                        unsafe = unsafe3;
                                        zzgxxVar4 = zzgxxVar7;
                                        i60 = i60;
                                        if (i45 == 2) {
                                            zzgzm zzgzmVar = (zzgzm) zzhadVar;
                                            i19 = zzgxy.zzh(bArr2, i25, zzgxxVar4);
                                            int i64 = zzgxxVar4.zza + i19;
                                            while (i19 < i64) {
                                                zzgzmVar.zze(Float.intBitsToFloat(zzgxy.zzb(bArr2, i19)));
                                                i19 += 4;
                                            }
                                            if (i19 != i64) {
                                                throw zzhag.zzj();
                                            }
                                        } else {
                                            if (i45 == 5) {
                                                i19 = i25 + 4;
                                                zzgzm zzgzmVar2 = (zzgzm) zzhadVar;
                                                zzgzmVar2.zze(Float.intBitsToFloat(zzgxy.zzb(bArr2, i25)));
                                                while (i19 < i24) {
                                                    int zzh3 = zzgxy.zzh(bArr2, i19, zzgxxVar4);
                                                    if (i60 == zzgxxVar4.zza) {
                                                        zzgzmVar2.zze(Float.intBitsToFloat(zzgxy.zzb(bArr2, zzh3)));
                                                        i19 = zzh3 + 4;
                                                    }
                                                }
                                            }
                                            i19 = i25;
                                        }
                                        if (i19 == i25) {
                                        }
                                        break;
                                    case 20:
                                    case 21:
                                    case 37:
                                    case 38:
                                        i24 = i2;
                                        i18 = i44;
                                        i25 = i61;
                                        unsafe = unsafe3;
                                        zzgxxVar4 = zzgxxVar7;
                                        i60 = i60;
                                        if (i45 == 2) {
                                            zzhat zzhatVar = (zzhat) zzhadVar;
                                            i19 = zzgxy.zzh(bArr2, i25, zzgxxVar4);
                                            int i65 = zzgxxVar4.zza + i19;
                                            while (i19 < i65) {
                                                i19 = zzgxy.zzk(bArr2, i19, zzgxxVar4);
                                                zzhatVar.zzg(zzgxxVar4.zzb);
                                            }
                                            if (i19 != i65) {
                                                throw zzhag.zzj();
                                            }
                                        } else {
                                            if (i45 == 0) {
                                                zzhat zzhatVar2 = (zzhat) zzhadVar;
                                                i19 = zzgxy.zzk(bArr2, i25, zzgxxVar4);
                                                zzhatVar2.zzg(zzgxxVar4.zzb);
                                                while (i19 < i24) {
                                                    int zzh4 = zzgxy.zzh(bArr2, i19, zzgxxVar4);
                                                    if (i60 == zzgxxVar4.zza) {
                                                        i19 = zzgxy.zzk(bArr2, zzh4, zzgxxVar4);
                                                        zzhatVar2.zzg(zzgxxVar4.zzb);
                                                    }
                                                }
                                            }
                                            i19 = i25;
                                        }
                                        if (i19 == i25) {
                                        }
                                        break;
                                    case 22:
                                    case 29:
                                    case 39:
                                    case 43:
                                        i26 = i2;
                                        i27 = i38;
                                        i18 = i44;
                                        i25 = i61;
                                        unsafe = unsafe3;
                                        zzgxxVar4 = zzgxxVar7;
                                        i60 = i60;
                                        if (i45 == 2) {
                                            zzf = zzgxy.zzf(bArr2, i25, zzhadVar, zzgxxVar4);
                                            i38 = i27;
                                            i19 = zzf;
                                            i24 = i26;
                                            if (i19 == i25) {
                                            }
                                        } else if (i45 == 0) {
                                            i38 = i27;
                                            i19 = zzgxy.zzj(i60, bArr, i25, i2, zzhadVar, zzgxxVar);
                                            i24 = i26;
                                            if (i19 == i25) {
                                            }
                                        } else {
                                            i38 = i27;
                                            i24 = i26;
                                            i19 = i25;
                                            if (i19 == i25) {
                                            }
                                        }
                                        break;
                                    case 23:
                                    case 32:
                                    case 40:
                                    case 46:
                                        i26 = i2;
                                        i27 = i38;
                                        i18 = i44;
                                        i25 = i61;
                                        unsafe = unsafe3;
                                        zzgxxVar4 = zzgxxVar7;
                                        i60 = i60;
                                        if (i45 == 2) {
                                            zzhat zzhatVar3 = (zzhat) zzhadVar;
                                            zzf = zzgxy.zzh(bArr2, i25, zzgxxVar4);
                                            int i66 = zzgxxVar4.zza + zzf;
                                            while (zzf < i66) {
                                                zzhatVar3.zzg(zzgxy.zzn(bArr2, zzf));
                                                zzf += 8;
                                            }
                                            if (zzf != i66) {
                                                throw zzhag.zzj();
                                            }
                                            i38 = i27;
                                            i19 = zzf;
                                            i24 = i26;
                                            if (i19 == i25) {
                                            }
                                        } else {
                                            if (i45 == 1) {
                                                i28 = i25 + 8;
                                                zzhat zzhatVar4 = (zzhat) zzhadVar;
                                                zzhatVar4.zzg(zzgxy.zzn(bArr2, i25));
                                                while (i28 < i26) {
                                                    int zzh5 = zzgxy.zzh(bArr2, i28, zzgxxVar4);
                                                    if (i60 == zzgxxVar4.zza) {
                                                        zzhatVar4.zzg(zzgxy.zzn(bArr2, zzh5));
                                                        i28 = zzh5 + 8;
                                                    } else {
                                                        i38 = i27;
                                                        i19 = i28;
                                                        i24 = i26;
                                                        if (i19 == i25) {
                                                        }
                                                    }
                                                }
                                                i38 = i27;
                                                i19 = i28;
                                                i24 = i26;
                                                if (i19 == i25) {
                                                }
                                            }
                                            i38 = i27;
                                            i24 = i26;
                                            i19 = i25;
                                            if (i19 == i25) {
                                            }
                                        }
                                        break;
                                    case 24:
                                    case 31:
                                    case 41:
                                    case 45:
                                        i26 = i2;
                                        i27 = i38;
                                        i18 = i44;
                                        i25 = i61;
                                        unsafe = unsafe3;
                                        zzgxxVar4 = zzgxxVar7;
                                        i60 = i60;
                                        if (i45 == 2) {
                                            zzgzv zzgzvVar = (zzgzv) zzhadVar;
                                            zzf = zzgxy.zzh(bArr2, i25, zzgxxVar4);
                                            int i67 = zzgxxVar4.zza + zzf;
                                            while (zzf < i67) {
                                                zzgzvVar.zzh(zzgxy.zzb(bArr2, zzf));
                                                zzf += 4;
                                            }
                                            if (zzf != i67) {
                                                throw zzhag.zzj();
                                            }
                                            i38 = i27;
                                            i19 = zzf;
                                            i24 = i26;
                                            if (i19 == i25) {
                                            }
                                        } else {
                                            if (i45 == 5) {
                                                i28 = i25 + 4;
                                                zzgzv zzgzvVar2 = (zzgzv) zzhadVar;
                                                zzgzvVar2.zzh(zzgxy.zzb(bArr2, i25));
                                                while (i28 < i26) {
                                                    int zzh6 = zzgxy.zzh(bArr2, i28, zzgxxVar4);
                                                    if (i60 == zzgxxVar4.zza) {
                                                        zzgzvVar2.zzh(zzgxy.zzb(bArr2, zzh6));
                                                        i28 = zzh6 + 4;
                                                    } else {
                                                        i38 = i27;
                                                        i19 = i28;
                                                        i24 = i26;
                                                        if (i19 == i25) {
                                                        }
                                                    }
                                                }
                                                i38 = i27;
                                                i19 = i28;
                                                i24 = i26;
                                                if (i19 == i25) {
                                                }
                                            }
                                            i38 = i27;
                                            i24 = i26;
                                            i19 = i25;
                                            if (i19 == i25) {
                                            }
                                        }
                                        break;
                                    case 25:
                                    case 42:
                                        i26 = i2;
                                        i27 = i38;
                                        i18 = i44;
                                        i25 = i61;
                                        unsafe = unsafe3;
                                        zzgxxVar4 = zzgxxVar7;
                                        i60 = i60;
                                        if (i45 == 2) {
                                            zzgxz zzgxzVar = (zzgxz) zzhadVar;
                                            zzf = zzgxy.zzh(bArr2, i25, zzgxxVar4);
                                            int i68 = zzgxxVar4.zza + zzf;
                                            while (zzf < i68) {
                                                zzf = zzgxy.zzk(bArr2, zzf, zzgxxVar4);
                                                zzgxzVar.zze(zzgxxVar4.zzb != 0);
                                            }
                                            if (zzf != i68) {
                                                throw zzhag.zzj();
                                            }
                                        } else {
                                            if (i45 == 0) {
                                                zzgxz zzgxzVar2 = (zzgxz) zzhadVar;
                                                zzf = zzgxy.zzk(bArr2, i25, zzgxxVar4);
                                                zzgxzVar2.zze(zzgxxVar4.zzb != 0);
                                                while (zzf < i26) {
                                                    int zzh7 = zzgxy.zzh(bArr2, zzf, zzgxxVar4);
                                                    if (i60 == zzgxxVar4.zza) {
                                                        zzf = zzgxy.zzk(bArr2, zzh7, zzgxxVar4);
                                                        zzgxzVar2.zze(zzgxxVar4.zzb != 0);
                                                    }
                                                }
                                            }
                                            i38 = i27;
                                            i24 = i26;
                                            i19 = i25;
                                            if (i19 == i25) {
                                            }
                                        }
                                        i38 = i27;
                                        i19 = zzf;
                                        i24 = i26;
                                        if (i19 == i25) {
                                        }
                                        break;
                                    case 26:
                                        i26 = i2;
                                        i27 = i38;
                                        i18 = i44;
                                        i25 = i61;
                                        unsafe = unsafe3;
                                        zzgxxVar4 = zzgxxVar7;
                                        i60 = i60;
                                        if (i45 == 2) {
                                            if ((j2 & 536870912) == 0) {
                                                zzf = zzgxy.zzh(bArr2, i25, zzgxxVar4);
                                                int i69 = zzgxxVar4.zza;
                                                if (i69 < 0) {
                                                    throw zzhag.zzf();
                                                }
                                                if (i69 == 0) {
                                                    i29 = 1;
                                                    zzhadVar.add(new ObfuscatedString(new long[]{-7663803758034772219L}).toString());
                                                } else {
                                                    i29 = 1;
                                                    zzhadVar.add(new String(bArr2, zzf, i69, zzhae.zzb));
                                                    zzf += i69;
                                                }
                                                while (zzf < i26) {
                                                    int zzh8 = zzgxy.zzh(bArr2, zzf, zzgxxVar4);
                                                    if (i60 == zzgxxVar4.zza) {
                                                        zzf = zzgxy.zzh(bArr2, zzh8, zzgxxVar4);
                                                        int i70 = zzgxxVar4.zza;
                                                        if (i70 < 0) {
                                                            throw zzhag.zzf();
                                                        }
                                                        if (i70 == 0) {
                                                            long[] jArr = new long[i29];
                                                            jArr[0] = -4301785168404606646L;
                                                            zzhadVar.add(new ObfuscatedString(jArr).toString());
                                                        } else {
                                                            zzhadVar.add(new String(bArr2, zzf, i70, zzhae.zzb));
                                                            zzf += i70;
                                                        }
                                                    }
                                                }
                                            } else {
                                                zzf = zzgxy.zzh(bArr2, i25, zzgxxVar4);
                                                int i71 = zzgxxVar4.zza;
                                                if (i71 < 0) {
                                                    throw zzhag.zzf();
                                                }
                                                if (i71 == 0) {
                                                    zzhadVar.add(new ObfuscatedString(new long[]{8377466728873504162L}).toString());
                                                } else {
                                                    int i72 = zzf + i71;
                                                    if (zzhde.zzj(bArr2, zzf, i72)) {
                                                        zzhadVar.add(new String(bArr2, zzf, i71, zzhae.zzb));
                                                        zzf = i72;
                                                    } else {
                                                        throw zzhag.zzd();
                                                    }
                                                }
                                                while (zzf < i26) {
                                                    int zzh9 = zzgxy.zzh(bArr2, zzf, zzgxxVar4);
                                                    if (i60 == zzgxxVar4.zza) {
                                                        zzf = zzgxy.zzh(bArr2, zzh9, zzgxxVar4);
                                                        int i73 = zzgxxVar4.zza;
                                                        if (i73 < 0) {
                                                            throw zzhag.zzf();
                                                        }
                                                        if (i73 == 0) {
                                                            zzhadVar.add(new ObfuscatedString(new long[]{-3525375296605575282L}).toString());
                                                        } else {
                                                            int i74 = zzf + i73;
                                                            if (zzhde.zzj(bArr2, zzf, i74)) {
                                                                zzhadVar.add(new String(bArr2, zzf, i73, zzhae.zzb));
                                                                zzf = i74;
                                                            } else {
                                                                throw zzhag.zzd();
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            i38 = i27;
                                            i19 = zzf;
                                            i24 = i26;
                                            if (i19 == i25) {
                                            }
                                        } else {
                                            i38 = i27;
                                            i24 = i26;
                                            i19 = i25;
                                            if (i19 == i25) {
                                            }
                                        }
                                        break;
                                    case 27:
                                        i25 = i61;
                                        unsafe = unsafe3;
                                        if (i45 == 2) {
                                            i18 = i44;
                                            int zze = zzgxy.zze(zzx(i38), i60, bArr, i25, i2, zzhadVar, zzgxxVar);
                                            i38 = i38;
                                            i60 = i60;
                                            zzgxxVar4 = zzgxxVar7;
                                            i24 = i2;
                                            i19 = zze;
                                            if (i19 == i25) {
                                            }
                                        } else {
                                            i18 = i44;
                                            i24 = i2;
                                            zzgxxVar4 = zzgxxVar7;
                                            i60 = i60;
                                            i19 = i25;
                                            if (i19 == i25) {
                                            }
                                        }
                                        break;
                                    case 28:
                                        i30 = i2;
                                        i25 = i61;
                                        unsafe = unsafe3;
                                        if (i45 == 2) {
                                            i19 = zzgxy.zzh(bArr2, i25, zzgxxVar7);
                                            int i75 = zzgxxVar7.zza;
                                            if (i75 >= 0) {
                                                if (i75 > bArr2.length - i19) {
                                                    throw zzhag.zzj();
                                                }
                                                if (i75 == 0) {
                                                    zzhadVar.add(zzgyl.zzb);
                                                } else {
                                                    zzhadVar.add(zzgyl.zzv(bArr2, i19, i75));
                                                    i19 += i75;
                                                }
                                                while (i19 < i30) {
                                                    int zzh10 = zzgxy.zzh(bArr2, i19, zzgxxVar7);
                                                    if (i60 == zzgxxVar7.zza) {
                                                        i19 = zzgxy.zzh(bArr2, zzh10, zzgxxVar7);
                                                        int i76 = zzgxxVar7.zza;
                                                        if (i76 >= 0) {
                                                            if (i76 > bArr2.length - i19) {
                                                                throw zzhag.zzj();
                                                            }
                                                            if (i76 == 0) {
                                                                zzhadVar.add(zzgyl.zzb);
                                                            } else {
                                                                zzhadVar.add(zzgyl.zzv(bArr2, i19, i76));
                                                                i19 += i76;
                                                            }
                                                        } else {
                                                            throw zzhag.zzf();
                                                        }
                                                    } else {
                                                        i24 = i30;
                                                        i18 = i44;
                                                        zzgxxVar4 = zzgxxVar7;
                                                        i60 = i60;
                                                        if (i19 == i25) {
                                                        }
                                                    }
                                                }
                                                i24 = i30;
                                                i18 = i44;
                                                zzgxxVar4 = zzgxxVar7;
                                                i60 = i60;
                                                if (i19 == i25) {
                                                }
                                            } else {
                                                throw zzhag.zzf();
                                            }
                                        }
                                        i24 = i30;
                                        i18 = i44;
                                        zzgxxVar4 = zzgxxVar7;
                                        i60 = i60;
                                        i19 = i25;
                                        if (i19 == i25) {
                                        }
                                        break;
                                    case 30:
                                    case 44:
                                        i30 = i2;
                                        i25 = i61;
                                        unsafe = unsafe3;
                                        if (i45 == 2) {
                                            zzj = zzgxy.zzf(bArr2, i25, zzhadVar, zzgxxVar7);
                                        } else {
                                            if (i45 == 0) {
                                                zzj = zzgxy.zzj(i60, bArr, i25, i2, zzhadVar, zzgxxVar);
                                            }
                                            i24 = i30;
                                            i18 = i44;
                                            zzgxxVar4 = zzgxxVar7;
                                            i60 = i60;
                                            i19 = i25;
                                            if (i19 == i25) {
                                            }
                                        }
                                        zzhca.zzo(obj, i44, zzhadVar, zzw(i38), null, this.zzn);
                                        i24 = i30;
                                        i18 = i44;
                                        i19 = zzj;
                                        zzgxxVar4 = zzgxxVar7;
                                        i60 = i60;
                                        if (i19 == i25) {
                                        }
                                        break;
                                    case 33:
                                    case 47:
                                        i30 = i2;
                                        i25 = i61;
                                        unsafe = unsafe3;
                                        if (i45 == 2) {
                                            zzgzv zzgzvVar3 = (zzgzv) zzhadVar;
                                            i19 = zzgxy.zzh(bArr2, i25, zzgxxVar7);
                                            int i77 = zzgxxVar7.zza + i19;
                                            while (i19 < i77) {
                                                i19 = zzgxy.zzh(bArr2, i19, zzgxxVar7);
                                                zzgzvVar3.zzh(zzgyt.zzF(zzgxxVar7.zza));
                                            }
                                            if (i19 != i77) {
                                                throw zzhag.zzj();
                                            }
                                        } else {
                                            if (i45 == 0) {
                                                zzgzv zzgzvVar4 = (zzgzv) zzhadVar;
                                                i19 = zzgxy.zzh(bArr2, i25, zzgxxVar7);
                                                zzgzvVar4.zzh(zzgyt.zzF(zzgxxVar7.zza));
                                                while (i19 < i30) {
                                                    int zzh11 = zzgxy.zzh(bArr2, i19, zzgxxVar7);
                                                    if (i60 == zzgxxVar7.zza) {
                                                        i19 = zzgxy.zzh(bArr2, zzh11, zzgxxVar7);
                                                        zzgzvVar4.zzh(zzgyt.zzF(zzgxxVar7.zza));
                                                    }
                                                }
                                            }
                                            i24 = i30;
                                            i18 = i44;
                                            zzgxxVar4 = zzgxxVar7;
                                            i60 = i60;
                                            i19 = i25;
                                            if (i19 == i25) {
                                            }
                                        }
                                        i24 = i30;
                                        i18 = i44;
                                        zzgxxVar4 = zzgxxVar7;
                                        i60 = i60;
                                        if (i19 == i25) {
                                        }
                                        break;
                                    case 34:
                                    case 48:
                                        i30 = i2;
                                        i25 = i61;
                                        unsafe = unsafe3;
                                        if (i45 == 2) {
                                            zzhat zzhatVar5 = (zzhat) zzhadVar;
                                            i19 = zzgxy.zzh(bArr2, i25, zzgxxVar7);
                                            int i78 = zzgxxVar7.zza + i19;
                                            while (i19 < i78) {
                                                i19 = zzgxy.zzk(bArr2, i19, zzgxxVar7);
                                                zzhatVar5.zzg(zzgyt.zzG(zzgxxVar7.zzb));
                                            }
                                            if (i19 != i78) {
                                                throw zzhag.zzj();
                                            }
                                        } else {
                                            if (i45 == 0) {
                                                zzhat zzhatVar6 = (zzhat) zzhadVar;
                                                i19 = zzgxy.zzk(bArr2, i25, zzgxxVar7);
                                                zzhatVar6.zzg(zzgyt.zzG(zzgxxVar7.zzb));
                                                while (i19 < i30) {
                                                    int zzh12 = zzgxy.zzh(bArr2, i19, zzgxxVar7);
                                                    if (i60 == zzgxxVar7.zza) {
                                                        i19 = zzgxy.zzk(bArr2, zzh12, zzgxxVar7);
                                                        zzhatVar6.zzg(zzgyt.zzG(zzgxxVar7.zzb));
                                                    }
                                                }
                                            }
                                            i24 = i30;
                                            i18 = i44;
                                            zzgxxVar4 = zzgxxVar7;
                                            i60 = i60;
                                            i19 = i25;
                                            if (i19 == i25) {
                                            }
                                        }
                                        i24 = i30;
                                        i18 = i44;
                                        zzgxxVar4 = zzgxxVar7;
                                        i60 = i60;
                                        if (i19 == i25) {
                                        }
                                        break;
                                    default:
                                        if (i45 == 3) {
                                            int i79 = (i60 & (-8)) | 4;
                                            zzhby zzx = zzx(i38);
                                            i25 = i61;
                                            unsafe = unsafe3;
                                            i19 = zzgxy.zzc(zzx, bArr, i61, i2, i79, zzgxxVar);
                                            zzhadVar.add(zzgxxVar7.zzc);
                                            for (int i80 = i2; i19 < i80; i80 = i80) {
                                                int zzh13 = zzgxy.zzh(bArr2, i19, zzgxxVar7);
                                                if (i60 == zzgxxVar7.zza) {
                                                    i19 = zzgxy.zzc(zzx, bArr, zzh13, i2, i79, zzgxxVar);
                                                    zzhadVar.add(zzgxxVar7.zzc);
                                                } else {
                                                    i30 = i80;
                                                    i24 = i30;
                                                    i18 = i44;
                                                    zzgxxVar4 = zzgxxVar7;
                                                    i60 = i60;
                                                    if (i19 == i25) {
                                                    }
                                                }
                                            }
                                            i30 = i80;
                                            i24 = i30;
                                            i18 = i44;
                                            zzgxxVar4 = zzgxxVar7;
                                            i60 = i60;
                                            if (i19 == i25) {
                                            }
                                        } else {
                                            i25 = i61;
                                            unsafe = unsafe3;
                                            i24 = i2;
                                            i18 = i44;
                                            zzgxxVar4 = zzgxxVar7;
                                            i60 = i60;
                                            i19 = i25;
                                            if (i19 == i25) {
                                            }
                                        }
                                        break;
                                }
                            } else {
                                unsafe = unsafe7;
                                int i81 = i42;
                                i18 = i44;
                                zzgxxVar4 = zzgxxVar7;
                                i60 = i60;
                                if (zzt != 50) {
                                    obj2 = obj;
                                    Unsafe unsafe9 = zzb;
                                    long j3 = iArr[i38 + 2] & 1048575;
                                    switch (zzt) {
                                        case 51:
                                            i20 = i38;
                                            i8 = i60;
                                            i21 = i81;
                                            i44 = i18;
                                            zzgxxVar2 = zzgxxVar;
                                            if (i45 == 1) {
                                                i36 = i21 + 8;
                                                unsafe9.putObject(obj2, j, Double.valueOf(Double.longBitsToDouble(zzgxy.zzn(bArr2, i21))));
                                                unsafe9.putInt(obj2, j3, i44);
                                                if (i36 == i21) {
                                                    i32 = i2;
                                                    i33 = i3;
                                                    i41 = i8;
                                                    i37 = i44;
                                                    zzgxxVar6 = zzgxxVar2;
                                                    i39 = i17;
                                                    i38 = i20;
                                                    unsafe4 = unsafe;
                                                    i34 = 3;
                                                    i35 = -1;
                                                    break;
                                                } else {
                                                    i4 = i3;
                                                    i7 = i36;
                                                    i39 = i17;
                                                    i38 = i20;
                                                    break;
                                                }
                                            }
                                            i36 = i21;
                                            if (i36 == i21) {
                                            }
                                        case 52:
                                            i20 = i38;
                                            i8 = i60;
                                            i21 = i81;
                                            i44 = i18;
                                            zzgxxVar2 = zzgxxVar;
                                            if (i45 == 5) {
                                                i36 = i21 + 4;
                                                unsafe9.putObject(obj2, j, Float.valueOf(Float.intBitsToFloat(zzgxy.zzb(bArr2, i21))));
                                                unsafe9.putInt(obj2, j3, i44);
                                                if (i36 == i21) {
                                                }
                                            }
                                            i36 = i21;
                                            if (i36 == i21) {
                                            }
                                            break;
                                        case 53:
                                        case 54:
                                            i20 = i38;
                                            i8 = i60;
                                            i21 = i81;
                                            i44 = i18;
                                            zzgxxVar2 = zzgxxVar;
                                            if (i45 == 0) {
                                                i36 = zzgxy.zzk(bArr2, i21, zzgxxVar2);
                                                unsafe9.putObject(obj2, j, Long.valueOf(zzgxxVar2.zzb));
                                                unsafe9.putInt(obj2, j3, i44);
                                                if (i36 == i21) {
                                                }
                                            }
                                            i36 = i21;
                                            if (i36 == i21) {
                                            }
                                            break;
                                        case 55:
                                        case 62:
                                            i20 = i38;
                                            i8 = i60;
                                            i21 = i81;
                                            i44 = i18;
                                            zzgxxVar2 = zzgxxVar;
                                            if (i45 == 0) {
                                                i36 = zzgxy.zzh(bArr2, i21, zzgxxVar2);
                                                unsafe9.putObject(obj2, j, Integer.valueOf(zzgxxVar2.zza));
                                                unsafe9.putInt(obj2, j3, i44);
                                                if (i36 == i21) {
                                                }
                                            }
                                            i36 = i21;
                                            if (i36 == i21) {
                                            }
                                            break;
                                        case 56:
                                        case 65:
                                            i20 = i38;
                                            i8 = i60;
                                            i21 = i81;
                                            i44 = i18;
                                            zzgxxVar2 = zzgxxVar;
                                            if (i45 == 1) {
                                                i36 = i21 + 8;
                                                unsafe9.putObject(obj2, j, Long.valueOf(zzgxy.zzn(bArr2, i21)));
                                                unsafe9.putInt(obj2, j3, i44);
                                                if (i36 == i21) {
                                                }
                                            }
                                            i36 = i21;
                                            if (i36 == i21) {
                                            }
                                            break;
                                        case 57:
                                        case 64:
                                            i20 = i38;
                                            i8 = i60;
                                            i21 = i81;
                                            i44 = i18;
                                            zzgxxVar2 = zzgxxVar;
                                            if (i45 == 5) {
                                                i36 = i21 + 4;
                                                unsafe9.putObject(obj2, j, Integer.valueOf(zzgxy.zzb(bArr2, i21)));
                                                unsafe9.putInt(obj2, j3, i44);
                                                if (i36 == i21) {
                                                }
                                            }
                                            i36 = i21;
                                            if (i36 == i21) {
                                            }
                                            break;
                                        case 58:
                                            i20 = i38;
                                            i8 = i60;
                                            i21 = i81;
                                            i44 = i18;
                                            zzgxxVar2 = zzgxxVar;
                                            if (i45 == 0) {
                                                i36 = zzgxy.zzk(bArr2, i21, zzgxxVar2);
                                                unsafe9.putObject(obj2, j, Boolean.valueOf(zzgxxVar2.zzb != 0));
                                                unsafe9.putInt(obj2, j3, i44);
                                                if (i36 == i21) {
                                                }
                                            }
                                            i36 = i21;
                                            if (i36 == i21) {
                                            }
                                            break;
                                        case 59:
                                            i20 = i38;
                                            i21 = i81;
                                            zzgxxVar2 = zzgxxVar;
                                            i8 = i60;
                                            i44 = i18;
                                            if (i45 == 2) {
                                                int zzh14 = zzgxy.zzh(bArr2, i21, zzgxxVar2);
                                                int i82 = zzgxxVar2.zza;
                                                if (i82 == 0) {
                                                    unsafe9.putObject(obj2, j, new ObfuscatedString(new long[]{791896281114868817L}).toString());
                                                } else {
                                                    int i83 = zzh14 + i82;
                                                    if ((i46 & 536870912) != 0 && !zzhde.zzj(bArr2, zzh14, i83)) {
                                                        throw zzhag.zzd();
                                                    }
                                                    unsafe9.putObject(obj2, j, new String(bArr2, zzh14, i82, zzhae.zzb));
                                                    zzh14 = i83;
                                                }
                                                unsafe9.putInt(obj2, j3, i44);
                                                i36 = zzh14;
                                                if (i36 == i21) {
                                                }
                                            }
                                            i36 = i21;
                                            if (i36 == i21) {
                                            }
                                            break;
                                        case 60:
                                            i21 = i81;
                                            if (i45 == 2) {
                                                Object zzB = zzB(obj2, i18, i38);
                                                i44 = i18;
                                                zzgxxVar2 = zzgxxVar;
                                                int zzm2 = zzgxy.zzm(zzB, zzx(i38), bArr, i21, i2, zzgxxVar);
                                                zzK(obj2, i44, i38, zzB);
                                                i8 = i60;
                                                i36 = zzm2;
                                                i20 = i38;
                                                if (i36 == i21) {
                                                }
                                            } else {
                                                i44 = i18;
                                                zzgxxVar2 = zzgxxVar;
                                                i8 = i60;
                                                i20 = i38;
                                                i36 = i21;
                                                if (i36 == i21) {
                                                }
                                            }
                                            break;
                                        case 61:
                                            zzgxxVar5 = zzgxxVar;
                                            i22 = i60;
                                            i21 = i81;
                                            i23 = i18;
                                            if (i45 == 2) {
                                                int zza3 = zzgxy.zza(bArr2, i21, zzgxxVar5);
                                                unsafe9.putObject(obj2, j, zzgxxVar5.zzc);
                                                unsafe9.putInt(obj2, j3, i23);
                                                i44 = i23;
                                                zzgxxVar2 = zzgxxVar5;
                                                i36 = zza3;
                                                i20 = i38;
                                                i8 = i22;
                                                if (i36 == i21) {
                                                }
                                            }
                                            i44 = i23;
                                            zzgxxVar2 = zzgxxVar5;
                                            i20 = i38;
                                            i8 = i22;
                                            i36 = i21;
                                            if (i36 == i21) {
                                            }
                                            break;
                                        case 63:
                                            zzgxxVar5 = zzgxxVar;
                                            i22 = i60;
                                            i21 = i81;
                                            i23 = i18;
                                            if (i45 == 0) {
                                                i36 = zzgxy.zzh(bArr2, i21, zzgxxVar5);
                                                int i84 = zzgxxVar5.zza;
                                                zzgzy zzw2 = zzw(i38);
                                                if (zzw2 != null && !zzw2.zza(i84)) {
                                                    zzd(obj).zzj(i22, Long.valueOf(i84));
                                                } else {
                                                    unsafe9.putObject(obj2, j, Integer.valueOf(i84));
                                                    unsafe9.putInt(obj2, j3, i23);
                                                }
                                                i44 = i23;
                                                zzgxxVar2 = zzgxxVar5;
                                                i20 = i38;
                                                i8 = i22;
                                                if (i36 == i21) {
                                                }
                                            }
                                            i44 = i23;
                                            zzgxxVar2 = zzgxxVar5;
                                            i20 = i38;
                                            i8 = i22;
                                            i36 = i21;
                                            if (i36 == i21) {
                                            }
                                            break;
                                        case 66:
                                            zzgxxVar5 = zzgxxVar;
                                            i22 = i60;
                                            i23 = i18;
                                            if (i45 == 0) {
                                                i21 = i81;
                                                i36 = zzgxy.zzh(bArr2, i21, zzgxxVar5);
                                                unsafe9.putObject(obj2, j, Integer.valueOf(zzgyt.zzF(zzgxxVar5.zza)));
                                                unsafe9.putInt(obj2, j3, i23);
                                                i44 = i23;
                                                zzgxxVar2 = zzgxxVar5;
                                                i20 = i38;
                                                i8 = i22;
                                                if (i36 == i21) {
                                                }
                                            } else {
                                                i21 = i81;
                                                i44 = i23;
                                                zzgxxVar2 = zzgxxVar5;
                                                i20 = i38;
                                                i8 = i22;
                                                i36 = i21;
                                                if (i36 == i21) {
                                                }
                                            }
                                            break;
                                        case 67:
                                            i22 = i60;
                                            if (i45 == 0) {
                                                i36 = zzgxy.zzk(bArr2, i81, zzgxxVar);
                                                unsafe9.putObject(obj2, j, Long.valueOf(zzgyt.zzG(zzgxxVar.zzb)));
                                                unsafe9.putInt(obj2, j3, i18);
                                                i44 = i18;
                                                zzgxxVar2 = zzgxxVar;
                                                i20 = i38;
                                                i21 = i81;
                                                i8 = i22;
                                                if (i36 == i21) {
                                                }
                                            } else {
                                                i44 = i18;
                                                zzgxxVar2 = zzgxxVar;
                                                i20 = i38;
                                                i21 = i81;
                                                i8 = i22;
                                                i36 = i21;
                                                if (i36 == i21) {
                                                }
                                            }
                                            break;
                                        case 68:
                                            if (i45 == 3) {
                                                Object zzB2 = zzB(obj2, i18, i38);
                                                i21 = i81;
                                                i22 = i60;
                                                i36 = zzgxy.zzl(zzB2, zzx(i38), bArr, i21, i2, (i60 & (-8)) | 4, zzgxxVar);
                                                zzK(obj2, i18, i38, zzB2);
                                                i44 = i18;
                                                zzgxxVar2 = zzgxxVar;
                                                i20 = i38;
                                                i8 = i22;
                                                if (i36 == i21) {
                                                }
                                            }
                                            break;
                                        default:
                                            zzgxxVar2 = zzgxxVar;
                                            i20 = i38;
                                            i8 = i60;
                                            i21 = i81;
                                            i44 = i18;
                                            i36 = i21;
                                            if (i36 == i21) {
                                            }
                                            break;
                                    }
                                } else {
                                    if (i45 == 2) {
                                        Unsafe unsafe10 = zzb;
                                        Object zzz = zzz(i38);
                                        Object object = unsafe10.getObject(obj, j);
                                        if (zzhaz.zza(object)) {
                                            zzhay zzb2 = zzhay.zza().zzb();
                                            zzhaz.zzb(zzb2, object);
                                            unsafe10.putObject(obj, j, zzb2);
                                        }
                                        throw null;
                                    }
                                    i19 = i81;
                                    obj2 = obj;
                                }
                            }
                        } else if (i45 == 2) {
                            zzhad zzhadVar2 = (zzhad) unsafe4.getObject(obj2, j);
                            if (!zzhadVar2.zzc()) {
                                int size2 = zzhadVar2.size();
                                zzhadVar2 = zzhadVar2.zzd(size2 == 0 ? 10 : size2 + size2);
                                unsafe4.putObject(obj2, j, zzhadVar2);
                            }
                            i36 = zzgxy.zze(zzx(i38), i60, bArr, i42, i2, zzhadVar2, zzgxxVar);
                            i38 = i38;
                            unsafe4 = unsafe4;
                            i37 = i44;
                            zzgxxVar6 = zzgxxVar7;
                            i41 = i60;
                            i39 = i39;
                            i34 = 3;
                            i35 = -1;
                            i32 = i2;
                            i33 = i3;
                        } else {
                            i17 = i39;
                            unsafe = unsafe4;
                            i19 = i42;
                            zzgxxVar4 = zzgxxVar7;
                            i18 = i44;
                        }
                        i4 = i3;
                        i7 = i19;
                        i8 = i60;
                        zzgxxVar2 = zzgxxVar4;
                        i39 = i17;
                        i44 = i18;
                    }
                }
                if (i8 != i4 || i4 == 0) {
                    if (this.zzh && (zzgzfVar = zzgxxVar2.zzd) != zzgzf.zza) {
                        if (zzgzfVar.zzc(this.zzg, i44) == null) {
                            i9 = i8;
                            zzg = zzgxy.zzg(i8, bArr, i7, i2, zzd(obj), zzgxxVar);
                        } else {
                            throw null;
                        }
                    } else {
                        i9 = i8;
                        zzg = zzgxy.zzg(i9, bArr, i7, i2, zzd(obj), zzgxxVar);
                    }
                    i32 = i2;
                    i41 = i9;
                    i33 = i4;
                    i37 = i44;
                    zzgxxVar6 = zzgxxVar2;
                    unsafe4 = unsafe;
                    i34 = 3;
                    i35 = -1;
                    i36 = zzg;
                } else {
                    i36 = i7;
                    i6 = i8;
                    i5 = i40;
                }
            } else {
                i4 = i33;
                unsafe = unsafe4;
                i5 = i40;
                i6 = i41;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhby
    public final Object zze() {
        return ((zzgzu) this.zzg).zzaD();
    }

    @Override // com.google.android.gms.internal.ads.zzhby
    public final void zzf(Object obj) {
        if (zzQ(obj)) {
            if (obj instanceof zzgzu) {
                zzgzu zzgzuVar = (zzgzu) obj;
                zzgzuVar.zzaV(Integer.MAX_VALUE);
                zzgzuVar.zza = 0;
                zzgzuVar.zzaT();
            }
            int[] iArr = this.zzc;
            for (int i = 0; i < iArr.length; i += 3) {
                int zzu = zzu(i);
                int i2 = 1048575 & zzu;
                int zzt = zzt(zzu);
                long j = i2;
                if (zzt != 9) {
                    if (zzt != 60 && zzt != 68) {
                        switch (zzt) {
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
                                this.zzm.zzb(obj, j);
                                break;
                            case 50:
                                Unsafe unsafe = zzb;
                                Object object = unsafe.getObject(obj, j);
                                if (object != null) {
                                    ((zzhay) object).zzc();
                                    unsafe.putObject(obj, j, object);
                                    break;
                                } else {
                                    break;
                                }
                        }
                    } else if (zzR(obj, this.zzc[i], i)) {
                        zzx(i).zzf(zzb.getObject(obj, j));
                    }
                }
                if (zzN(obj, i)) {
                    zzx(i).zzf(zzb.getObject(obj, j));
                }
            }
            this.zzn.zzm(obj);
            if (this.zzh) {
                this.zzo.zze(obj);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhby
    public final void zzg(Object obj, Object obj2) {
        zzD(obj);
        obj2.getClass();
        for (int i = 0; i < this.zzc.length; i += 3) {
            int zzu = zzu(i);
            int i2 = 1048575 & zzu;
            int[] iArr = this.zzc;
            int zzt = zzt(zzu);
            int i3 = iArr[i];
            long j = i2;
            switch (zzt) {
                case 0:
                    if (zzN(obj2, i)) {
                        zzhcz.zzr(obj, j, zzhcz.zzb(obj2, j));
                        zzH(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzN(obj2, i)) {
                        zzhcz.zzs(obj, j, zzhcz.zzc(obj2, j));
                        zzH(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zzN(obj2, i)) {
                        zzhcz.zzu(obj, j, zzhcz.zzf(obj2, j));
                        zzH(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zzN(obj2, i)) {
                        zzhcz.zzu(obj, j, zzhcz.zzf(obj2, j));
                        zzH(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zzN(obj2, i)) {
                        zzhcz.zzt(obj, j, zzhcz.zzd(obj2, j));
                        zzH(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zzN(obj2, i)) {
                        zzhcz.zzu(obj, j, zzhcz.zzf(obj2, j));
                        zzH(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zzN(obj2, i)) {
                        zzhcz.zzt(obj, j, zzhcz.zzd(obj2, j));
                        zzH(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zzN(obj2, i)) {
                        zzhcz.zzp(obj, j, zzhcz.zzz(obj2, j));
                        zzH(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zzN(obj2, i)) {
                        zzhcz.zzv(obj, j, zzhcz.zzh(obj2, j));
                        zzH(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    zzE(obj, obj2, i);
                    break;
                case 10:
                    if (zzN(obj2, i)) {
                        zzhcz.zzv(obj, j, zzhcz.zzh(obj2, j));
                        zzH(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zzN(obj2, i)) {
                        zzhcz.zzt(obj, j, zzhcz.zzd(obj2, j));
                        zzH(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zzN(obj2, i)) {
                        zzhcz.zzt(obj, j, zzhcz.zzd(obj2, j));
                        zzH(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zzN(obj2, i)) {
                        zzhcz.zzt(obj, j, zzhcz.zzd(obj2, j));
                        zzH(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zzN(obj2, i)) {
                        zzhcz.zzu(obj, j, zzhcz.zzf(obj2, j));
                        zzH(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zzN(obj2, i)) {
                        zzhcz.zzt(obj, j, zzhcz.zzd(obj2, j));
                        zzH(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zzN(obj2, i)) {
                        zzhcz.zzu(obj, j, zzhcz.zzf(obj2, j));
                        zzH(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    zzE(obj, obj2, i);
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
                    this.zzm.zzc(obj, obj2, j);
                    break;
                case 50:
                    int i4 = zzhca.zza;
                    zzhcz.zzv(obj, j, zzhaz.zzb(zzhcz.zzh(obj, j), zzhcz.zzh(obj2, j)));
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
                    if (zzR(obj2, i3, i)) {
                        zzhcz.zzv(obj, j, zzhcz.zzh(obj2, j));
                        zzI(obj, i3, i);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    zzF(obj, obj2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zzR(obj2, i3, i)) {
                        zzhcz.zzv(obj, j, zzhcz.zzh(obj2, j));
                        zzI(obj, i3, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    zzF(obj, obj2, i);
                    break;
            }
        }
        zzhca.zzq(this.zzn, obj, obj2);
        if (!this.zzh) {
            return;
        }
        this.zzo.zza(obj2);
        throw null;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x00c3. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:29:0x064a  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0625 A[Catch: all -> 0x00f7, TryCatch #4 {all -> 0x00f7, blocks: (B:16:0x00d5, B:35:0x0620, B:37:0x0625, B:38:0x062a), top: B:15:0x00d5 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0630 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0656 A[LOOP:3: B:50:0x0652->B:52:0x0656, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x066a  */
    @Override // com.google.android.gms.internal.ads.zzhby
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzh(Object obj, zzhbq zzhbqVar, zzgzf zzgzfVar) {
        Object obj2;
        zzhcp zzhcpVar;
        Object obj3;
        int i;
        zzhcp zzhcpVar2;
        Object obj4;
        zzgzg zzgzgVar;
        zzgzf zzgzfVar2;
        Object obj5;
        Object obj6 = obj;
        zzgzf zzgzfVar3 = zzgzfVar;
        zzgzfVar.getClass();
        zzD(obj);
        zzhcp zzhcpVar3 = this.zzn;
        zzgzg zzgzgVar2 = this.zzo;
        Object obj7 = null;
        zzgzk zzgzkVar = null;
        while (true) {
            try {
                int zzc = zzhbqVar.zzc();
                int zzq = zzq(zzc);
                if (zzq >= 0) {
                    zzhcpVar = zzhcpVar3;
                    obj3 = obj6;
                    try {
                        int zzu = zzu(zzq);
                        try {
                        } catch (zzhaf unused) {
                            obj2 = obj7;
                            zzgzgVar = zzgzgVar2;
                            zzgzfVar2 = zzgzfVar3;
                        }
                        switch (zzt(zzu)) {
                            case 0:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhcz.zzr(obj3, zzu & 1048575, zzhbqVar.zza());
                                zzH(obj3, zzq);
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 1:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhcz.zzs(obj3, zzu & 1048575, zzhbqVar.zzb());
                                zzH(obj3, zzq);
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 2:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhcz.zzu(obj3, zzu & 1048575, zzhbqVar.zzl());
                                zzH(obj3, zzq);
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 3:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhcz.zzu(obj3, zzu & 1048575, zzhbqVar.zzo());
                                zzH(obj3, zzq);
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 4:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhcz.zzt(obj3, zzu & 1048575, zzhbqVar.zzg());
                                zzH(obj3, zzq);
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 5:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhcz.zzu(obj3, zzu & 1048575, zzhbqVar.zzk());
                                zzH(obj3, zzq);
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 6:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhcz.zzt(obj3, zzu & 1048575, zzhbqVar.zzf());
                                zzH(obj3, zzq);
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 7:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhcz.zzp(obj3, zzu & 1048575, zzhbqVar.zzN());
                                zzH(obj3, zzq);
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 8:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzG(obj3, zzu, zzhbqVar);
                                zzH(obj3, zzq);
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 9:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhbe zzhbeVar = (zzhbe) zzA(obj3, zzq);
                                zzhbqVar.zzu(zzhbeVar, zzx(zzq), zzgzfVar2);
                                zzJ(obj3, zzq, zzhbeVar);
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 10:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhcz.zzv(obj3, zzu & 1048575, zzhbqVar.zzp());
                                zzH(obj3, zzq);
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 11:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhcz.zzt(obj3, zzu & 1048575, zzhbqVar.zzj());
                                zzH(obj3, zzq);
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 12:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                int zze = zzhbqVar.zze();
                                zzgzy zzw = zzw(zzq);
                                if (zzw != null && !zzw.zza(zze)) {
                                    obj7 = zzhca.zzp(obj3, zzc, zze, obj5, zzhcpVar);
                                    obj6 = obj3;
                                    zzgzgVar2 = zzgzgVar;
                                    zzgzfVar3 = zzgzfVar2;
                                    zzhcpVar3 = zzhcpVar;
                                }
                                zzhcz.zzt(obj3, zzu & 1048575, zze);
                                zzH(obj3, zzq);
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                                break;
                            case 13:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhcz.zzt(obj3, zzu & 1048575, zzhbqVar.zzh());
                                zzH(obj3, zzq);
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 14:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhcz.zzu(obj3, zzu & 1048575, zzhbqVar.zzm());
                                zzH(obj3, zzq);
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 15:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhcz.zzt(obj3, zzu & 1048575, zzhbqVar.zzi());
                                zzH(obj3, zzq);
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 16:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhcz.zzu(obj3, zzu & 1048575, zzhbqVar.zzn());
                                zzH(obj3, zzq);
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 17:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhbe zzhbeVar2 = (zzhbe) zzA(obj3, zzq);
                                zzhbqVar.zzt(zzhbeVar2, zzx(zzq), zzgzfVar2);
                                zzJ(obj3, zzq, zzhbeVar2);
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 18:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhbqVar.zzx(this.zzm.zza(obj3, zzu & 1048575));
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 19:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhbqVar.zzB(this.zzm.zza(obj3, zzu & 1048575));
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 20:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhbqVar.zzE(this.zzm.zza(obj3, zzu & 1048575));
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 21:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhbqVar.zzM(this.zzm.zza(obj3, zzu & 1048575));
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 22:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhbqVar.zzD(this.zzm.zza(obj3, zzu & 1048575));
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 23:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhbqVar.zzA(this.zzm.zza(obj3, zzu & 1048575));
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 24:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhbqVar.zzz(this.zzm.zza(obj3, zzu & 1048575));
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 25:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhbqVar.zzv(this.zzm.zza(obj3, zzu & 1048575));
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 26:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                if (zzM(zzu)) {
                                    ((zzgyu) zzhbqVar).zzK(this.zzm.zza(obj3, zzu & 1048575), true);
                                } else {
                                    ((zzgyu) zzhbqVar).zzK(this.zzm.zza(obj3, zzu & 1048575), false);
                                }
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 27:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhbqVar.zzF(this.zzm.zza(obj3, zzu & 1048575), zzx(zzq), zzgzfVar2);
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 28:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhbqVar.zzw(this.zzm.zza(obj3, zzu & 1048575));
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 29:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhbqVar.zzL(this.zzm.zza(obj3, zzu & 1048575));
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 30:
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                List zza2 = this.zzm.zza(obj3, zzu & 1048575);
                                zzhbqVar.zzy(zza2);
                                obj7 = zzhca.zzo(obj, zzc, zza2, zzw(zzq), obj7, zzhcpVar);
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 31:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhbqVar.zzG(this.zzm.zza(obj3, zzu & 1048575));
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 32:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhbqVar.zzH(this.zzm.zza(obj3, zzu & 1048575));
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 33:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhbqVar.zzI(this.zzm.zza(obj3, zzu & 1048575));
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 34:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhbqVar.zzJ(this.zzm.zza(obj3, zzu & 1048575));
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 35:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhbqVar.zzx(this.zzm.zza(obj3, zzu & 1048575));
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 36:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhbqVar.zzB(this.zzm.zza(obj3, zzu & 1048575));
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 37:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhbqVar.zzE(this.zzm.zza(obj3, zzu & 1048575));
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 38:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhbqVar.zzM(this.zzm.zza(obj3, zzu & 1048575));
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 39:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhbqVar.zzD(this.zzm.zza(obj3, zzu & 1048575));
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 40:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhbqVar.zzA(this.zzm.zza(obj3, zzu & 1048575));
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 41:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhbqVar.zzz(this.zzm.zza(obj3, zzu & 1048575));
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 42:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhbqVar.zzv(this.zzm.zza(obj3, zzu & 1048575));
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 43:
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                zzhbqVar.zzL(this.zzm.zza(obj3, zzu & 1048575));
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 44:
                                List zza3 = this.zzm.zza(obj3, zzu & 1048575);
                                zzhbqVar.zzy(zza3);
                                obj2 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                try {
                                    obj7 = zzhca.zzo(obj, zzc, zza3, zzw(zzq), obj2, zzhcpVar);
                                } catch (zzhaf unused2) {
                                    obj7 = obj2;
                                    zzhcpVar.zzq(zzhbqVar);
                                    if (obj7 == null) {
                                    }
                                    if (!zzhcpVar.zzp(obj7, zzhbqVar)) {
                                    }
                                    obj6 = obj3;
                                    zzgzgVar2 = zzgzgVar;
                                    zzgzfVar3 = zzgzfVar2;
                                    zzhcpVar3 = zzhcpVar;
                                } catch (Throwable th) {
                                    th = th;
                                    obj7 = obj2;
                                    while (i < this.zzl) {
                                    }
                                    if (obj7 != null) {
                                    }
                                    throw th;
                                }
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                                break;
                            case 45:
                                zzhbqVar.zzG(this.zzm.zza(obj3, zzu & 1048575));
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 46:
                                zzhbqVar.zzH(this.zzm.zza(obj3, zzu & 1048575));
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 47:
                                zzhbqVar.zzI(this.zzm.zza(obj3, zzu & 1048575));
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 48:
                                zzhbqVar.zzJ(this.zzm.zza(obj3, zzu & 1048575));
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 49:
                                zzhbqVar.zzC(this.zzm.zza(obj3, zzu & 1048575), zzx(zzq), zzgzfVar3);
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 50:
                                Object zzz = zzz(zzq);
                                long zzu2 = zzu(zzq) & 1048575;
                                Object zzh = zzhcz.zzh(obj3, zzu2);
                                if (zzh != null) {
                                    if (zzhaz.zza(zzh)) {
                                        Object zzb2 = zzhay.zza().zzb();
                                        zzhaz.zzb(zzb2, zzh);
                                        zzhcz.zzv(obj3, zzu2, zzb2);
                                        zzh = zzb2;
                                    }
                                } else {
                                    zzh = zzhay.zza().zzb();
                                    zzhcz.zzv(obj3, zzu2, zzh);
                                }
                                throw null;
                                break;
                            case 51:
                                zzhcz.zzv(obj3, zzu & 1048575, Double.valueOf(zzhbqVar.zza()));
                                zzI(obj3, zzc, zzq);
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 52:
                                zzhcz.zzv(obj3, zzu & 1048575, Float.valueOf(zzhbqVar.zzb()));
                                zzI(obj3, zzc, zzq);
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 53:
                                zzhcz.zzv(obj3, zzu & 1048575, Long.valueOf(zzhbqVar.zzl()));
                                zzI(obj3, zzc, zzq);
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 54:
                                zzhcz.zzv(obj3, zzu & 1048575, Long.valueOf(zzhbqVar.zzo()));
                                zzI(obj3, zzc, zzq);
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 55:
                                zzhcz.zzv(obj3, zzu & 1048575, Integer.valueOf(zzhbqVar.zzg()));
                                zzI(obj3, zzc, zzq);
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 56:
                                zzhcz.zzv(obj3, zzu & 1048575, Long.valueOf(zzhbqVar.zzk()));
                                zzI(obj3, zzc, zzq);
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 57:
                                zzhcz.zzv(obj3, zzu & 1048575, Integer.valueOf(zzhbqVar.zzf()));
                                zzI(obj3, zzc, zzq);
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 58:
                                zzhcz.zzv(obj3, zzu & 1048575, Boolean.valueOf(zzhbqVar.zzN()));
                                zzI(obj3, zzc, zzq);
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 59:
                                zzG(obj3, zzu, zzhbqVar);
                                zzI(obj3, zzc, zzq);
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 60:
                                zzhbe zzhbeVar3 = (zzhbe) zzB(obj3, zzc, zzq);
                                zzhbqVar.zzu(zzhbeVar3, zzx(zzq), zzgzfVar3);
                                zzK(obj3, zzc, zzq, zzhbeVar3);
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 61:
                                zzhcz.zzv(obj3, zzu & 1048575, zzhbqVar.zzp());
                                zzI(obj3, zzc, zzq);
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 62:
                                zzhcz.zzv(obj3, zzu & 1048575, Integer.valueOf(zzhbqVar.zzj()));
                                zzI(obj3, zzc, zzq);
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 63:
                                int zze2 = zzhbqVar.zze();
                                zzgzy zzw2 = zzw(zzq);
                                if (zzw2 != null && !zzw2.zza(zze2)) {
                                    obj7 = zzhca.zzp(obj3, zzc, zze2, obj7, zzhcpVar);
                                    obj6 = obj3;
                                    zzhcpVar3 = zzhcpVar;
                                }
                                zzhcz.zzv(obj3, zzu & 1048575, Integer.valueOf(zze2));
                                zzI(obj3, zzc, zzq);
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                                break;
                            case 64:
                                zzhcz.zzv(obj3, zzu & 1048575, Integer.valueOf(zzhbqVar.zzh()));
                                zzI(obj3, zzc, zzq);
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 65:
                                zzhcz.zzv(obj3, zzu & 1048575, Long.valueOf(zzhbqVar.zzm()));
                                zzI(obj3, zzc, zzq);
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 66:
                                zzhcz.zzv(obj3, zzu & 1048575, Integer.valueOf(zzhbqVar.zzi()));
                                zzI(obj3, zzc, zzq);
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 67:
                                zzhcz.zzv(obj3, zzu & 1048575, Long.valueOf(zzhbqVar.zzn()));
                                zzI(obj3, zzc, zzq);
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            case 68:
                                zzhbe zzhbeVar4 = (zzhbe) zzB(obj3, zzc, zzq);
                                zzhbqVar.zzt(zzhbeVar4, zzx(zzq), zzgzfVar3);
                                zzK(obj3, zzc, zzq, zzhbeVar4);
                                obj5 = obj7;
                                zzgzgVar = zzgzgVar2;
                                zzgzfVar2 = zzgzfVar3;
                                obj6 = obj3;
                                zzgzgVar2 = zzgzgVar;
                                obj7 = obj5;
                                zzgzfVar3 = zzgzfVar2;
                                zzhcpVar3 = zzhcpVar;
                            default:
                                if (obj7 == null) {
                                    obj7 = zzhcpVar.zzc(obj3);
                                }
                                try {
                                    try {
                                        if (!zzhcpVar.zzp(obj7, zzhbqVar)) {
                                            for (int i2 = this.zzk; i2 < this.zzl; i2++) {
                                                obj7 = zzy(obj, this.zzj[i2], obj7, zzhcpVar, obj);
                                            }
                                        }
                                        obj6 = obj3;
                                    } catch (zzhaf unused3) {
                                        zzgzgVar = zzgzgVar2;
                                        zzgzfVar2 = zzgzfVar3;
                                        zzhcpVar.zzq(zzhbqVar);
                                        if (obj7 == null) {
                                            obj7 = zzhcpVar.zzc(obj3);
                                        }
                                        if (!zzhcpVar.zzp(obj7, zzhbqVar)) {
                                            for (int i3 = this.zzk; i3 < this.zzl; i3++) {
                                                obj7 = zzy(obj, this.zzj[i3], obj7, zzhcpVar, obj);
                                            }
                                            if (obj7 == null) {
                                            }
                                        }
                                        obj6 = obj3;
                                        zzgzgVar2 = zzgzgVar;
                                        zzgzfVar3 = zzgzfVar2;
                                        zzhcpVar3 = zzhcpVar;
                                    }
                                    zzhcpVar3 = zzhcpVar;
                                } catch (Throwable th2) {
                                    th = th2;
                                    while (i < this.zzl) {
                                    }
                                    if (obj7 != null) {
                                    }
                                    throw th;
                                }
                                break;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        obj2 = obj7;
                        obj7 = obj2;
                        while (i < this.zzl) {
                        }
                        if (obj7 != null) {
                        }
                        throw th;
                    }
                } else if (zzc == Integer.MAX_VALUE) {
                    for (int i4 = this.zzk; i4 < this.zzl; i4++) {
                        obj7 = zzy(obj, this.zzj[i4], obj7, zzhcpVar3, obj);
                    }
                    zzhcpVar = zzhcpVar3;
                    obj3 = obj6;
                } else {
                    try {
                        Object zzc2 = !this.zzh ? null : zzgzgVar2.zzc(zzgzfVar3, this.zzg, zzc);
                        if (zzc2 != null) {
                            zzgzk zzb3 = zzgzkVar == null ? zzgzgVar2.zzb(obj6) : zzgzkVar;
                            zzhcpVar2 = zzhcpVar3;
                            obj4 = obj6;
                            try {
                                obj7 = zzgzgVar2.zzd(obj, zzhbqVar, zzc2, zzgzfVar, zzb3, obj7, zzhcpVar2);
                                zzgzkVar = zzb3;
                            } catch (Throwable th4) {
                                th = th4;
                                obj3 = obj4;
                                zzhcpVar = zzhcpVar2;
                                obj2 = obj7;
                                obj7 = obj2;
                                for (i = this.zzk; i < this.zzl; i++) {
                                    obj7 = zzy(obj, this.zzj[i], obj7, zzhcpVar, obj);
                                }
                                if (obj7 != null) {
                                    zzhcpVar.zzn(obj3, obj7);
                                }
                                throw th;
                            }
                        } else {
                            zzhcpVar2 = zzhcpVar3;
                            obj4 = obj6;
                            zzhcpVar2.zzq(zzhbqVar);
                            if (obj7 == null) {
                                obj7 = zzhcpVar2.zzc(obj4);
                            }
                            try {
                                if (!zzhcpVar2.zzp(obj7, zzhbqVar)) {
                                    int i5 = this.zzk;
                                    while (i5 < this.zzl) {
                                        zzhcp zzhcpVar4 = zzhcpVar2;
                                        obj7 = zzy(obj, this.zzj[i5], obj7, zzhcpVar4, obj);
                                        i5++;
                                        obj4 = obj4;
                                        zzhcpVar2 = zzhcpVar4;
                                    }
                                    obj3 = obj4;
                                    zzhcpVar = zzhcpVar2;
                                }
                            } catch (Throwable th5) {
                                th = th5;
                                obj3 = obj4;
                                zzhcpVar = zzhcpVar2;
                                while (i < this.zzl) {
                                }
                                if (obj7 != null) {
                                }
                                throw th;
                            }
                        }
                        obj6 = obj4;
                        zzhcpVar3 = zzhcpVar2;
                    } catch (Throwable th6) {
                        th = th6;
                        zzhcpVar = zzhcpVar3;
                        obj3 = obj6;
                    }
                }
            } catch (Throwable th7) {
                th = th7;
                obj2 = obj7;
                zzhcpVar = zzhcpVar3;
                obj3 = obj6;
            }
        }
        if (obj7 == null) {
            zzhcpVar.zzn(obj3, obj7);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhby
    public final void zzi(Object obj, byte[] bArr, int i, int i2, zzgxx zzgxxVar) {
        zzc(obj, bArr, i, i2, 0, zzgxxVar);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0015. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:18:0x01c4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x01c0 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzhby
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean zzj(Object obj, Object obj2) {
        boolean zzs;
        for (int i = 0; i < this.zzc.length; i += 3) {
            int zzu = zzu(i);
            long j = zzu & 1048575;
            switch (zzt(zzu)) {
                case 0:
                    if (zzL(obj, obj2, i) && Double.doubleToLongBits(zzhcz.zzb(obj, j)) == Double.doubleToLongBits(zzhcz.zzb(obj2, j))) {
                    }
                    return false;
                case 1:
                    if (zzL(obj, obj2, i) && Float.floatToIntBits(zzhcz.zzc(obj, j)) == Float.floatToIntBits(zzhcz.zzc(obj2, j))) {
                    }
                    return false;
                case 2:
                    if (zzL(obj, obj2, i) && zzhcz.zzf(obj, j) == zzhcz.zzf(obj2, j)) {
                    }
                    return false;
                case 3:
                    if (zzL(obj, obj2, i) && zzhcz.zzf(obj, j) == zzhcz.zzf(obj2, j)) {
                    }
                    return false;
                case 4:
                    if (zzL(obj, obj2, i) && zzhcz.zzd(obj, j) == zzhcz.zzd(obj2, j)) {
                    }
                    return false;
                case 5:
                    if (zzL(obj, obj2, i) && zzhcz.zzf(obj, j) == zzhcz.zzf(obj2, j)) {
                    }
                    return false;
                case 6:
                    if (zzL(obj, obj2, i) && zzhcz.zzd(obj, j) == zzhcz.zzd(obj2, j)) {
                    }
                    return false;
                case 7:
                    if (zzL(obj, obj2, i) && zzhcz.zzz(obj, j) == zzhcz.zzz(obj2, j)) {
                    }
                    return false;
                case 8:
                    if (zzL(obj, obj2, i) && zzhca.zzs(zzhcz.zzh(obj, j), zzhcz.zzh(obj2, j))) {
                    }
                    return false;
                case 9:
                    if (zzL(obj, obj2, i) && zzhca.zzs(zzhcz.zzh(obj, j), zzhcz.zzh(obj2, j))) {
                    }
                    return false;
                case 10:
                    if (zzL(obj, obj2, i) && zzhca.zzs(zzhcz.zzh(obj, j), zzhcz.zzh(obj2, j))) {
                    }
                    return false;
                case 11:
                    if (zzL(obj, obj2, i) && zzhcz.zzd(obj, j) == zzhcz.zzd(obj2, j)) {
                    }
                    return false;
                case 12:
                    if (zzL(obj, obj2, i) && zzhcz.zzd(obj, j) == zzhcz.zzd(obj2, j)) {
                    }
                    return false;
                case 13:
                    if (zzL(obj, obj2, i) && zzhcz.zzd(obj, j) == zzhcz.zzd(obj2, j)) {
                    }
                    return false;
                case 14:
                    if (zzL(obj, obj2, i) && zzhcz.zzf(obj, j) == zzhcz.zzf(obj2, j)) {
                    }
                    return false;
                case 15:
                    if (zzL(obj, obj2, i) && zzhcz.zzd(obj, j) == zzhcz.zzd(obj2, j)) {
                    }
                    return false;
                case 16:
                    if (zzL(obj, obj2, i) && zzhcz.zzf(obj, j) == zzhcz.zzf(obj2, j)) {
                    }
                    return false;
                case 17:
                    if (zzL(obj, obj2, i) && zzhca.zzs(zzhcz.zzh(obj, j), zzhcz.zzh(obj2, j))) {
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
                    zzs = zzhca.zzs(zzhcz.zzh(obj, j), zzhcz.zzh(obj2, j));
                    if (zzs) {
                        return false;
                    }
                case 50:
                    zzs = zzhca.zzs(zzhcz.zzh(obj, j), zzhcz.zzh(obj2, j));
                    if (zzs) {
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
                    long zzr = zzr(i) & 1048575;
                    if (zzhcz.zzd(obj, zzr) == zzhcz.zzd(obj2, zzr) && zzhca.zzs(zzhcz.zzh(obj, j), zzhcz.zzh(obj2, j))) {
                    }
                    return false;
                default:
            }
        }
        if (!this.zzn.zzd(obj).equals(this.zzn.zzd(obj2))) {
            return false;
        }
        if (!this.zzh) {
            return true;
        }
        this.zzo.zza(obj);
        this.zzo.zza(obj2);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzhby
    public final boolean zzk(Object obj) {
        int i;
        int i2;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i5 < this.zzk) {
            int[] iArr = this.zzj;
            int[] iArr2 = this.zzc;
            int i6 = iArr[i5];
            int i7 = iArr2[i6];
            int zzu = zzu(i6);
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
            if ((268435456 & zzu) != 0 && !zzO(obj, i6, i, i2, i10)) {
                return false;
            }
            int zzt = zzt(zzu);
            if (zzt != 9 && zzt != 17) {
                if (zzt != 27) {
                    if (zzt != 60 && zzt != 68) {
                        if (zzt != 49) {
                            if (zzt == 50 && !((zzhay) zzhcz.zzh(obj, zzu & 1048575)).isEmpty()) {
                                throw null;
                            }
                        }
                    } else if (zzR(obj, i7, i6) && !zzP(obj, zzu, zzx(i6))) {
                        return false;
                    }
                }
                List list = (List) zzhcz.zzh(obj, zzu & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzhby zzx = zzx(i6);
                    for (int i11 = 0; i11 < list.size(); i11++) {
                        if (!zzx.zzk(list.get(i11))) {
                            return false;
                        }
                    }
                }
            } else if (zzO(obj, i6, i, i2, i10) && !zzP(obj, zzu, zzx(i6))) {
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

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:16:0x0050. Please report as an issue. */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r9v20 */
    @Override // com.google.android.gms.internal.ads.zzhby
    public final void zzm(Object obj, zzgzb zzgzbVar) {
        int i;
        int i2;
        int i3;
        ?? r9 = 1;
        Throwable th = null;
        if (!this.zzh) {
            int[] iArr = this.zzc;
            Unsafe unsafe = zzb;
            int i4 = 1048575;
            int i5 = 1048575;
            int i6 = 0;
            int i7 = 0;
            while (i7 < iArr.length) {
                int zzu = zzu(i7);
                int[] iArr2 = this.zzc;
                int zzt = zzt(zzu);
                int i8 = iArr2[i7];
                if (zzt <= 17) {
                    int i9 = iArr2[i7 + 2];
                    int i10 = i9 & i4;
                    if (i10 != i5) {
                        if (i10 == i4) {
                            i6 = 0;
                        } else {
                            i6 = unsafe.getInt(obj, i10);
                        }
                        i5 = i10;
                    }
                    i = i5;
                    i2 = i6;
                    i3 = r9 << (i9 >>> 20);
                } else {
                    i = i5;
                    i2 = i6;
                    i3 = 0;
                }
                long j = zzu & i4;
                switch (zzt) {
                    case 0:
                        if (zzO(obj, i7, i, i2, i3)) {
                            zzgzbVar.zzf(i8, zzhcz.zzb(obj, j));
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 1:
                        if (zzO(obj, i7, i, i2, i3)) {
                            zzgzbVar.zzo(i8, zzhcz.zzc(obj, j));
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 2:
                        if (zzO(obj, i7, i, i2, i3)) {
                            zzgzbVar.zzt(i8, unsafe.getLong(obj, j));
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 3:
                        if (zzO(obj, i7, i, i2, i3)) {
                            zzgzbVar.zzJ(i8, unsafe.getLong(obj, j));
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 4:
                        if (zzO(obj, i7, i, i2, i3)) {
                            zzgzbVar.zzr(i8, unsafe.getInt(obj, j));
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 5:
                        if (zzO(obj, i7, i, i2, i3)) {
                            zzgzbVar.zzm(i8, unsafe.getLong(obj, j));
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 6:
                        if (zzO(obj, i7, i, i2, i3)) {
                            zzgzbVar.zzk(i8, unsafe.getInt(obj, j));
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 7:
                        if (zzO(obj, i7, i, i2, i3)) {
                            zzgzbVar.zzb(i8, zzhcz.zzz(obj, j));
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 8:
                        if (zzO(obj, i7, i, i2, i3)) {
                            zzT(i8, unsafe.getObject(obj, j), zzgzbVar);
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 9:
                        if (zzO(obj, i7, i, i2, i3)) {
                            zzgzbVar.zzv(i8, unsafe.getObject(obj, j), zzx(i7));
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 10:
                        if (zzO(obj, i7, i, i2, i3)) {
                            zzgzbVar.zzd(i8, (zzgyl) unsafe.getObject(obj, j));
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 11:
                        if (zzO(obj, i7, i, i2, i3)) {
                            zzgzbVar.zzH(i8, unsafe.getInt(obj, j));
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 12:
                        if (zzO(obj, i7, i, i2, i3)) {
                            zzgzbVar.zzi(i8, unsafe.getInt(obj, j));
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 13:
                        if (zzO(obj, i7, i, i2, i3)) {
                            zzgzbVar.zzw(i8, unsafe.getInt(obj, j));
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 14:
                        if (zzO(obj, i7, i, i2, i3)) {
                            zzgzbVar.zzy(i8, unsafe.getLong(obj, j));
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 15:
                        if (zzO(obj, i7, i, i2, i3)) {
                            zzgzbVar.zzA(i8, unsafe.getInt(obj, j));
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 16:
                        if (zzO(obj, i7, i, i2, i3)) {
                            zzgzbVar.zzC(i8, unsafe.getLong(obj, j));
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 17:
                        if (zzO(obj, i7, i, i2, i3)) {
                            zzgzbVar.zzq(i8, unsafe.getObject(obj, j), zzx(i7));
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 18:
                        zzhca.zzu(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgzbVar, false);
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 19:
                        zzhca.zzy(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgzbVar, false);
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 20:
                        zzhca.zzA(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgzbVar, false);
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 21:
                        zzhca.zzG(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgzbVar, false);
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 22:
                        zzhca.zzz(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgzbVar, false);
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 23:
                        zzhca.zzx(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgzbVar, false);
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 24:
                        zzhca.zzw(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgzbVar, false);
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 25:
                        zzhca.zzt(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgzbVar, false);
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 26:
                        int i11 = this.zzc[i7];
                        List list = (List) unsafe.getObject(obj, j);
                        int i12 = zzhca.zza;
                        if (list != null && !list.isEmpty()) {
                            zzgzbVar.zzG(i11, list);
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                        break;
                    case 27:
                        int i13 = this.zzc[i7];
                        List list2 = (List) unsafe.getObject(obj, j);
                        zzhby zzx = zzx(i7);
                        int i14 = zzhca.zza;
                        if (list2 != null && !list2.isEmpty()) {
                            for (int i15 = 0; i15 < list2.size(); i15 += r9) {
                                zzgzbVar.zzv(i13, list2.get(i15), zzx);
                            }
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                        break;
                    case 28:
                        int i16 = this.zzc[i7];
                        List list3 = (List) unsafe.getObject(obj, j);
                        int i17 = zzhca.zza;
                        if (list3 != null && !list3.isEmpty()) {
                            zzgzbVar.zze(i16, list3);
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                        break;
                    case 29:
                        zzhca.zzF(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgzbVar, false);
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 30:
                        zzhca.zzv(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgzbVar, false);
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 31:
                        zzhca.zzB(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgzbVar, false);
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 32:
                        zzhca.zzC(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgzbVar, false);
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 33:
                        zzhca.zzD(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgzbVar, false);
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 34:
                        zzhca.zzE(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgzbVar, false);
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 35:
                        zzhca.zzu(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgzbVar, r9);
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 36:
                        zzhca.zzy(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgzbVar, r9);
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 37:
                        zzhca.zzA(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgzbVar, r9);
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 38:
                        zzhca.zzG(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgzbVar, r9);
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 39:
                        zzhca.zzz(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgzbVar, r9);
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 40:
                        zzhca.zzx(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgzbVar, r9);
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 41:
                        zzhca.zzw(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgzbVar, r9);
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 42:
                        zzhca.zzt(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgzbVar, r9);
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 43:
                        zzhca.zzF(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgzbVar, r9);
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 44:
                        zzhca.zzv(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgzbVar, r9);
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 45:
                        zzhca.zzB(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgzbVar, r9);
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 46:
                        zzhca.zzC(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgzbVar, r9);
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 47:
                        zzhca.zzD(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgzbVar, r9);
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 48:
                        zzhca.zzE(this.zzc[i7], (List) unsafe.getObject(obj, j), zzgzbVar, r9);
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 49:
                        int i18 = this.zzc[i7];
                        List list4 = (List) unsafe.getObject(obj, j);
                        zzhby zzx2 = zzx(i7);
                        int i19 = zzhca.zza;
                        if (list4 != null && !list4.isEmpty()) {
                            for (int i20 = 0; i20 < list4.size(); i20 += r9) {
                                zzgzbVar.zzq(i18, list4.get(i20), zzx2);
                            }
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                        break;
                    case 50:
                        if (unsafe.getObject(obj, j) != null) {
                            throw th;
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 51:
                        if (zzR(obj, i8, i7)) {
                            zzgzbVar.zzf(i8, zzn(obj, j));
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 52:
                        if (zzR(obj, i8, i7)) {
                            zzgzbVar.zzo(i8, zzo(obj, j));
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 53:
                        if (zzR(obj, i8, i7)) {
                            zzgzbVar.zzt(i8, zzv(obj, j));
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 54:
                        if (zzR(obj, i8, i7)) {
                            zzgzbVar.zzJ(i8, zzv(obj, j));
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 55:
                        if (zzR(obj, i8, i7)) {
                            zzgzbVar.zzr(i8, zzp(obj, j));
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 56:
                        if (zzR(obj, i8, i7)) {
                            zzgzbVar.zzm(i8, zzv(obj, j));
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 57:
                        if (zzR(obj, i8, i7)) {
                            zzgzbVar.zzk(i8, zzp(obj, j));
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 58:
                        if (zzR(obj, i8, i7)) {
                            zzgzbVar.zzb(i8, zzS(obj, j));
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 59:
                        if (zzR(obj, i8, i7)) {
                            zzT(i8, unsafe.getObject(obj, j), zzgzbVar);
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 60:
                        if (zzR(obj, i8, i7)) {
                            zzgzbVar.zzv(i8, unsafe.getObject(obj, j), zzx(i7));
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 61:
                        if (zzR(obj, i8, i7)) {
                            zzgzbVar.zzd(i8, (zzgyl) unsafe.getObject(obj, j));
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 62:
                        if (zzR(obj, i8, i7)) {
                            zzgzbVar.zzH(i8, zzp(obj, j));
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 63:
                        if (zzR(obj, i8, i7)) {
                            zzgzbVar.zzi(i8, zzp(obj, j));
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 64:
                        if (zzR(obj, i8, i7)) {
                            zzgzbVar.zzw(i8, zzp(obj, j));
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 65:
                        if (zzR(obj, i8, i7)) {
                            zzgzbVar.zzy(i8, zzv(obj, j));
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 66:
                        if (zzR(obj, i8, i7)) {
                            zzgzbVar.zzA(i8, zzp(obj, j));
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 67:
                        if (zzR(obj, i8, i7)) {
                            zzgzbVar.zzC(i8, zzv(obj, j));
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    case 68:
                        if (zzR(obj, i8, i7)) {
                            zzgzbVar.zzq(i8, unsafe.getObject(obj, j), zzx(i7));
                        }
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                    default:
                        i7 += 3;
                        i5 = i;
                        i6 = i2;
                        r9 = 1;
                        th = null;
                        i4 = 1048575;
                }
            }
            zzhcp zzhcpVar = this.zzn;
            zzhcpVar.zzr(zzhcpVar.zzd(obj), zzgzbVar);
            return;
        }
        this.zzo.zza(obj);
        throw null;
    }
}
