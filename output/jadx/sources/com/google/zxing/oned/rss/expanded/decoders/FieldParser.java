package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.NotFoundException;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
final class FieldParser {
    private static final Map<String, DataLength> FOUR_DIGIT_DATA_LENGTH;
    private static final Map<String, DataLength> THREE_DIGIT_DATA_LENGTH;
    private static final Map<String, DataLength> THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH;
    private static final Map<String, DataLength> TWO_DIGIT_DATA_LENGTH;

    /* loaded from: classes3.dex */
    public static final class DataLength {
        final int length;
        final boolean variable;

        private DataLength(boolean z, int i) {
            this.variable = z;
            this.length = i;
        }

        public static DataLength fixed(int i) {
            return new DataLength(false, i);
        }

        public static DataLength variable(int i) {
            return new DataLength(true, i);
        }
    }

    static {
        HashMap hashMap = new HashMap();
        TWO_DIGIT_DATA_LENGTH = hashMap;
        hashMap.put(new ObfuscatedString(new long[]{-8721026132761649012L, 304331333959003192L}).toString(), DataLength.fixed(18));
        hashMap.put(new ObfuscatedString(new long[]{6872032740016973821L, 1440327196615732522L}).toString(), DataLength.fixed(14));
        hashMap.put(new ObfuscatedString(new long[]{7536189754125721070L, 5906795698395004382L}).toString(), DataLength.fixed(14));
        hashMap.put(new ObfuscatedString(new long[]{-393178259693562602L, -9867350075793922L}).toString(), DataLength.variable(20));
        hashMap.put(new ObfuscatedString(new long[]{5777187641768821686L, -2321140097510768639L}).toString(), DataLength.fixed(6));
        hashMap.put(new ObfuscatedString(new long[]{1922417564153013905L, 5844501992840787106L}).toString(), DataLength.fixed(6));
        hashMap.put(new ObfuscatedString(new long[]{-8290824906135376973L, 4601057954675235065L}).toString(), DataLength.fixed(6));
        hashMap.put(new ObfuscatedString(new long[]{1156206701790223751L, 1369283325219615811L}).toString(), DataLength.fixed(6));
        hashMap.put(new ObfuscatedString(new long[]{-8443897372490173807L, -656015148454815473L}).toString(), DataLength.fixed(6));
        hashMap.put(new ObfuscatedString(new long[]{-8399968961677258173L, 2871334988083738679L}).toString(), DataLength.fixed(6));
        hashMap.put(new ObfuscatedString(new long[]{154064816802174167L, 2345650257663763987L}).toString(), DataLength.fixed(2));
        hashMap.put(new ObfuscatedString(new long[]{370657425310474644L, -3703196987609559573L}).toString(), DataLength.variable(20));
        hashMap.put(new ObfuscatedString(new long[]{-3878044789329597036L, -8461259016216163035L}).toString(), DataLength.variable(29));
        hashMap.put(new ObfuscatedString(new long[]{-8736010290384689817L, 8400761558271270626L}).toString(), DataLength.variable(8));
        hashMap.put(new ObfuscatedString(new long[]{-7426316496686458377L, 491876930269818814L}).toString(), DataLength.variable(8));
        for (int i = 90; i <= 99; i++) {
            TWO_DIGIT_DATA_LENGTH.put(String.valueOf(i), DataLength.variable(30));
        }
        HashMap hashMap2 = new HashMap();
        THREE_DIGIT_DATA_LENGTH = hashMap2;
        hashMap2.put(new ObfuscatedString(new long[]{-1531410716365407842L, 8670282652483681079L}).toString(), DataLength.variable(28));
        hashMap2.put(new ObfuscatedString(new long[]{6441830696462535324L, -8211381255783656169L}).toString(), DataLength.variable(30));
        hashMap2.put(new ObfuscatedString(new long[]{-4351630145062068364L, 3295727441102340525L}).toString(), DataLength.variable(30));
        hashMap2.put(new ObfuscatedString(new long[]{2005823875511661184L, 8375856617239694385L}).toString(), DataLength.variable(6));
        hashMap2.put(new ObfuscatedString(new long[]{-2927860629842055282L, 3352341023248276718L}).toString(), DataLength.variable(20));
        hashMap2.put(new ObfuscatedString(new long[]{5624231645510355086L, 5202049983257411146L}).toString(), DataLength.variable(30));
        hashMap2.put(new ObfuscatedString(new long[]{-8039543516762136206L, 1831110305524266577L}).toString(), DataLength.variable(30));
        hashMap2.put(new ObfuscatedString(new long[]{743110943403566596L, 6279234778781208498L}).toString(), DataLength.variable(30));
        hashMap2.put(new ObfuscatedString(new long[]{3382863319210712417L, 8662621591578383762L}).toString(), DataLength.variable(20));
        hashMap2.put(new ObfuscatedString(new long[]{5512502460302488343L, 3810433852784954110L}).toString(), DataLength.variable(25));
        hashMap2.put(new ObfuscatedString(new long[]{6117167109500540213L, 1209069427258004729L}).toString(), DataLength.variable(30));
        hashMap2.put(new ObfuscatedString(new long[]{-2791617459794504109L, 82268665210297769L}).toString(), DataLength.variable(30));
        hashMap2.put(new ObfuscatedString(new long[]{647769542523330092L, 3542540308046990052L}).toString(), DataLength.fixed(17));
        hashMap2.put(new ObfuscatedString(new long[]{2326328241560782539L, -1705711204725017684L}).toString(), DataLength.variable(30));
        hashMap2.put(new ObfuscatedString(new long[]{4541573631617780531L, 4108404258035269089L}).toString(), DataLength.fixed(13));
        hashMap2.put(new ObfuscatedString(new long[]{-5994549948940856406L, 8199173026019550405L}).toString(), DataLength.fixed(13));
        hashMap2.put(new ObfuscatedString(new long[]{6104980274462822946L, -6297009764449241337L}).toString(), DataLength.fixed(13));
        hashMap2.put(new ObfuscatedString(new long[]{-6658051321288716438L, 7794035212262566939L}).toString(), DataLength.fixed(13));
        hashMap2.put(new ObfuscatedString(new long[]{5124853000157542045L, -7818155905617181048L}).toString(), DataLength.fixed(13));
        hashMap2.put(new ObfuscatedString(new long[]{1296061897457997312L, -5681410144211169693L}).toString(), DataLength.fixed(13));
        hashMap2.put(new ObfuscatedString(new long[]{6955390931349184483L, -3662392697648292223L}).toString(), DataLength.fixed(13));
        hashMap2.put(new ObfuscatedString(new long[]{7593167858293804086L, 6213498664240671817L}).toString(), DataLength.fixed(13));
        hashMap2.put(new ObfuscatedString(new long[]{2651041715500666435L, -7806118013726964672L}).toString(), DataLength.variable(20));
        hashMap2.put(new ObfuscatedString(new long[]{-472879147876314533L, -5117647697003451365L}).toString(), DataLength.variable(15));
        hashMap2.put(new ObfuscatedString(new long[]{-244721362435402617L, 3717187786784395792L}).toString(), DataLength.fixed(3));
        hashMap2.put(new ObfuscatedString(new long[]{7725449065140076631L, 2943931895710927524L}).toString(), DataLength.variable(15));
        hashMap2.put(new ObfuscatedString(new long[]{-8369627339868539842L, -3348875946847273752L}).toString(), DataLength.fixed(3));
        hashMap2.put(new ObfuscatedString(new long[]{-9032495338120492632L, -1746743740423826205L}).toString(), DataLength.variable(15));
        hashMap2.put(new ObfuscatedString(new long[]{-1701936930897886540L, -7994711624198827611L}).toString(), DataLength.fixed(3));
        hashMap2.put(new ObfuscatedString(new long[]{-7188261036319894556L, 1399016964500990400L}).toString(), DataLength.variable(3));
        hashMap2.put(new ObfuscatedString(new long[]{7354593766525384616L, -4319041324596702142L}).toString(), DataLength.variable(20));
        hashMap2.put(new ObfuscatedString(new long[]{-7429345788316346458L, 1470555257687086564L}).toString(), DataLength.variable(20));
        hashMap2.put(new ObfuscatedString(new long[]{3341406898769216478L, 1489844987981845448L}).toString(), DataLength.variable(20));
        hashMap2.put(new ObfuscatedString(new long[]{1894315887273863550L, 6096236158303266142L}).toString(), DataLength.variable(20));
        hashMap2.put(new ObfuscatedString(new long[]{555117658838141587L, 2377682749588894866L}).toString(), DataLength.variable(20));
        hashMap2.put(new ObfuscatedString(new long[]{2751664397599946943L, -4552002304876551301L}).toString(), DataLength.variable(20));
        THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH = new HashMap();
        for (int i2 = 310; i2 <= 316; i2++) {
            THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH.put(String.valueOf(i2), DataLength.fixed(6));
        }
        for (int i3 = 320; i3 <= 337; i3++) {
            THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH.put(String.valueOf(i3), DataLength.fixed(6));
        }
        for (int i4 = 340; i4 <= 357; i4++) {
            THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH.put(String.valueOf(i4), DataLength.fixed(6));
        }
        for (int i5 = 360; i5 <= 369; i5++) {
            THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH.put(String.valueOf(i5), DataLength.fixed(6));
        }
        Map<String, DataLength> map = THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH;
        map.put(new ObfuscatedString(new long[]{3639342134427484356L, -4496996422456332492L}).toString(), DataLength.variable(15));
        map.put(new ObfuscatedString(new long[]{-882861077993846078L, 9008503939785400750L}).toString(), DataLength.variable(18));
        map.put(new ObfuscatedString(new long[]{3053552696622225420L, 7907556688664565924L}).toString(), DataLength.variable(15));
        map.put(new ObfuscatedString(new long[]{-5014233462409200052L, 6502941020701026126L}).toString(), DataLength.variable(18));
        map.put(new ObfuscatedString(new long[]{6968150117540304234L, -8062346971949576054L}).toString(), DataLength.fixed(4));
        map.put(new ObfuscatedString(new long[]{1488009343813059194L, -2615507577803697176L}).toString(), DataLength.fixed(6));
        map.put(new ObfuscatedString(new long[]{-8199942379739405499L, 5649259300457032683L}).toString(), DataLength.variable(30));
        map.put(new ObfuscatedString(new long[]{4857079649227371448L, -1530163999497787207L}).toString(), DataLength.variable(30));
        HashMap hashMap3 = new HashMap();
        FOUR_DIGIT_DATA_LENGTH = hashMap3;
        hashMap3.put(new ObfuscatedString(new long[]{-2857363475817528558L, 6599226128587768406L}).toString(), DataLength.variable(35));
        hashMap3.put(new ObfuscatedString(new long[]{5003756834471355415L, -7576153169169852313L}).toString(), DataLength.variable(35));
        hashMap3.put(new ObfuscatedString(new long[]{7436776139437025091L, 6632937470978101762L}).toString(), DataLength.variable(70));
        hashMap3.put(new ObfuscatedString(new long[]{1626661696900698028L, -6952709766399221137L}).toString(), DataLength.variable(70));
        hashMap3.put(new ObfuscatedString(new long[]{-2677592251871800205L, -5687528583374317154L}).toString(), DataLength.variable(70));
        hashMap3.put(new ObfuscatedString(new long[]{-7318783748465755434L, -665164012138826685L}).toString(), DataLength.variable(70));
        hashMap3.put(new ObfuscatedString(new long[]{1733078691581935462L, 2943678424842663107L}).toString(), DataLength.variable(70));
        hashMap3.put(new ObfuscatedString(new long[]{-2104276394785117168L, -3323205677307670566L}).toString(), DataLength.fixed(2));
        hashMap3.put(new ObfuscatedString(new long[]{-9062722505988184943L, -7732669337838754818L}).toString(), DataLength.variable(30));
        hashMap3.put(new ObfuscatedString(new long[]{-5111691762768467926L, 335754516606737366L}).toString(), DataLength.fixed(20));
        hashMap3.put(new ObfuscatedString(new long[]{-249463309570314205L, -8582466250621300229L}).toString(), DataLength.variable(35));
        hashMap3.put(new ObfuscatedString(new long[]{1581633583078996275L, 6994892135504905536L}).toString(), DataLength.variable(35));
        hashMap3.put(new ObfuscatedString(new long[]{-7716345508110060562L, 1983362763396875247L}).toString(), DataLength.variable(70));
        hashMap3.put(new ObfuscatedString(new long[]{1004608442243080519L, 1301215744382298649L}).toString(), DataLength.variable(70));
        hashMap3.put(new ObfuscatedString(new long[]{4723543799694176636L, -8622781724024998359L}).toString(), DataLength.variable(70));
        hashMap3.put(new ObfuscatedString(new long[]{4907313141730711402L, -3477912074906205926L}).toString(), DataLength.variable(70));
        hashMap3.put(new ObfuscatedString(new long[]{4704551243170502892L, 7864389741811603724L}).toString(), DataLength.variable(70));
        hashMap3.put(new ObfuscatedString(new long[]{8449814287573231244L, 8653869231714930091L}).toString(), DataLength.fixed(2));
        hashMap3.put(new ObfuscatedString(new long[]{-6240642394664412366L, 7880438591126783268L}).toString(), DataLength.variable(20));
        hashMap3.put(new ObfuscatedString(new long[]{7031121539314268615L, 291197216437482085L}).toString(), DataLength.variable(30));
        hashMap3.put(new ObfuscatedString(new long[]{-1373703771964138029L, -4366570676474040940L}).toString(), DataLength.variable(35));
        hashMap3.put(new ObfuscatedString(new long[]{3766896107756074395L, 8473731397371748422L}).toString(), DataLength.fixed(1));
        hashMap3.put(new ObfuscatedString(new long[]{6436378760022086231L, -8108279781500318490L}).toString(), DataLength.fixed(1));
        hashMap3.put(new ObfuscatedString(new long[]{3123342874199330237L, -3615382511954098838L}).toString(), DataLength.fixed(1));
        hashMap3.put(new ObfuscatedString(new long[]{1898712893561502848L, 1369976914587703829L}).toString(), DataLength.fixed(10));
        hashMap3.put(new ObfuscatedString(new long[]{-7308172742726439966L, -4739351784245961454L}).toString(), DataLength.fixed(10));
        hashMap3.put(new ObfuscatedString(new long[]{7986127676721048564L, 7946429586825599380L}).toString(), DataLength.fixed(6));
        hashMap3.put(new ObfuscatedString(new long[]{-4564837762671820561L, -2600324474334635104L}).toString(), DataLength.fixed(13));
        hashMap3.put(new ObfuscatedString(new long[]{5124760811237440262L, -5671061248279732423L}).toString(), DataLength.variable(30));
        hashMap3.put(new ObfuscatedString(new long[]{1119657165997567924L, -1391632592979208982L}).toString(), DataLength.fixed(10));
        hashMap3.put(new ObfuscatedString(new long[]{-679197111122496937L, -5109404105240317675L}).toString(), DataLength.variable(4));
        hashMap3.put(new ObfuscatedString(new long[]{-4804971664474445533L, -129169216866842968L}).toString(), DataLength.variable(12));
        hashMap3.put(new ObfuscatedString(new long[]{-5023380909690198272L, -5783020448645486368L}).toString(), DataLength.fixed(6));
        hashMap3.put(new ObfuscatedString(new long[]{-2188314191647228267L, 5617493618897356956L}).toString(), DataLength.variable(12));
        hashMap3.put(new ObfuscatedString(new long[]{-5078661972436633252L, -4763991632438622975L}).toString(), DataLength.variable(3));
        hashMap3.put(new ObfuscatedString(new long[]{1785440486336484035L, 1370549324682010170L}).toString(), DataLength.variable(10));
        hashMap3.put(new ObfuscatedString(new long[]{-129647192368335858L, 3469663113346120333L}).toString(), DataLength.variable(2));
        hashMap3.put(new ObfuscatedString(new long[]{4915176544473170810L, 9031552909105773092L}).toString(), DataLength.variable(10));
        hashMap3.put(new ObfuscatedString(new long[]{-1021014902997377780L, 6813732112911541191L}).toString(), DataLength.variable(20));
        hashMap3.put(new ObfuscatedString(new long[]{8955432012113894742L, -7984937007698983552L}).toString(), DataLength.variable(20));
        hashMap3.put(new ObfuscatedString(new long[]{8737781810464229716L, -5939105249251449204L}).toString(), DataLength.variable(20));
        hashMap3.put(new ObfuscatedString(new long[]{7467533345062454798L, 3174483037135131129L}).toString(), DataLength.variable(30));
        hashMap3.put(new ObfuscatedString(new long[]{3095625367105196135L, -754540145943298175L}).toString(), DataLength.fixed(4));
        hashMap3.put(new ObfuscatedString(new long[]{267568662362074773L, -4280196945589160533L}).toString(), DataLength.variable(20));
        hashMap3.put(new ObfuscatedString(new long[]{-1842484056821648876L, -333996870291280848L}).toString(), DataLength.fixed(14));
        hashMap3.put(new ObfuscatedString(new long[]{3667939247180714345L, -1527284551860343205L}).toString(), DataLength.variable(20));
        hashMap3.put(new ObfuscatedString(new long[]{-2570711285526763675L, 8371288728499720698L}).toString(), DataLength.variable(30));
        hashMap3.put(new ObfuscatedString(new long[]{7587975174064615503L, -1905524994777147156L}).toString(), DataLength.variable(30));
        hashMap3.put(new ObfuscatedString(new long[]{8786214597359312852L, -3015194542691299659L}).toString(), DataLength.fixed(6));
        hashMap3.put(new ObfuscatedString(new long[]{7887347952337832513L, -450116953680759486L}).toString(), DataLength.fixed(18));
        hashMap3.put(new ObfuscatedString(new long[]{-2981329289266792257L, -698950019344552246L}).toString(), DataLength.variable(34));
        hashMap3.put(new ObfuscatedString(new long[]{-1131032809318714130L, -6491699344208371448L}).toString(), DataLength.variable(12));
        hashMap3.put(new ObfuscatedString(new long[]{5633262050209485351L, 2676550812574773686L}).toString(), DataLength.variable(50));
        hashMap3.put(new ObfuscatedString(new long[]{5653825936946077006L, -1872270116334800942L}).toString(), DataLength.variable(30));
        hashMap3.put(new ObfuscatedString(new long[]{5649212779085751683L, -5610197138781524390L}).toString(), DataLength.variable(12));
        hashMap3.put(new ObfuscatedString(new long[]{-6865042663486234365L, 6520733740607469699L}).toString(), DataLength.variable(20));
        hashMap3.put(new ObfuscatedString(new long[]{-205853360859462952L, -7844742888045525922L}).toString(), DataLength.variable(25));
        hashMap3.put(new ObfuscatedString(new long[]{143016060770565374L, -3022010761200791865L}).toString(), DataLength.fixed(18));
        hashMap3.put(new ObfuscatedString(new long[]{-4418338737685273957L, -9149814458458853960L}).toString(), DataLength.fixed(18));
        hashMap3.put(new ObfuscatedString(new long[]{-3617728707872421700L, 534119888358455408L}).toString(), DataLength.variable(10));
        hashMap3.put(new ObfuscatedString(new long[]{-9206009737146188512L, 5720997031851022953L}).toString(), DataLength.variable(25));
        hashMap3.put(new ObfuscatedString(new long[]{-5358434337934939994L, 4911857904727714756L}).toString(), DataLength.fixed(18));
        hashMap3.put(new ObfuscatedString(new long[]{879568631951805322L, 2639891989967322884L}).toString(), DataLength.fixed(6));
        hashMap3.put(new ObfuscatedString(new long[]{-5810639940906160647L, -8647040540472911115L}).toString(), DataLength.fixed(10));
        hashMap3.put(new ObfuscatedString(new long[]{8867322589635975226L, 1396988121238288105L}).toString(), DataLength.fixed(2));
        hashMap3.put(new ObfuscatedString(new long[]{2528781647006367462L, 4934998580974869004L}).toString(), DataLength.variable(70));
        hashMap3.put(new ObfuscatedString(new long[]{-5588726311864108951L, -1955712495870807393L}).toString(), DataLength.fixed(4));
        hashMap3.put(new ObfuscatedString(new long[]{-209451625308921190L, 3112660962274175407L}).toString(), DataLength.variable(70));
        hashMap3.put(new ObfuscatedString(new long[]{4417944485515303988L, 3720281582783561489L}).toString(), DataLength.variable(70));
    }

