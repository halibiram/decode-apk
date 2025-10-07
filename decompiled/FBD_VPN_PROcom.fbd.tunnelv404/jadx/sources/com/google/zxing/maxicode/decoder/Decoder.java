package com.google.zxing.maxicode.decoder;

import com.google.common.base.Ascii;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonDecoder;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import java.util.Map;

/* loaded from: classes3.dex */
public final class Decoder {
    private static final int ALL = 0;
    private static final int EVEN = 1;
    private static final int ODD = 2;
    private final ReedSolomonDecoder rsDecoder = new ReedSolomonDecoder(GenericGF.MAXICODE_FIELD_64);

    private int correctErrors(byte[] bArr, int i, int i2, int i3, int i4) {
        int i5;
        int i6 = i2 + i3;
        if (i4 == 0) {
            i5 = 1;
        } else {
            i5 = 2;
        }
        int[] iArr = new int[i6 / i5];
        for (int i7 = 0; i7 < i6; i7++) {
            if (i4 == 0 || i7 % 2 == i4 - 1) {
                iArr[i7 / i5] = bArr[i7 + i] & 255;
            }
        }
        try {
            int decodeWithECCount = this.rsDecoder.decodeWithECCount(iArr, i3 / i5);
            for (int i8 = 0; i8 < i2; i8++) {
                if (i4 == 0 || i8 % 2 == i4 - 1) {
                    bArr[i8 + i] = (byte) iArr[i8 / i5];
                }
            }
            return decodeWithECCount;
        } catch (ReedSolomonException unused) {
            throw ChecksumException.getChecksumInstance();
        }
    }

    public DecoderResult decode(BitMatrix bitMatrix) {
        return decode(bitMatrix, null);
    }

    public DecoderResult decode(BitMatrix bitMatrix, Map<DecodeHintType, ?> map) {
        int correctErrors;
        byte[] bArr;
        byte[] readCodewords = new BitMatrixParser(bitMatrix).readCodewords();
        int correctErrors2 = correctErrors(readCodewords, 0, 10, 10, 0);
        int i = readCodewords[0] & Ascii.SI;
        if (i == 2 || i == 3 || i == 4) {
            correctErrors = correctErrors2 + correctErrors(readCodewords, 20, 84, 40, 1) + correctErrors(readCodewords, 20, 84, 40, 2);
            bArr = new byte[94];
        } else if (i == 5) {
            correctErrors = correctErrors2 + correctErrors(readCodewords, 20, 68, 56, 1) + correctErrors(readCodewords, 20, 68, 56, 2);
            bArr = new byte[78];
        } else {
            throw FormatException.getFormatInstance();
        }
        System.arraycopy(readCodewords, 0, bArr, 0, 10);
        System.arraycopy(readCodewords, 20, bArr, 10, bArr.length - 10);
        DecoderResult decode = DecodedBitStreamParser.decode(bArr, i);
        decode.setErrorsCorrected(Integer.valueOf(correctErrors));
        return decode;
    }
}
