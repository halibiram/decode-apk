package com.google.android.gms.common.util;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import com.panda912.muddy.ObfuscatedString;

@KeepForSdk
/* loaded from: classes2.dex */
public final class HexDumpUtils {
    @Nullable
    @ResultIgnorabilityUnspecified
    @KeepForSdk
    public static String dump(@NonNull byte[] bArr, int i, int i2, boolean z) {
        int length;
        int i3;
        if (bArr != null && (length = bArr.length) != 0 && i >= 0 && i2 > 0 && i + i2 <= length) {
            if (z) {
                i3 = 75;
            } else {
                i3 = 57;
            }
            StringBuilder sb = new StringBuilder(((i2 + 15) / 16) * i3);
            int i4 = i;
            int i5 = i2;
            int i6 = 0;
            int i7 = 0;
            while (i5 > 0) {
                if (i6 == 0) {
                    if (i2 < 65536) {
                        sb.append(String.format(new ObfuscatedString(new long[]{-332665090376450296L, -5721961251550276028L}).toString(), Integer.valueOf(i4)));
                    } else {
                        sb.append(String.format(new ObfuscatedString(new long[]{1007305236696578207L, 3593888457852101539L}).toString(), Integer.valueOf(i4)));
                    }
                    i7 = i4;
                } else if (i6 == 8) {
                    sb.append(new ObfuscatedString(new long[]{-9162870979015796894L, 2831710684380075486L}).toString());
                }
                sb.append(String.format(new ObfuscatedString(new long[]{-4491662335449558660L, -2829375724993592996L}).toString(), Integer.valueOf(bArr[i4] & 255)));
                i5--;
                i6++;
                if (z && (i6 == 16 || i5 == 0)) {
                    int i8 = 16 - i6;
                    if (i8 > 0) {
                        for (int i9 = 0; i9 < i8; i9++) {
                            sb.append(new ObfuscatedString(new long[]{-160723125899535370L, 8309776581733161576L}).toString());
                        }
                    }
                    if (i8 >= 8) {
                        sb.append(new ObfuscatedString(new long[]{-668009983295063046L, 2531887067894715226L}).toString());
                    }
                    sb.append(new ObfuscatedString(new long[]{3467299912766941871L, 727204659291865690L}).toString());
                    for (int i10 = 0; i10 < i6; i10++) {
                        char c = (char) bArr[i7 + i10];
                        if (c < ' ' || c > '~') {
                            c = '.';
                        }
                        sb.append(c);
                    }
                }
                if (i6 == 16 || i5 == 0) {
                    sb.append('\n');
                    i6 = 0;
                }
                i4++;
            }
            return sb.toString();
        }
        return null;
    }
}
