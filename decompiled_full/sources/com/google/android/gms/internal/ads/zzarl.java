package com.google.android.gms.internal.ads;

import androidx.core.view.ViewCompat;
import com.google.common.base.Ascii;
import com.panda912.muddy.ObfuscatedString;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public final class zzarl {
    public static double zza(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        int i = bArr[0] << Ascii.CAN;
        int i2 = bArr[1] << Ascii.DLE;
        int i3 = bArr[2] << 8;
        return ((((i & ViewCompat.MEASURED_STATE_MASK) | (i2 & 16711680)) | (65280 & i3)) | (bArr[3] & 255)) / 1.073741824E9d;
    }

    public static double zzb(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        int i = bArr[0] << Ascii.CAN;
        int i2 = bArr[1] << Ascii.DLE;
        int i3 = bArr[2] << 8;
        return ((((i & ViewCompat.MEASURED_STATE_MASK) | (i2 & 16711680)) | (65280 & i3)) | (bArr[3] & 255)) / 65536.0d;
    }

    public static int zzc(byte b) {
        return b < 0 ? b + 256 : b;
    }

    public static int zzd(ByteBuffer byteBuffer) {
        return (zzc(byteBuffer.get()) << 8) + zzc(byteBuffer.get());
    }

    public static long zze(ByteBuffer byteBuffer) {
        long j = byteBuffer.getInt();
        if (j < 0) {
            return j + 4294967296L;
        }
        return j;
    }

    public static long zzf(ByteBuffer byteBuffer) {
        long zze = zze(byteBuffer) << 32;
        if (zze >= 0) {
            return zze(byteBuffer) + zze;
        }
        throw new RuntimeException(new ObfuscatedString(new long[]{-6658452868679247409L, 1853567713211170452L, 3250149233159997848L, 7453217876538968556L, 3565543708918797824L, 6000940692865871928L, -4578965881432625258L, -2515686772716857304L, 1595756104361453023L, -5741034082039017780L, 6924957536724021503L, 4207696171356750123L, -2942253046605168402L}).toString());
    }
}
