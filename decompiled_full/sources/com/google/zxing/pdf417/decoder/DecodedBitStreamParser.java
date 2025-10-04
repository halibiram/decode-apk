package com.google.zxing.pdf417.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.ECIStringBuilder;
import com.google.zxing.pdf417.PDF417ResultMetadata;
import com.panda912.muddy.ObfuscatedString;
import java.math.BigInteger;
import java.util.Arrays;

/* loaded from: classes3.dex */
final class DecodedBitStreamParser {
    private static final int AL = 28;
    private static final int AS = 27;
    private static final int BEGIN_MACRO_PDF417_CONTROL_BLOCK = 928;
    private static final int BEGIN_MACRO_PDF417_OPTIONAL_FIELD = 923;
    private static final int BYTE_COMPACTION_MODE_LATCH = 901;
    private static final int BYTE_COMPACTION_MODE_LATCH_6 = 924;
    private static final int ECI_CHARSET = 927;
    private static final int ECI_GENERAL_PURPOSE = 926;
    private static final int ECI_USER_DEFINED = 925;
    private static final BigInteger[] EXP900;
    private static final int LL = 27;
    private static final int MACRO_PDF417_OPTIONAL_FIELD_ADDRESSEE = 4;
    private static final int MACRO_PDF417_OPTIONAL_FIELD_CHECKSUM = 6;
    private static final int MACRO_PDF417_OPTIONAL_FIELD_FILE_NAME = 0;
    private static final int MACRO_PDF417_OPTIONAL_FIELD_FILE_SIZE = 5;
    private static final int MACRO_PDF417_OPTIONAL_FIELD_SEGMENT_COUNT = 1;
    private static final int MACRO_PDF417_OPTIONAL_FIELD_SENDER = 3;
    private static final int MACRO_PDF417_OPTIONAL_FIELD_TIME_STAMP = 2;
    private static final int MACRO_PDF417_TERMINATOR = 922;
    private static final int MAX_NUMERIC_CODEWORDS = 15;
    private static final int ML = 28;
    private static final int MODE_SHIFT_TO_BYTE_COMPACTION_MODE = 913;
    private static final int NUMBER_OF_SEQUENCE_CODEWORDS = 2;
    private static final int NUMERIC_COMPACTION_MODE_LATCH = 902;
    private static final int PAL = 29;
    private static final int PL = 25;
    private static final int PS = 29;
    private static final int TEXT_COMPACTION_MODE_LATCH = 900;
    private static final char[] PUNCT_CHARS = new ObfuscatedString(new long[]{-3390856582292933402L, 1971824140406779130L, -968774254559006046L, -3274661036201703747L, -4766885107337356674L}).toString().toCharArray();
    private static final char[] MIXED_CHARS = new ObfuscatedString(new long[]{3148866570986070928L, 4158011279448210768L, 2882814111495992388L, 3371759886080782646L, -6697810944642510067L}).toString().toCharArray();

    /* renamed from: com.google.zxing.pdf417.decoder.DecodedBitStreamParser$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode;

        static {
            int[] iArr = new int[Mode.values().length];
            $SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode = iArr;
            try {
                iArr[Mode.ALPHA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode[Mode.LOWER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode[Mode.MIXED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode[Mode.PUNCT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode[Mode.ALPHA_SHIFT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode[Mode.PUNCT_SHIFT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* loaded from: classes3.dex */
    public enum Mode {
        ALPHA,
        LOWER,
        MIXED,
        PUNCT,
        ALPHA_SHIFT,
        PUNCT_SHIFT
    }

    static {
        BigInteger[] bigIntegerArr = new BigInteger[16];
        EXP900 = bigIntegerArr;
        bigIntegerArr[0] = BigInteger.ONE;
        BigInteger valueOf = BigInteger.valueOf(900L);
        bigIntegerArr[1] = valueOf;
        int i = 2;
        while (true) {
            BigInteger[] bigIntegerArr2 = EXP900;
            if (i < bigIntegerArr2.length) {
                bigIntegerArr2[i] = bigIntegerArr2[i - 1].multiply(valueOf);
                i++;
            } else {
                return;
            }
        }
    }

