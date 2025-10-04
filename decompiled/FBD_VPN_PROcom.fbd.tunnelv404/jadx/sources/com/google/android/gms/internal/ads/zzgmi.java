package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;

/* loaded from: classes2.dex */
abstract class zzgmi {
    int[] zza;
    private final int zzb;

    public zzgmi(byte[] bArr, int i) {
        if (bArr.length == 32) {
            this.zza = zzgme.zzd(bArr);
            this.zzb = i;
            return;
        }
        throw new InvalidKeyException(new ObfuscatedString(new long[]{6884535949718925656L, -7328398194722733179L, 6422600874524202858L, -8323665281204419709L, -5714649836214578279L, 2498973806425069760L}).toString());
    }

    public abstract int zza();

    public abstract int[] zzb(int[] iArr, int i);

    public final ByteBuffer zzc(byte[] bArr, int i) {
        int[] zzb = zzb(zzgme.zzd(bArr), i);
        int[] iArr = (int[]) zzb.clone();
        zzgme.zzc(iArr);
        for (int i2 = 0; i2 < 16; i2++) {
            zzb[i2] = zzb[i2] + iArr[i2];
        }
        ByteBuffer order = ByteBuffer.allocate(64).order(ByteOrder.LITTLE_ENDIAN);
        order.asIntBuffer().put(zzb, 0, 16);
        return order;
    }

    public final byte[] zzd(byte[] bArr, ByteBuffer byteBuffer) {
        ByteBuffer allocate = ByteBuffer.allocate(byteBuffer.remaining());
        if (bArr.length == zza()) {
            int remaining = byteBuffer.remaining();
            int i = remaining / 64;
            for (int i2 = 0; i2 < i + 1; i2++) {
                ByteBuffer zzc = zzc(bArr, this.zzb + i2);
                if (i2 == i) {
                    zzgwp.zza(allocate, byteBuffer, zzc, remaining % 64);
                } else {
                    zzgwp.zza(allocate, byteBuffer, zzc, 64);
                }
            }
            return allocate.array();
        }
        int zza = zza();
        throw new GeneralSecurityException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{6746893496750241670L, -5907436274141968368L, 5454993457432333065L, -2870520294013022968L, 9213747634267155060L, -2974818786005927646L}), new StringBuilder(), zza));
    }
}
