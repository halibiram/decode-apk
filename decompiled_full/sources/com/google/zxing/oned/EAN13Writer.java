package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.FormatException;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.Collection;
import java.util.Collections;

/* loaded from: classes3.dex */
public final class EAN13Writer extends UPCEANWriter {
    private static final int CODE_WIDTH = 95;

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public boolean[] encode(String str) {
        int length = str.length();
        if (length != 12) {
            if (length == 13) {
                try {
                    if (!UPCEANReader.checkStandardUPCEANChecksum(str)) {
                        throw new IllegalArgumentException(new ObfuscatedString(new long[]{4511822107512345384L, 7196202499688877865L, 1228227000467738736L, -4780201746659197722L, -6911057154345799881L}).toString());
                    }
                } catch (FormatException unused) {
                    throw new IllegalArgumentException(new ObfuscatedString(new long[]{5295532841649996910L, 504967659835872189L, 5024151836116743691L}).toString());
                }
            } else {
                throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-3819495327349908955L, 5221340304274599110L, 636460495331832835L, -6081671172939291043L, 4066968909069319350L, -4055061772581925889L, -6694896190001805921L, 1354324394454814061L, -898810887784169825L}), new StringBuilder(), length));
            }
        } else {
            try {
                str = str + UPCEANReader.getStandardUPCEANChecksum(str);
            } catch (FormatException e) {
                throw new IllegalArgumentException(e);
            }
        }
        OneDimensionalCodeWriter.checkNumeric(str);
        int i = EAN13Reader.FIRST_DIGIT_ENCODINGS[Character.digit(str.charAt(0), 10)];
        boolean[] zArr = new boolean[95];
        int appendPattern = OneDimensionalCodeWriter.appendPattern(zArr, 0, UPCEANReader.START_END_PATTERN, true);
        for (int i2 = 1; i2 <= 6; i2++) {
            int digit = Character.digit(str.charAt(i2), 10);
            if (((i >> (6 - i2)) & 1) == 1) {
                digit += 10;
            }
            appendPattern += OneDimensionalCodeWriter.appendPattern(zArr, appendPattern, UPCEANReader.L_AND_G_PATTERNS[digit], false);
        }
        int appendPattern2 = OneDimensionalCodeWriter.appendPattern(zArr, appendPattern, UPCEANReader.MIDDLE_PATTERN, false) + appendPattern;
        for (int i3 = 7; i3 <= 12; i3++) {
            appendPattern2 += OneDimensionalCodeWriter.appendPattern(zArr, appendPattern2, UPCEANReader.L_PATTERNS[Character.digit(str.charAt(i3), 10)], true);
        }
        OneDimensionalCodeWriter.appendPattern(zArr, appendPattern2, UPCEANReader.START_END_PATTERN, true);
        return zArr;
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public Collection<BarcodeFormat> getSupportedWriteFormats() {
        return Collections.singleton(BarcodeFormat.EAN_13);
    }
}
