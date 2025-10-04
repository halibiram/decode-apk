package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import libcore.io.Memory;
import sun.misc.Unsafe;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzhcz {
    static final long zza;
    static final boolean zzb;
    private static final Unsafe zzc;
    private static final Class zzd;
    private static final boolean zze;
    private static final zzhcy zzf;
    private static final boolean zzg;
    private static final boolean zzh;
    private static final long zzi;

    /* JADX WARN: Removed duplicated region for block: B:15:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0087  */
    static {
        boolean z;
        zzhcy zzhcyVar;
        boolean z2;
        Field zzE;
        long j;
        zzhcy zzhcyVar2;
        boolean z3 = false;
        Unsafe zzi2 = zzi();
        zzc = zzi2;
        int i = zzgxw.zza;
        zzd = Memory.class;
        Class<?> cls = Long.TYPE;
        boolean zzy = zzy(cls);
        zze = zzy;
        boolean zzy2 = zzy(Integer.TYPE);
        zzhcy zzhcyVar3 = null;
        if (zzi2 != null) {
            if (zzy) {
                zzhcyVar3 = new zzhcx(zzi2);
            } else if (zzy2) {
                zzhcyVar3 = new zzhcw(zzi2);
            }
        }
        zzf = zzhcyVar3;
        if (zzhcyVar3 != null) {
            try {
                Class<?> cls2 = zzhcyVar3.zza.getClass();
                cls2.getMethod(new ObfuscatedString(new long[]{1598768331631550653L, 7027082913101184421L, 1121934167224334903L, -2356458030506044526L}).toString(), Field.class);
                cls2.getMethod(new ObfuscatedString(new long[]{-1566972074606336178L, -8717380095110472695L}).toString(), Object.class, cls);
            } catch (Throwable th) {
                zzj(th);
            }
            if (zzE() != null) {
                z = true;
                zzg = z;
                zzhcyVar = zzf;
                if (zzhcyVar != null) {
                    try {
                        Class<?> cls3 = zzhcyVar.zza.getClass();
                        cls3.getMethod(new ObfuscatedString(new long[]{-2535066464125165053L, -5972354453844303357L, 8304322847237415603L, 7902784251994689906L}).toString(), Field.class);
                        cls3.getMethod(new ObfuscatedString(new long[]{7796188387735951174L, -9096018904672242906L, 7513398662089720208L}).toString(), Class.class);
                        cls3.getMethod(new ObfuscatedString(new long[]{-6116319274713488923L, 4212552855695221810L, -2636043310134260102L}).toString(), Class.class);
                        String obfuscatedString = new ObfuscatedString(new long[]{6306732539921926967L, -4196423221762553694L}).toString();
                        Class<?> cls4 = Long.TYPE;
                        cls3.getMethod(obfuscatedString, Object.class, cls4);
                        cls3.getMethod(new ObfuscatedString(new long[]{-49315434358094944L, 705732594954030499L}).toString(), Object.class, cls4, Integer.TYPE);
                        cls3.getMethod(new ObfuscatedString(new long[]{3288968412169883697L, -832632713144328805L}).toString(), Object.class, cls4);
                        cls3.getMethod(new ObfuscatedString(new long[]{6731397345677710549L, -1039457596621269004L}).toString(), Object.class, cls4, cls4);
                        cls3.getMethod(new ObfuscatedString(new long[]{1593023754560324154L, 9170731103134996728L, 7483334048214683026L}).toString(), Object.class, cls4);
                        cls3.getMethod(new ObfuscatedString(new long[]{287342352695727915L, -7526811743553852961L, 5798012621082761351L}).toString(), Object.class, cls4, Object.class);
                        z2 = true;
                    } catch (Throwable th2) {
                        zzj(th2);
                    }
                    zzh = z2;
                    zza = zzC(byte[].class);
                    zzC(boolean[].class);
                    zzD(boolean[].class);
                    zzC(int[].class);
                    zzD(int[].class);
                    zzC(long[].class);
                    zzD(long[].class);
                    zzC(float[].class);
                    zzD(float[].class);
                    zzC(double[].class);
                    zzD(double[].class);
                    zzC(Object[].class);
                    zzD(Object[].class);
                    zzE = zzE();
                    j = -1;
                    if (zzE != null && (zzhcyVar2 = zzf) != null) {
                        j = zzhcyVar2.zza.objectFieldOffset(zzE);
                    }
                    zzi = j;
                    if (ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN) {
                        z3 = true;
                    }
                    zzb = z3;
                }
                z2 = false;
                zzh = z2;
                zza = zzC(byte[].class);
                zzC(boolean[].class);
                zzD(boolean[].class);
                zzC(int[].class);
                zzD(int[].class);
                zzC(long[].class);
                zzD(long[].class);
                zzC(float[].class);
                zzD(float[].class);
                zzC(double[].class);
                zzD(double[].class);
                zzC(Object[].class);
                zzD(Object[].class);
                zzE = zzE();
                j = -1;
                if (zzE != null) {
                    j = zzhcyVar2.zza.objectFieldOffset(zzE);
                }
                zzi = j;
                if (ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN) {
                }
                zzb = z3;
            }
        }
        z = false;
        zzg = z;
        zzhcyVar = zzf;
        if (zzhcyVar != null) {
        }
        z2 = false;
        zzh = z2;
        zza = zzC(byte[].class);
        zzC(boolean[].class);
        zzD(boolean[].class);
        zzC(int[].class);
        zzD(int[].class);
        zzC(long[].class);
        zzD(long[].class);
        zzC(float[].class);
        zzD(float[].class);
        zzC(double[].class);
        zzD(double[].class);
        zzC(Object[].class);
        zzD(Object[].class);
        zzE = zzE();
        j = -1;
        if (zzE != null) {
        }
        zzi = j;
        if (ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN) {
        }
        zzb = z3;
    }

    private zzhcz() {
    }

    public static boolean zzA() {
        return zzh;
    }

    public static boolean zzB() {
        return zzg;
    }

    private static int zzC(Class cls) {
        if (zzh) {
            return zzf.zza.arrayBaseOffset(cls);
        }
        return -1;
    }

    private static int zzD(Class cls) {
        if (zzh) {
            return zzf.zza.arrayIndexScale(cls);
        }
        return -1;
    }

    private static Field zzE() {
        int i = zzgxw.zza;
        Field zzF = zzF(Buffer.class, new ObfuscatedString(new long[]{2762943891699871066L, 875769443470051077L, -1429531862180610957L, -5276199152525061944L}).toString());
        if (zzF == null) {
            Field zzF2 = zzF(Buffer.class, new ObfuscatedString(new long[]{2570932954252146482L, 5401768835849125527L}).toString());
            if (zzF2 != null && zzF2.getType() == Long.TYPE) {
                return zzF2;
            }
            return null;
        }
        return zzF;
    }

    private static Field zzF(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzG(Object obj, long j, byte b) {
        zzhcy zzhcyVar = zzf;
        long j2 = (-4) & j;
        int i = zzhcyVar.zza.getInt(obj, j2);
        int i2 = ((~((int) j)) & 3) << 3;
        zzhcyVar.zza.putInt(obj, j2, ((255 & b) << i2) | (i & (~(255 << i2))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzH(Object obj, long j, byte b) {
        zzhcy zzhcyVar = zzf;
        long j2 = (-4) & j;
        int i = (((int) j) & 3) << 3;
        zzhcyVar.zza.putInt(obj, j2, ((255 & b) << i) | (zzhcyVar.zza.getInt(obj, j2) & (~(255 << i))));
    }

    public static byte zza(long j) {
        return zzf.zza(j);
    }

    public static double zzb(Object obj, long j) {
        return zzf.zzb(obj, j);
    }

    public static float zzc(Object obj, long j) {
        return zzf.zzc(obj, j);
    }

    public static int zzd(Object obj, long j) {
        return zzf.zza.getInt(obj, j);
    }

    public static long zze(ByteBuffer byteBuffer) {
        zzhcy zzhcyVar = zzf;
        return zzhcyVar.zza.getLong(byteBuffer, zzi);
    }

    public static long zzf(Object obj, long j) {
        return zzf.zza.getLong(obj, j);
    }

    public static Object zzg(Class cls) {
        try {
            return zzc.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    public static Object zzh(Object obj, long j) {
        return zzf.zza.getObject(obj, j);
    }

    public static Unsafe zzi() {
        try {
            return (Unsafe) AccessController.doPrivileged(new zzhcv());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static /* bridge */ /* synthetic */ void zzj(Throwable th) {
        Logger logger = Logger.getLogger(zzhcz.class.getName());
        String obfuscatedString = new ObfuscatedString(new long[]{-1482040257341360752L, -6427702040568292265L, 2025290962217151783L, -5454917431018252551L, -2880299117615301185L, 2515511179378244643L, -947795040661709712L, -1969780419825915701L, 6777839373884091775L, 7824036375013186015L}).toString();
        logger.logp(Level.WARNING, new ObfuscatedString(new long[]{-732711363305269505L, -8036533725287902155L, 1912773690859476670L, 3897419220149320417L, -88941123210267720L}).toString(), new ObfuscatedString(new long[]{-7849361287326268195L, -2686645797014465708L, -554280028566914608L}).toString(), obfuscatedString.concat(th.toString()));
    }

    public static void zzo(long j, byte[] bArr, long j2, long j3) {
        zzf.zzd(j, bArr, j2, j3);
    }

    public static void zzp(Object obj, long j, boolean z) {
        zzf.zze(obj, j, z);
    }

    public static void zzq(byte[] bArr, long j, byte b) {
        zzf.zzf(bArr, zza + j, b);
    }

    public static void zzr(Object obj, long j, double d) {
        zzf.zzg(obj, j, d);
    }

    public static void zzs(Object obj, long j, float f) {
        zzf.zzh(obj, j, f);
    }

    public static void zzt(Object obj, long j, int i) {
        zzf.zza.putInt(obj, j, i);
    }

    public static void zzu(Object obj, long j, long j2) {
        zzf.zza.putLong(obj, j, j2);
    }

    public static void zzv(Object obj, long j, Object obj2) {
        zzf.zza.putObject(obj, j, obj2);
    }

    public static /* bridge */ /* synthetic */ boolean zzw(Object obj, long j) {
        if (((byte) ((zzf.zza.getInt(obj, (-4) & j) >>> ((int) (((~j) & 3) << 3))) & 255)) != 0) {
            return true;
        }
        return false;
    }

    public static /* bridge */ /* synthetic */ boolean zzx(Object obj, long j) {
        if (((byte) ((zzf.zza.getInt(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & 255)) != 0) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean zzy(Class cls) {
        int i = zzgxw.zza;
        try {
            Class cls2 = zzd;
            String obfuscatedString = new ObfuscatedString(new long[]{-6456545761623250409L, -6886963029941719524L}).toString();
            Class cls3 = Boolean.TYPE;
            cls2.getMethod(obfuscatedString, cls, cls3);
            cls2.getMethod(new ObfuscatedString(new long[]{-536830022708429437L, 7967592169257866606L}).toString(), cls, Long.TYPE, cls3);
            String obfuscatedString2 = new ObfuscatedString(new long[]{3393392608277277286L, 1292761705169363102L}).toString();
            Class cls4 = Integer.TYPE;
            cls2.getMethod(obfuscatedString2, cls, cls4, cls3);
            cls2.getMethod(new ObfuscatedString(new long[]{-2933869878487356449L, 8352953079363979042L}).toString(), cls, cls3);
            cls2.getMethod(new ObfuscatedString(new long[]{-1831208104930097969L, 4179886699399355153L}).toString(), cls, Byte.TYPE);
            cls2.getMethod(new ObfuscatedString(new long[]{2172874560820126061L, -6883808706410136521L}).toString(), cls);
            cls2.getMethod(new ObfuscatedString(new long[]{3372972263728232244L, 6878481800346836745L, 4895652019064321591L}).toString(), cls, byte[].class, cls4, cls4);
            cls2.getMethod(new ObfuscatedString(new long[]{-7939894720417672773L, -3677680118913154324L, 1852069630055805007L}).toString(), cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean zzz(Object obj, long j) {
        return zzf.zzi(obj, j);
    }
}
