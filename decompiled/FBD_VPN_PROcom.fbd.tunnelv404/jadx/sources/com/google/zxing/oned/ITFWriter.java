package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.Collection;
import java.util.Collections;

/* loaded from: classes3.dex */
public final class ITFWriter extends OneDimensionalCodeWriter {
    private static final int N = 1;
    private static final int W = 3;
    private static final int[] START_PATTERN = {1, 1, 1, 1};
    private static final int[] END_PATTERN = {3, 1, 1};
    private static final int[][] PATTERNS = {new int[]{1, 1, 3, 3, 1}, new int[]{3, 1, 1, 1, 3}, new int[]{1, 3, 1, 1, 3}, new int[]{3, 3, 1, 1, 1}, new int[]{1, 1, 3, 1, 3}, new int[]{3, 1, 3, 1, 1}, new int[]{1, 3, 3, 1, 1}, new int[]{1, 1, 1, 3, 3}, new int[]{3, 1, 1, 3, 1}, new int[]{1, 3, 1, 3, 1}};

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public boolean[] encode(String str) {
        int length = str.length();
        if (length % 2 == 0) {
            if (length <= 80) {
                OneDimensionalCodeWriter.checkNumeric(str);
                boolean[] zArr = new boolean[(length * 9) + 9];
                int appendPattern = OneDimensionalCodeWriter.appendPattern(zArr, 0, START_PATTERN, true);
                for (int i = 0; i < length; i += 2) {
                    int digit = Character.digit(str.charAt(i), 10);
                    int digit2 = Character.digit(str.charAt(i + 1), 10);
                    int[] iArr = new int[10];
                    for (int i2 = 0; i2 < 5; i2++) {
                        int i3 = i2 * 2;
                        int[][] iArr2 = PATTERNS;
                        iArr[i3] = iArr2[digit][i2];
                        iArr[i3 + 1] = iArr2[digit2][i2];
                    }
                    appendPattern += OneDimensionalCodeWriter.appendPattern(zArr, appendPattern, iArr, true);
                }
                OneDimensionalCodeWriter.appendPattern(zArr, appendPattern, END_PATTERN, true);
                return zArr;
            }
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{5150738626688736727L, -6622941987561969900L, -2440034963375394179L, -8888083298969203775L, -9129949921140644777L, 3475399613964128801L, -8610763564391526253L, -1430941834957004684L, -5095444731478190653L}), new StringBuilder(), length));
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{2787389500599883042L, 6705794812623868124L, 827050184933260510L, 5888550585060314136L, -6233807462689932515L, 6482721994862204560L}).toString());
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public Collection<BarcodeFormat> getSupportedWriteFormats() {
        return Collections.singleton(BarcodeFormat.ITF);
    }
}
