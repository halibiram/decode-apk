package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.common.BitMatrix;
import com.panda912.muddy.ObfuscatedString;
import java.util.Collection;
import java.util.Map;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public abstract class OneDimensionalCodeWriter implements Writer {
    private static final Pattern NUMERIC = Pattern.compile(new ObfuscatedString(new long[]{3167082717080147642L, 2121435265369694570L}).toString());

    public static int appendPattern(boolean[] zArr, int i, int[] iArr, boolean z) {
        int i2 = 0;
        for (int i3 : iArr) {
            int i4 = 0;
            while (i4 < i3) {
                zArr[i] = z;
                i4++;
                i++;
            }
            i2 += i3;
            z = !z;
        }
        return i2;
    }

    public static void checkNumeric(String str) {
        if (NUMERIC.matcher(str).matches()) {
        } else {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-5923775180505315264L, 2154737586622930409L, -3062068623274003923L, 438993534136377190L, -7699557784826708578L, -3501003002236364762L}).toString());
        }
    }

    private static BitMatrix renderResult(boolean[] zArr, int i, int i2, int i3) {
        int length = zArr.length;
        int i4 = i3 + length;
        int max = Math.max(i, i4);
        int max2 = Math.max(1, i2);
        int i5 = max / i4;
        int i6 = (max - (length * i5)) / 2;
        BitMatrix bitMatrix = new BitMatrix(max, max2);
        int i7 = 0;
        while (i7 < length) {
            if (zArr[i7]) {
                bitMatrix.setRegion(i6, 0, i5, max2);
            }
            i7++;
            i6 += i5;
        }
        return bitMatrix;
    }

    public abstract boolean[] encode(String str);

    public boolean[] encode(String str, Map<EncodeHintType, ?> map) {
        return encode(str);
    }

    public int getDefaultMargin() {
        return 10;
    }

    public Collection<BarcodeFormat> getSupportedWriteFormats() {
        return null;
    }

    @Override // com.google.zxing.Writer
    public final BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2) {
        return encode(str, barcodeFormat, i, i2, null);
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) {
        if (str.isEmpty()) {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{7252595790498185347L, -5061265675851195816L, 7940034546271446297L, 4200236499506865473L}).toString());
        }
        if (i >= 0 && i2 >= 0) {
            Collection<BarcodeFormat> supportedWriteFormats = getSupportedWriteFormats();
            if (supportedWriteFormats != null && !supportedWriteFormats.contains(barcodeFormat)) {
                throw new IllegalArgumentException(new ObfuscatedString(new long[]{-4470343405324733991L, 2712148293158028080L, 9170677674016440905L}).toString() + supportedWriteFormats + new ObfuscatedString(new long[]{5619807143552662085L, 8386704930754064893L, -4770235860821752811L}).toString() + barcodeFormat);
            }
            int defaultMargin = getDefaultMargin();
            if (map != null) {
                EncodeHintType encodeHintType = EncodeHintType.MARGIN;
                if (map.containsKey(encodeHintType)) {
                    defaultMargin = Integer.parseInt(map.get(encodeHintType).toString());
                }
            }
            return renderResult(encode(str, map), i, i2, defaultMargin);
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-721708927630642387L, 4755309415345084561L, 1089197123135095484L, 8644451560825116301L, -3569305761347495637L, -7143951690173343634L}).toString() + i + 'x' + i2);
    }
}