    private FieldParser() {
    }

    public static String parseFieldsInGeneralPurpose(String str) {
        if (str.isEmpty()) {
            return null;
        }
        if (str.length() >= 2) {
            DataLength dataLength = TWO_DIGIT_DATA_LENGTH.get(str.substring(0, 2));
            if (dataLength != null) {
                if (dataLength.variable) {
                    return processVariableAI(2, dataLength.length, str);
                }
                return processFixedAI(2, dataLength.length, str);
            }
            if (str.length() >= 3) {
                String substring = str.substring(0, 3);
                DataLength dataLength2 = THREE_DIGIT_DATA_LENGTH.get(substring);
                if (dataLength2 != null) {
                    if (dataLength2.variable) {
                        return processVariableAI(3, dataLength2.length, str);
                    }
                    return processFixedAI(3, dataLength2.length, str);
                }
                if (str.length() >= 4) {
                    DataLength dataLength3 = THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH.get(substring);
                    if (dataLength3 != null) {
                        if (dataLength3.variable) {
                            return processVariableAI(4, dataLength3.length, str);
                        }
                        return processFixedAI(4, dataLength3.length, str);
                    }
                    DataLength dataLength4 = FOUR_DIGIT_DATA_LENGTH.get(str.substring(0, 4));
                    if (dataLength4 != null) {
                        if (dataLength4.variable) {
                            return processVariableAI(4, dataLength4.length, str);
                        }
                        return processFixedAI(4, dataLength4.length, str);
                    }
                    throw NotFoundException.getNotFoundInstance();
                }
                throw NotFoundException.getNotFoundInstance();
            }
            throw NotFoundException.getNotFoundInstance();
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static String processFixedAI(int i, int i2, String str) {
        if (str.length() >= i) {
            String substring = str.substring(0, i);
            int i3 = i2 + i;
            if (str.length() >= i3) {
                String substring2 = str.substring(i, i3);
                String str2 = "(" + substring + ')' + substring2;
                String parseFieldsInGeneralPurpose = parseFieldsInGeneralPurpose(str.substring(i3));
                if (parseFieldsInGeneralPurpose != null) {
                    return AbstractC0362x4440ab85.m2931x34271fae(str2, parseFieldsInGeneralPurpose);
                }
                return str2;
            }
            throw NotFoundException.getNotFoundInstance();
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static String processVariableAI(int i, int i2, String str) {
        String substring = str.substring(0, i);
        int min = Math.min(str.length(), i2 + i);
        String substring2 = str.substring(i, min);
        String str2 = "(" + substring + ')' + substring2;
        String parseFieldsInGeneralPurpose = parseFieldsInGeneralPurpose(str.substring(min));
        if (parseFieldsInGeneralPurpose != null) {
            return AbstractC0362x4440ab85.m2931x34271fae(str2, parseFieldsInGeneralPurpose);
        }
        return str2;
    }
}
