package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class zzzj extends IOException {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzzj(Throwable th) {
        super(new ObfuscatedString(new long[]{-4295617709614746710L, 6134912663205601721L, 5661171791791016309L}).toString() + r0 + r1, th);
        String obfuscatedString;
        String simpleName = th.getClass().getSimpleName();
        if (th.getMessage() != null) {
            obfuscatedString = new ObfuscatedString(new long[]{5175408178472524120L, -7972901017707767083L}).toString().concat(String.valueOf(th.getMessage()));
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{5129199926663201105L}).toString();
        }
    }
}