    private DecodedBitStreamParser() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0047, code lost:
    
        if (r11 == com.google.zxing.pdf417.decoder.DecodedBitStreamParser.BYTE_COMPACTION_MODE_LATCH_6) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x004b, code lost:
    
        if (r8 >= r12[0]) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x004f, code lost:
    
        if (r12[r8] >= 900) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0051, code lost:
    
        r13 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0053, code lost:
    
        if (r13 >= 6) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0055, code lost:
    
        r14.append((byte) (r6 >> ((5 - r13) * 8)));
        r13 = r13 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int byteCompaction(int i, int[] iArr, int i2, ECIStringBuilder eCIStringBuilder) {
        int i3;
        int i4;
        boolean z = false;
        while (i2 < iArr[0] && !z) {
            while (true) {
                i3 = iArr[0];
                if (i2 >= i3 || iArr[i2] != ECI_CHARSET) {
                    break;
                }
                eCIStringBuilder.appendECI(iArr[i2 + 1]);
                i2 += 2;
            }
            if (i2 < i3 && iArr[i2] < 900) {
                long j = 0;
                int i5 = 0;
                while (true) {
                    i4 = i2 + 1;
                    j = (j * 900) + iArr[i2];
                    i5++;
                    if (i5 >= 5 || i4 >= iArr[0] || iArr[i4] >= 900) {
                        break;
                    }
                    i2 = i4;
                }
                i4 -= i5;
                while (i4 < iArr[0] && !z) {
                    int i6 = i4 + 1;
                    int i7 = iArr[i4];
                    if (i7 < 900) {
                        eCIStringBuilder.append((byte) i7);
                        i4 = i6;
                    } else if (i7 == ECI_CHARSET) {
                        i4 += 2;
                        eCIStringBuilder.appendECI(iArr[i6]);
                    } else {
                        z = true;
                    }
                }
                i2 = i4;
            } else {
                z = true;
            }
        }
        return i2;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x001f. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:22:0x0022. Please report as an issue. */
    public static DecoderResult decode(int[] iArr, String str) {
        ECIStringBuilder eCIStringBuilder = new ECIStringBuilder(iArr.length * 2);
        int textCompaction = textCompaction(iArr, 1, eCIStringBuilder);
        PDF417ResultMetadata pDF417ResultMetadata = new PDF417ResultMetadata();
        while (textCompaction < iArr[0]) {
            int i = textCompaction + 1;
            int i2 = iArr[textCompaction];
            if (i2 != MODE_SHIFT_TO_BYTE_COMPACTION_MODE) {
                switch (i2) {
                    case 900:
                        textCompaction = textCompaction(iArr, i, eCIStringBuilder);
                        break;
                    case 901:
                        textCompaction = byteCompaction(i2, iArr, i, eCIStringBuilder);
                        break;
                    case 902:
                        textCompaction = numericCompaction(iArr, i, eCIStringBuilder);
                        break;
                    default:
                        switch (i2) {
                            case MACRO_PDF417_TERMINATOR /* 922 */:
                            case BEGIN_MACRO_PDF417_OPTIONAL_FIELD /* 923 */:
                                throw FormatException.getFormatInstance();
                            case BYTE_COMPACTION_MODE_LATCH_6 /* 924 */:
                                textCompaction = byteCompaction(i2, iArr, i, eCIStringBuilder);
                                break;
                            case ECI_USER_DEFINED /* 925 */:
                                textCompaction += 2;
                                break;
                            case ECI_GENERAL_PURPOSE /* 926 */:
                                textCompaction += 3;
                                break;
                            case ECI_CHARSET /* 927 */:
                                textCompaction += 2;
                                eCIStringBuilder.appendECI(iArr[i]);
                                break;
                            case 928:
                                textCompaction = decodeMacroBlock(iArr, i, pDF417ResultMetadata);
                                break;
                            default:
                                textCompaction = textCompaction(iArr, textCompaction, eCIStringBuilder);
                                break;
                        }
                }
            } else {
                textCompaction += 2;
                eCIStringBuilder.append((char) iArr[i]);
            }
        }
        if (eCIStringBuilder.isEmpty() && pDF417ResultMetadata.getFileId() == null) {
            throw FormatException.getFormatInstance();
        }
        DecoderResult decoderResult = new DecoderResult(null, eCIStringBuilder.toString(), null, str);
        decoderResult.setOther(pDF417ResultMetadata);
        return decoderResult;
    }

    private static String decodeBase900toBase10(int[] iArr, int i) {
        BigInteger bigInteger = BigInteger.ZERO;
        for (int i2 = 0; i2 < i; i2++) {
            bigInteger = bigInteger.add(EXP900[(i - i2) - 1].multiply(BigInteger.valueOf(iArr[i2])));
        }
        String bigInteger2 = bigInteger.toString();
        if (bigInteger2.charAt(0) == '1') {
            return bigInteger2.substring(1);
        }
        throw FormatException.getFormatInstance();
    }

    public static int decodeMacroBlock(int[] iArr, int i, PDF417ResultMetadata pDF417ResultMetadata) {
        int i2;
        int i3;
        if (i + 2 <= iArr[0]) {
            int[] iArr2 = new int[2];
            int i4 = 0;
            while (i4 < 2) {
                iArr2[i4] = iArr[i];
                i4++;
                i++;
            }
            String decodeBase900toBase10 = decodeBase900toBase10(iArr2, 2);
            if (decodeBase900toBase10.isEmpty()) {
                pDF417ResultMetadata.setSegmentIndex(0);
            } else {
                try {
                    pDF417ResultMetadata.setSegmentIndex(Integer.parseInt(decodeBase900toBase10));
                } catch (NumberFormatException unused) {
                    throw FormatException.getFormatInstance();
                }
            }
            StringBuilder sb = new StringBuilder();
            while (i < iArr[0] && i < iArr.length && (i3 = iArr[i]) != MACRO_PDF417_TERMINATOR && i3 != BEGIN_MACRO_PDF417_OPTIONAL_FIELD) {
                sb.append(String.format(new ObfuscatedString(new long[]{-3580653279603539913L, 4411559944214813280L}).toString(), Integer.valueOf(iArr[i])));
                i++;
            }
            if (sb.length() != 0) {
                pDF417ResultMetadata.setFileId(sb.toString());
                if (iArr[i] == BEGIN_MACRO_PDF417_OPTIONAL_FIELD) {
                    i2 = i + 1;
                } else {
                    i2 = -1;
                }
                while (i < iArr[0]) {
                    int i5 = iArr[i];
                    if (i5 != MACRO_PDF417_TERMINATOR) {
                        if (i5 == BEGIN_MACRO_PDF417_OPTIONAL_FIELD) {
                            switch (iArr[i + 1]) {
                                case 0:
                                    ECIStringBuilder eCIStringBuilder = new ECIStringBuilder();
                                    i = textCompaction(iArr, i + 2, eCIStringBuilder);
                                    pDF417ResultMetadata.setFileName(eCIStringBuilder.toString());
                                    break;
                                case 1:
                                    ECIStringBuilder eCIStringBuilder2 = new ECIStringBuilder();
                                    i = numericCompaction(iArr, i + 2, eCIStringBuilder2);
                                    try {
                                        pDF417ResultMetadata.setSegmentCount(Integer.parseInt(eCIStringBuilder2.toString()));
                                        break;
                                    } catch (NumberFormatException unused2) {
                                        throw FormatException.getFormatInstance();
                                    }
                                case 2:
                                    ECIStringBuilder eCIStringBuilder3 = new ECIStringBuilder();
                                    i = numericCompaction(iArr, i + 2, eCIStringBuilder3);
                                    try {
                                        pDF417ResultMetadata.setTimestamp(Long.parseLong(eCIStringBuilder3.toString()));
                                        break;
                                    } catch (NumberFormatException unused3) {
                                        throw FormatException.getFormatInstance();
                                    }
                                case 3:
                                    ECIStringBuilder eCIStringBuilder4 = new ECIStringBuilder();
                                    i = textCompaction(iArr, i + 2, eCIStringBuilder4);
                                    pDF417ResultMetadata.setSender(eCIStringBuilder4.toString());
                                    break;
                                case 4:
                                    ECIStringBuilder eCIStringBuilder5 = new ECIStringBuilder();
                                    i = textCompaction(iArr, i + 2, eCIStringBuilder5);
                                    pDF417ResultMetadata.setAddressee(eCIStringBuilder5.toString());
                                    break;
                                case 5:
                                    ECIStringBuilder eCIStringBuilder6 = new ECIStringBuilder();
                                    i = numericCompaction(iArr, i + 2, eCIStringBuilder6);
                                    try {
                                        pDF417ResultMetadata.setFileSize(Long.parseLong(eCIStringBuilder6.toString()));
                                        break;
                                    } catch (NumberFormatException unused4) {
                                        throw FormatException.getFormatInstance();
                                    }
                                case 6:
                                    ECIStringBuilder eCIStringBuilder7 = new ECIStringBuilder();
                                    i = numericCompaction(iArr, i + 2, eCIStringBuilder7);
                                    try {
                                        pDF417ResultMetadata.setChecksum(Integer.parseInt(eCIStringBuilder7.toString()));
                                        break;
                                    } catch (NumberFormatException unused5) {
                                        throw FormatException.getFormatInstance();
                                    }
                                default:
                                    throw FormatException.getFormatInstance();
                            }
                        } else {
                            throw FormatException.getFormatInstance();
                        }
                    } else {
                        i++;
                        pDF417ResultMetadata.setLastSegment(true);
                    }
                }
                if (i2 != -1) {
                    int i6 = i - i2;
                    if (pDF417ResultMetadata.isLastSegment()) {
                        i6--;
                    }
                    if (i6 > 0) {
                        pDF417ResultMetadata.setOptionalData(Arrays.copyOfRange(iArr, i2, i6 + i2));
                    }
                }
                return i;
            }
            throw FormatException.getFormatInstance();
        }
        throw FormatException.getFormatInstance();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:43:0x0084. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0020. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:56:0x00aa. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:67:0x00cb. Please report as an issue. */
    private static Mode decodeTextCompaction(int[] iArr, int[] iArr2, int i, ECIStringBuilder eCIStringBuilder, Mode mode) {
        Mode mode2;
        int i2;
        char c;
        char c2;
        Mode mode3;
        Mode mode4 = mode;
        Mode mode5 = mode4;
        Mode mode6 = mode5;
        int i3 = 0;
        while (i3 < i) {
            int i4 = iArr[i3];
            char c3 = ' ';
            switch (AnonymousClass1.$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode[mode5.ordinal()]) {
                case 1:
                    if (i4 < 26) {
                        i2 = i4 + 65;
                        c = (char) i2;
                        Mode mode7 = mode6;
                        mode6 = mode5;
                        c2 = c;
                        mode3 = mode7;
                        break;
                    } else {
                        if (i4 != 900) {
                            if (i4 != MODE_SHIFT_TO_BYTE_COMPACTION_MODE) {
                                switch (i4) {
                                    case 27:
                                        mode4 = Mode.LOWER;
                                        break;
                                    case 28:
                                        mode4 = Mode.MIXED;
                                        break;
                                    case 29:
                                        mode2 = Mode.PUNCT_SHIFT;
                                        c3 = 0;
                                        Mode mode8 = mode2;
                                        mode6 = mode5;
                                        mode5 = mode8;
                                        break;
                                }
                                mode3 = mode6;
                                mode6 = mode5;
                                c2 = c3;
                                break;
                            } else {
                                eCIStringBuilder.append((char) iArr2[i3]);
                            }
                            c3 = 0;
                            mode3 = mode6;
                            mode6 = mode5;
                            c2 = c3;
                        } else {
                            mode4 = Mode.ALPHA;
                        }
                        mode5 = mode4;
                        c3 = 0;
                        mode3 = mode6;
                        mode6 = mode5;
                        c2 = c3;
                    }
                case 2:
                    if (i4 < 26) {
                        i2 = i4 + 97;
                        c = (char) i2;
                        Mode mode72 = mode6;
                        mode6 = mode5;
                        c2 = c;
                        mode3 = mode72;
                        break;
                    } else {
                        if (i4 != 900) {
                            if (i4 != MODE_SHIFT_TO_BYTE_COMPACTION_MODE) {
                                switch (i4) {
                                    case 27:
                                        mode2 = Mode.ALPHA_SHIFT;
                                        c3 = 0;
                                        Mode mode82 = mode2;
                                        mode6 = mode5;
                                        mode5 = mode82;
                                        break;
                                    case 28:
                                        mode4 = Mode.MIXED;
                                        break;
                                    case 29:
                                        mode2 = Mode.PUNCT_SHIFT;
                                        c3 = 0;
                                        Mode mode822 = mode2;
                                        mode6 = mode5;
                                        mode5 = mode822;
                                        break;
                                }
                                mode3 = mode6;
                                mode6 = mode5;
                                c2 = c3;
                                break;
                            } else {
                                eCIStringBuilder.append((char) iArr2[i3]);
                            }
                            c3 = 0;
                            mode3 = mode6;
                            mode6 = mode5;
                            c2 = c3;
                        } else {
                            mode4 = Mode.ALPHA;
                        }
                        mode5 = mode4;
                        c3 = 0;
                        mode3 = mode6;
                        mode6 = mode5;
                        c2 = c3;
                    }
                case 3:
                    if (i4 < 25) {
                        c = MIXED_CHARS[i4];
                        Mode mode722 = mode6;
                        mode6 = mode5;
                        c2 = c;
                        mode3 = mode722;
                        break;
                    } else {
                        if (i4 != 900) {
                            if (i4 != MODE_SHIFT_TO_BYTE_COMPACTION_MODE) {
                                switch (i4) {
                                    case 25:
                                        mode4 = Mode.PUNCT;
                                        mode5 = mode4;
                                        break;
                                    case 27:
                                        mode4 = Mode.LOWER;
                                        mode5 = mode4;
                                        break;
                                    case 29:
                                        mode2 = Mode.PUNCT_SHIFT;
                                        c3 = 0;
                                        Mode mode8222 = mode2;
                                        mode6 = mode5;
                                        mode5 = mode8222;
                                        break;
                                }
                                mode3 = mode6;
                                mode6 = mode5;
                                c2 = c3;
                                break;
                            } else {
                                eCIStringBuilder.append((char) iArr2[i3]);
                            }
                            c3 = 0;
                            mode3 = mode6;
                            mode6 = mode5;
                            c2 = c3;
                        }
                        mode4 = Mode.ALPHA;
                        mode5 = mode4;
                        c3 = 0;
                        mode3 = mode6;
                        mode6 = mode5;
                        c2 = c3;
                    }
                case 4:
                    if (i4 < 29) {
                        c = PUNCT_CHARS[i4];
                        Mode mode7222 = mode6;
                        mode6 = mode5;
                        c2 = c;
                        mode3 = mode7222;
                        break;
                    } else {
                        if (i4 != 29 && i4 != 900) {
                            if (i4 == MODE_SHIFT_TO_BYTE_COMPACTION_MODE) {
                                eCIStringBuilder.append((char) iArr2[i3]);
                            }
                        } else {
                            mode4 = Mode.ALPHA;
                            mode5 = mode4;
                        }
                        mode3 = mode6;
                        mode6 = mode5;
                        c2 = 0;
                        break;
                    }
                case 5:
                    if (i4 < 26) {
                        c2 = (char) (i4 + 65);
                        mode3 = mode6;
                        break;
                    } else if (i4 != 26) {
                        if (i4 != 900) {
                            mode5 = mode6;
                        } else {
                            mode5 = Mode.ALPHA;
                        }
                        c3 = 0;
                        mode3 = mode6;
                        mode6 = mode5;
                        c2 = c3;
                        break;
                    } else {
                        mode5 = mode6;
                        mode3 = mode6;
                        mode6 = mode5;
                        c2 = c3;
                    }
                case 6:
                    if (i4 < 29) {
                        c2 = PUNCT_CHARS[i4];
                        mode3 = mode6;
                        break;
                    } else if (i4 != 29 && i4 != 900) {
                        if (i4 == MODE_SHIFT_TO_BYTE_COMPACTION_MODE) {
                            eCIStringBuilder.append((char) iArr2[i3]);
                        }
                        mode3 = mode6;
                        c2 = 0;
                    } else {
                        mode5 = Mode.ALPHA;
                        mode3 = mode6;
                        mode6 = mode5;
                        c2 = 0;
                        break;
                    }
                default:
                    mode3 = mode6;
                    mode6 = mode5;
                    c2 = 0;
                    break;
            }
            if (c2 != 0) {
                eCIStringBuilder.append(c2);
            }
            i3++;
            mode5 = mode6;
            mode6 = mode3;
        }
        return mode4;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x003c A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int numericCompaction(int[] iArr, int i, ECIStringBuilder eCIStringBuilder) {
        int[] iArr2 = new int[15];
        boolean z = false;
        while (true) {
            int i2 = 0;
            while (true) {
                int i3 = iArr[0];
                if (i < i3 && !z) {
                    int i4 = i + 1;
                    int i5 = iArr[i];
                    if (i4 == i3) {
                        z = true;
                    }
                    if (i5 < 900) {
                        iArr2[i2] = i5;
                        i2++;
                    } else {
                        if (i5 != 900 && i5 != 901 && i5 != ECI_CHARSET && i5 != 928) {
                            switch (i5) {
                            }
                            if (i2 % 15 == 0 || i5 == 902 || z) {
                            }
                        }
                        z = true;
                        if (i2 % 15 == 0) {
                        }
                    }
                    i = i4;
                    if (i2 % 15 == 0) {
                    }
                }
            }
            eCIStringBuilder.append(decodeBase900toBase10(iArr2, i2));
        }
        return i;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:28:0x003a. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:29:0x003d. Please report as an issue. */
    private static int textCompaction(int[] iArr, int i, ECIStringBuilder eCIStringBuilder) {
        int i2 = iArr[0];
        int[] iArr2 = new int[(i2 - i) * 2];
        int[] iArr3 = new int[(i2 - i) * 2];
        Mode mode = Mode.ALPHA;
        boolean z = false;
        int i3 = 0;
        while (i < iArr[0] && !z) {
            int i4 = i + 1;
            int i5 = iArr[i];
            if (i5 < 900) {
                iArr2[i3] = i5 / 30;
                iArr2[i3 + 1] = i5 % 30;
                i3 += 2;
            } else if (i5 != MODE_SHIFT_TO_BYTE_COMPACTION_MODE) {
                if (i5 != ECI_CHARSET) {
                    if (i5 != 928) {
                        switch (i5) {
                            case 900:
                                iArr2[i3] = 900;
                                i3++;
                                break;
                            case 901:
                            case 902:
                                break;
                            default:
                                switch (i5) {
                                }
                        }
                    }
                    z = true;
                } else {
                    Mode decodeTextCompaction = decodeTextCompaction(iArr2, iArr3, i3, eCIStringBuilder, mode);
                    i += 2;
                    eCIStringBuilder.appendECI(iArr[i4]);
                    int i6 = iArr[0];
                    if (i <= i6) {
                        i3 = 0;
                        mode = decodeTextCompaction;
                        iArr3 = new int[(i6 - i) * 2];
                        iArr2 = new int[(i6 - i) * 2];
                    } else {
                        throw FormatException.getFormatInstance();
                    }
                }
            } else {
                iArr2[i3] = MODE_SHIFT_TO_BYTE_COMPACTION_MODE;
                i += 2;
                iArr3[i3] = iArr[i4];
                i3++;
            }
            i = i4;
        }
        decodeTextCompaction(iArr2, iArr3, i3, eCIStringBuilder, mode);
        return i;
    }
}
