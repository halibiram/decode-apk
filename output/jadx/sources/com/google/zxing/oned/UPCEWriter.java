package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.FormatException;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.Collection;
import java.util.Collections;

/* loaded from: classes3.dex */
public final class UPCEWriter extends UPCEANWriter {
    private static final int CODE_WIDTH = 51;

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public boolean[] encode(String str) {
        int length = str.length();
        if (length != 7) {
            if (length == 8) {
                try {
                    if (!UPCEANReader.checkStandardUPCEANChecksum(UPCEReader.convertUPCEtoUPCA(str))) {
                        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-8069314464289700966L, 5104406391512710851L, 8432079488319396773L, -1613649332352025169L, -7256142098507592527L}).toString());
                    }
                } catch (FormatException unused) {
                    throw new IllegalArgumentException(new ObfuscatedString(new long[]{8025892775480894202L, 9175039119006549229L, 60200547291818981L}).toString());
                }
            } else {
                throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{7540880327327737150L, 3072623414694304447L, -1980204784521584147L, 218158700267914746L, -6804196775694482597L, 780775110744965688L, -3869735669148850985L, -2814909318047278912L, 5524107571148367353L}), new StringBuilder(), length));
            }
        } else {
            try {
                str = str + UPCEANReader.getStandardUPCEANChecksum(UPCEReader.convertUPCEtoUPCA(str));
            } catch (FormatException e) {
                throw new IllegalArgumentException(e);
            }
        }
        OneDimensionalCodeWriter.checkNumeric(str);
        int digit = Character.digit(str.charAt(0), 10);
        if (digit != 0 && digit != 1) {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{3599453294177787139L, 3756877785814138183L, 279591336367603720L, 8856220338649019066L, 312172507649130870L}).toString());
        }
        int i = UPCEReader.NUMSYS_AND_CHECK_DIGIT_PATTERNS[digit][Character.digit(str.charAt(7), 10)];
        boolean[] zArr = new boolean[51];
        int appendPattern = OneDimensionalCodeWriter.appendPattern(zArr, 0, UPCEANReader.START_END_PATTERN, true);
        for (int i2 = 1; i2 <= 6; i2++) {
            int digit2 = Character.digit(str.charAt(i2), 10);
            if (((i >> (6 - i2)) & 1) == 1) {
                digit2 += 10;
            }
            appendPattern += OneDimensionalCodeWriter.appendPattern(zArr, appendPattern, UPCEANReader.L_AND_G_PATTERNS[digit2], false);
        }
        OneDimensionalCodeWriter.appendPattern(zArr, appendPattern, UPCEANReader.END_PATTERN, false);
        return zArr;
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public Collection<BarcodeFormat> getSupportedWriteFormats() {
        return Collections.singleton(BarcodeFormat.UPC_E);
    }
}
