package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import javax.crypto.AEADBadTagException;

/* loaded from: classes2.dex */
abstract class zzgmk {
    private final zzgmi zza;
    private final zzgmi zzb;

    public zzgmk(byte[] bArr) {
        if (zzgmv.zza(1)) {
            this.zza = zza(bArr, 1);
            this.zzb = zza(bArr, 0);
            return;
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{8540495546762426693L, -1797256935799274595L, -8407003059724928318L, -2189343292513908322L, 2653673835690171640L, 2237273667576626452L, -4634488963351419540L}).toString());
    }

    public abstract zzgmi zza(byte[] bArr, int i);

    public final byte[] zzb(ByteBuffer byteBuffer, byte[] bArr, byte[] bArr2) {
        int i;
        int i2;
        if (byteBuffer.remaining() >= 16) {
            int position = byteBuffer.position();
            byte[] bArr3 = new byte[16];
            byteBuffer.position(byteBuffer.limit() - 16);
            byteBuffer.get(bArr3);
            byteBuffer.position(position);
            byteBuffer.limit(byteBuffer.limit() - 16);
            if (bArr2 == null) {
                bArr2 = new byte[0];
            }
            try {
                byte[] bArr4 = new byte[32];
                this.zzb.zzc(bArr, 0).get(bArr4);
                int length = bArr2.length;
                int i3 = length & 15;
                if (i3 == 0) {
                    i = length;
                } else {
                    i = (length + 16) - i3;
                }
                int remaining = byteBuffer.remaining();
                int i4 = remaining % 16;
                if (i4 == 0) {
                    i2 = remaining;
                } else {
                    i2 = (remaining + 16) - i4;
                }
                int i5 = i2 + i;
                ByteBuffer order = ByteBuffer.allocate(16 + i5).order(ByteOrder.LITTLE_ENDIAN);
                order.put(bArr2);
                order.position(i);
                order.put(byteBuffer);
                order.position(i5);
                order.putLong(length);
                order.putLong(remaining);
                if (MessageDigest.isEqual(zzgmn.zza(bArr4, order.array()), bArr3)) {
                    byteBuffer.position(position);
                    return this.zza.zzd(bArr, byteBuffer);
                }
                throw new GeneralSecurityException(new ObfuscatedString(new long[]{-2631500348654110868L, 7425203405500801397L, 3702221800742717645L}).toString());
            } catch (GeneralSecurityException e) {
                throw new AEADBadTagException(e.toString());
            }
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{2547907922556270251L, 7604432850131605979L, -294263833771510299L, 1375168348588315287L}).toString());
    }
}
