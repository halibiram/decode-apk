package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public final class Code128Writer extends OneDimensionalCodeWriter {
    private static final int CODE_CODE_A = 101;
    private static final int CODE_CODE_B = 100;
    private static final int CODE_CODE_C = 99;
    private static final int CODE_FNC_1 = 102;
    private static final int CODE_FNC_2 = 97;
    private static final int CODE_FNC_3 = 96;
    private static final int CODE_FNC_4_A = 101;
    private static final int CODE_FNC_4_B = 100;
    private static final int CODE_START_A = 103;
    private static final int CODE_START_B = 104;
    private static final int CODE_START_C = 105;
    private static final int CODE_STOP = 106;
    private static final char ESCAPE_FNC_1 = 241;
    private static final char ESCAPE_FNC_2 = 242;
    private static final char ESCAPE_FNC_3 = 243;
    private static final char ESCAPE_FNC_4 = 244;

    /* renamed from: com.google.zxing.oned.Code128Writer$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$zxing$oned$Code128Writer$MinimalEncoder$Charset;
        static final /* synthetic */ int[] $SwitchMap$com$google$zxing$oned$Code128Writer$MinimalEncoder$Latch;

        static {
            int[] iArr = new int[MinimalEncoder.Charset.values().length];
            $SwitchMap$com$google$zxing$oned$Code128Writer$MinimalEncoder$Charset = iArr;
            try {
                iArr[MinimalEncoder.Charset.A.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$zxing$oned$Code128Writer$MinimalEncoder$Charset[MinimalEncoder.Charset.B.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$zxing$oned$Code128Writer$MinimalEncoder$Charset[MinimalEncoder.Charset.C.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[MinimalEncoder.Latch.values().length];
            $SwitchMap$com$google$zxing$oned$Code128Writer$MinimalEncoder$Latch = iArr2;
            try {
                iArr2[MinimalEncoder.Latch.A.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$zxing$oned$Code128Writer$MinimalEncoder$Latch[MinimalEncoder.Latch.B.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$zxing$oned$Code128Writer$MinimalEncoder$Latch[MinimalEncoder.Latch.C.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$zxing$oned$Code128Writer$MinimalEncoder$Latch[MinimalEncoder.Latch.SHIFT.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes3.dex */
    public enum CType {
        UNCODABLE,
        ONE_DIGIT,
        TWO_DIGITS,
        FNC_1
    }

    /* loaded from: classes3.dex */
    public static final class MinimalEncoder {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        static final String A = " !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001fÿ";
        static final String B = new ObfuscatedString(new long[]{1287619149168575431L, 2908044784854865951L, 3198204881696751889L, -2344386631628761842L, -8087682128743096790L, 2316509259691551489L, 5586946797445756003L, -893561731574871244L, 7218775513828338633L, 1957077562499355227L, 7412705875220222793L, 3181652208269331302L, 2584356764528074007L, 7521319734552460613L}).toString();
        private static final int CODE_SHIFT = 98;
        private int[][] memoizedCost;
        private Latch[][] minPath;

        /* loaded from: classes3.dex */
        public enum Charset {
            A,
            B,
            C,
            NONE
        }

        /* loaded from: classes3.dex */
        public enum Latch {
            A,
            B,
            C,
            SHIFT,
            NONE
        }

        private MinimalEncoder() {
        }

        private static void addPattern(Collection<int[]> collection, int i, int[] iArr, int[] iArr2, int i2) {
            collection.add(Code128Reader.CODE_PATTERNS[i]);
            if (i2 != 0) {
                iArr2[0] = iArr2[0] + 1;
            }
            iArr[0] = (i * iArr2[0]) + iArr[0];
        }

        private boolean canEncode(CharSequence charSequence, Charset charset, int i) {
            int i2;
            char charAt = charSequence.charAt(i);
            int i3 = AnonymousClass1.$SwitchMap$com$google$zxing$oned$Code128Writer$MinimalEncoder$Charset[charset.ordinal()];
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 != 3) {
                        return false;
                    }
                    if (charAt != 241 && ((i2 = i + 1) >= charSequence.length() || !isDigit(charAt) || !isDigit(charSequence.charAt(i2)))) {
                        return false;
                    }
                    return true;
                }
                if (charAt != 241 && charAt != 242 && charAt != 243 && charAt != 244 && new ObfuscatedString(new long[]{-1258958471786143198L, 1383564781172012269L, -4318000254076418475L, -3346847581483861771L, -6051474947581627946L, 6290280111666071193L, 3856657477071280606L, 6652758993261267767L, 1487553226527611434L, -3577764639695849259L, -4693392333048467605L, -3471074366973285263L, -5075880672012045072L, 9012547342146819861L}).toString().indexOf(charAt) < 0) {
                    return false;
                }
                return true;
            }
            if (charAt != 241 && charAt != 242 && charAt != 243 && charAt != 244 && A.indexOf(charAt) < 0) {
                return false;
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:12:0x009d  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x00bc  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean[] encode(String str) {
            Charset charset;
            int i = 2;
            this.memoizedCost = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 4, str.length());
            this.minPath = (Latch[][]) Array.newInstance((Class<?>) Latch.class, 4, str.length());
            Charset charset2 = Charset.NONE;
            encode(str, charset2, 0);
            ArrayList arrayList = new ArrayList();
            int[] iArr = {0};
            int[] iArr2 = {1};
            int length = str.length();
            int i2 = 0;
            while (i2 < length) {
                Latch latch = this.minPath[charset2.ordinal()][i2];
                int i3 = AnonymousClass1.$SwitchMap$com$google$zxing$oned$Code128Writer$MinimalEncoder$Latch[latch.ordinal()];
                int i4 = 101;
                if (i3 == 1) {
                    charset = Charset.A;
                    addPattern(arrayList, i2 == 0 ? 103 : 101, iArr, iArr2, i2);
                } else if (i3 == i) {
                    charset = Charset.B;
                    addPattern(arrayList, i2 == 0 ? 104 : 100, iArr, iArr2, i2);
                } else if (i3 == 3) {
                    charset = Charset.C;
                    addPattern(arrayList, i2 == 0 ? 105 : 99, iArr, iArr2, i2);
                } else {
                    if (i3 == 4) {
                        addPattern(arrayList, 98, iArr, iArr2, i2);
                    }
                    if (charset2 != Charset.C) {
                        if (str.charAt(i2) == 241) {
                            addPattern(arrayList, 102, iArr, iArr2, i2);
                        } else {
                            addPattern(arrayList, Integer.parseInt(str.substring(i2, i2 + 2)), iArr, iArr2, i2);
                            int i5 = i2 + 1;
                            if (i5 < length) {
                                i2 = i5;
                            }
                        }
                    } else {
                        switch (str.charAt(i2)) {
                            case 241:
                                i4 = 102;
                                break;
                            case 242:
                                i4 = 97;
                                break;
                            case 243:
                                i4 = 96;
                                break;
                            case 244:
                                if ((charset2 != Charset.A || latch == Latch.SHIFT) && (charset2 != Charset.B || latch != Latch.SHIFT)) {
                                    i4 = 100;
                                    break;
                                }
                                break;
                            default:
                                i4 = str.charAt(i2) - ' ';
                                break;
                        }
                        if (((charset2 == Charset.A && latch != Latch.SHIFT) || (charset2 == Charset.B && latch == Latch.SHIFT)) && i4 < 0) {
                            i4 += 96;
                        }
                        addPattern(arrayList, i4, iArr, iArr2, i2);
                    }
                    i2++;
                    i = 2;
                }
                charset2 = charset;
                if (charset2 != Charset.C) {
                }
                i2++;
                i = 2;
            }
            this.memoizedCost = null;
            this.minPath = null;
            return Code128Writer.produceResult(arrayList, iArr[0]);
        }

        private static boolean isDigit(char c) {
            return c >= '0' && c <= '9';
        }

        public /* synthetic */ MinimalEncoder(AnonymousClass1 anonymousClass1) {
            this();
        }

        private int encode(CharSequence charSequence, Charset charset, int i) {
            int i2;
            int i3;
            int i4 = this.memoizedCost[charset.ordinal()][i];
            if (i4 > 0) {
                return i4;
            }
            Latch latch = Latch.NONE;
            int i5 = i + 1;
            boolean z = i5 >= charSequence.length();
            Charset[] charsetArr = {Charset.A, Charset.B};
            int i6 = Integer.MAX_VALUE;
            for (int i7 = 0; i7 <= 1; i7++) {
                if (canEncode(charSequence, charsetArr[i7], i)) {
                    Latch latch2 = Latch.NONE;
                    Charset charset2 = charsetArr[i7];
                    if (charset != charset2) {
                        latch2 = Latch.valueOf(charset2.toString());
                        i3 = 2;
                    } else {
                        i3 = 1;
                    }
                    if (!z) {
                        i3 += encode(charSequence, charsetArr[i7], i5);
                    }
                    if (i3 < i6) {
                        latch = latch2;
                        i6 = i3;
                    }
                    if (charset == charsetArr[(i7 + 1) % 2]) {
                        Latch latch3 = Latch.SHIFT;
                        int encode = !z ? encode(charSequence, charset, i5) + 2 : 2;
                        if (encode < i6) {
                            latch = latch3;
                            i6 = encode;
                        }
                    }
                }
            }
            Charset charset3 = Charset.C;
            if (canEncode(charSequence, charset3, i)) {
                Latch latch4 = Latch.NONE;
                if (charset != charset3) {
                    latch4 = Latch.C;
                    i2 = 2;
                } else {
                    i2 = 1;
                }
                int i8 = (charSequence.charAt(i) == 241 ? 1 : 2) + i;
                if (i8 < charSequence.length()) {
                    i2 += encode(charSequence, charset3, i8);
                }
                if (i2 < i6) {
                    latch = latch4;
                    i6 = i2;
                }
            }
            if (i6 != Integer.MAX_VALUE) {
                this.memoizedCost[charset.ordinal()][i] = i6;
                this.minPath[charset.ordinal()][i] = latch;
                return i6;
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-3193861786072190678L, -8603885159866110922L, -1116580546126583024L, -1017334062293977919L, 9047302135167909416L, 5733871719345019694L}).toString() + ((int) charSequence.charAt(i)));
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:28:0x0095. Please report as an issue. */
    private static int check(String str, Map<EncodeHintType, ?> map) {
        int i = -1;
        if (map != null) {
            EncodeHintType encodeHintType = EncodeHintType.FORCE_CODE_SET;
            if (map.containsKey(encodeHintType)) {
                String obj = map.get(encodeHintType).toString();
                switch (obj.hashCode()) {
                    case 65:
                        if (obj.equals(new ObfuscatedString(new long[]{-541769994292697247L, -2949064732236498230L}).toString())) {
                            i = 0;
                            break;
                        }
                        break;
                    case 66:
                        if (obj.equals(new ObfuscatedString(new long[]{5853601969734622482L, 1245607696358068449L}).toString())) {
                            i = 1;
                            break;
                        }
                        break;
                    case 67:
                        if (obj.equals(new ObfuscatedString(new long[]{-7371236112495466378L, 5629958669364927643L}).toString())) {
                            i = 2;
                            break;
                        }
                        break;
                }
                if (i != 0) {
                    if (i != 1) {
                        if (i == 2) {
                            i = 99;
                        } else {
                            throw new IllegalArgumentException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{8649904842791603365L, -4211982436029929268L, -544420800243048722L, 2354790609731971512L, -7586350873143453663L}), new StringBuilder(), obj));
                        }
                    } else {
                        i = 100;
                    }
                } else {
                    i = 101;
                }
            }
        }
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            switch (charAt) {
                default:
                    if (charAt > 127) {
                        throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-9049002194804605957L, 8225491257763199071L, 9093687665732314884L, -5879350343151373069L, -1853840707819787255L, -1452198135671521164L}), new StringBuilder(), charAt));
                    }
                case 241:
                case 242:
                case 243:
                case 244:
                    switch (i) {
                        case 99:
                            if (charAt < '0' || ((charAt > '9' && charAt <= 127) || charAt == 242 || charAt == 243 || charAt == 244)) {
                                throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{2369848580451646553L, 4344779117092037854L, 5024287562030924665L, 8249575706984256207L, -6743123028018636741L, 1462586445577957330L, -1969940479744323225L, 14336850538792996L, -2651128616889854363L}), new StringBuilder(), charAt));
                            }
                            break;
                            break;
                        case 100:
                            if (charAt < ' ') {
                                throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-1206899110570173740L, -1867274540198753778L, -3299740445573371982L, -6927142331256161402L, -6471127931365106877L, -6738180762991626685L, -2558637529016877993L, 6000185822478953749L, -737794677179111087L}), new StringBuilder(), charAt));
                            }
                            break;
                        case 101:
                            if (charAt > '_' && charAt <= 127) {
                                throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-5772010845137143253L, 3678082644788440839L, 6103945869545885572L, 5651906859394316172L, -1070159337710842598L, 7483023364831240902L, -6399204832371968369L, 3000319915273079981L, 5920409490780793383L}), new StringBuilder(), charAt));
                            }
                            break;
                    }
                    break;
            }
        }
        return i;
    }

    private static int chooseCode(CharSequence charSequence, int i, int i2) {
        CType findCType;
        CType findCType2;
        char charAt;
        CType findCType3 = findCType(charSequence, i);
        CType cType = CType.ONE_DIGIT;
        if (findCType3 == cType) {
            if (i2 == 101) {
                return 101;
            }
            return 100;
        }
        CType cType2 = CType.UNCODABLE;
        if (findCType3 == cType2) {
            if (i < charSequence.length() && ((charAt = charSequence.charAt(i)) < ' ' || (i2 == 101 && (charAt < '`' || (charAt >= 241 && charAt <= 244))))) {
                return 101;
            }
            return 100;
        }
        if (i2 == 101 && findCType3 == CType.FNC_1) {
            return 101;
        }
        if (i2 == 99) {
            return 99;
        }
        if (i2 == 100) {
            CType cType3 = CType.FNC_1;
            if (findCType3 == cType3 || (findCType = findCType(charSequence, i + 2)) == cType2 || findCType == cType) {
                return 100;
            }
            if (findCType == cType3) {
                if (findCType(charSequence, i + 3) != CType.TWO_DIGITS) {
                    return 100;
                }
                return 99;
            }
            int i3 = i + 4;
            while (true) {
                findCType2 = findCType(charSequence, i3);
                if (findCType2 != CType.TWO_DIGITS) {
                    break;
                }
                i3 += 2;
            }
            if (findCType2 == CType.ONE_DIGIT) {
                return 100;
            }
            return 99;
        }
        if (findCType3 == CType.FNC_1) {
            findCType3 = findCType(charSequence, i + 1);
        }
        if (findCType3 != CType.TWO_DIGITS) {
            return 100;
        }
        return 99;
    }

    private static boolean[] encodeFast(String str, int i) {
        int i2;
        int length = str.length();
        ArrayList arrayList = new ArrayList();
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 1;
        while (i3 < length) {
            if (i == -1) {
                i2 = chooseCode(str, i3, i5);
            } else {
                i2 = i;
            }
            int i7 = 100;
            if (i2 == i5) {
                switch (str.charAt(i3)) {
                    case 241:
                        i7 = 102;
                        break;
                    case 242:
                        i7 = 97;
                        break;
                    case 243:
                        i7 = 96;
                        break;
                    case 244:
                        if (i5 == 101) {
                            i7 = 101;
                            break;
                        }
                        break;
                    default:
                        if (i5 != 100) {
                            if (i5 != 101) {
                                int i8 = i3 + 1;
                                if (i8 != length) {
                                    i7 = Integer.parseInt(str.substring(i3, i3 + 2));
                                    i3 = i8;
                                    break;
                                } else {
                                    throw new IllegalArgumentException(new ObfuscatedString(new long[]{-4485427624153040530L, 2852086825295536415L, 5426113573519061794L, -332411153945953772L, 1621463919700601751L, -4011130269775466556L, 2448842889770862256L, -915807724250071352L}).toString());
                                }
                            } else {
                                char charAt = str.charAt(i3);
                                i7 = charAt - ' ';
                                if (i7 < 0) {
                                    i7 = charAt + '@';
                                    break;
                                }
                            }
                        } else {
                            i7 = str.charAt(i3) - ' ';
                            break;
                        }
                        break;
                }
                i3++;
            } else {
                if (i5 == 0) {
                    if (i2 != 100) {
                        if (i2 != 101) {
                            i7 = 105;
                        } else {
                            i7 = 103;
                        }
                    } else {
                        i7 = 104;
                    }
                } else {
                    i7 = i2;
                }
                i5 = i2;
            }
            arrayList.add(Code128Reader.CODE_PATTERNS[i7]);
            i4 += i7 * i6;
            if (i3 != 0) {
                i6++;
            }
        }
        return produceResult(arrayList, i4);
    }

    private static CType findCType(CharSequence charSequence, int i) {
        int length = charSequence.length();
        if (i >= length) {
            return CType.UNCODABLE;
        }
        char charAt = charSequence.charAt(i);
        if (charAt == 241) {
            return CType.FNC_1;
        }
        if (charAt >= '0' && charAt <= '9') {
            int i2 = i + 1;
            if (i2 >= length) {
                return CType.ONE_DIGIT;
            }
            char charAt2 = charSequence.charAt(i2);
            if (charAt2 >= '0' && charAt2 <= '9') {
                return CType.TWO_DIGITS;
            }
            return CType.ONE_DIGIT;
        }
        return CType.UNCODABLE;
    }

    public static boolean[] produceResult(Collection<int[]> collection, int i) {
        int i2 = i % 103;
        if (i2 >= 0) {
            int[][] iArr = Code128Reader.CODE_PATTERNS;
            collection.add(iArr[i2]);
            collection.add(iArr[106]);
            int i3 = 0;
            int i4 = 0;
            for (int[] iArr2 : collection) {
                for (int i5 : iArr2) {
                    i4 += i5;
                }
            }
            boolean[] zArr = new boolean[i4];
            Iterator<int[]> it = collection.iterator();
            while (it.hasNext()) {
                i3 += OneDimensionalCodeWriter.appendPattern(zArr, i3, it.next(), true);
            }
            return zArr;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-1078200545460219376L, -5052033339792499396L, -2756245564498267926L, 6339627626285073383L, 4565740498546193627L, 2257527272572862099L}).toString());
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public boolean[] encode(String str) {
        return encode(str, null);
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public Collection<BarcodeFormat> getSupportedWriteFormats() {
        return Collections.singleton(BarcodeFormat.CODE_128);
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public boolean[] encode(String str, Map<EncodeHintType, ?> map) {
        int check = check(str, map);
        if (map != null) {
            EncodeHintType encodeHintType = EncodeHintType.CODE128_COMPACT;
            if (map.containsKey(encodeHintType) && Boolean.parseBoolean(map.get(encodeHintType).toString())) {
                return new MinimalEncoder(null).encode(str);
            }
        }
        return encodeFast(str, check);
    }
}
