package com.google.zxing.datamatrix.decoder;

import com.google.common.base.Ascii;
import com.google.zxing.FormatException;
import com.google.zxing.common.BitSource;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.ECIStringBuilder;
import com.panda912.muddy.ObfuscatedString;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import kotlin.text.Typography;

/* loaded from: classes3.dex */
final class DecodedBitStreamParser {
    private static final char[] C40_BASIC_SET_CHARS = {'*', '*', '*', ' ', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'};
    private static final char[] C40_SHIFT2_SET_CHARS;
    private static final char[] TEXT_BASIC_SET_CHARS;
    private static final char[] TEXT_SHIFT2_SET_CHARS;
    private static final char[] TEXT_SHIFT3_SET_CHARS;

    /* renamed from: com.google.zxing.datamatrix.decoder.DecodedBitStreamParser$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode;

        static {
            int[] iArr = new int[Mode.values().length];
            $SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode = iArr;
            try {
                iArr[Mode.C40_ENCODE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode[Mode.TEXT_ENCODE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode[Mode.ANSIX12_ENCODE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode[Mode.EDIFACT_ENCODE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode[Mode.BASE256_ENCODE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode[Mode.ECI_ENCODE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* loaded from: classes3.dex */
    public enum Mode {
        PAD_ENCODE,
        ASCII_ENCODE,
        C40_ENCODE,
        TEXT_ENCODE,
        ANSIX12_ENCODE,
        EDIFACT_ENCODE,
        BASE256_ENCODE,
        ECI_ENCODE
    }

    static {
        char[] cArr = {'!', Typography.quote, '#', Typography.dollar, '%', Typography.amp, '\'', '(', ')', '*', '+', ',', '-', '.', '/', ':', ';', Typography.less, '=', Typography.greater, '?', '@', '[', '\\', ']', '^', '_'};
        C40_SHIFT2_SET_CHARS = cArr;
        TEXT_BASIC_SET_CHARS = new char[]{'*', '*', '*', ' ', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
        TEXT_SHIFT2_SET_CHARS = cArr;
        TEXT_SHIFT3_SET_CHARS = new char[]{'`', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '{', '|', '}', '~', Ascii.MAX};
    }

    private DecodedBitStreamParser() {
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0099  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static DecoderResult decode(byte[] bArr) {
        int i;
        BitSource bitSource = new BitSource(bArr);
        ECIStringBuilder eCIStringBuilder = new ECIStringBuilder(100);
        boolean z = false;
        StringBuilder sb = new StringBuilder(0);
        ArrayList arrayList = new ArrayList(1);
        Mode mode = Mode.ASCII_ENCODE;
        HashSet hashSet = new HashSet();
        do {
            Mode mode2 = Mode.ASCII_ENCODE;
            if (mode == mode2) {
                mode = decodeAsciiSegment(bitSource, eCIStringBuilder, sb, hashSet);
            } else {
                switch (AnonymousClass1.$SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode[mode.ordinal()]) {
                    case 1:
                        decodeC40Segment(bitSource, eCIStringBuilder, hashSet);
                        break;
                    case 2:
                        decodeTextSegment(bitSource, eCIStringBuilder, hashSet);
                        break;
                    case 3:
                        decodeAnsiX12Segment(bitSource, eCIStringBuilder);
                        break;
                    case 4:
                        decodeEdifactSegment(bitSource, eCIStringBuilder);
                        break;
                    case 5:
                        decodeBase256Segment(bitSource, eCIStringBuilder, arrayList);
                        break;
                    case 6:
                        decodeECISegment(bitSource, eCIStringBuilder);
                        z = true;
                        break;
                    default:
                        throw FormatException.getFormatInstance();
                }
                mode = mode2;
            }
            if (mode != Mode.PAD_ENCODE) {
            }
            if (sb.length() > 0) {
                eCIStringBuilder.appendCharacters(sb);
            }
            if (!z) {
                if (!hashSet.contains(0) && !hashSet.contains(4)) {
                    if (!hashSet.contains(1) && !hashSet.contains(5)) {
                        i = 4;
                    } else {
                        i = 6;
                    }
                } else {
                    i = 5;
                }
            } else if (!hashSet.contains(0) && !hashSet.contains(4)) {
                if (!hashSet.contains(1) && !hashSet.contains(5)) {
                    i = 1;
                } else {
                    i = 3;
                }
            } else {
                i = 2;
            }
            String eCIStringBuilder2 = eCIStringBuilder.toString();
            if (arrayList.isEmpty()) {
                arrayList = null;
            }
            return new DecoderResult(bArr, eCIStringBuilder2, arrayList, null, i);
        } while (bitSource.available() > 0);
        if (sb.length() > 0) {
        }
        if (!z) {
        }
        String eCIStringBuilder22 = eCIStringBuilder.toString();
        if (arrayList.isEmpty()) {
        }
        return new DecoderResult(bArr, eCIStringBuilder22, arrayList, null, i);
    }

    private static void decodeAnsiX12Segment(BitSource bitSource, ECIStringBuilder eCIStringBuilder) {
        int readBits;
        int[] iArr = new int[3];
        while (bitSource.available() != 8 && (readBits = bitSource.readBits(8)) != 254) {
            parseTwoBytes(readBits, bitSource.readBits(8), iArr);
            for (int i = 0; i < 3; i++) {
                int i2 = iArr[i];
                if (i2 != 0) {
                    if (i2 != 1) {
                        if (i2 != 2) {
                            if (i2 != 3) {
                                if (i2 < 14) {
                                    eCIStringBuilder.append((char) (i2 + 44));
                                } else if (i2 < 40) {
                                    eCIStringBuilder.append((char) (i2 + 51));
                                } else {
                                    throw FormatException.getFormatInstance();
                                }
                            } else {
                                eCIStringBuilder.append(' ');
                            }
                        } else {
                            eCIStringBuilder.append(Typography.greater);
                        }
                    } else {
                        eCIStringBuilder.append('*');
                    }
                } else {
                    eCIStringBuilder.append('\r');
                }
            }
            if (bitSource.available() <= 0) {
                return;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:21:0x0036. Please report as an issue. */
    private static Mode decodeAsciiSegment(BitSource bitSource, ECIStringBuilder eCIStringBuilder, StringBuilder sb, Set<Integer> set) {
        boolean z = false;
        do {
            int readBits = bitSource.readBits(8);
            if (readBits != 0) {
                if (readBits <= 128) {
                    if (z) {
                        readBits += 128;
                    }
                    eCIStringBuilder.append((char) (readBits - 1));
                    return Mode.ASCII_ENCODE;
                }
                if (readBits == 129) {
                    return Mode.PAD_ENCODE;
                }
                if (readBits <= 229) {
                    int i = readBits - 130;
                    if (i < 10) {
                        eCIStringBuilder.append('0');
                    }
                    eCIStringBuilder.append(i);
                } else {
                    switch (readBits) {
                        case 230:
                            return Mode.C40_ENCODE;
                        case 231:
                            return Mode.BASE256_ENCODE;
                        case 232:
                            set.add(Integer.valueOf(eCIStringBuilder.length()));
                            eCIStringBuilder.append((char) 29);
                            break;
                        case 233:
                        case 234:
                            break;
                        case 235:
                            z = true;
                            break;
                        case 236:
                            eCIStringBuilder.append(new ObfuscatedString(new long[]{-7260698516673937148L, 6942408972721368278L}).toString());
                            sb.insert(0, new ObfuscatedString(new long[]{-8719996166427793719L, 9033762264010275657L}).toString());
                            break;
                        case 237:
                            eCIStringBuilder.append(new ObfuscatedString(new long[]{4949085113460006480L, -1235234927670875076L}).toString());
                            sb.insert(0, new ObfuscatedString(new long[]{-5033154491154292354L, 7887190690853904110L}).toString());
                            break;
                        case 238:
                            return Mode.ANSIX12_ENCODE;
                        case 239:
                            return Mode.TEXT_ENCODE;
                        case 240:
                            return Mode.EDIFACT_ENCODE;
                        case 241:
                            return Mode.ECI_ENCODE;
                        default:
                            if (readBits != 254 || bitSource.available() != 0) {
                                throw FormatException.getFormatInstance();
                            }
                            break;
                    }
                }
            } else {
                throw FormatException.getFormatInstance();
            }
        } while (bitSource.available() > 0);
        return Mode.ASCII_ENCODE;
    }

    private static void decodeBase256Segment(BitSource bitSource, ECIStringBuilder eCIStringBuilder, Collection<byte[]> collection) {
        int byteOffset = bitSource.getByteOffset();
        int i = byteOffset + 2;
        int unrandomize255State = unrandomize255State(bitSource.readBits(8), byteOffset + 1);
        if (unrandomize255State == 0) {
            unrandomize255State = bitSource.available() / 8;
        } else if (unrandomize255State >= 250) {
            unrandomize255State = ((unrandomize255State - 249) * 250) + unrandomize255State(bitSource.readBits(8), i);
            i = byteOffset + 3;
        }
        if (unrandomize255State >= 0) {
            byte[] bArr = new byte[unrandomize255State];
            int i2 = 0;
            while (i2 < unrandomize255State) {
                if (bitSource.available() >= 8) {
                    bArr[i2] = (byte) unrandomize255State(bitSource.readBits(8), i);
                    i2++;
                    i++;
                } else {
                    throw FormatException.getFormatInstance();
                }
            }
            collection.add(bArr);
            eCIStringBuilder.append(new String(bArr, StandardCharsets.ISO_8859_1));
            return;
        }
        throw FormatException.getFormatInstance();
    }

    private static void decodeC40Segment(BitSource bitSource, ECIStringBuilder eCIStringBuilder, Set<Integer> set) {
        int readBits;
        int[] iArr = new int[3];
        boolean z = false;
        int i = 0;
        while (bitSource.available() != 8 && (readBits = bitSource.readBits(8)) != 254) {
            parseTwoBytes(readBits, bitSource.readBits(8), iArr);
            for (int i2 = 0; i2 < 3; i2++) {
                int i3 = iArr[i2];
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i == 3) {
                                if (z) {
                                    eCIStringBuilder.append((char) (i3 + 224));
                                    z = false;
                                    i = 0;
                                } else {
                                    eCIStringBuilder.append((char) (i3 + 96));
                                    i = 0;
                                }
                            } else {
                                throw FormatException.getFormatInstance();
                            }
                        } else {
                            char[] cArr = C40_SHIFT2_SET_CHARS;
                            if (i3 < cArr.length) {
                                char c = cArr[i3];
                                if (z) {
                                    eCIStringBuilder.append((char) (c + 128));
                                    z = false;
                                } else {
                                    eCIStringBuilder.append(c);
                                }
                            } else if (i3 != 27) {
                                if (i3 == 30) {
                                    z = true;
                                } else {
                                    throw FormatException.getFormatInstance();
                                }
                            } else {
                                set.add(Integer.valueOf(eCIStringBuilder.length()));
                                eCIStringBuilder.append((char) 29);
                            }
                            i = 0;
                        }
                    } else if (z) {
                        eCIStringBuilder.append((char) (i3 + 128));
                        z = false;
                        i = 0;
                    } else {
                        eCIStringBuilder.append((char) i3);
                        i = 0;
                    }
                } else if (i3 < 3) {
                    i = i3 + 1;
                } else {
                    char[] cArr2 = C40_BASIC_SET_CHARS;
                    if (i3 < cArr2.length) {
                        char c2 = cArr2[i3];
                        if (z) {
                            eCIStringBuilder.append((char) (c2 + 128));
                            z = false;
                        } else {
                            eCIStringBuilder.append(c2);
                        }
                    } else {
                        throw FormatException.getFormatInstance();
                    }
                }
            }
            if (bitSource.available() <= 0) {
                return;
            }
        }
    }

    private static void decodeECISegment(BitSource bitSource, ECIStringBuilder eCIStringBuilder) {
        if (bitSource.available() >= 8) {
            int readBits = bitSource.readBits(8);
            if (readBits <= 127) {
                eCIStringBuilder.appendECI(readBits - 1);
                return;
            }
            return;
        }
        throw FormatException.getFormatInstance();
    }

    private static void decodeEdifactSegment(BitSource bitSource, ECIStringBuilder eCIStringBuilder) {
        while (bitSource.available() > 16) {
            for (int i = 0; i < 4; i++) {
                int readBits = bitSource.readBits(6);
                if (readBits == 31) {
                    int bitOffset = 8 - bitSource.getBitOffset();
                    if (bitOffset != 8) {
                        bitSource.readBits(bitOffset);
                        return;
                    }
                    return;
                }
                if ((readBits & 32) == 0) {
                    readBits |= 64;
                }
                eCIStringBuilder.append((char) readBits);
            }
            if (bitSource.available() <= 0) {
                return;
            }
        }
    }

    private static void decodeTextSegment(BitSource bitSource, ECIStringBuilder eCIStringBuilder, Set<Integer> set) {
        int readBits;
        int[] iArr = new int[3];
        boolean z = false;
        int i = 0;
        while (bitSource.available() != 8 && (readBits = bitSource.readBits(8)) != 254) {
            parseTwoBytes(readBits, bitSource.readBits(8), iArr);
            for (int i2 = 0; i2 < 3; i2++) {
                int i3 = iArr[i2];
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i == 3) {
                                char[] cArr = TEXT_SHIFT3_SET_CHARS;
                                if (i3 < cArr.length) {
                                    char c = cArr[i3];
                                    if (z) {
                                        eCIStringBuilder.append((char) (c + 128));
                                        z = false;
                                        i = 0;
                                    } else {
                                        eCIStringBuilder.append(c);
                                        i = 0;
                                    }
                                } else {
                                    throw FormatException.getFormatInstance();
                                }
                            } else {
                                throw FormatException.getFormatInstance();
                            }
                        } else {
                            char[] cArr2 = TEXT_SHIFT2_SET_CHARS;
                            if (i3 < cArr2.length) {
                                char c2 = cArr2[i3];
                                if (z) {
                                    eCIStringBuilder.append((char) (c2 + 128));
                                    z = false;
                                } else {
                                    eCIStringBuilder.append(c2);
                                }
                            } else if (i3 != 27) {
                                if (i3 == 30) {
                                    z = true;
                                } else {
                                    throw FormatException.getFormatInstance();
                                }
                            } else {
                                set.add(Integer.valueOf(eCIStringBuilder.length()));
                                eCIStringBuilder.append((char) 29);
                            }
                            i = 0;
                        }
                    } else if (z) {
                        eCIStringBuilder.append((char) (i3 + 128));
                        z = false;
                        i = 0;
                    } else {
                        eCIStringBuilder.append((char) i3);
                        i = 0;
                    }
                } else if (i3 < 3) {
                    i = i3 + 1;
                } else {
                    char[] cArr3 = TEXT_BASIC_SET_CHARS;
                    if (i3 < cArr3.length) {
                        char c3 = cArr3[i3];
                        if (z) {
                            eCIStringBuilder.append((char) (c3 + 128));
                            z = false;
                        } else {
                            eCIStringBuilder.append(c3);
                        }
                    } else {
                        throw FormatException.getFormatInstance();
                    }
                }
            }
            if (bitSource.available() <= 0) {
                return;
            }
        }
    }

    private static void parseTwoBytes(int i, int i2, int[] iArr) {
        int i3 = ((i << 8) + i2) - 1;
        int i4 = i3 / 1600;
        iArr[0] = i4;
        int i5 = i3 - (i4 * 1600);
        int i6 = i5 / 40;
        iArr[1] = i6;
        iArr[2] = i5 - (i6 * 40);
    }

    private static int unrandomize255State(int i, int i2) {
        int i3 = i - (((i2 * 149) % 255) + 1);
        if (i3 < 0) {
            return i3 + 256;
        }
        return i3;
    }
}
