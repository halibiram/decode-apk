package com.google.zxing.maxicode.decoder;

import com.google.common.base.Ascii;
import com.google.zxing.FormatException;
import com.google.zxing.common.DecoderResult;
import com.panda912.muddy.ObfuscatedString;
import java.text.DecimalFormat;

/* loaded from: classes3.dex */
final class DecodedBitStreamParser {
    private static final char ECI = 65530;
    private static final char FS = 28;
    private static final char GS = 29;
    private static final char LATCHA = 65527;
    private static final char LATCHB = 65528;
    private static final char LOCK = 65529;
    private static final char NS = 65531;
    private static final char PAD = 65532;
    private static final char RS = 30;
    private static final char SHIFTA = 65520;
    private static final char SHIFTB = 65521;
    private static final char SHIFTC = 65522;
    private static final char SHIFTD = 65523;
    private static final char SHIFTE = 65524;
    private static final char THREESHIFTA = 65526;
    private static final char TWOSHIFTA = 65525;
    private static final byte[] COUNTRY_BYTES = {53, 54, 43, 44, 45, 46, 47, 48, 37, 38};
    private static final byte[] SERVICE_CLASS_BYTES = {55, 56, 57, 58, 59, 60, 49, 50, 51, 52};
    private static final byte[] POSTCODE_2_LENGTH_BYTES = {39, 40, 41, 42, Ascii.US, 32};
    private static final byte[] POSTCODE_2_BYTES = {33, 34, 35, 36, Ascii.EM, Ascii.SUB, Ascii.ESC, Ascii.FS, Ascii.GS, Ascii.RS, 19, Ascii.DC4, Ascii.NAK, Ascii.SYN, Ascii.ETB, Ascii.CAN, 13, Ascii.SO, Ascii.SI, Ascii.DLE, 17, Ascii.DC2, 7, 8, 9, 10, 11, 12, 1, 2};
    private static final byte[][] POSTCODE_3_BYTES = {new byte[]{39, 40, 41, 42, Ascii.US, 32}, new byte[]{33, 34, 35, 36, Ascii.EM, Ascii.SUB}, new byte[]{Ascii.ESC, Ascii.FS, Ascii.GS, Ascii.RS, 19, Ascii.DC4}, new byte[]{Ascii.NAK, Ascii.SYN, Ascii.ETB, Ascii.CAN, 13, Ascii.SO}, new byte[]{Ascii.SI, Ascii.DLE, 17, Ascii.DC2, 7, 8}, new byte[]{9, 10, 11, 12, 1, 2}};
    private static final String[] SETS = {new ObfuscatedString(new long[]{-4573655857083799391L, -7012299826162612243L, -8456027594178343155L, 7767955702409758581L, 2487235102455185735L, 5402747142419796304L, 1107241906865256359L, -1024224702102191292L, -497042721912318270L, -1765384867427905348L, -835591553312598576L}).toString(), new ObfuscatedString(new long[]{-4339022974206554529L, 4350271483835298196L, 3791358897996288806L, -7518569065576426531L, 8176352269069558125L, 2530639061614541546L, 8748464540727995770L, -1476361593058354957L, -3055376840882523928L, 5193150012130127878L, -2277194763093232279L, -4556991339492452255L}).toString(), new ObfuscatedString(new long[]{-4445539908600673107L, -4947475435184985427L, -636122345066225141L, -7380984065485437381L, -4722685414118172270L, -4885447087899289979L, 2271142423316276617L, -4319386952048671070L, -590858581739045121L, -4529577778230215992L, 2519347441142706949L, 8782005962786399351L, 3283826598684750869L, 5757075286563008872L, 7724374051462447613L, -4098984823126419696L, 3319094491558849790L, 6199880072364568400L}).toString(), new ObfuscatedString(new long[]{5105480191316028896L, 2030680726535105910L, -2489984631963711227L, 1632636027772656155L, 1255714800892794910L, 4702978812978063687L, -3162455037341069240L, -9110550231442110544L, -1153526497304627432L, 2672296033652924044L, -4407861196568192862L, -2695994811460552055L, 544957335214752917L, -2015767612954272487L, 5570885903916772382L, 1703576411904330670L, 792698263373290645L, 1650103989884026596L}).toString(), "\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\ufffa￼￼\u001b\ufffb\u001c\u001d\u001e\u001f\u009f ¢£¤¥¦§©\u00ad®¶\u0095\u0096\u0097\u0098\u0099\u009a\u009b\u009c\u009d\u009e\ufff7 \ufff2\ufff3\ufff9\ufff8"};

    private DecodedBitStreamParser() {
    }

