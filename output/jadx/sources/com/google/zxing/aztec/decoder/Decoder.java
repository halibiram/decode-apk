package com.google.zxing.aztec.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.aztec.AztecDetectorResult;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.CharacterSetECI;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonDecoder;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import com.panda912.muddy.ObfuscatedString;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class Decoder {
    private AztecDetectorResult ddata;
    private static final String[] UPPER_TABLE = {new ObfuscatedString(new long[]{-2632176825997127198L, 1614601818233363595L}).toString(), new ObfuscatedString(new long[]{7823067312601129690L, 4548008143670324206L}).toString(), new ObfuscatedString(new long[]{3737054970640683554L, 7667067976892271314L}).toString(), new ObfuscatedString(new long[]{4285450065629031343L, -4537882171597632657L}).toString(), new ObfuscatedString(new long[]{3988479447662965604L, -8613515081586330121L}).toString(), new ObfuscatedString(new long[]{-4335310764953341916L, -6400559962541015479L}).toString(), new ObfuscatedString(new long[]{593603986689464761L, 7523341272692833648L}).toString(), new ObfuscatedString(new long[]{9126812621105819250L, -5277805460724820364L}).toString(), new ObfuscatedString(new long[]{1968626197977886198L, 6756539004155535318L}).toString(), new ObfuscatedString(new long[]{5770908273393190293L, -1558337753886294778L}).toString(), new ObfuscatedString(new long[]{392634949068826666L, 7368742671004299039L}).toString(), new ObfuscatedString(new long[]{-3589303324685987993L, -281975441076314985L}).toString(), new ObfuscatedString(new long[]{-6945202256439630339L, -332692631924597658L}).toString(), new ObfuscatedString(new long[]{8122697271357291172L, 382596265222972793L}).toString(), new ObfuscatedString(new long[]{-3137894694686245211L, 8215050542441126431L}).toString(), new ObfuscatedString(new long[]{7870683762564289625L, -6894563607373173269L}).toString(), new ObfuscatedString(new long[]{-3461062383905570095L, -6410994904882716746L}).toString(), new ObfuscatedString(new long[]{7904736619959096974L, -4662690586874278460L}).toString(), new ObfuscatedString(new long[]{-4145969638210253412L, 1828831912880998362L}).toString(), new ObfuscatedString(new long[]{2564388219921301262L, -7639325033553236242L}).toString(), new ObfuscatedString(new long[]{-5258492247249416128L, 8178672332866421238L}).toString(), new ObfuscatedString(new long[]{-8385406251307263683L, -7384281518698602624L}).toString(), new ObfuscatedString(new long[]{8033366546908024497L, 2525795738254478183L}).toString(), new ObfuscatedString(new long[]{6213911554660625417L, -5964939061733220219L}).toString(), new ObfuscatedString(new long[]{1357669500476240478L, 5222979664174411765L}).toString(), new ObfuscatedString(new long[]{8275509894434810355L, 8609484686140435252L}).toString(), new ObfuscatedString(new long[]{5091771894960698809L, 7804436668604718555L}).toString(), new ObfuscatedString(new long[]{-1888386643678911191L, -4845469819484096931L}).toString(), new ObfuscatedString(new long[]{-3597166853218815982L, -8446863436797542684L}).toString(), new ObfuscatedString(new long[]{-3574354321982006502L, -3596367734816076396L}).toString(), new ObfuscatedString(new long[]{7601828767188867160L, -3939498570368403597L}).toString(), new ObfuscatedString(new long[]{-8605497899662075097L, -5453729756065275628L}).toString()};
    private static final String[] LOWER_TABLE = {new ObfuscatedString(new long[]{-4130183817487325320L, 6580917361523583317L}).toString(), new ObfuscatedString(new long[]{-7100885327238133748L, -7664554099268390565L}).toString(), new ObfuscatedString(new long[]{-3554266029709945392L, -811228841947754819L}).toString(), new ObfuscatedString(new long[]{8587238943518779346L, 8037833028694987708L}).toString(), new ObfuscatedString(new long[]{6680731737710386614L, -8201380980775789021L}).toString(), new ObfuscatedString(new long[]{-7247382269633517109L, 3194125020671330666L}).toString(), new ObfuscatedString(new long[]{5604358330186721219L, -7702558089641536697L}).toString(), new ObfuscatedString(new long[]{5071436781191577717L, -198322750362411442L}).toString(), new ObfuscatedString(new long[]{4719952592814360843L, -8865760973543435094L}).toString(), new ObfuscatedString(new long[]{-949429514556441680L, 8334105938914837636L}).toString(), new ObfuscatedString(new long[]{-1765655554659607930L, 4415784986354932238L}).toString(), new ObfuscatedString(new long[]{-5487918722230556629L, 1165254873763982607L}).toString(), new ObfuscatedString(new long[]{5439820402734610248L, -2745646185569166587L}).toString(), new ObfuscatedString(new long[]{-1126776463536191102L, 4372573040712828530L}).toString(), new ObfuscatedString(new long[]{7500125902758348935L, 2743933852553077258L}).toString(), new ObfuscatedString(new long[]{-2934651670881003331L, -1527375938450690171L}).toString(), new ObfuscatedString(new long[]{3669966529486560090L, 25045713379206600L}).toString(), new ObfuscatedString(new long[]{2243317008894125071L, -8834253024141282157L}).toString(), new ObfuscatedString(new long[]{6887490334681808236L, 80953885899452183L}).toString(), new ObfuscatedString(new long[]{-4061269723413934899L, -4628476059943700573L}).toString(), new ObfuscatedString(new long[]{3665355586948391563L, 1917587810278677229L}).toString(), new ObfuscatedString(new long[]{430931891356994886L, 7476500801745144681L}).toString(), new ObfuscatedString(new long[]{-5328090676944463632L, 7117791467104608131L}).toString(), new ObfuscatedString(new long[]{329305153907631152L, 667740287283126708L}).toString(), new ObfuscatedString(new long[]{3449119146453295926L, -4164455979092866514L}).toString(), new ObfuscatedString(new long[]{5781159984186945059L, 3413618454338237782L}).toString(), new ObfuscatedString(new long[]{8972065948692201001L, -6719097389574784293L}).toString(), new ObfuscatedString(new long[]{-9117184606739552542L, 148877098391516237L}).toString(), new ObfuscatedString(new long[]{8416541634472050068L, 8535983383053606121L}).toString(), new ObfuscatedString(new long[]{7503736976303988368L, 6978256678915714634L}).toString(), new ObfuscatedString(new long[]{-7240750838891573882L, -5864427025698357403L}).toString(), new ObfuscatedString(new long[]{-5729264086572886762L, -8409832873530241764L}).toString()};
    private static final String[] MIXED_TABLE = {new ObfuscatedString(new long[]{2950661458795406787L, -5895231949303888854L}).toString(), new ObfuscatedString(new long[]{6954647913695939595L, -6142250625650675212L}).toString(), new ObfuscatedString(new long[]{683892506161222759L, 7197023279828016294L}).toString(), new ObfuscatedString(new long[]{-4748614510827777947L, -7679616634765811734L}).toString(), new ObfuscatedString(new long[]{-244041050161980789L, 4808424219985475080L}).toString(), new ObfuscatedString(new long[]{4498369460390378532L, -9143938212623279687L}).toString(), new ObfuscatedString(new long[]{5542533520962472744L, 7340185404371617847L}).toString(), new ObfuscatedString(new long[]{-4400942629403490569L, 2198268667269267218L}).toString(), new ObfuscatedString(new long[]{1831856041103804437L, 2581068081703417648L}).toString(), new ObfuscatedString(new long[]{8911966726886800918L, 7827084536135358815L}).toString(), new ObfuscatedString(new long[]{-7753073608224341326L, -8121476282012577548L}).toString(), new ObfuscatedString(new long[]{3138561039815197005L, 6816253025011376939L}).toString(), new ObfuscatedString(new long[]{1489972253486665387L, 9154091056268819327L}).toString(), new ObfuscatedString(new long[]{-2580888333009488188L, 8466168693914442607L}).toString(), new ObfuscatedString(new long[]{-6028768069445682151L, -1560652563701659016L}).toString(), new ObfuscatedString(new long[]{-5798611952902369749L, -1011725117572272751L}).toString(), new ObfuscatedString(new long[]{1177771231824840626L, 1969640142803042701L}).toString(), new ObfuscatedString(new long[]{221774333927902317L, -6511900314241006760L}).toString(), new ObfuscatedString(new long[]{-3512896928568794676L, 1113977667568556437L}).toString(), new ObfuscatedString(new long[]{4344094974778017554L, -7507194897742500466L}).toString(), new ObfuscatedString(new long[]{2420789072494485729L, 1613520966450436600L}).toString(), new ObfuscatedString(new long[]{-4564882892229820643L, 3947462717260314143L}).toString(), new ObfuscatedString(new long[]{-7861302711217496874L, -4139130709578314669L}).toString(), new ObfuscatedString(new long[]{-769752710870654224L, -5040477871475854842L}).toString(), new ObfuscatedString(new long[]{-8982482162515908036L, 8947707953197939590L}).toString(), new ObfuscatedString(new long[]{1002539037126182652L, -678879179737379477L}).toString(), new ObfuscatedString(new long[]{4621266217681806238L, 723236917152096824L}).toString(), new ObfuscatedString(new long[]{-1578834954997096369L, -5474088630564682545L}).toString(), new ObfuscatedString(new long[]{5402320196189179799L, 5148923930222735442L}).toString(), new ObfuscatedString(new long[]{-5277046886260293689L, 7511164141144607165L}).toString(), new ObfuscatedString(new long[]{6702178620232121496L, 3914959588574646395L}).toString(), new ObfuscatedString(new long[]{-1185033885016357963L, 1637977880270801969L}).toString()};
    private static final String[] PUNCT_TABLE = {new ObfuscatedString(new long[]{-2155394107136989452L, -4410477857111085519L}).toString(), new ObfuscatedString(new long[]{-579243751966611864L, -275442346045297931L}).toString(), new ObfuscatedString(new long[]{6023346513423028558L, 6998931034653245260L}).toString(), new ObfuscatedString(new long[]{-3615371791664934714L, -6128458126188158073L}).toString(), new ObfuscatedString(new long[]{-3526832484836515385L, -2519119733041425673L}).toString(), new ObfuscatedString(new long[]{7230256761394131886L, 5210675294302853009L}).toString(), new ObfuscatedString(new long[]{738639898475809148L, -3194962947404567410L}).toString(), new ObfuscatedString(new long[]{1492572901412367183L, 4991949245221331466L}).toString(), new ObfuscatedString(new long[]{-7382283692793015027L, 512455837716777842L}).toString(), new ObfuscatedString(new long[]{-926101829765287527L, -2611853808026466714L}).toString(), new ObfuscatedString(new long[]{-1546253515995699949L, -4223254386907713603L}).toString(), new ObfuscatedString(new long[]{-237526524693692218L, 7010985220807802632L}).toString(), new ObfuscatedString(new long[]{9169887080032042316L, -4950691211609910125L}).toString(), new ObfuscatedString(new long[]{-5292814723269792113L, -1571315153374667615L}).toString(), new ObfuscatedString(new long[]{2595685693654996020L, 5118965784003800735L}).toString(), new ObfuscatedString(new long[]{1622559208188728488L, 4847189494755780832L}).toString(), new ObfuscatedString(new long[]{-6106496874916641434L, -8519474102094329660L}).toString(), new ObfuscatedString(new long[]{-8396827564994183348L, 2837538143474363474L}).toString(), new ObfuscatedString(new long[]{-7026943873707529115L, 2317038731922047290L}).toString(), new ObfuscatedString(new long[]{-8326155322139832418L, 2765774482526721126L}).toString(), new ObfuscatedString(new long[]{-3724513348840631317L, 3665413714233044541L}).toString(), new ObfuscatedString(new long[]{-19392593678687307L, -3162696776150231443L}).toString(), new ObfuscatedString(new long[]{-1187402974975377760L, -8480600280109081124L}).toString(), new ObfuscatedString(new long[]{2433010293972527765L, -3913927568343913203L}).toString(), new ObfuscatedString(new long[]{-129770667974454242L, -8832715246868292778L}).toString(), new ObfuscatedString(new long[]{-6305179618208587447L, 5529394794974102718L}).toString(), new ObfuscatedString(new long[]{-5599456911703771311L, 8423963547245226004L}).toString(), new ObfuscatedString(new long[]{3376166965427393430L, 7968309289673883246L}).toString(), new ObfuscatedString(new long[]{1304499265361578682L, 5595329329108410469L}).toString(), new ObfuscatedString(new long[]{5239633380131105352L, -6663991635642759079L}).toString(), new ObfuscatedString(new long[]{-1283647194509102196L, 841085314307831143L}).toString(), new ObfuscatedString(new long[]{5088453030664475656L, -1735660131961819566L}).toString()};
    private static final String[] DIGIT_TABLE = {new ObfuscatedString(new long[]{3429616250376959005L, 6392316896627212971L}).toString(), new ObfuscatedString(new long[]{-5559713622809329935L, -1216392528153254264L}).toString(), new ObfuscatedString(new long[]{-2934253105434718748L, 5525964207328888215L}).toString(), new ObfuscatedString(new long[]{3067684132540393012L, 1640682371436244241L}).toString(), new ObfuscatedString(new long[]{-8273209906722391639L, 5383852261549500901L}).toString(), new ObfuscatedString(new long[]{-5518893674543620549L, -5645200697891429978L}).toString(), new ObfuscatedString(new long[]{-4856340076193980386L, -3703986511414877937L}).toString(), new ObfuscatedString(new long[]{5551543362817032052L, -8276245466606355100L}).toString(), new ObfuscatedString(new long[]{-5565283094582246792L, 2802205402621059072L}).toString(), new ObfuscatedString(new long[]{883229727704917096L, 8171065284486380292L}).toString(), new ObfuscatedString(new long[]{1501168294968285918L, -658374338666929366L}).toString(), new ObfuscatedString(new long[]{-1547920927540799642L, 7071238439343738730L}).toString(), new ObfuscatedString(new long[]{2959431723803729987L, 4578860742829620301L}).toString(), new ObfuscatedString(new long[]{-3132655142538327440L, -8036932594334581378L}).toString(), new ObfuscatedString(new long[]{-3904626418731101010L, 7025681700790944440L}).toString(), new ObfuscatedString(new long[]{7067732040357835042L, -4580110443438534461L}).toString()};
    private static final Charset DEFAULT_ENCODING = StandardCharsets.ISO_8859_1;

    /* renamed from: com.google.zxing.aztec.decoder.Decoder$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table;

        static {
            int[] iArr = new int[Table.values().length];
            $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table = iArr;
            try {
                iArr[Table.UPPER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table[Table.LOWER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table[Table.MIXED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table[Table.PUNCT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table[Table.DIGIT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes3.dex */
    public static final class CorrectedBitsResult {
        private final boolean[] correctBits;
        private final int ecLevel;
        private final int errorsCorrected;

        public CorrectedBitsResult(boolean[] zArr, int i, int i2) {
            this.correctBits = zArr;
            this.errorsCorrected = i;
            this.ecLevel = i2;
        }
    }

    /* loaded from: classes3.dex */
    public enum Table {
        UPPER,
        LOWER,
        MIXED,
        DIGIT,
        PUNCT,
        BINARY
    }

    public static byte[] convertBoolArrayToByteArray(boolean[] zArr) {
        int length = (zArr.length + 7) / 8;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr[i] = readByte(zArr, i * 8);
        }
        return bArr;
    }

    private CorrectedBitsResult correctBits(boolean[] zArr) {
        int i;
        GenericGF genericGF;
        boolean z;
        boolean z2;
        if (this.ddata.getNbLayers() <= 2) {
            genericGF = GenericGF.AZTEC_DATA_6;
            i = 6;
        } else {
            i = 8;
            if (this.ddata.getNbLayers() <= 8) {
                genericGF = GenericGF.AZTEC_DATA_8;
            } else if (this.ddata.getNbLayers() <= 22) {
                genericGF = GenericGF.AZTEC_DATA_10;
                i = 10;
            } else {
                genericGF = GenericGF.AZTEC_DATA_12;
                i = 12;
            }
        }
        int nbDatablocks = this.ddata.getNbDatablocks();
        int length = zArr.length / i;
        if (length >= nbDatablocks) {
            int length2 = zArr.length % i;
            int[] iArr = new int[length];
            int i2 = 0;
            while (i2 < length) {
                iArr[i2] = readCode(zArr, length2, i);
                i2++;
                length2 += i;
            }
            try {
                ReedSolomonDecoder reedSolomonDecoder = new ReedSolomonDecoder(genericGF);
                int i3 = length - nbDatablocks;
                int decodeWithECCount = reedSolomonDecoder.decodeWithECCount(iArr, i3);
                int i4 = 1 << i;
                int i5 = i4 - 1;
                int i6 = 0;
                for (int i7 = 0; i7 < nbDatablocks; i7++) {
                    int i8 = iArr[i7];
                    if (i8 != 0 && i8 != i5) {
                        if (i8 == 1 || i8 == i4 - 2) {
                            i6++;
                        }
                    } else {
                        throw FormatException.getFormatInstance();
                    }
                }
                boolean[] zArr2 = new boolean[(nbDatablocks * i) - i6];
                int i9 = 0;
                for (int i10 = 0; i10 < nbDatablocks; i10++) {
                    int i11 = iArr[i10];
                    if (i11 != 1 && i11 != i4 - 2) {
                        int i12 = i - 1;
                        while (i12 >= 0) {
                            int i13 = i9 + 1;
                            if ((i11 & (1 << i12)) != 0) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            zArr2[i9] = z2;
                            i12--;
                            i9 = i13;
                        }
                    } else {
                        int i14 = (i9 + i) - 1;
                        if (i11 > 1) {
                            z = true;
                        } else {
                            z = false;
                        }
                        Arrays.fill(zArr2, i9, i14, z);
                        i9 = (i - 1) + i9;
                    }
                }
                return new CorrectedBitsResult(zArr2, decodeWithECCount, (i3 * 100) / length);
            } catch (ReedSolomonException e) {
                throw FormatException.getFormatInstance(e);
            }
        }
        throw FormatException.getFormatInstance();
    }

    private boolean[] extractBits(BitMatrix bitMatrix) {
        int i;
        int i2;
        boolean isCompact = this.ddata.isCompact();
        int nbLayers = this.ddata.getNbLayers();
        if (isCompact) {
            i = 11;
        } else {
            i = 14;
        }
        int i3 = (nbLayers * 4) + i;
        int[] iArr = new int[i3];
        boolean[] zArr = new boolean[totalBitsInLayer(nbLayers, isCompact)];
        int i4 = 2;
        if (isCompact) {
            for (int i5 = 0; i5 < i3; i5++) {
                iArr[i5] = i5;
            }
        } else {
            int i6 = i3 / 2;
            int i7 = ((((i6 - 1) / 15) * 2) + (i3 + 1)) / 2;
            for (int i8 = 0; i8 < i6; i8++) {
                iArr[(i6 - i8) - 1] = (i7 - r12) - 1;
                iArr[i6 + i8] = (i8 / 15) + i8 + i7 + 1;
            }
        }
        int i9 = 0;
        int i10 = 0;
        while (i9 < nbLayers) {
            int i11 = (nbLayers - i9) * 4;
            if (isCompact) {
                i2 = 9;
            } else {
                i2 = 12;
            }
            int i12 = i11 + i2;
            int i13 = i9 * 2;
            int i14 = (i3 - 1) - i13;
            int i15 = 0;
            while (i15 < i12) {
                int i16 = i15 * 2;
                int i17 = 0;
                while (i17 < i4) {
                    int i18 = i13 + i17;
                    int i19 = i13 + i15;
                    zArr[i10 + i16 + i17] = bitMatrix.get(iArr[i18], iArr[i19]);
                    int i20 = iArr[i19];
                    int i21 = i14 - i17;
                    boolean z = isCompact;
                    zArr[(i12 * 2) + i10 + i16 + i17] = bitMatrix.get(i20, iArr[i21]);
                    int i22 = i14 - i15;
                    zArr[(i12 * 4) + i10 + i16 + i17] = bitMatrix.get(iArr[i21], iArr[i22]);
                    zArr[(i12 * 6) + i10 + i16 + i17] = bitMatrix.get(iArr[i22], iArr[i18]);
                    i17++;
                    nbLayers = nbLayers;
                    isCompact = z;
                    i4 = 2;
                }
                i15++;
                i4 = 2;
            }
            i10 += i12 * 8;
            i9++;
            i4 = 2;
        }
        return zArr;
    }

    private static String getCharacter(Table table, int i) {
        int i2 = AnonymousClass1.$SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table[table.ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 == 5) {
                            return DIGIT_TABLE[i];
                        }
                        throw new IllegalStateException(new ObfuscatedString(new long[]{-2342339977461781787L, -2280368221546065491L, -6534363875433292968L}).toString());
                    }
                    return PUNCT_TABLE[i];
                }
                return MIXED_TABLE[i];
            }
            return LOWER_TABLE[i];
        }
        return UPPER_TABLE[i];
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00c0, code lost:
    
        throw com.google.zxing.FormatException.getFormatInstance();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String getEncodedData(boolean[] zArr) {
        int i;
        int i2 = 8;
        int length = zArr.length;
        Table table = Table.UPPER;
        StringBuilder sb = new StringBuilder((zArr.length - 5) / 4);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        Charset charset = DEFAULT_ENCODING;
        int i3 = 0;
        Table table2 = table;
        loop0: while (i3 < length) {
            if (table == Table.BINARY) {
                if (length - i3 >= 5) {
                    int readCode = readCode(zArr, i3, 5);
                    int i4 = i3 + 5;
                    if (readCode == 0) {
                        if (length - i4 >= 11) {
                            readCode = readCode(zArr, i4, 11) + 31;
                            i4 = i3 + 16;
                        }
                    }
                    int i5 = 0;
                    while (true) {
                        if (i5 < readCode) {
                            if (length - i4 < i2) {
                                i3 = length;
                                break;
                            }
                            byteArrayOutputStream.write((byte) readCode(zArr, i4, i2));
                            i4 += i2;
                            i5++;
                        } else {
                            i3 = i4;
                            break;
                        }
                    }
                    table = table2;
                }
            } else {
                if (table == Table.DIGIT) {
                    i = 4;
                } else {
                    i = 5;
                }
                if (length - i3 >= i) {
                    int readCode2 = readCode(zArr, i3, i);
                    i3 += i;
                    String character = getCharacter(table, readCode2);
                    if (new ObfuscatedString(new long[]{7681901222207206739L, -5069489284073242826L}).toString().equals(character)) {
                        if (length - i3 >= 3) {
                            int readCode3 = readCode(zArr, i3, 3);
                            i3 += 3;
                            try {
                                sb.append(byteArrayOutputStream.toString(charset.name()));
                                byteArrayOutputStream.reset();
                                if (readCode3 != 0) {
                                    if (readCode3 != 7) {
                                        if (length - i3 >= readCode3 * 4) {
                                            int i6 = 0;
                                            while (true) {
                                                int i7 = readCode3 - 1;
                                                if (readCode3 > 0) {
                                                    int readCode4 = readCode(zArr, i3, 4);
                                                    i3 += 4;
                                                    if (readCode4 < 2 || readCode4 > 11) {
                                                        break loop0;
                                                    }
                                                    i6 = (i6 * 10) + (readCode4 - 2);
                                                    readCode3 = i7;
                                                } else {
                                                    CharacterSetECI characterSetECIByValue = CharacterSetECI.getCharacterSetECIByValue(i6);
                                                    if (characterSetECIByValue != null) {
                                                        charset = characterSetECIByValue.getCharset();
                                                    } else {
                                                        throw FormatException.getFormatInstance();
                                                    }
                                                }
                                            }
                                        }
                                    } else {
                                        throw FormatException.getFormatInstance();
                                    }
                                } else {
                                    sb.append((char) 29);
                                }
                            } catch (UnsupportedEncodingException e) {
                                throw new IllegalStateException(e);
                            }
                        }
                    } else {
                        if (character.startsWith(new ObfuscatedString(new long[]{1457874075857524786L, 4347358316298826013L}).toString())) {
                            table2 = getTable(character.charAt(5));
                            if (character.charAt(6) != 'L') {
                                table2 = table;
                                table = table2;
                            }
                        } else {
                            byte[] bytes = character.getBytes(StandardCharsets.US_ASCII);
                            byteArrayOutputStream.write(bytes, 0, bytes.length);
                            table = table2;
                        }
                        i2 = 8;
                    }
                    table = table2;
                    i2 = 8;
                }
            }
        }
        try {
            sb.append(byteArrayOutputStream.toString(charset.name()));
            return sb.toString();
        } catch (UnsupportedEncodingException e2) {
            throw new IllegalStateException(e2);
        }
    }

    private static Table getTable(char c) {
        if (c != 'B') {
            if (c != 'D') {
                if (c != 'P') {
                    if (c != 'L') {
                        if (c != 'M') {
                            return Table.UPPER;
                        }
                        return Table.MIXED;
                    }
                    return Table.LOWER;
                }
                return Table.PUNCT;
            }
            return Table.DIGIT;
        }
        return Table.BINARY;
    }

    public static String highLevelDecode(boolean[] zArr) {
        return getEncodedData(zArr);
    }

    private static byte readByte(boolean[] zArr, int i) {
        int readCode;
        int length = zArr.length - i;
        if (length >= 8) {
            readCode = readCode(zArr, i, 8);
        } else {
            readCode = readCode(zArr, i, length) << (8 - length);
        }
        return (byte) readCode;
    }

    private static int readCode(boolean[] zArr, int i, int i2) {
        int i3 = 0;
        for (int i4 = i; i4 < i + i2; i4++) {
            i3 <<= 1;
            if (zArr[i4]) {
                i3 |= 1;
            }
        }
        return i3;
    }

    private static int totalBitsInLayer(int i, boolean z) {
        return ((i * 16) + (z ? 88 : 112)) * i;
    }

    public DecoderResult decode(AztecDetectorResult aztecDetectorResult) {
        this.ddata = aztecDetectorResult;
        CorrectedBitsResult correctBits = correctBits(extractBits(aztecDetectorResult.getBits()));
        DecoderResult decoderResult = new DecoderResult(convertBoolArrayToByteArray(correctBits.correctBits), getEncodedData(correctBits.correctBits), null, String.format(new ObfuscatedString(new long[]{2638703722319946764L, 409395680115695920L}).toString(), Integer.valueOf(correctBits.ecLevel)));
        decoderResult.setNumBits(correctBits.correctBits.length);
        decoderResult.setErrorsCorrected(Integer.valueOf(correctBits.errorsCorrected));
        return decoderResult;
    }
}
