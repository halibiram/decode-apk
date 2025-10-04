package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.Collection;
import java.util.Collections;
import kotlin.text.Typography;

/* loaded from: classes3.dex */
public class Code93Writer extends OneDimensionalCodeWriter {
    @Deprecated
    public static int appendPattern(boolean[] zArr, int i, int[] iArr, boolean z) {
        int length = iArr.length;
        int i2 = 0;
        while (i2 < length) {
            int i3 = i + 1;
            zArr[i] = iArr[i2] != 0;
            i2++;
            i = i3;
        }
        return 9;
    }

    private static int computeChecksumIndex(String str, int i) {
        int i2 = 0;
        int i3 = 1;
        for (int length = str.length() - 1; length >= 0; length--) {
            i2 += new ObfuscatedString(new long[]{-7211370952539203542L, 6879000218388056664L, 7766973717282977069L, -2159273520384497091L, 6100784124490333275L, -8067703883077455736L, 4760327367042035835L}).toString().indexOf(str.charAt(length)) * i3;
            i3++;
            if (i3 > i) {
                i3 = 1;
            }
        }
        return i2 % 47;
    }

    public static String convertToExtended(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(length * 2);
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt == 0) {
                sb.append(new ObfuscatedString(new long[]{820966258126897822L, 1098527618505702449L}).toString());
            } else if (charAt <= 26) {
                sb.append('a');
                sb.append((char) (charAt + '@'));
            } else if (charAt <= 31) {
                sb.append('b');
                sb.append((char) (charAt + Typography.amp));
            } else if (charAt != ' ' && charAt != '$' && charAt != '%' && charAt != '+') {
                if (charAt <= ',') {
                    sb.append('c');
                    sb.append((char) (charAt + ' '));
                } else if (charAt <= '9') {
                    sb.append(charAt);
                } else if (charAt == ':') {
                    sb.append(new ObfuscatedString(new long[]{1867423033491883322L, 2826918526423266797L}).toString());
                } else if (charAt <= '?') {
                    sb.append('b');
                    sb.append((char) (charAt + 11));
                } else if (charAt == '@') {
                    sb.append(new ObfuscatedString(new long[]{1003384893385944727L, -8584484446420251005L}).toString());
                } else if (charAt <= 'Z') {
                    sb.append(charAt);
                } else if (charAt <= '_') {
                    sb.append('b');
                    sb.append((char) (charAt - 16));
                } else if (charAt == '`') {
                    sb.append(new ObfuscatedString(new long[]{5246455625902702222L, -202393065665503508L}).toString());
                } else if (charAt <= 'z') {
                    sb.append('d');
                    sb.append((char) (charAt - ' '));
                } else if (charAt <= 127) {
                    sb.append('b');
                    sb.append((char) (charAt - '+'));
                } else {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(new ObfuscatedString(new long[]{4674389778656690423L, -361439894064037845L, -170965906965291822L, 4186441167592541808L, 7314825789892222061L, -6171356886308859366L, 7929481695613923343L, 6605349108137067621L}).toString());
                    sb2.append(charAt);
                    throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-6457480540258729991L, -2521345961437285274L}), sb2));
                }
            } else {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public boolean[] encode(String str) {
        String convertToExtended = convertToExtended(str);
        int length = convertToExtended.length();
        if (length <= 80) {
            boolean[] zArr = new boolean[((convertToExtended.length() + 4) * 9) + 1];
            int appendPattern = appendPattern(zArr, 0, Code93Reader.ASTERISK_ENCODING);
            for (int i = 0; i < length; i++) {
                appendPattern += appendPattern(zArr, appendPattern, Code93Reader.CHARACTER_ENCODINGS[new ObfuscatedString(new long[]{-968287775892365722L, -5756674685745869771L, -3827260735289142794L, 7340870911322471355L, 808587931698269878L, -8749445689097736033L, 3049425491201596163L}).toString().indexOf(convertToExtended.charAt(i))]);
            }
            int computeChecksumIndex = computeChecksumIndex(convertToExtended, 20);
            int[] iArr = Code93Reader.CHARACTER_ENCODINGS;
            int appendPattern2 = appendPattern + appendPattern(zArr, appendPattern, iArr[computeChecksumIndex]);
            StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(convertToExtended);
            m3341xc20437a5.append(new ObfuscatedString(new long[]{2722354043336418971L, 2129649968033581586L, 55972278650204270L, -3322060638282261179L, -8091466166035233705L, 4812032762831865041L, 7101666209620954006L}).toString().charAt(computeChecksumIndex));
            int appendPattern3 = appendPattern2 + appendPattern(zArr, appendPattern2, iArr[computeChecksumIndex(m3341xc20437a5.toString(), 15)]);
            zArr[appendPattern3 + appendPattern(zArr, appendPattern3, Code93Reader.ASTERISK_ENCODING)] = true;
            return zArr;
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{379089118091391147L, -349744709260712596L, -7284854260369017453L, -7783918484942985262L, -4794491629884310706L, -6170284010780016065L, -6976119433091631387L, 4630789535597608318L, 1568037068516834025L, 7278717535646936420L, 6598271835393724088L, 3025142124841514036L, -8105694141086475441L, 4277429167337617029L}), new StringBuilder(), length));
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public Collection<BarcodeFormat> getSupportedWriteFormats() {
        return Collections.singleton(BarcodeFormat.CODE_93);
    }

    private static int appendPattern(boolean[] zArr, int i, int i2) {
        for (int i3 = 0; i3 < 9; i3++) {
            boolean z = true;
            int i4 = i + i3;
            if (((1 << (8 - i3)) & i2) == 0) {
                z = false;
            }
            zArr[i4] = z;
        }
        return 9;
    }
}
