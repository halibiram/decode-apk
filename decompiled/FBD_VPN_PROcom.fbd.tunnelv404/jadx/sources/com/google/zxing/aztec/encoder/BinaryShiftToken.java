package com.google.zxing.aztec.encoder;

import com.google.zxing.common.BitArray;
import com.panda912.muddy.ObfuscatedString;
import kotlin.text.Typography;

/* loaded from: classes3.dex */
final class BinaryShiftToken extends Token {
    private final int binaryShiftByteCount;
    private final int binaryShiftStart;

    public BinaryShiftToken(Token token, int i, int i2) {
        super(token);
        this.binaryShiftStart = i;
        this.binaryShiftByteCount = i2;
    }

    @Override // com.google.zxing.aztec.encoder.Token
    public void appendTo(BitArray bitArray, byte[] bArr) {
        int i = this.binaryShiftByteCount;
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 == 0 || (i2 == 31 && i <= 62)) {
                bitArray.appendBits(31, 5);
                if (i > 62) {
                    bitArray.appendBits(i - 31, 16);
                } else if (i2 == 0) {
                    bitArray.appendBits(Math.min(i, 31), 5);
                } else {
                    bitArray.appendBits(i - 31, 5);
                }
            }
            bitArray.appendBits(bArr[this.binaryShiftStart + i2], 8);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-6606506456644226426L, -3823125064064044111L}).toString());
        sb.append(this.binaryShiftStart);
        sb.append(new ObfuscatedString(new long[]{4752019274782180935L, 7630196427496888439L}).toString());
        sb.append((this.binaryShiftStart + this.binaryShiftByteCount) - 1);
        sb.append(Typography.greater);
        return sb.toString();
    }
}
