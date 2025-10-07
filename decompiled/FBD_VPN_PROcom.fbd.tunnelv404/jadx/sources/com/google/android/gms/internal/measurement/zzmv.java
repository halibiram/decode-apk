package com.google.android.gms.internal.measurement;

import com.panda912.muddy.ObfuscatedString;
import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* loaded from: classes2.dex */
final class zzmv {
    static final long zza;
    static final boolean zzb;
    private static final Unsafe zzc;
    private static final Class zzd;
    private static final boolean zze;
    private static final zzmu zzf;
    private static final boolean zzg;
    private static final boolean zzh;

    /* JADX WARN: Removed duplicated region for block: B:15:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0087  */
    static {
        boolean z;
        zzmu zzmuVar;
        boolean z2;
        Field zzB;
        zzmu zzmuVar2;
        boolean z3 = false;
        Unsafe zzg2 = zzg();
        zzc = zzg2;
        zzd = zzin.zza();
        Class<?> cls = Long.TYPE;
        boolean zzv = zzv(cls);
        zze = zzv;
        boolean zzv2 = zzv(Integer.TYPE);
        zzmu zzmuVar3 = null;
        if (zzg2 != null) {
            if (zzv) {
                zzmuVar3 = new zzmt(zzg2);
            } else if (zzv2) {
                zzmuVar3 = new zzms(zzg2);
            }
        }
        zzf = zzmuVar3;
        if (zzmuVar3 != null) {
            try {
                Class<?> cls2 = zzmuVar3.zza.getClass();
                cls2.getMethod(new ObfuscatedString(new long[]{2080713823187552129L, 9010237387960357942L, 6847467592119906082L, 7891835981318920852L}).toString(), Field.class);
                cls2.getMethod(new ObfuscatedString(new long[]{4960344489916656077L, 3622610759324561794L}).toString(), Object.class, cls);
            } catch (Throwable th) {
                zzh(th);
            }
            if (zzB() != null) {
                z = true;
                zzg = z;
                zzmuVar = zzf;
                if (zzmuVar != null) {
                    try {
                        Class<?> cls3 = zzmuVar.zza.getClass();
                        cls3.getMethod(new ObfuscatedString(new long[]{-8785089363309646297L, 9039174455704782744L, -6512286404540734221L, 6798620813835454445L}).toString(), Field.class);
                        cls3.getMethod(new ObfuscatedString(new long[]{-6604354028648092253L, 3803469655897617600L, 7802442563192374468L}).toString(), Class.class);
                        cls3.getMethod(new ObfuscatedString(new long[]{2478241478538264556L, 5913645563207734713L, -2551532501085813213L}).toString(), Class.class);
                        Class<?> cls4 = Long.TYPE;
                        cls3.getMethod(new ObfuscatedString(new long[]{-8294365342269876113L, -5455846957947021397L}).toString(), Object.class, cls4);
                        cls3.getMethod(new ObfuscatedString(new long[]{-5548876015580313046L, 4871045439727740671L}).toString(), Object.class, cls4, Integer.TYPE);
                        cls3.getMethod(new ObfuscatedString(new long[]{86163975338384086L, -327453780421877973L}).toString(), Object.class, cls4);
                        cls3.getMethod(new ObfuscatedString(new long[]{7608755168859158718L, -4912834633722178725L}).toString(), Object.class, cls4, cls4);
                        cls3.getMethod(new ObfuscatedString(new long[]{4218162461221663950L, 3977327900011335796L, -2801503853327894070L}).toString(), Object.class, cls4);
                        cls3.getMethod(new ObfuscatedString(new long[]{1366308695101787157L, 4504984959077371613L, 7377177117504385667L}).toString(), Object.class, cls4, Object.class);
                        z2 = true;
                    } catch (Throwable th2) {
                        zzh(th2);
                    }
                    zzh = z2;
                    zza = zzz(byte[].class);
                    zzz(boolean[].class);
                    zzA(boolean[].class);
                    zzz(int[].class);
                    zzA(int[].class);
                    zzz(long[].class);
                    zzA(long[].class);
                    zzz(float[].class);
                    zzA(float[].class);
                    zzz(double[].class);
                    zzA(double[].class);
                    zzz(Object[].class);
                    zzA(Object[].class);
                    zzB = zzB();
                    if (zzB != null && (zzmuVar2 = zzf) != null) {
                        zzmuVar2.zzl(zzB);
                    }
                    if (ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN) {
                        z3 = true;
                    }
                    zzb = z3;
                }
                z2 = false;
                zzh = z2;
                zza = zzz(byte[].class);
                zzz(boolean[].class);
                zzA(boolean[].class);
                zzz(int[].class);
                zzA(int[].class);
                zzz(long[].class);
                zzA(long[].class);
                zzz(float[].class);
                zzA(float[].class);
                zzz(double[].class);
                zzA(double[].class);
                zzz(Object[].class);
                zzA(Object[].class);
                zzB = zzB();
                if (zzB != null) {
                    zzmuVar2.zzl(zzB);
                }
                if (ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN) {
                }
                zzb = z3;
            }
        }
        z = false;
        zzg = z;
        zzmuVar = zzf;
        if (zzmuVar != null) {
        }
        z2 = false;
        zzh = z2;
        zza = zzz(byte[].class);
        zzz(boolean[].class);
        zzA(boolean[].class);
        zzz(int[].class);
        zzA(int[].class);
        zzz(long[].class);
        zzA(long[].class);
        zzz(float[].class);
        zzA(float[].class);
        zzz(double[].class);
        zzA(double[].class);
        zzz(Object[].class);
        zzA(Object[].class);
        zzB = zzB();
        if (zzB != null) {
        }
        if (ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN) {
        }
        zzb = z3;
    }

