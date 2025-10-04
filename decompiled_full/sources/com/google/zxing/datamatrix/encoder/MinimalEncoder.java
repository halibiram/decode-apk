package com.google.zxing.datamatrix.encoder;

import androidx.work.WorkInfo;
import com.google.common.base.Ascii;
import com.google.zxing.common.MinimalECIInput;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import kotlin.text.Typography;
import okhttp3.internal.http.HttpStatusCodesKt;

/* loaded from: classes3.dex */
public final class MinimalEncoder {
    static final char[] C40_SHIFT2_CHARS = {'!', Typography.quote, '#', Typography.dollar, '%', Typography.amp, '\'', '(', ')', '*', '+', ',', '-', '.', '/', ':', ';', Typography.less, '=', Typography.greater, '?', '@', '[', '\\', ']', '^', '_'};

    /* renamed from: com.google.zxing.datamatrix.encoder.MinimalEncoder$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$zxing$datamatrix$encoder$MinimalEncoder$Mode;
        static final /* synthetic */ int[] $SwitchMap$com$google$zxing$datamatrix$encoder$SymbolShapeHint;

        static {
            int[] iArr = new int[SymbolShapeHint.values().length];
            $SwitchMap$com$google$zxing$datamatrix$encoder$SymbolShapeHint = iArr;
            try {
                iArr[SymbolShapeHint.FORCE_SQUARE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$zxing$datamatrix$encoder$SymbolShapeHint[SymbolShapeHint.FORCE_RECTANGLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[Mode.values().length];
            $SwitchMap$com$google$zxing$datamatrix$encoder$MinimalEncoder$Mode = iArr2;
            try {
                iArr2[Mode.ASCII.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$zxing$datamatrix$encoder$MinimalEncoder$Mode[Mode.B256.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$zxing$datamatrix$encoder$MinimalEncoder$Mode[Mode.C40.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$zxing$datamatrix$encoder$MinimalEncoder$Mode[Mode.TEXT.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$zxing$datamatrix$encoder$MinimalEncoder$Mode[Mode.X12.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$zxing$datamatrix$encoder$MinimalEncoder$Mode[Mode.EDF.ordinal()] = 6;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* loaded from: classes3.dex */
    public static final class Edge {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private final int cachedTotalSize;
        private final int characterLength;
        private final int fromPosition;
        private final Input input;
        private final Mode mode;
        private final Edge previous;
        private static final int[] allCodewordCapacities = {3, 5, 8, 10, 12, 16, 18, 22, 30, 32, 36, 44, 49, 62, 86, 114, 144, 174, HttpStatusCodesKt.HTTP_NO_CONTENT, 280, 368, 456, 576, 696, 816, 1050, 1304, 1558};
        private static final int[] squareCodewordCapacities = {3, 5, 8, 12, 18, 22, 30, 36, 44, 62, 86, 114, 144, 174, HttpStatusCodesKt.HTTP_NO_CONTENT, 280, 368, 456, 576, 696, 816, 1050, 1304, 1558};
        private static final int[] rectangularCodewordCapacities = {5, 10, 16, 33, 32, 49};

        public /* synthetic */ Edge(Input input, Mode mode, int i, int i2, Edge edge, AnonymousClass1 anonymousClass1) {
            this(input, mode, i, i2, edge);
        }

        public static byte[] getBytes(int i) {
            return new byte[]{(byte) i};
        }

        private static int getC40Value(boolean z, int i, char c, int i2) {
            if (c == i2) {
                return 27;
            }
            if (z) {
                if (c <= 31) {
                    return c;
                }
                if (c == ' ') {
                    return 3;
                }
                return c <= '/' ? c - '!' : c <= '9' ? c - ',' : c <= '@' ? c - '+' : c <= 'Z' ? c - '3' : c <= '_' ? c - 'E' : c <= 127 ? c - '`' : c;
            }
            if (c != 0) {
                if (i == 0 && c <= 3) {
                    return c - 1;
                }
                if (i == 1 && c <= 31) {
                    return c;
                }
                if (c == ' ') {
                    return 3;
                }
                if (c >= '!' && c <= '/') {
                    return c - '!';
                }
                if (c >= '0' && c <= '9') {
                    return c - ',';
                }
                if (c >= ':' && c <= '@') {
                    return c - '+';
                }
                if (c >= 'A' && c <= 'Z') {
                    return c - '@';
                }
                if (c >= '[' && c <= '_') {
                    return c - 'E';
                }
                if (c != '`') {
                    return (c < 'a' || c > 'z') ? (c < '{' || c > 127) ? c : c - '`' : c - 'S';
                }
            }
            return 0;
        }

        public static int getShiftValue(char c, boolean z, int i) {
            if ((z && MinimalEncoder.isInC40Shift1Set(c)) || (!z && MinimalEncoder.isInTextShift1Set(c))) {
                return 0;
            }
            if ((z && MinimalEncoder.isInC40Shift2Set(c, i)) || (!z && MinimalEncoder.isInTextShift2Set(c, i))) {
                return 1;
            }
            return 2;
        }

        private static int getX12Value(char c) {
            if (c == '\r') {
                return 0;
            }
            if (c == '*') {
                return 1;
            }
            if (c == '>') {
                return 2;
            }
            if (c == ' ') {
                return 3;
            }
            return (c < '0' || c > '9') ? (c < 'A' || c > 'Z') ? c : c - '3' : c - ',';
        }

        public static void setC40Word(byte[] bArr, int i, int i2, int i3, int i4) {
            int i5 = ((i3 & 255) * 40) + ((i2 & 255) * 1600) + (i4 & 255) + 1;
            bArr[i] = (byte) (i5 / 256);
            bArr[i + 1] = (byte) (i5 % 256);
        }

        public int getB256Size() {
            int i = 0;
            for (Edge edge = this; edge != null && edge.mode == Mode.B256 && i <= 250; edge = edge.previous) {
                i++;
            }
            return i;
        }

        public byte[] getC40Words(boolean z, int i) {
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < this.characterLength; i2++) {
                char charAt = this.input.charAt(this.fromPosition + i2);
                if ((z && HighLevelEncoder.isNativeC40(charAt)) || (!z && HighLevelEncoder.isNativeText(charAt))) {
                    arrayList.add(Byte.valueOf((byte) getC40Value(z, 0, charAt, i)));
                } else if (!MinimalEncoder.isExtendedASCII(charAt, i)) {
                    int shiftValue = getShiftValue(charAt, z, i);
                    arrayList.add(Byte.valueOf((byte) shiftValue));
                    arrayList.add(Byte.valueOf((byte) getC40Value(z, shiftValue, charAt, i)));
                } else {
                    char c = (char) ((charAt & 255) + WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT);
                    if ((z && HighLevelEncoder.isNativeC40(c)) || (!z && HighLevelEncoder.isNativeText(c))) {
                        arrayList.add((byte) 1);
                        arrayList.add(Byte.valueOf(Ascii.RS));
                        arrayList.add(Byte.valueOf((byte) getC40Value(z, 0, c, i)));
                    } else {
                        arrayList.add((byte) 1);
                        arrayList.add(Byte.valueOf(Ascii.RS));
                        int shiftValue2 = getShiftValue(c, z, i);
                        arrayList.add(Byte.valueOf((byte) shiftValue2));
                        arrayList.add(Byte.valueOf((byte) getC40Value(z, shiftValue2, c, i)));
                    }
                }
            }
            if (arrayList.size() % 3 != 0) {
                arrayList.add((byte) 0);
            }
            byte[] bArr = new byte[(arrayList.size() / 3) * 2];
            int i3 = 0;
            for (int i4 = 0; i4 < arrayList.size(); i4 += 3) {
                setC40Word(bArr, i3, ((Byte) arrayList.get(i4)).byteValue() & 255, ((Byte) arrayList.get(i4 + 1)).byteValue() & 255, ((Byte) arrayList.get(i4 + 2)).byteValue() & 255);
                i3 += 2;
            }
            return bArr;
        }

        public int getCodewordsRemaining(int i) {
            return getMinSymbolSize(i) - i;
        }

        public byte[] getDataBytes() {
            switch (AnonymousClass1.$SwitchMap$com$google$zxing$datamatrix$encoder$MinimalEncoder$Mode[this.mode.ordinal()]) {
                case 1:
                    if (this.input.isECI(this.fromPosition)) {
                        return getBytes(241, this.input.getECIValue(this.fromPosition) + 1);
                    }
                    if (MinimalEncoder.isExtendedASCII(this.input.charAt(this.fromPosition), this.input.getFNC1Character())) {
                        return getBytes(235, this.input.charAt(this.fromPosition) - 127);
                    }
                    if (this.characterLength == 2) {
                        return getBytes(this.input.charAt(this.fromPosition + 1) + ((this.input.charAt(this.fromPosition) - '0') * 10) + 82);
                    }
                    if (this.input.isFNC1(this.fromPosition)) {
                        return getBytes(232);
                    }
                    return getBytes(this.input.charAt(this.fromPosition) + 1);
                case 2:
                    return getBytes(this.input.charAt(this.fromPosition));
                case 3:
                    return getC40Words(true, this.input.getFNC1Character());
                case 4:
                    return getC40Words(false, this.input.getFNC1Character());
                case 5:
                    return getX12Words();
                case 6:
                    return getEDFBytes();
                default:
                    return new byte[0];
            }
        }

        public byte[] getEDFBytes() {
            int i;
            int ceil = (int) Math.ceil(this.characterLength / 4.0d);
            byte[] bArr = new byte[ceil * 3];
            int i2 = this.fromPosition;
            int min = Math.min((this.characterLength + i2) - 1, this.input.length() - 1);
            for (int i3 = 0; i3 < ceil; i3 += 3) {
                int[] iArr = new int[4];
                for (int i4 = 0; i4 < 4; i4++) {
                    if (i2 <= min) {
                        iArr[i4] = this.input.charAt(i2) & '?';
                        i2++;
                    } else {
                        if (i2 == min + 1) {
                            i = 31;
                        } else {
                            i = 0;
                        }
                        iArr[i4] = i;
                    }
                }
                int i5 = (iArr[0] << 18) | (iArr[1] << 12) | (iArr[2] << 6) | iArr[3];
                bArr[i3] = (byte) ((i5 >> 16) & 255);
                bArr[i3 + 1] = (byte) ((i5 >> 8) & 255);
                bArr[i3 + 2] = (byte) (i5 & 255);
            }
            return bArr;
        }

        public Mode getEndMode() {
            if (this.mode == Mode.EDF) {
                if (this.characterLength < 4) {
                    return Mode.ASCII;
                }
                int lastASCII = getLastASCII();
                if (lastASCII > 0 && getCodewordsRemaining(this.cachedTotalSize + lastASCII) <= 2 - lastASCII) {
                    return Mode.ASCII;
                }
            }
            Mode mode = this.mode;
            if (mode == Mode.C40 || mode == Mode.TEXT || mode == Mode.X12) {
                if (this.fromPosition + this.characterLength >= this.input.length() && getCodewordsRemaining(this.cachedTotalSize) == 0) {
                    return Mode.ASCII;
                }
                if (getLastASCII() == 1 && getCodewordsRemaining(this.cachedTotalSize + 1) == 0) {
                    return Mode.ASCII;
                }
            }
            return this.mode;
        }

        public int getLastASCII() {
            int length = this.input.length();
            int i = this.fromPosition + this.characterLength;
            int i2 = length - i;
            if (i2 <= 4 && i < length) {
                if (i2 == 1) {
                    if (MinimalEncoder.isExtendedASCII(this.input.charAt(i), this.input.getFNC1Character())) {
                        return 0;
                    }
                    return 1;
                }
                if (i2 == 2) {
                    if (!MinimalEncoder.isExtendedASCII(this.input.charAt(i), this.input.getFNC1Character())) {
                        int i3 = i + 1;
                        if (!MinimalEncoder.isExtendedASCII(this.input.charAt(i3), this.input.getFNC1Character())) {
                            if (HighLevelEncoder.isDigit(this.input.charAt(i)) && HighLevelEncoder.isDigit(this.input.charAt(i3))) {
                                return 1;
                            }
                            return 2;
                        }
                    }
                    return 0;
                }
                if (i2 == 3) {
                    if (HighLevelEncoder.isDigit(this.input.charAt(i)) && HighLevelEncoder.isDigit(this.input.charAt(i + 1)) && !MinimalEncoder.isExtendedASCII(this.input.charAt(i + 2), this.input.getFNC1Character())) {
                        return 2;
                    }
                    if (!HighLevelEncoder.isDigit(this.input.charAt(i + 1)) || !HighLevelEncoder.isDigit(this.input.charAt(i + 2)) || MinimalEncoder.isExtendedASCII(this.input.charAt(i), this.input.getFNC1Character())) {
                        return 0;
                    }
                    return 2;
                }
                if (HighLevelEncoder.isDigit(this.input.charAt(i)) && HighLevelEncoder.isDigit(this.input.charAt(i + 1)) && HighLevelEncoder.isDigit(this.input.charAt(i + 2)) && HighLevelEncoder.isDigit(this.input.charAt(i + 3))) {
                    return 2;
                }
            }
            return 0;
        }

        public byte[] getLatchBytes() {
            int[] iArr = AnonymousClass1.$SwitchMap$com$google$zxing$datamatrix$encoder$MinimalEncoder$Mode;
            switch (iArr[getPreviousMode().ordinal()]) {
                case 1:
                case 2:
                    int i = iArr[this.mode.ordinal()];
                    if (i != 2) {
                        if (i != 3) {
                            if (i != 4) {
                                if (i != 5) {
                                    if (i == 6) {
                                        return getBytes(240);
                                    }
                                } else {
                                    return getBytes(238);
                                }
                            } else {
                                return getBytes(239);
                            }
                        } else {
                            return getBytes(230);
                        }
                    } else {
                        return getBytes(231);
                    }
                    break;
                case 3:
                case 4:
                case 5:
                    if (this.mode != getPreviousMode()) {
                        switch (iArr[this.mode.ordinal()]) {
                            case 1:
                                return getBytes(254);
                            case 2:
                                return getBytes(254, 231);
                            case 3:
                                return getBytes(254, 230);
                            case 4:
                                return getBytes(254, 239);
                            case 5:
                                return getBytes(254, 238);
                            case 6:
                                return getBytes(254, 240);
                        }
                    }
                    break;
            }
            return new byte[0];
        }

        public int getMinSymbolSize(int i) {
            int i2 = AnonymousClass1.$SwitchMap$com$google$zxing$datamatrix$encoder$SymbolShapeHint[this.input.getShapeHint().ordinal()];
            if (i2 != 1) {
                if (i2 == 2) {
                    for (int i3 : rectangularCodewordCapacities) {
                        if (i3 >= i) {
                            return i3;
                        }
                    }
                }
            } else {
                for (int i4 : squareCodewordCapacities) {
                    if (i4 >= i) {
                        return i4;
                    }
                }
            }
            for (int i5 : allCodewordCapacities) {
                if (i5 >= i) {
                    return i5;
                }
            }
            int[] iArr = allCodewordCapacities;
            return iArr[iArr.length - 1];
        }

        public Mode getMode() {
            return this.mode;
        }

        public Mode getPreviousMode() {
            Edge edge = this.previous;
            if (edge == null) {
                return Mode.ASCII;
            }
            return edge.getEndMode();
        }

        public Mode getPreviousStartMode() {
            Edge edge = this.previous;
            if (edge == null) {
                return Mode.ASCII;
            }
            return edge.mode;
        }

        public byte[] getX12Words() {
            int i = (this.characterLength / 3) * 2;
            byte[] bArr = new byte[i];
            for (int i2 = 0; i2 < i; i2 += 2) {
                int i3 = (i2 / 2) * 3;
                setC40Word(bArr, i2, getX12Value(this.input.charAt(this.fromPosition + i3)), getX12Value(this.input.charAt(this.fromPosition + i3 + 1)), getX12Value(this.input.charAt(this.fromPosition + i3 + 2)));
            }
            return bArr;
        }

        /* JADX WARN: Code restructure failed: missing block: B:31:0x0072, code lost:
        
            if (r0 == r1) goto L42;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x009c, code lost:
        
            if (r0 != com.google.zxing.datamatrix.encoder.MinimalEncoder.Mode.X12) goto L75;
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x00c4, code lost:
        
            if (r0 != com.google.zxing.datamatrix.encoder.MinimalEncoder.Mode.X12) goto L75;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private Edge(Input input, Mode mode, int i, int i2, Edge edge) {
            this.input = input;
            this.mode = mode;
            this.fromPosition = i;
            this.characterLength = i2;
            this.previous = edge;
            int i3 = edge != null ? edge.cachedTotalSize : 0;
            Mode previousMode = getPreviousMode();
            switch (AnonymousClass1.$SwitchMap$com$google$zxing$datamatrix$encoder$MinimalEncoder$Mode[mode.ordinal()]) {
                case 1:
                    i3 = (input.isECI(i) || MinimalEncoder.isExtendedASCII(input.charAt(i), input.getFNC1Character())) ? i3 + 2 : i3 + 1;
                    if (previousMode != Mode.C40) {
                        if (previousMode != Mode.TEXT) {
                            break;
                        }
                    }
                    i3++;
                    break;
                case 2:
                    i3 = (previousMode == Mode.B256 && getB256Size() != 250) ? i3 + 1 : i3 + 2;
                    if (previousMode != Mode.ASCII) {
                        if (previousMode != Mode.C40) {
                            if (previousMode != Mode.TEXT) {
                                break;
                            }
                        }
                        i3 += 2;
                        break;
                    }
                    i3++;
                    break;
                case 3:
                case 4:
                case 5:
                    Mode mode2 = Mode.X12;
                    if (mode == mode2) {
                        i3 += 2;
                    } else {
                        i3 = (MinimalEncoder.getNumberOfC40Words(input, i, mode == Mode.C40, new int[1]) * 2) + i3;
                    }
                    if (previousMode != Mode.ASCII && previousMode != Mode.B256) {
                        if (previousMode != mode) {
                            if (previousMode != Mode.C40) {
                                if (previousMode != Mode.TEXT) {
                                }
                            }
                            i3 += 2;
                            break;
                        }
                    }
                    i3++;
                    break;
                case 6:
                    int i4 = i3 + 3;
                    if (previousMode != Mode.ASCII && previousMode != Mode.B256) {
                        if (previousMode != Mode.C40 && previousMode != Mode.TEXT && previousMode != Mode.X12) {
                            i3 = i4;
                            break;
                        } else {
                            i3 += 5;
                            break;
                        }
                    } else {
                        i3 += 4;
                        break;
                    }
                    break;
            }
            this.cachedTotalSize = i3;
        }

        public static byte[] getBytes(int i, int i2) {
            return new byte[]{(byte) i, (byte) i2};
        }
    }

    /* loaded from: classes3.dex */
    public static final class Input extends MinimalECIInput {
        private final int macroId;
        private final SymbolShapeHint shape;

        public /* synthetic */ Input(String str, Charset charset, int i, SymbolShapeHint symbolShapeHint, int i2, AnonymousClass1 anonymousClass1) {
            this(str, charset, i, symbolShapeHint, i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getMacroId() {
            return this.macroId;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public SymbolShapeHint getShapeHint() {
            return this.shape;
        }

        private Input(String str, Charset charset, int i, SymbolShapeHint symbolShapeHint, int i2) {
            super(str, charset, i);
            this.shape = symbolShapeHint;
            this.macroId = i2;
        }
    }

    /* loaded from: classes3.dex */
    public enum Mode {
        ASCII,
        C40,
        TEXT,
        X12,
        EDF,
        B256
    }

    /* loaded from: classes3.dex */
    public static final class Result {
        private final byte[] bytes;

        public Result(Edge edge) {
            int prepend;
            int i;
            Input input = edge.input;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            int i2 = 0;
            if ((edge.mode == Mode.C40 || edge.mode == Mode.TEXT || edge.mode == Mode.X12) && edge.getEndMode() != Mode.ASCII) {
                prepend = prepend(Edge.getBytes(254), arrayList);
            } else {
                prepend = 0;
            }
            for (Edge edge2 = edge; edge2 != null; edge2 = edge2.previous) {
                prepend += prepend(edge2.getDataBytes(), arrayList);
                if (edge2.previous == null || edge2.getPreviousStartMode() != edge2.getMode()) {
                    if (edge2.getMode() == Mode.B256) {
                        if (prepend <= 249) {
                            arrayList.add(0, Byte.valueOf((byte) prepend));
                            i = prepend + 1;
                        } else {
                            arrayList.add(0, Byte.valueOf((byte) (prepend % 250)));
                            arrayList.add(0, Byte.valueOf((byte) ((prepend / 250) + 249)));
                            i = prepend + 2;
                        }
                        arrayList2.add(Integer.valueOf(arrayList.size()));
                        arrayList3.add(Integer.valueOf(i));
                    }
                    prepend(edge2.getLatchBytes(), arrayList);
                    prepend = 0;
                }
            }
            if (input.getMacroId() == 5) {
                prepend(Edge.getBytes(236), arrayList);
            } else if (input.getMacroId() == 6) {
                prepend(Edge.getBytes(237), arrayList);
            }
            if (input.getFNC1Character() > 0) {
                prepend(Edge.getBytes(232), arrayList);
            }
            for (int i3 = 0; i3 < arrayList2.size(); i3++) {
                applyRandomPattern(arrayList, arrayList.size() - ((Integer) arrayList2.get(i3)).intValue(), ((Integer) arrayList3.get(i3)).intValue());
            }
            int minSymbolSize = edge.getMinSymbolSize(arrayList.size());
            if (arrayList.size() < minSymbolSize) {
                arrayList.add((byte) -127);
            }
            while (arrayList.size() < minSymbolSize) {
                arrayList.add(Byte.valueOf((byte) randomize253State(arrayList.size() + 1)));
            }
            this.bytes = new byte[arrayList.size()];
            while (true) {
                byte[] bArr = this.bytes;
                if (i2 < bArr.length) {
                    bArr[i2] = ((Byte) arrayList.get(i2)).byteValue();
                    i2++;
                } else {
                    return;
                }
            }
        }

        public static void applyRandomPattern(List<Byte> list, int i, int i2) {
            for (int i3 = 0; i3 < i2; i3++) {
                int i4 = i + i3;
                int byteValue = (((i4 + 1) * 149) % 255) + 1 + (list.get(i4).byteValue() & 255);
                if (byteValue > 255) {
                    byteValue -= 256;
                }
                list.set(i4, Byte.valueOf((byte) byteValue));
            }
        }

        public static int prepend(byte[] bArr, List<Byte> list) {
            for (int length = bArr.length - 1; length >= 0; length--) {
                list.add(0, Byte.valueOf(bArr[length]));
            }
            return bArr.length;
        }

        private static int randomize253State(int i) {
            int i2 = (i * 149) % 253;
            int i3 = i2 + 130;
            if (i3 > 254) {
                return i2 - 124;
            }
            return i3;
        }

        public byte[] getBytes() {
            return this.bytes;
        }
    }

    private MinimalEncoder() {
    }

    public static void addEdge(Edge[][] edgeArr, Edge edge) {
        int i = edge.fromPosition + edge.characterLength;
        if (edgeArr[i][edge.getEndMode().ordinal()] == null || edgeArr[i][edge.getEndMode().ordinal()].cachedTotalSize > edge.cachedTotalSize) {
            edgeArr[i][edge.getEndMode().ordinal()] = edge;
        }
    }

    public static void addEdges(Input input, Edge[][] edgeArr, int i, Edge edge) {
        boolean z;
        char c = 0;
        if (input.isECI(i)) {
            addEdge(edgeArr, new Edge(input, Mode.ASCII, i, 1, edge, null));
            return;
        }
        char charAt = input.charAt(i);
        if (edge == null || edge.getEndMode() != Mode.EDF) {
            if (HighLevelEncoder.isDigit(charAt) && input.haveNCharacters(i, 2) && HighLevelEncoder.isDigit(input.charAt(i + 1))) {
                addEdge(edgeArr, new Edge(input, Mode.ASCII, i, 2, edge, null));
            } else {
                addEdge(edgeArr, new Edge(input, Mode.ASCII, i, 1, edge, null));
            }
            Mode[] modeArr = {Mode.C40, Mode.TEXT};
            int i2 = 0;
            while (i2 < 2) {
                Mode mode = modeArr[i2];
                int[] iArr = new int[1];
                if (mode == Mode.C40) {
                    z = true;
                } else {
                    z = false;
                }
                if (getNumberOfC40Words(input, i, z, iArr) > 0) {
                    addEdge(edgeArr, new Edge(input, mode, i, iArr[c], edge, null));
                }
                i2++;
                c = 0;
            }
            if (input.haveNCharacters(i, 3) && HighLevelEncoder.isNativeX12(input.charAt(i)) && HighLevelEncoder.isNativeX12(input.charAt(i + 1)) && HighLevelEncoder.isNativeX12(input.charAt(i + 2))) {
                addEdge(edgeArr, new Edge(input, Mode.X12, i, 3, edge, null));
            }
            addEdge(edgeArr, new Edge(input, Mode.B256, i, 1, edge, null));
        }
        int i3 = 0;
        while (i3 < 3) {
            int i4 = i + i3;
            if (!input.haveNCharacters(i4, 1) || !HighLevelEncoder.isNativeEDIFACT(input.charAt(i4))) {
                break;
            }
            i3++;
            addEdge(edgeArr, new Edge(input, Mode.EDF, i, i3, edge, null));
        }
        if (i3 == 3 && input.haveNCharacters(i, 4) && HighLevelEncoder.isNativeEDIFACT(input.charAt(i + 3))) {
            addEdge(edgeArr, new Edge(input, Mode.EDF, i, 4, edge, null));
        }
    }

    public static byte[] encode(String str, Charset charset, int i, SymbolShapeHint symbolShapeHint, int i2) {
        return encodeMinimally(new Input(str, charset, i, symbolShapeHint, i2, null)).getBytes();
    }

    public static String encodeHighLevel(String str) {
        return encodeHighLevel(str, null, -1, SymbolShapeHint.FORCE_NONE);
    }

    public static Result encodeMinimally(Input input) {
        int i;
        int length = input.length();
        Edge[][] edgeArr = (Edge[][]) Array.newInstance((Class<?>) Edge.class, length + 1, 6);
        addEdges(input, edgeArr, 0, null);
        for (int i2 = 1; i2 <= length; i2++) {
            for (int i3 = 0; i3 < 6; i3++) {
                Edge edge = edgeArr[i2][i3];
                if (edge != null && i2 < length) {
                    addEdges(input, edgeArr, i2, edge);
                }
            }
            for (int i4 = 0; i4 < 6; i4++) {
                edgeArr[i2 - 1][i4] = null;
            }
        }
        int i5 = -1;
        int i6 = Integer.MAX_VALUE;
        for (int i7 = 0; i7 < 6; i7++) {
            Edge edge2 = edgeArr[length][i7];
            if (edge2 != null) {
                if (i7 < 1 || i7 > 3) {
                    i = edge2.cachedTotalSize;
                } else {
                    i = edge2.cachedTotalSize + 1;
                }
                if (i < i6) {
                    i5 = i7;
                    i6 = i;
                }
            }
        }
        if (i5 >= 0) {
            return new Result(edgeArr[length][i5]);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{5811895321650551075L, 6499875470973180739L, -2516885969954309144L, -6075294040275557924L}).toString());
        sb.append(input);
        throw new IllegalStateException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{8986341977107887722L, 2760604441467618325L}), sb));
    }

    public static int getNumberOfC40Words(Input input, int i, boolean z, int[] iArr) {
        int i2 = 0;
        for (int i3 = i; i3 < input.length(); i3++) {
            if (input.isECI(i3)) {
                iArr[0] = 0;
                return 0;
            }
            char charAt = input.charAt(i3);
            if ((z && HighLevelEncoder.isNativeC40(charAt)) || (!z && HighLevelEncoder.isNativeText(charAt))) {
                i2++;
            } else if (!isExtendedASCII(charAt, input.getFNC1Character())) {
                i2 += 2;
            } else {
                int i4 = charAt & 255;
                if (i4 >= 128 && ((z && HighLevelEncoder.isNativeC40((char) (i4 + WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT))) || (!z && HighLevelEncoder.isNativeText((char) (i4 + WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT))))) {
                    i2 += 3;
                } else {
                    i2 += 4;
                }
            }
            if (i2 % 3 == 0 || ((i2 - 2) % 3 == 0 && i3 + 1 == input.length())) {
                iArr[0] = (i3 - i) + 1;
                return (int) Math.ceil(i2 / 3.0d);
            }
        }
        iArr[0] = 0;
        return 0;
    }

    public static boolean isExtendedASCII(char c, int i) {
        return c != i && c >= 128 && c <= 255;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isInC40Shift1Set(char c) {
        return c <= 31;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isInC40Shift2Set(char c, int i) {
        for (char c2 : C40_SHIFT2_CHARS) {
            if (c2 == c) {
                return true;
            }
        }
        if (c != i) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isInTextShift1Set(char c) {
        return isInC40Shift1Set(c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isInTextShift2Set(char c, int i) {
        return isInC40Shift2Set(c, i);
    }

    public static String encodeHighLevel(String str, Charset charset, int i, SymbolShapeHint symbolShapeHint) {
        int i2;
        if (str.startsWith(new ObfuscatedString(new long[]{-6712794577642687597L, 1189460086478665176L}).toString()) && str.endsWith(new ObfuscatedString(new long[]{3256171665682624715L, -6141603564526171464L}).toString())) {
            str = str.substring(new ObfuscatedString(new long[]{1157402422649957341L, 3142247761864151306L}).toString().length(), str.length() - 2);
            i2 = 5;
        } else if (str.startsWith(new ObfuscatedString(new long[]{-8841038891470510717L, -2385876545014402022L}).toString()) && str.endsWith(new ObfuscatedString(new long[]{-5037722969496454896L, -8930374193489919542L}).toString())) {
            str = str.substring(new ObfuscatedString(new long[]{-5272450146722983586L, 3504428389105298197L}).toString().length(), str.length() - 2);
            i2 = 6;
        } else {
            i2 = 0;
        }
        return new String(encode(str, charset, i, symbolShapeHint, i2), StandardCharsets.ISO_8859_1);
    }
}
