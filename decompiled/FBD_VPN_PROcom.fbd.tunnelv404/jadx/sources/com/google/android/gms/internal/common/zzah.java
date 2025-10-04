package com.google.android.gms.internal.common;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import org.jspecify.nullness.NullMarked;

@NullMarked
/* loaded from: classes2.dex */
public final class zzah {
    @CanIgnoreReturnValue
    public static Object[] zza(Object[] objArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (objArr[i2] == null) {
                throw new NullPointerException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{2649962699831971241L, -7502221871894585036L, -6007689356003685413L}), new StringBuilder(), i2));
            }
        }
        return objArr;
    }
}
