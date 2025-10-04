package com.google.zxing.datamatrix.encoder;

import com.google.zxing.Dimension;
import com.panda912.muddy.ObfuscatedString;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class HighLevelEncoder {
    static final int ASCII_ENCODATION = 0;
    static final int BASE256_ENCODATION = 5;
    static final int C40_ENCODATION = 1;
    static final char C40_UNLATCH = 254;
    static final int EDIFACT_ENCODATION = 4;
    static final char LATCH_TO_ANSIX12 = 238;
    static final char LATCH_TO_BASE256 = 231;
    static final char LATCH_TO_C40 = 230;
    static final char LATCH_TO_EDIFACT = 240;
    static final char LATCH_TO_TEXT = 239;
    private static final char MACRO_05 = 236;
    private static final char MACRO_06 = 237;
    private static final char PAD = 129;
    static final int TEXT_ENCODATION = 2;
    static final char UPPER_SHIFT = 235;
    static final int X12_ENCODATION = 3;
    static final char X12_UNLATCH = 254;
    static final String MACRO_05_HEADER = new ObfuscatedString(new long[]{-1256675793617831390L, 5337095193301848574L}).toString();
    static final String MACRO_06_HEADER = new ObfuscatedString(new long[]{8432984585966170076L, -3147951428526620857L}).toString();
    static final String MACRO_TRAILER = new ObfuscatedString(new long[]{1779248759871450736L, 6298286224545034440L}).toString();

    private HighLevelEncoder() {
    }

    public static int determineConsecutiveDigitCount(CharSequence charSequence, int i) {
        int length = charSequence.length();
        int i2 = i;
        while (i2 < length && isDigit(charSequence.charAt(i2))) {
            i2++;
        }
        return i2 - i;
    }

    public static String encodeHighLevel(String str) {
        return encodeHighLevel(str, SymbolShapeHint.FORCE_NONE, null, null, false);
    }

    private static int findMinimums(float[] fArr, int[] iArr, int i, byte[] bArr) {
        for (int i2 = 0; i2 < 6; i2++) {
            int ceil = (int) Math.ceil(fArr[i2]);
            iArr[i2] = ceil;
            if (i > ceil) {
                Arrays.fill(bArr, (byte) 0);
                i = ceil;
            }
            if (i == ceil) {
                bArr[i2] = (byte) (bArr[i2] + 1);
            }
        }
        return i;
    }

    private static int getMinimumCount(byte[] bArr) {
        int i = 0;
        for (int i2 = 0; i2 < 6; i2++) {
            i += bArr[i2];
        }
        return i;
    }

    public static void illegalCharacter(char c) {
        String hexString = Integer.toHexString(c);
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{4706051667450586264L, -2394920768079909009L, -2957753378224379168L, 3129966505352349885L}).toString() + c + new ObfuscatedString(new long[]{-3438436599864338314L, 4036679333686899814L}).toString() + (new ObfuscatedString(new long[]{-774918803381207214L, 7912390479881477368L}).toString().substring(0, 4 - hexString.length()) + hexString) + ')');
    }

    public static boolean isDigit(char c) {
        return c >= '0' && c <= '9';
    }

    public static boolean isExtendedASCII(char c) {
        return c >= 128 && c <= 255;
    }

    public static boolean isNativeC40(char c) {
        return c == ' ' || (c >= '0' && c <= '9') || (c >= 'A' && c <= 'Z');
    }

    public static boolean isNativeEDIFACT(char c) {
        return c >= ' ' && c <= '^';
    }

    public static boolean isNativeText(char c) {
        return c == ' ' || (c >= '0' && c <= '9') || (c >= 'a' && c <= 'z');
    }

    public static boolean isNativeX12(char c) {
        if (!isX12TermSep(c) && c != ' ' && ((c < '0' || c > '9') && (c < 'A' || c > 'Z'))) {
            return false;
        }
        return true;
    }

    private static boolean isSpecialB256(char c) {
        return false;
    }

    private static boolean isX12TermSep(char c) {
        return c == '\r' || c == '*' || c == '>';
    }

    public static int lookAheadTest(CharSequence charSequence, int i, int i2) {
        int lookAheadTestIntern = lookAheadTestIntern(charSequence, i, i2);
        if (i2 == 3 && lookAheadTestIntern == 3) {
            int min = Math.min(i + 3, charSequence.length());
            while (i < min) {
                if (!isNativeX12(charSequence.charAt(i))) {
                    return 0;
                }
                i++;
            }
        } else if (i2 == 4 && lookAheadTestIntern == 4) {
            int min2 = Math.min(i + 4, charSequence.length());
            while (i < min2) {
                if (!isNativeEDIFACT(charSequence.charAt(i))) {
                    return 0;
                }
                i++;
            }
        }
        return lookAheadTestIntern;
    }

    public static int lookAheadTestIntern(CharSequence charSequence, int i, int i2) {
        float[] fArr;
        char c;
        if (i >= charSequence.length()) {
            return i2;
        }
        float f = 2.0f;
        int i3 = 5;
        int i4 = 2;
        int i5 = 4;
        int i6 = 3;
        if (i2 == 0) {
            fArr = new float[]{0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.25f};
        } else {
            fArr = new float[6];
            fArr[0] = 1.0f;
            fArr[1] = 2.0f;
            fArr[2] = 2.0f;
            fArr[3] = 2.0f;
            fArr[4] = 2.0f;
            fArr[5] = 2.25f;
            fArr[i2] = 0.0f;
        }
        byte[] bArr = new byte[6];
        int[] iArr = new int[6];
        int i7 = 0;
        while (true) {
            int i8 = i + i7;
            if (i8 == charSequence.length()) {
                Arrays.fill(bArr, (byte) 0);
                Arrays.fill(iArr, 0);
                int findMinimums = findMinimums(fArr, iArr, Integer.MAX_VALUE, bArr);
                int minimumCount = getMinimumCount(bArr);
                if (iArr[0] == findMinimums) {
                    return 0;
                }
                if (minimumCount == 1) {
                    if (bArr[i3] > 0) {
                        return i3;
                    }
                    if (bArr[i5] > 0) {
                        return i5;
                    }
                    if (bArr[i4] > 0) {
                        return i4;
                    }
                    if (bArr[i6] > 0) {
                        return i6;
                    }
                }
                return 1;
            }
            char charAt = charSequence.charAt(i8);
            i7++;
            if (isDigit(charAt)) {
                fArr[0] = fArr[0] + 0.5f;
            } else if (isExtendedASCII(charAt)) {
                float ceil = (float) Math.ceil(fArr[0]);
                fArr[0] = ceil;
                fArr[0] = ceil + f;
            } else {
                float ceil2 = (float) Math.ceil(fArr[0]);
                fArr[0] = ceil2;
                fArr[0] = ceil2 + 1.0f;
            }
            if (isNativeC40(charAt)) {
                fArr[1] = fArr[1] + 0.6666667f;
            } else if (isExtendedASCII(charAt)) {
                fArr[1] = fArr[1] + 2.6666667f;
            } else {
                fArr[1] = fArr[1] + 1.3333334f;
            }
            if (isNativeText(charAt)) {
                fArr[i4] = fArr[i4] + 0.6666667f;
            } else if (isExtendedASCII(charAt)) {
                fArr[i4] = fArr[i4] + 2.6666667f;
            } else {
                fArr[i4] = fArr[i4] + 1.3333334f;
            }
            if (isNativeX12(charAt)) {
                fArr[i6] = fArr[i6] + 0.6666667f;
            } else if (isExtendedASCII(charAt)) {
                fArr[i6] = fArr[i6] + 4.3333335f;
            } else {
                fArr[i6] = fArr[i6] + 3.3333333f;
            }
            if (isNativeEDIFACT(charAt)) {
                fArr[i5] = fArr[i5] + 0.75f;
            } else if (isExtendedASCII(charAt)) {
                fArr[i5] = fArr[i5] + 4.25f;
            } else {
                fArr[i5] = fArr[i5] + 3.25f;
            }
            if (isSpecialB256(charAt)) {
                c = 5;
                fArr[5] = fArr[5] + 4.0f;
            } else {
                c = 5;
                fArr[5] = fArr[5] + 1.0f;
            }
            if (i7 >= i5) {
                Arrays.fill(bArr, (byte) 0);
                Arrays.fill(iArr, 0);
                findMinimums(fArr, iArr, Integer.MAX_VALUE, bArr);
                if (iArr[0] < min(iArr[c], iArr[1], iArr[i4], iArr[i6], iArr[i5])) {
                    return 0;
                }
                int i9 = iArr[c];
                if (i9 < iArr[0] || i9 + 1 < min(iArr[1], iArr[2], iArr[3], iArr[i5])) {
                    return 5;
                }
                if (iArr[i5] + 1 < min(iArr[5], iArr[1], iArr[2], iArr[3], iArr[0])) {
                    return i5;
                }
                if (iArr[2] + 1 < min(iArr[5], iArr[1], iArr[i5], iArr[3], iArr[0])) {
                    return 2;
                }
                if (iArr[3] + 1 < min(iArr[5], iArr[1], iArr[4], iArr[2], iArr[0])) {
                    return 3;
                }
                if (iArr[1] + 1 < min(iArr[0], iArr[5], iArr[4], iArr[2])) {
                    int i10 = iArr[1];
                    int i11 = iArr[3];
                    if (i10 < i11) {
                        return 1;
                    }
                    if (i10 == i11) {
                        for (int i12 = i + i7 + 1; i12 < charSequence.length(); i12++) {
                            char charAt2 = charSequence.charAt(i12);
                            if (isX12TermSep(charAt2)) {
                                return 3;
                            }
                            if (!isNativeX12(charAt2)) {
                                break;
                            }
                        }
                        return 1;
                    }
                }
                i3 = 5;
            } else {
                i3 = 5;
            }
            f = 2.0f;
            i4 = 2;
            i5 = 4;
            i6 = 3;
        }
    }

    private static int min(int i, int i2, int i3, int i4, int i5) {
        return Math.min(min(i, i2, i3, i4), i5);
    }

    private static char randomize253State(int i) {
        int i2 = (i * 149) % 253;
        int i3 = i2 + 130;
        if (i3 > 254) {
            i3 = i2 - 124;
        }
        return (char) i3;
    }

    public static String encodeHighLevel(String str, SymbolShapeHint symbolShapeHint, Dimension dimension, Dimension dimension2) {
        return encodeHighLevel(str, symbolShapeHint, dimension, dimension2, false);
    }

    private static int min(int i, int i2, int i3, int i4) {
        return Math.min(i, Math.min(i2, Math.min(i3, i4)));
    }

    public static String encodeHighLevel(String str, SymbolShapeHint symbolShapeHint, Dimension dimension, Dimension dimension2, boolean z) {
        C40Encoder c40Encoder = new C40Encoder();
        int i = 0;
        Encoder[] encoderArr = {new ASCIIEncoder(), c40Encoder, new TextEncoder(), new X12Encoder(), new EdifactEncoder(), new Base256Encoder()};
        EncoderContext encoderContext = new EncoderContext(str);
        encoderContext.setSymbolShape(symbolShapeHint);
        encoderContext.setSizeConstraints(dimension, dimension2);
        if (str.startsWith(new ObfuscatedString(new long[]{4646726476623781829L, 4141486823054452843L}).toString()) && str.endsWith(new ObfuscatedString(new long[]{7492739102822226107L, 9181799690754335027L}).toString())) {
            encoderContext.writeCodeword(MACRO_05);
            encoderContext.setSkipAtEnd(2);
            encoderContext.pos = new ObfuscatedString(new long[]{7599413818775774741L, 9077092046118206723L}).toString().length() + encoderContext.pos;
        } else if (str.startsWith(new ObfuscatedString(new long[]{7764122380990620496L, -7937238794361299015L}).toString()) && str.endsWith(new ObfuscatedString(new long[]{5159533848430417389L, -5759978484438400354L}).toString())) {
            encoderContext.writeCodeword(MACRO_06);
            encoderContext.setSkipAtEnd(2);
            encoderContext.pos = new ObfuscatedString(new long[]{-5350531242588201552L, 1280520151565738602L}).toString().length() + encoderContext.pos;
        }
        if (z) {
            c40Encoder.encodeMaximal(encoderContext);
            i = encoderContext.getNewEncoding();
            encoderContext.resetEncoderSignal();
        }
        while (encoderContext.hasMoreCharacters()) {
            encoderArr[i].encode(encoderContext);
            if (encoderContext.getNewEncoding() >= 0) {
                i = encoderContext.getNewEncoding();
                encoderContext.resetEncoderSignal();
            }
        }
        int codewordCount = encoderContext.getCodewordCount();
        encoderContext.updateSymbolInfo();
        int dataCapacity = encoderContext.getSymbolInfo().getDataCapacity();
        if (codewordCount < dataCapacity && i != 0 && i != 5 && i != 4) {
            encoderContext.writeCodeword((char) 254);
        }
        StringBuilder codewords = encoderContext.getCodewords();
        if (codewords.length() < dataCapacity) {
            codewords.append(PAD);
        }
        while (codewords.length() < dataCapacity) {
            codewords.append(randomize253State(codewords.length() + 1));
        }
        return encoderContext.getCodewords().toString();
    }
}
