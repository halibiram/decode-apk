package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.EnumMap;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class UPCEANExtension5Support {
    private static final int[] CHECK_DIGIT_ENCODINGS = {24, 20, 18, 17, 12, 6, 3, 10, 9, 5};
    private final int[] decodeMiddleCounters = new int[4];
    private final StringBuilder decodeRowStringBuffer = new StringBuilder();

    private int decodeMiddle(BitArray bitArray, int[] iArr, StringBuilder sb) {
        int[] iArr2 = this.decodeMiddleCounters;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int size = bitArray.getSize();
        int i = iArr[1];
        int i2 = 0;
        for (int i3 = 0; i3 < 5 && i < size; i3++) {
            int decodeDigit = UPCEANReader.decodeDigit(bitArray, iArr2, i, UPCEANReader.L_AND_G_PATTERNS);
            sb.append((char) ((decodeDigit % 10) + 48));
            for (int i4 : iArr2) {
                i += i4;
            }
            if (decodeDigit >= 10) {
                i2 |= 1 << (4 - i3);
            }
            if (i3 != 4) {
                i = bitArray.getNextUnset(bitArray.getNextSet(i));
            }
        }
        if (sb.length() == 5) {
            if (extensionChecksum(sb.toString()) == determineCheckDigit(i2)) {
                return i;
            }
            throw NotFoundException.getNotFoundInstance();
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int determineCheckDigit(int i) {
        for (int i2 = 0; i2 < 10; i2++) {
            if (i == CHECK_DIGIT_ENCODINGS[i2]) {
                return i2;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int extensionChecksum(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        for (int i2 = length - 2; i2 >= 0; i2 -= 2) {
            i += charSequence.charAt(i2) - '0';
        }
        int i3 = i * 3;
        for (int i4 = length - 1; i4 >= 0; i4 -= 2) {
            i3 += charSequence.charAt(i4) - '0';
        }
        return (i3 * 3) % 10;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static String parseExtension5String(String str) {
        String obfuscatedString;
        String valueOf;
        char c;
        char charAt = str.charAt(0);
        if (charAt != '0') {
            if (charAt != '5') {
                if (charAt != '9') {
                    obfuscatedString = new ObfuscatedString(new long[]{1502357602182125771L}).toString();
                } else {
                    switch (str.hashCode()) {
                        case 54118329:
                            if (str.equals(new ObfuscatedString(new long[]{6651780749379704619L, 1028142234612134625L}).toString())) {
                                c = 0;
                                break;
                            }
                            c = 65535;
                            break;
                        case 54395376:
                            if (str.equals(new ObfuscatedString(new long[]{-5878230192517900228L, 7316073647846625835L}).toString())) {
                                c = 2;
                                break;
                            }
                            c = 65535;
                            break;
                        case 54395377:
                            if (str.equals(new ObfuscatedString(new long[]{5505860755541383435L, -6113852396145677878L}).toString())) {
                                c = 1;
                                break;
                            }
                            c = 65535;
                            break;
                        default:
                            c = 65535;
                            break;
                    }
                    if (c != 0) {
                        if (c != 1) {
                            if (c != 2) {
                                obfuscatedString = new ObfuscatedString(new long[]{-183620714013322808L}).toString();
                            } else {
                                return new ObfuscatedString(new long[]{5339798632622282535L, 6215044470027836477L}).toString();
                            }
                        } else {
                            return new ObfuscatedString(new long[]{-8107845477492288374L, 1218822297373701286L}).toString();
                        }
                    } else {
                        return null;
                    }
                }
            } else {
                obfuscatedString = new ObfuscatedString(new long[]{-4505828996925457690L, 1160035657546320949L}).toString();
            }
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{8968895609402449043L, -8757323002589114712L}).toString();
        }
        int parseInt = Integer.parseInt(str.substring(1));
        String valueOf2 = String.valueOf(parseInt / 100);
        int i = parseInt % 100;
        if (i < 10) {
            valueOf = AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-5958978844000472552L, -8076998447169396751L}), new StringBuilder(), i);
        } else {
            valueOf = String.valueOf(i);
        }
        return obfuscatedString + valueOf2 + '.' + valueOf;
    }

    private static Map<ResultMetadataType, Object> parseExtensionString(String str) {
        String parseExtension5String;
        if (str.length() != 5 || (parseExtension5String = parseExtension5String(str)) == null) {
            return null;
        }
        EnumMap enumMap = new EnumMap(ResultMetadataType.class);
        enumMap.put((EnumMap) ResultMetadataType.SUGGESTED_PRICE, (ResultMetadataType) parseExtension5String);
        return enumMap;
    }

    public Result decodeRow(int i, BitArray bitArray, int[] iArr) {
        StringBuilder sb = this.decodeRowStringBuffer;
        sb.setLength(0);
        int decodeMiddle = decodeMiddle(bitArray, iArr, sb);
        String sb2 = sb.toString();
        Map<ResultMetadataType, Object> parseExtensionString = parseExtensionString(sb2);
        float f = i;
        Result result = new Result(sb2, null, new ResultPoint[]{new ResultPoint((iArr[0] + iArr[1]) / 2.0f, f), new ResultPoint(decodeMiddle, f)}, BarcodeFormat.UPC_EAN_EXTENSION);
        if (parseExtensionString != null) {
            result.putAllMetadata(parseExtensionString);
        }
        return result;
    }
}
