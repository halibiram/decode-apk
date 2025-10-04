package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.Collection;
import java.util.Collections;
import kotlin.text.Typography;

/* loaded from: classes3.dex */
public final class Code39Writer extends OneDimensionalCodeWriter {
    private static void toIntArray(int i, int[] iArr) {
        for (int i2 = 0; i2 < 9; i2++) {
            int i3 = 1;
            if (((1 << (8 - i2)) & i) != 0) {
                i3 = 2;
            }
            iArr[i2] = i3;
        }
    }

    private static String tryToConvertToExtendedMode(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt != 0) {
                if (charAt != ' ') {
                    if (charAt != '@') {
                        if (charAt != '`') {
                            if (charAt != '-' && charAt != '.') {
                                if (charAt <= 26) {
                                    sb.append(Typography.dollar);
                                    sb.append((char) (charAt + '@'));
                                } else if (charAt < ' ') {
                                    sb.append('%');
                                    sb.append((char) (charAt + Typography.amp));
                                } else if (charAt > ',' && charAt != '/' && charAt != ':') {
                                    if (charAt <= '9') {
                                        sb.append(charAt);
                                    } else if (charAt <= '?') {
                                        sb.append('%');
                                        sb.append((char) (charAt + 11));
                                    } else if (charAt <= 'Z') {
                                        sb.append(charAt);
                                    } else if (charAt <= '_') {
                                        sb.append('%');
                                        sb.append((char) (charAt - 16));
                                    } else if (charAt <= 'z') {
                                        sb.append('+');
                                        sb.append((char) (charAt - ' '));
                                    } else if (charAt <= 127) {
                                        sb.append('%');
                                        sb.append((char) (charAt - '+'));
                                    } else {
                                        StringBuilder sb2 = new StringBuilder();
                                        sb2.append(new ObfuscatedString(new long[]{1768616851122295110L, -7920717047564611198L, -1594866578818503108L, -4220977969010030630L, 66988649284362325L, -5334819344201551795L, 7572815129679797279L, 4647611232807454198L}).toString());
                                        sb2.append(str.charAt(i));
                                        throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-1618129409526917756L, 2258101492603781825L}), sb2));
                                    }
                                } else {
                                    sb.append('/');
                                    sb.append((char) (charAt + ' '));
                                }
                            }
                        } else {
                            sb.append(new ObfuscatedString(new long[]{-727593573887340226L, -917147878415317993L}).toString());
                        }
                    } else {
                        sb.append(new ObfuscatedString(new long[]{6508590818192126909L, 4035365209685472180L}).toString());
                    }
                }
                sb.append(charAt);
            } else {
                sb.append(new ObfuscatedString(new long[]{7392216176662932541L, -2975329681608803867L}).toString());
            }
        }
        return sb.toString();
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public boolean[] encode(String str) {
        int length = str.length();
        if (length <= 80) {
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (new ObfuscatedString(new long[]{-4608398435393591879L, -6351237927391191410L, -5571440494514599249L, -7416829332992878252L, 8973440411072490253L, -3275255469326519956L, 2945833934243145281L}).toString().indexOf(str.charAt(i)) < 0) {
                    str = tryToConvertToExtendedMode(str);
                    length = str.length();
                    if (length > 80) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(new ObfuscatedString(new long[]{6292148990861401677L, -1632944701179868668L, 7714115492478204756L, 8516236267723346608L, -5287236542678696546L, -13349372759748490L, 2076611553196558748L, -5236635009309531926L, -8761338847923429991L}).toString());
                        sb.append(length);
                        throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-8862464338113265031L, 1372076882103352249L, 2242606674624180209L, -645382230460746759L, -2652827025624169563L}), sb));
                    }
                } else {
                    i++;
                }
            }
            int[] iArr = new int[9];
            boolean[] zArr = new boolean[(length * 13) + 25];
            toIntArray(148, iArr);
            int appendPattern = OneDimensionalCodeWriter.appendPattern(zArr, 0, iArr, true);
            int[] iArr2 = {1};
            int appendPattern2 = OneDimensionalCodeWriter.appendPattern(zArr, appendPattern, iArr2, false) + appendPattern;
            for (int i2 = 0; i2 < length; i2++) {
                toIntArray(Code39Reader.CHARACTER_ENCODINGS[new ObfuscatedString(new long[]{548164850395376601L, -4806020525972825365L, -6217618601116144838L, 2705045157577172239L, -689276052315626875L, -5416239514793777138L, 1657514890583219537L}).toString().indexOf(str.charAt(i2))], iArr);
                int appendPattern3 = OneDimensionalCodeWriter.appendPattern(zArr, appendPattern2, iArr, true) + appendPattern2;
                appendPattern2 = OneDimensionalCodeWriter.appendPattern(zArr, appendPattern3, iArr2, false) + appendPattern3;
            }
            toIntArray(148, iArr);
            OneDimensionalCodeWriter.appendPattern(zArr, appendPattern2, iArr, true);
            return zArr;
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{8752477852027931324L, 1415077440687023811L, -8838362009406052922L, -6161530172522444474L, 8112605825605801780L, -830724176195831828L, 2362289193466570426L, 7085642100920472279L, 6432390854340409754L}), new StringBuilder(), length));
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public Collection<BarcodeFormat> getSupportedWriteFormats() {
        return Collections.singleton(BarcodeFormat.CODE_39);
    }
}
