package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class AI01393xDecoder extends AI01decoder {
    private static final int FIRST_THREE_DIGITS_SIZE = 10;
    private static final int HEADER_SIZE = 8;
    private static final int LAST_DIGIT_SIZE = 2;

    public AI01393xDecoder(BitArray bitArray) {
        super(bitArray);
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.AbstractExpandedDecoder
    public String parseInformation() {
        if (getInformation().getSize() >= 48) {
            StringBuilder sb = new StringBuilder();
            encodeCompressedGtin(sb, 8);
            int extractNumericValueFromBitArray = getGeneralDecoder().extractNumericValueFromBitArray(48, 2);
            sb.append(new ObfuscatedString(new long[]{-3221000084140224470L, -5714208782829947126L}).toString());
            sb.append(extractNumericValueFromBitArray);
            sb.append(')');
            int extractNumericValueFromBitArray2 = getGeneralDecoder().extractNumericValueFromBitArray(50, 10);
            if (extractNumericValueFromBitArray2 / 100 == 0) {
                sb.append('0');
            }
            if (extractNumericValueFromBitArray2 / 10 == 0) {
                sb.append('0');
            }
            sb.append(extractNumericValueFromBitArray2);
            sb.append(getGeneralDecoder().decodeGeneralPurposeField(60, null).getNewString());
            return sb.toString();
        }
        throw NotFoundException.getNotFoundInstance();
    }
}
