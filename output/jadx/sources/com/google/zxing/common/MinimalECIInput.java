package com.google.zxing.common;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class MinimalECIInput implements ECIInput {
    private static final int COST_PER_ECI = 3;
    private final int[] bytes;
    private final int fnc1;

    /* loaded from: classes3.dex */
    public static final class InputEdge {
        private final char c;
        private final int cachedTotalSize;
        private final int encoderIndex;
        private final InputEdge previous;

        public boolean isFNC1() {
            if (this.c == 1000) {
                return true;
            }
            return false;
        }

        private InputEdge(char c, ECIEncoderSet eCIEncoderSet, int i, InputEdge inputEdge, int i2) {
            char c2 = c == i2 ? (char) 1000 : c;
            this.c = c2;
            this.encoderIndex = i;
            this.previous = inputEdge;
            int length = c2 == 1000 ? 1 : eCIEncoderSet.encode(c, i).length;
            length = (inputEdge == null ? 0 : inputEdge.encoderIndex) != i ? length + 3 : length;
            this.cachedTotalSize = inputEdge != null ? length + inputEdge.cachedTotalSize : length;
        }
    }

    public MinimalECIInput(String str, Charset charset, int i) {
        this.fnc1 = i;
        ECIEncoderSet eCIEncoderSet = new ECIEncoderSet(str, charset, i);
        if (eCIEncoderSet.length() == 1) {
            this.bytes = new int[str.length()];
            for (int i2 = 0; i2 < this.bytes.length; i2++) {
                char charAt = str.charAt(i2);
                int[] iArr = this.bytes;
                if (charAt == i) {
                    charAt = 1000;
                }
                iArr[i2] = charAt;
            }
            return;
        }
        this.bytes = encodeMinimally(str, eCIEncoderSet, i);
    }

    public static void addEdge(InputEdge[][] inputEdgeArr, int i, InputEdge inputEdge) {
        if (inputEdgeArr[i][inputEdge.encoderIndex] == null || inputEdgeArr[i][inputEdge.encoderIndex].cachedTotalSize > inputEdge.cachedTotalSize) {
            inputEdgeArr[i][inputEdge.encoderIndex] = inputEdge;
        }
    }

    public static void addEdges(String str, ECIEncoderSet eCIEncoderSet, InputEdge[][] inputEdgeArr, int i, InputEdge inputEdge, int i2) {
        int i3;
        int i4;
        char charAt = str.charAt(i);
        int length = eCIEncoderSet.length();
        if (eCIEncoderSet.getPriorityEncoderIndex() >= 0 && (charAt == i2 || eCIEncoderSet.canEncode(charAt, eCIEncoderSet.getPriorityEncoderIndex()))) {
            i4 = eCIEncoderSet.getPriorityEncoderIndex();
            i3 = i4 + 1;
        } else {
            i3 = length;
            i4 = 0;
        }
        for (int i5 = i4; i5 < i3; i5++) {
            if (charAt == i2 || eCIEncoderSet.canEncode(charAt, i5)) {
                addEdge(inputEdgeArr, i + 1, new InputEdge(charAt, eCIEncoderSet, i5, inputEdge, i2));
            }
        }
    }

    public static int[] encodeMinimally(String str, ECIEncoderSet eCIEncoderSet, int i) {
        int i2;
        int length = str.length();
        InputEdge[][] inputEdgeArr = (InputEdge[][]) Array.newInstance((Class<?>) InputEdge.class, length + 1, eCIEncoderSet.length());
        addEdges(str, eCIEncoderSet, inputEdgeArr, 0, null, i);
        for (int i3 = 1; i3 <= length; i3++) {
            for (int i4 = 0; i4 < eCIEncoderSet.length(); i4++) {
                InputEdge inputEdge = inputEdgeArr[i3][i4];
                if (inputEdge != null && i3 < length) {
                    addEdges(str, eCIEncoderSet, inputEdgeArr, i3, inputEdge, i);
                }
            }
            for (int i5 = 0; i5 < eCIEncoderSet.length(); i5++) {
                inputEdgeArr[i3 - 1][i5] = null;
            }
        }
        int i6 = Integer.MAX_VALUE;
        int i7 = -1;
        for (int i8 = 0; i8 < eCIEncoderSet.length(); i8++) {
            InputEdge inputEdge2 = inputEdgeArr[length][i8];
            if (inputEdge2 != null && inputEdge2.cachedTotalSize < i6) {
                i6 = inputEdge2.cachedTotalSize;
                i7 = i8;
            }
        }
        if (i7 >= 0) {
            ArrayList arrayList = new ArrayList();
            for (InputEdge inputEdge3 = inputEdgeArr[length][i7]; inputEdge3 != null; inputEdge3 = inputEdge3.previous) {
                if (inputEdge3.isFNC1()) {
                    arrayList.add(0, 1000);
                } else {
                    byte[] encode = eCIEncoderSet.encode(inputEdge3.c, inputEdge3.encoderIndex);
                    for (int length2 = encode.length - 1; length2 >= 0; length2--) {
                        arrayList.add(0, Integer.valueOf(encode[length2] & 255));
                    }
                }
                if (inputEdge3.previous != null) {
                    i2 = inputEdge3.previous.encoderIndex;
                } else {
                    i2 = 0;
                }
                if (i2 != inputEdge3.encoderIndex) {
                    arrayList.add(0, Integer.valueOf(eCIEncoderSet.getECIValue(inputEdge3.encoderIndex) + 256));
                }
            }
            int size = arrayList.size();
            int[] iArr = new int[size];
            for (int i9 = 0; i9 < size; i9++) {
                iArr[i9] = ((Integer) arrayList.get(i9)).intValue();
            }
            return iArr;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{5220024046538167815L, 4722780608049161285L, -1100169153629567719L, -3968820465987726537L}).toString());
        sb.append(str);
        throw new IllegalStateException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-7238682901560874635L, 1291820594342837320L}), sb));
    }

    @Override // com.google.zxing.common.ECIInput
    public char charAt(int i) {
        int i2;
        if (i >= 0 && i < length()) {
            if (!isECI(i)) {
                if (isFNC1(i)) {
                    i2 = this.fnc1;
                } else {
                    i2 = this.bytes[i];
                }
                return (char) i2;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{1466056298287702642L, -3319060971351077354L, -3348256841048391335L}).toString());
            sb.append(i);
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{971276226999230733L, -4067466842898187689L, 2678242875875396685L, 762173951273452499L, 5345059708214629702L}), sb));
        }
        throw new IndexOutOfBoundsException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{2983586992360797183L}), new StringBuilder(), i));
    }

    @Override // com.google.zxing.common.ECIInput
    public int getECIValue(int i) {
        if (i >= 0 && i < length()) {
            if (isECI(i)) {
                return this.bytes[i] - 256;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{1232630723440648351L, -4963531451956810325L, 4450582062653239338L}).toString());
            sb.append(i);
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{516533325739287137L, 7140523074859611295L, 2543467476180530984L, 6106872504306618158L, -7836239279745987596L}), sb));
        }
        throw new IndexOutOfBoundsException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-6644259639880441967L}), new StringBuilder(), i));
    }

    public int getFNC1Character() {
        return this.fnc1;
    }

    @Override // com.google.zxing.common.ECIInput
    public boolean haveNCharacters(int i, int i2) {
        if ((i + i2) - 1 >= this.bytes.length) {
            return false;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            if (isECI(i + i3)) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.zxing.common.ECIInput
    public boolean isECI(int i) {
        if (i >= 0 && i < length()) {
            int i2 = this.bytes[i];
            if (i2 <= 255 || i2 > 999) {
                return false;
            }
            return true;
        }
        throw new IndexOutOfBoundsException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{868608027495327149L}), new StringBuilder(), i));
    }

    public boolean isFNC1(int i) {
        if (i >= 0 && i < length()) {
            if (this.bytes[i] != 1000) {
                return false;
            }
            return true;
        }
        throw new IndexOutOfBoundsException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{2468334092806046537L}), new StringBuilder(), i));
    }

    @Override // com.google.zxing.common.ECIInput
    public int length() {
        return this.bytes.length;
    }

    @Override // com.google.zxing.common.ECIInput
    public CharSequence subSequence(int i, int i2) {
        if (i >= 0 && i <= i2 && i2 <= length()) {
            StringBuilder sb = new StringBuilder();
            while (i < i2) {
                if (!isECI(i)) {
                    sb.append(charAt(i));
                    i++;
                } else {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(new ObfuscatedString(new long[]{-1897538060858330512L, 7865263327341997310L, -5352391749116067682L}).toString());
                    sb2.append(i);
                    throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{2112114162720217685L, -4547650826466781447L, 2867746604993734962L, -8454846119397162709L, -51862272450786058L}), sb2));
                }
            }
            return sb;
        }
        throw new IndexOutOfBoundsException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-8931404136015571516L}), new StringBuilder(), i));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < length(); i++) {
            if (i > 0) {
                sb.append(new ObfuscatedString(new long[]{-9021060475382527570L, 6926049593430380807L}).toString());
            }
            if (isECI(i)) {
                sb.append(new ObfuscatedString(new long[]{4161163531732121024L, 6865305676377698580L}).toString());
                sb.append(getECIValue(i));
                sb.append(')');
            } else if (charAt(i) < 128) {
                sb.append('\'');
                sb.append(charAt(i));
                sb.append('\'');
            } else {
                sb.append((int) charAt(i));
            }
        }
        return sb.toString();
    }
}
