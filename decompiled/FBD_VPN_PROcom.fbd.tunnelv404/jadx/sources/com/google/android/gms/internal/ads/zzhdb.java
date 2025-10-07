package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.nio.ByteBuffer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class zzhdb {
    public static final String zzd(ByteBuffer byteBuffer, int i, int i2) {
        int i3;
        if ((((byteBuffer.limit() - i) - i2) | i | i2) >= 0) {
            int i4 = i + i2;
            char[] cArr = new char[i2];
            int i5 = 0;
            while (i < i4) {
                byte b = byteBuffer.get(i);
                if (!zzhda.zzd(b)) {
                    break;
                }
                i++;
                cArr[i5] = (char) b;
                i5++;
            }
            int i6 = i5;
            while (i < i4) {
                int i7 = i + 1;
                byte b2 = byteBuffer.get(i);
                if (zzhda.zzd(b2)) {
                    cArr[i6] = (char) b2;
                    i6++;
                    i = i7;
                    while (i < i4) {
                        byte b3 = byteBuffer.get(i);
                        if (zzhda.zzd(b3)) {
                            i++;
                            cArr[i6] = (char) b3;
                            i6++;
                        }
                    }
                } else {
                    if (zzhda.zzf(b2)) {
                        if (i7 < i4) {
                            i3 = i6 + 1;
                            i += 2;
                            zzhda.zzc(b2, byteBuffer.get(i7), cArr, i6);
                        } else {
                            throw zzhag.zzd();
                        }
                    } else if (zzhda.zze(b2)) {
                        if (i7 < i4 - 1) {
                            i3 = i6 + 1;
                            int i8 = i + 2;
                            i += 3;
                            zzhda.zzb(b2, byteBuffer.get(i7), byteBuffer.get(i8), cArr, i6);
                        } else {
                            throw zzhag.zzd();
                        }
                    } else if (i7 < i4 - 2) {
                        byte b4 = byteBuffer.get(i7);
                        int i9 = i + 3;
                        byte b5 = byteBuffer.get(i + 2);
                        i += 4;
                        zzhda.zza(b2, b4, b5, byteBuffer.get(i9), cArr, i6);
                        i6 += 2;
                    } else {
                        throw zzhag.zzd();
                    }
                    i6 = i3;
                }
            }
            return new String(cArr, 0, i6);
        }
        throw new ArrayIndexOutOfBoundsException(String.format(new ObfuscatedString(new long[]{-5942560994022578104L, -7753104369964379786L, -6913866167726442190L, 2624302784658822668L, -9301130687531024L, -3720430187687150521L}).toString(), Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i), Integer.valueOf(i2)));
    }

    public abstract int zza(int i, byte[] bArr, int i2, int i3);

    public abstract String zzb(byte[] bArr, int i, int i2);

    public final boolean zzc(byte[] bArr, int i, int i2) {
        if (zza(0, bArr, i, i2) != 0) {
            return false;
        }
        return true;
    }
}
