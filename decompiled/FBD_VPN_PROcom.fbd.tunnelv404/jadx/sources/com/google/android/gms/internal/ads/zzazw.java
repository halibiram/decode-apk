package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;

/* loaded from: classes2.dex */
public final class zzazw extends zzazr {
    private MessageDigest zzb;

    @Override // com.google.android.gms.internal.ads.zzazr
    public final byte[] zzb(String str) {
        byte[] bArr;
        byte[] bArr2;
        String[] split = str.split(new ObfuscatedString(new long[]{6100189794813255973L, -728704068817956699L}).toString());
        int length = split.length;
        int i = 4;
        if (length == 1) {
            int zza = zzazv.zza(split[0]);
            ByteBuffer allocate = ByteBuffer.allocate(4);
            allocate.order(ByteOrder.LITTLE_ENDIAN);
            allocate.putInt(zza);
            bArr2 = allocate.array();
        } else {
            if (length < 5) {
                bArr = new byte[length + length];
                for (int i2 = 0; i2 < split.length; i2++) {
                    int zza2 = zzazv.zza(split[i2]);
                    int i3 = (zza2 >> 16) ^ ((char) zza2);
                    byte b = (byte) i3;
                    byte b2 = (byte) (i3 >> 8);
                    int i4 = i2 + i2;
                    bArr[i4] = new byte[]{b, b2}[0];
                    bArr[i4 + 1] = b2;
                }
            } else {
                bArr = new byte[length];
                for (int i5 = 0; i5 < split.length; i5++) {
                    int zza3 = zzazv.zza(split[i5]);
                    bArr[i5] = (byte) ((zza3 >> 24) ^ (((zza3 & 255) ^ ((zza3 >> 8) & 255)) ^ ((zza3 >> 16) & 255)));
                }
            }
            bArr2 = bArr;
        }
        this.zzb = zza();
        synchronized (this.zza) {
            try {
                MessageDigest messageDigest = this.zzb;
                if (messageDigest == null) {
                    return new byte[0];
                }
                messageDigest.reset();
                this.zzb.update(bArr2);
                byte[] digest = this.zzb.digest();
                int length2 = digest.length;
                if (length2 <= 4) {
                    i = length2;
                }
                byte[] bArr3 = new byte[i];
                System.arraycopy(digest, 0, bArr3, 0, i);
                return bArr3;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
