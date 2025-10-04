package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzatx {
    static boolean zza = false;
    public static final /* synthetic */ int zzc = 0;
    private static MessageDigest zzd;
    private static final Object zze = new Object();
    private static final Object zzf = new Object();
    static final CountDownLatch zzb = new CountDownLatch(1);

    public static String zza(byte[] bArr, String str) {
        byte[] zzg;
        Vector zzb2 = zzb(bArr, 255);
        if (zzb2 != null && !zzb2.isEmpty()) {
            zzatp zza2 = zzatq.zza();
            int size = zzb2.size();
            for (int i = 0; i < size; i++) {
                zza2.zza(zzgyl.zzv(zzg((byte[]) zzb2.get(i), str, false), 0, 256));
            }
            byte[] zze2 = zze(bArr);
            zzgyl zzgylVar = zzgyl.zzb;
            zza2.zzb(zzgyl.zzv(zze2, 0, zze2.length));
            zzg = ((zzatq) zza2.zzal()).zzax();
        } else {
            zzg = zzg(zzf(4096).zzax(), str, true);
        }
        return zzatt.zza(zzg, true);
    }

    public static Vector zzb(byte[] bArr, int i) {
        int length = bArr.length;
        if (length <= 0) {
            return null;
        }
        int i2 = length + 254;
        Vector vector = new Vector();
        for (int i3 = 0; i3 < i2 / 255; i3++) {
            int i4 = i3 * 255;
            try {
                int length2 = bArr.length;
                if (length2 - i4 > 255) {
                    length2 = i4 + 255;
                }
                vector.add(Arrays.copyOfRange(bArr, i4, length2));
            } catch (IndexOutOfBoundsException unused) {
                return null;
            }
        }
        return vector;
    }

    public static void zzd() {
        synchronized (zzf) {
            try {
                if (!zza) {
                    zza = true;
                    new Thread(new zzatw(null)).start();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0020, code lost:
    
        r1.reset();
        r1.update(r6);
        r6 = com.google.android.gms.internal.ads.zzatx.zzd.digest();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static byte[] zze(byte[] bArr) {
        byte[] digest;
        MessageDigest messageDigest;
        synchronized (zze) {
            try {
                zzd();
                MessageDigest messageDigest2 = null;
                try {
                    if (zzb.await(2L, TimeUnit.SECONDS) && (messageDigest = zzd) != null) {
                        messageDigest2 = messageDigest;
                    }
                } catch (InterruptedException unused) {
                }
                throw new NoSuchAlgorithmException(new ObfuscatedString(new long[]{2269449188986795980L, -1265711153761448864L, 5673240829571682591L, 2224664188432030141L}).toString());
            } finally {
            }
        }
        return digest;
        throw new NoSuchAlgorithmException(new ObfuscatedString(new long[]{2269449188986795980L, -1265711153761448864L, 5673240829571682591L, 2224664188432030141L}).toString());
    }

    public static zzatd zzf(int i) {
        zzasg zza2 = zzatd.zza();
        zza2.zzD(4096L);
        return (zzatd) zza2.zzal();
    }

    private static byte[] zzg(byte[] bArr, String str, boolean z) {
        int i;
        byte[] array;
        int length = bArr.length;
        if (true != z) {
            i = 255;
        } else {
            i = 239;
        }
        if (length > i) {
            bArr = zzf(4096).zzax();
        }
        int i2 = i + 1;
        int length2 = bArr.length;
        byte b = (byte) length2;
        if (length2 < i) {
            byte[] bArr2 = new byte[i - length2];
            new SecureRandom().nextBytes(bArr2);
            array = ByteBuffer.allocate(i2).put(b).put(bArr).put(bArr2).array();
        } else {
            array = ByteBuffer.allocate(i2).put(b).put(bArr).array();
        }
        if (z) {
            array = ByteBuffer.allocate(256).put(zze(array)).put(array).array();
        }
        byte[] bArr3 = new byte[256];
        zzaty[] zzatyVarArr = new zzaux().zzcG;
        int length3 = zzatyVarArr.length;
        for (int i3 = 0; i3 < 12; i3++) {
            zzatyVarArr[i3].zza(array, bArr3);
        }
        if (str != null && str.length() > 0) {
            if (str.length() > 32) {
                str = str.substring(0, 32);
            }
            new zzatr(str.getBytes(new ObfuscatedString(new long[]{3619813329942361839L, -544817045908151503L}).toString())).zza(bArr3);
        }
        return bArr3;
    }
}
