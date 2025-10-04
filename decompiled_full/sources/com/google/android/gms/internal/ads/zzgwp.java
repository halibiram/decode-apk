package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;

/* loaded from: classes2.dex */
public final class zzgwp {
    public static final void zza(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3, int i) {
        if (i >= 0 && byteBuffer2.remaining() >= i && byteBuffer3.remaining() >= i && byteBuffer.remaining() >= i) {
            for (int i2 = 0; i2 < i; i2++) {
                byteBuffer.put((byte) (byteBuffer2.get() ^ byteBuffer3.get()));
            }
            return;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-6368325239034615387L, -7004036699625536359L, -5391716499231399530L, -5307134926524868011L, 3459855452304398608L, 8024787377034397106L, 4622209228773366507L, 2631785656167160082L, 6631187097633440802L, -2795259481371975871L, 1568734459344157166L, 3248692459030299263L}).toString());
    }

    public static byte[] zzb(byte[]... bArr) {
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i < bArr.length) {
                int length = bArr[i].length;
                if (i2 <= Integer.MAX_VALUE - length) {
                    i2 += length;
                    i++;
                } else {
                    throw new GeneralSecurityException(new ObfuscatedString(new long[]{-5819073964029650017L, 8289941087793863034L, -2017669390806694542L, 8398855842334211809L}).toString());
                }
            } else {
                byte[] bArr2 = new byte[i2];
                int i3 = 0;
                for (byte[] bArr3 : bArr) {
                    int length2 = bArr3.length;
                    System.arraycopy(bArr3, 0, bArr2, i3, length2);
                    i3 += length2;
                }
                return bArr2;
            }
        }
    }

    public static final byte[] zzc(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        if (length == bArr2.length) {
            return zzd(bArr, 0, bArr2, 0, length);
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{2857233535568369251L, 2517334566618156660L, -1117709909974094457L, -4285898978506258772L, 5985674248542272549L, -3596621323660367282L}).toString());
    }

    public static final byte[] zzd(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        if (bArr.length - i3 >= i && bArr2.length - i3 >= i2) {
            byte[] bArr3 = new byte[i3];
            for (int i4 = 0; i4 < i3; i4++) {
                bArr3[i4] = (byte) (bArr[i4 + i] ^ bArr2[i4 + i2]);
            }
            return bArr3;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-3955057926854210003L, -1558034161421730894L, 5012627375256555328L, -8499243688751845150L, 8632817364928731170L, -7750793670569169128L, 5934729580234000098L, 3689594368699680368L, -4840120221684312930L, 6929520856361423116L, 2753889340474808007L, -2358695278527850301L}).toString());
    }
}
