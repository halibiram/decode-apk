package com.google.zxing.qrcode.decoder;

import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.common.BitSource;
import com.google.zxing.common.CharacterSetECI;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.StringUtils;
import com.panda912.muddy.ObfuscatedString;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

/* loaded from: classes3.dex */
final class DecodedBitStreamParser {
    private static final char[] ALPHANUMERIC_CHARS = new ObfuscatedString(new long[]{-2367132734172382782L, 9017369871225358393L, 1920009408763058241L, 8668744004016532136L, 8811177728965479864L, 6438649574653727465L, -2761391117075450568L}).toString().toCharArray();
    private static final int GB2312_SUBSET = 1;

    /* renamed from: com.google.zxing.qrcode.decoder.DecodedBitStreamParser$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$zxing$qrcode$decoder$Mode;

        static {
            int[] iArr = new int[Mode.values().length];
            $SwitchMap$com$google$zxing$qrcode$decoder$Mode = iArr;
            try {
                iArr[Mode.NUMERIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.ALPHANUMERIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.KANJI.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.TERMINATOR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.FNC1_FIRST_POSITION.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.FNC1_SECOND_POSITION.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.STRUCTURED_APPEND.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.ECI.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.HANZI.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    private DecodedBitStreamParser() {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x003f. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:23:0x013b A[LOOP:0: B:2:0x0021->B:23:0x013b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0100 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static DecoderResult decode(byte[] bArr, Version version, ErrorCorrectionLevel errorCorrectionLevel, Map<DecodeHintType, ?> map) {
        Mode forBits;
        Mode mode;
        int i;
        ArrayList arrayList;
        String obj;
        BitSource bitSource = new BitSource(bArr);
        StringBuilder sb = new StringBuilder(50);
        int i2 = 1;
        ArrayList arrayList2 = new ArrayList(1);
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        int i3 = -1;
        int i4 = -1;
        CharacterSetECI characterSetECI = null;
        while (true) {
            try {
                if (bitSource.available() < 4) {
                    forBits = Mode.TERMINATOR;
                } else {
                    forBits = Mode.forBits(bitSource.readBits(4));
                }
                Mode mode2 = forBits;
                int[] iArr = AnonymousClass1.$SwitchMap$com$google$zxing$qrcode$decoder$Mode;
                switch (iArr[mode2.ordinal()]) {
                    case 5:
                        mode = mode2;
                        if (mode != Mode.TERMINATOR) {
                            if (characterSetECI != null) {
                                if (z2) {
                                    i = 4;
                                } else if (z3) {
                                    i = 6;
                                } else {
                                    i = 2;
                                }
                            } else if (z2) {
                                i = 3;
                            } else if (z3) {
                                i = 5;
                            } else {
                                i = 1;
                            }
                            String sb2 = sb.toString();
                            if (arrayList2.isEmpty()) {
                                arrayList = null;
                            } else {
                                arrayList = arrayList2;
                            }
                            if (errorCorrectionLevel == null) {
                                obj = null;
                            } else {
                                obj = errorCorrectionLevel.toString();
                            }
                            return new DecoderResult(bArr, sb2, arrayList, obj, i3, i4, i);
                        }
                        i2 = 1;
                    case 6:
                        mode = mode2;
                        z = true;
                        z2 = true;
                        if (mode != Mode.TERMINATOR) {
                        }
                        break;
                    case 7:
                        mode = mode2;
                        z = true;
                        z3 = true;
                        if (mode != Mode.TERMINATOR) {
                        }
                        break;
                    case 8:
                        mode = mode2;
                        if (bitSource.available() >= 16) {
                            int readBits = bitSource.readBits(8);
                            i4 = bitSource.readBits(8);
                            i3 = readBits;
                            if (mode != Mode.TERMINATOR) {
                            }
                        } else {
                            throw FormatException.getFormatInstance();
                        }
                        break;
                    case 9:
                        mode = mode2;
                        characterSetECI = CharacterSetECI.getCharacterSetECIByValue(parseECIValue(bitSource));
                        if (characterSetECI == null) {
                            throw FormatException.getFormatInstance();
                        }
                        if (mode != Mode.TERMINATOR) {
                        }
                        break;
                    case 10:
                        mode = mode2;
                        int readBits2 = bitSource.readBits(4);
                        int readBits3 = bitSource.readBits(mode.getCharacterCountBits(version));
                        if (readBits2 == 1) {
                            decodeHanziSegment(bitSource, sb, readBits3);
                        }
                        if (mode != Mode.TERMINATOR) {
                        }
                        break;
                    default:
                        int readBits4 = bitSource.readBits(mode2.getCharacterCountBits(version));
                        int i5 = iArr[mode2.ordinal()];
                        if (i5 != i2) {
                            if (i5 != 2) {
                                if (i5 != 3) {
                                    if (i5 == 4) {
                                        decodeKanjiSegment(bitSource, sb, readBits4);
                                        mode = mode2;
                                        if (mode != Mode.TERMINATOR) {
                                        }
                                    } else {
                                        throw FormatException.getFormatInstance();
                                    }
                                } else {
                                    mode = mode2;
                                    decodeByteSegment(bitSource, sb, readBits4, characterSetECI, arrayList2, map);
                                }
                            } else {
                                mode = mode2;
                                decodeAlphanumericSegment(bitSource, sb, readBits4, z);
                            }
                        } else {
                            mode = mode2;
                            decodeNumericSegment(bitSource, sb, readBits4);
                        }
                        if (mode != Mode.TERMINATOR) {
                        }
                        break;
                }
            } catch (IllegalArgumentException unused) {
                throw FormatException.getFormatInstance();
            }
        }
    }

    private static void decodeAlphanumericSegment(BitSource bitSource, StringBuilder sb, int i, boolean z) {
        while (i > 1) {
            if (bitSource.available() >= 11) {
                int readBits = bitSource.readBits(11);
                sb.append(toAlphaNumericChar(readBits / 45));
                sb.append(toAlphaNumericChar(readBits % 45));
                i -= 2;
            } else {
                throw FormatException.getFormatInstance();
            }
        }
        if (i == 1) {
            if (bitSource.available() >= 6) {
                sb.append(toAlphaNumericChar(bitSource.readBits(6)));
            } else {
                throw FormatException.getFormatInstance();
            }
        }
        if (z) {
            for (int length = sb.length(); length < sb.length(); length++) {
                if (sb.charAt(length) == '%') {
                    if (length < sb.length() - 1) {
                        int i2 = length + 1;
                        if (sb.charAt(i2) == '%') {
                            sb.deleteCharAt(i2);
                        }
                    }
                    sb.setCharAt(length, (char) 29);
                }
            }
        }
    }

    private static void decodeByteSegment(BitSource bitSource, StringBuilder sb, int i, CharacterSetECI characterSetECI, Collection<byte[]> collection, Map<DecodeHintType, ?> map) {
        Charset charset;
        if (i * 8 <= bitSource.available()) {
            byte[] bArr = new byte[i];
            for (int i2 = 0; i2 < i; i2++) {
                bArr[i2] = (byte) bitSource.readBits(8);
            }
            if (characterSetECI == null) {
                charset = StringUtils.guessCharset(bArr, map);
            } else {
                charset = characterSetECI.getCharset();
            }
            sb.append(new String(bArr, charset));
            collection.add(bArr);
            return;
        }
        throw FormatException.getFormatInstance();
    }

    private static void decodeHanziSegment(BitSource bitSource, StringBuilder sb, int i) {
        int i2;
        if (StringUtils.GB2312_CHARSET != null) {
            if (i * 13 <= bitSource.available()) {
                byte[] bArr = new byte[i * 2];
                int i3 = 0;
                while (i > 0) {
                    int readBits = bitSource.readBits(13);
                    int i4 = (readBits % 96) | ((readBits / 96) << 8);
                    if (i4 < 2560) {
                        i2 = 41377;
                    } else {
                        i2 = 42657;
                    }
                    int i5 = i4 + i2;
                    bArr[i3] = (byte) ((i5 >> 8) & 255);
                    bArr[i3 + 1] = (byte) (i5 & 255);
                    i3 += 2;
                    i--;
                }
                sb.append(new String(bArr, StringUtils.GB2312_CHARSET));
                return;
            }
            throw FormatException.getFormatInstance();
        }
        throw FormatException.getFormatInstance();
    }

    private static void decodeKanjiSegment(BitSource bitSource, StringBuilder sb, int i) {
        int i2;
        if (StringUtils.SHIFT_JIS_CHARSET != null) {
            if (i * 13 <= bitSource.available()) {
                byte[] bArr = new byte[i * 2];
                int i3 = 0;
                while (i > 0) {
                    int readBits = bitSource.readBits(13);
                    int i4 = (readBits % 192) | ((readBits / 192) << 8);
                    if (i4 < 7936) {
                        i2 = 33088;
                    } else {
                        i2 = 49472;
                    }
                    int i5 = i4 + i2;
                    bArr[i3] = (byte) (i5 >> 8);
                    bArr[i3 + 1] = (byte) i5;
                    i3 += 2;
                    i--;
                }
                sb.append(new String(bArr, StringUtils.SHIFT_JIS_CHARSET));
                return;
            }
            throw FormatException.getFormatInstance();
        }
        throw FormatException.getFormatInstance();
    }

    private static void decodeNumericSegment(BitSource bitSource, StringBuilder sb, int i) {
        while (i >= 3) {
            if (bitSource.available() >= 10) {
                int readBits = bitSource.readBits(10);
                if (readBits < 1000) {
                    sb.append(toAlphaNumericChar(readBits / 100));
                    sb.append(toAlphaNumericChar((readBits / 10) % 10));
                    sb.append(toAlphaNumericChar(readBits % 10));
                    i -= 3;
                } else {
                    throw FormatException.getFormatInstance();
                }
            } else {
                throw FormatException.getFormatInstance();
            }
        }
        if (i == 2) {
            if (bitSource.available() >= 7) {
                int readBits2 = bitSource.readBits(7);
                if (readBits2 < 100) {
                    sb.append(toAlphaNumericChar(readBits2 / 10));
                    sb.append(toAlphaNumericChar(readBits2 % 10));
                    return;
                }
                throw FormatException.getFormatInstance();
            }
            throw FormatException.getFormatInstance();
        }
        if (i == 1) {
            if (bitSource.available() >= 4) {
                int readBits3 = bitSource.readBits(4);
                if (readBits3 < 10) {
                    sb.append(toAlphaNumericChar(readBits3));
                    return;
                }
                throw FormatException.getFormatInstance();
            }
            throw FormatException.getFormatInstance();
        }
    }

    private static int parseECIValue(BitSource bitSource) {
        int readBits = bitSource.readBits(8);
        if ((readBits & 128) == 0) {
            return readBits & 127;
        }
        if ((readBits & 192) == 128) {
            return bitSource.readBits(8) | ((readBits & 63) << 8);
        }
        if ((readBits & 224) == 192) {
            return bitSource.readBits(16) | ((readBits & 31) << 16);
        }
        throw FormatException.getFormatInstance();
    }

    private static char toAlphaNumericChar(int i) {
        char[] cArr = ALPHANUMERIC_CHARS;
        if (i < cArr.length) {
            return cArr[i];
        }
        throw FormatException.getFormatInstance();
    }
}