    public static DecoderResult decode(byte[] bArr, int i) {
        String postCode3;
        StringBuilder sb = new StringBuilder(144);
        if (i != 2 && i != 3) {
            if (i != 4) {
                if (i == 5) {
                    sb.append(getMessage(bArr, 1, 77));
                }
            } else {
                sb.append(getMessage(bArr, 1, 93));
            }
        } else {
            if (i == 2) {
                int postCode2 = getPostCode2(bArr);
                int postCode2Length = getPostCode2Length(bArr);
                if (postCode2Length <= 10) {
                    postCode3 = new DecimalFormat(new ObfuscatedString(new long[]{-1652408519696543101L, -147701061334597853L, -862471732886998100L}).toString().substring(0, postCode2Length)).format(postCode2);
                } else {
                    throw FormatException.getFormatInstance();
                }
            } else {
                postCode3 = getPostCode3(bArr);
            }
            DecimalFormat decimalFormat = new DecimalFormat(new ObfuscatedString(new long[]{2344505297395157265L, -7950590855442447964L}).toString());
            String format = decimalFormat.format(getCountry(bArr));
            String format2 = decimalFormat.format(getServiceClass(bArr));
            sb.append(getMessage(bArr, 10, 84));
            if (sb.toString().startsWith(new ObfuscatedString(new long[]{-4970996680588260368L, 8653910996981616548L}).toString())) {
                sb.insert(9, postCode3 + GS + format + GS + format2 + GS);
            } else {
                sb.insert(0, postCode3 + GS + format + GS + format2 + GS);
            }
        }
        return new DecoderResult(bArr, sb.toString(), null, String.valueOf(i));
    }

    private static int getBit(int i, byte[] bArr) {
        int i2 = i - 1;
        if (((1 << (5 - (i2 % 6))) & bArr[i2 / 6]) != 0) {
            return 1;
        }
        return 0;
    }

    private static int getCountry(byte[] bArr) {
        return getInt(bArr, COUNTRY_BYTES);
    }

    private static int getInt(byte[] bArr, byte[] bArr2) {
        int i = 0;
        for (int i2 = 0; i2 < bArr2.length; i2++) {
            i += getBit(bArr2[i2], bArr) << ((bArr2.length - i2) - 1);
        }
        return i;
    }

    private static String getMessage(byte[] bArr, int i, int i2) {
        StringBuilder sb = new StringBuilder();
        int i3 = i;
        int i4 = 0;
        int i5 = -1;
        int i6 = 0;
        while (i3 < i + i2) {
            char charAt = SETS[i4].charAt(bArr[i3]);
            switch (charAt) {
                case 65520:
                case 65521:
                case 65522:
                case 65523:
                case 65524:
                    i6 = i4;
                    i4 = charAt - SHIFTA;
                    i5 = 1;
                    break;
                case 65525:
                    i6 = i4;
                    i4 = 0;
                    i5 = 2;
                    break;
                case 65526:
                    i6 = i4;
                    i4 = 0;
                    i5 = 3;
                    break;
                case 65527:
                    i4 = 0;
                    break;
                case 65528:
                    i4 = 1;
                    break;
                case 65529:
                    break;
                case 65530:
                default:
                    sb.append(charAt);
                    break;
                case 65531:
                    int i7 = (bArr[i3 + 1] << Ascii.CAN) + (bArr[i3 + 2] << Ascii.DC2) + (bArr[i3 + 3] << 12) + (bArr[i3 + 4] << 6);
                    i3 += 5;
                    sb.append(new DecimalFormat(new ObfuscatedString(new long[]{-1237286985251711880L, 579980588823255408L, 8606252085087498581L}).toString()).format(i7 + bArr[i3]));
                    break;
            }
            i5 = -1;
            int i8 = i5 - 1;
            if (i5 == 0) {
                i4 = i6;
            }
            i3++;
            i5 = i8;
        }
        while (sb.length() > 0 && sb.charAt(sb.length() - 1) == 65532) {
            sb.setLength(sb.length() - 1);
        }
        return sb.toString();
    }

    private static int getPostCode2(byte[] bArr) {
        return getInt(bArr, POSTCODE_2_BYTES);
    }

    private static int getPostCode2Length(byte[] bArr) {
        return getInt(bArr, POSTCODE_2_LENGTH_BYTES);
    }

    private static String getPostCode3(byte[] bArr) {
        byte[][] bArr2 = POSTCODE_3_BYTES;
        StringBuilder sb = new StringBuilder(bArr2.length);
        for (byte[] bArr3 : bArr2) {
            sb.append(SETS[0].charAt(getInt(bArr, bArr3)));
        }
        return sb.toString();
    }

    private static int getServiceClass(byte[] bArr) {
        return getInt(bArr, SERVICE_CLASS_BYTES);
    }
}