    private zzmv() {
    }

    private static int zzA(Class cls) {
        if (zzh) {
            return zzf.zzi(cls);
        }
        return -1;
    }

    private static Field zzB() {
        int i = zzin.zza;
        Field zzC = zzC(Buffer.class, new ObfuscatedString(new long[]{-231285531997796773L, 7328216983956080285L, -8660959166359050571L, -8617908142007690245L}).toString());
        if (zzC == null) {
            Field zzC2 = zzC(Buffer.class, new ObfuscatedString(new long[]{8931442522973991606L, -4387769761271968424L}).toString());
            if (zzC2 != null && zzC2.getType() == Long.TYPE) {
                return zzC2;
            }
            return null;
        }
        return zzC;
    }

    private static Field zzC(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzD(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        zzmu zzmuVar = zzf;
        int zzj = zzmuVar.zzj(obj, j2);
        int i = ((~((int) j)) & 3) << 3;
        zzmuVar.zzn(obj, j2, ((255 & b) << i) | (zzj & (~(255 << i))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzE(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        zzmu zzmuVar = zzf;
        int i = (((int) j) & 3) << 3;
        zzmuVar.zzn(obj, j2, ((255 & b) << i) | (zzmuVar.zzj(obj, j2) & (~(255 << i))));
    }

    public static double zza(Object obj, long j) {
        return zzf.zza(obj, j);
    }

    public static float zzb(Object obj, long j) {
        return zzf.zzb(obj, j);
    }

    public static int zzc(Object obj, long j) {
        return zzf.zzj(obj, j);
    }

    public static long zzd(Object obj, long j) {
        return zzf.zzk(obj, j);
    }

    public static Object zze(Class cls) {
        try {
            return zzc.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    public static Object zzf(Object obj, long j) {
        return zzf.zzm(obj, j);
    }

    public static Unsafe zzg() {
        try {
            return (Unsafe) AccessController.doPrivileged(new zzmr());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static /* bridge */ /* synthetic */ void zzh(Throwable th) {
        Logger.getLogger(zzmv.class.getName()).logp(Level.WARNING, new ObfuscatedString(new long[]{7173908406857400765L, 6548844464046273029L, -1504305337895406467L, 2075863264826962871L, 6388005644246691924L}).toString(), new ObfuscatedString(new long[]{1228236581703401669L, -8108506899032004402L, -4582009691277414008L}).toString(), new ObfuscatedString(new long[]{-1725012293704885039L, 5181169595218178574L, -1483481670438027079L, -3360006529073594457L, 2206772759596406883L, 4424338259996100947L, -3623931558127919747L, -2434051322794197507L, -1434344662006941655L, 4123675863341570508L}).toString().concat(th.toString()));
    }

    public static void zzm(Object obj, long j, boolean z) {
        zzf.zzc(obj, j, z);
    }

    public static void zzn(byte[] bArr, long j, byte b) {
        zzf.zzd(bArr, zza + j, b);
    }

    public static void zzo(Object obj, long j, double d) {
        zzf.zze(obj, j, d);
    }

    public static void zzp(Object obj, long j, float f) {
        zzf.zzf(obj, j, f);
    }

    public static void zzq(Object obj, long j, int i) {
        zzf.zzn(obj, j, i);
    }

    public static void zzr(Object obj, long j, long j2) {
        zzf.zzo(obj, j, j2);
    }

    public static void zzs(Object obj, long j, Object obj2) {
        zzf.zzp(obj, j, obj2);
    }

    public static /* bridge */ /* synthetic */ boolean zzt(Object obj, long j) {
        if (((byte) ((zzf.zzj(obj, (-4) & j) >>> ((int) (((~j) & 3) << 3))) & 255)) != 0) {
            return true;
        }
        return false;
    }

    public static /* bridge */ /* synthetic */ boolean zzu(Object obj, long j) {
        if (((byte) ((zzf.zzj(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & 255)) != 0) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean zzv(Class cls) {
        int i = zzin.zza;
        try {
            Class cls2 = zzd;
            Class cls3 = Boolean.TYPE;
            cls2.getMethod(new ObfuscatedString(new long[]{7783621571492403880L, -5002155069532082730L}).toString(), cls, cls3);
            cls2.getMethod(new ObfuscatedString(new long[]{3437401994156798333L, -9196876337524157443L}).toString(), cls, Long.TYPE, cls3);
            Class cls4 = Integer.TYPE;
            cls2.getMethod(new ObfuscatedString(new long[]{-3947128749277245443L, 147684762370335962L}).toString(), cls, cls4, cls3);
            cls2.getMethod(new ObfuscatedString(new long[]{-7229761662273243972L, -5096094397641217341L}).toString(), cls, cls3);
            cls2.getMethod(new ObfuscatedString(new long[]{8841429793892202757L, -4805647597991523121L}).toString(), cls, Byte.TYPE);
            cls2.getMethod(new ObfuscatedString(new long[]{-568451695427551968L, -7666703639833072900L}).toString(), cls);
            cls2.getMethod(new ObfuscatedString(new long[]{8778304699413953840L, 359497436515439067L, 7257791160937893778L}).toString(), cls, byte[].class, cls4, cls4);
            cls2.getMethod(new ObfuscatedString(new long[]{-7748290137498548407L, -1410127042727110655L, 6930144356988880918L}).toString(), cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean zzw(Object obj, long j) {
        return zzf.zzg(obj, j);
    }

    public static boolean zzx() {
        return zzh;
    }

    public static boolean zzy() {
        return zzg;
    }

    private static int zzz(Class cls) {
        if (zzh) {
            return zzf.zzh(cls);
        }
        return -1;
    }
}
