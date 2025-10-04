package com.google.zxing.common;

import com.google.zxing.FormatException;
import com.panda912.muddy.ObfuscatedString;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public enum CharacterSetECI {
    Cp437(new int[]{0, 2}, new String[0]),
    ISO8859_1(new int[]{1, 3}, new ObfuscatedString(new long[]{-3793165808099588728L, -8362076419561200034L, -467347153700356189L}).toString()),
    ISO8859_2(4, new ObfuscatedString(new long[]{-5194880182972106990L, 4564624823970496712L, -4247329581687195002L}).toString()),
    ISO8859_3(5, new ObfuscatedString(new long[]{5325294702876927002L, 4595283941248546885L, 2921208008818495687L}).toString()),
    ISO8859_4(6, new ObfuscatedString(new long[]{4579045187741025945L, 9140951862686438258L, 560335279929184971L}).toString()),
    ISO8859_5(7, new ObfuscatedString(new long[]{5551836959696826034L, 7247977651986665499L, -7030258374337274340L}).toString()),
    ISO8859_6(8, new ObfuscatedString(new long[]{1145571489124697079L, 5012806100168479521L, -7199570608872832525L}).toString()),
    ISO8859_7(9, new ObfuscatedString(new long[]{-63797728902362664L, -724956279230036326L, -2291901736905057811L}).toString()),
    ISO8859_8(10, new ObfuscatedString(new long[]{-4430377734738120928L, -2132653988958914968L, -4749398241675453306L}).toString()),
    ISO8859_9(11, new ObfuscatedString(new long[]{1027499435631261021L, -5619339847070915490L, -3216023359203369135L}).toString()),
    ISO8859_10(12, new ObfuscatedString(new long[]{-6532850832914367070L, 2998679332975231601L, 2872777851020965678L}).toString()),
    ISO8859_11(13, new ObfuscatedString(new long[]{-6135503330291929836L, -2229114852434472712L, 9059841090613539304L}).toString()),
    ISO8859_13(15, new ObfuscatedString(new long[]{4840443222594381218L, -5989769605323367828L, 1540495550792467987L}).toString()),
    ISO8859_14(16, new ObfuscatedString(new long[]{-4340941249907590344L, -6978365040934588036L, 2230238287411848198L}).toString()),
    ISO8859_15(17, new ObfuscatedString(new long[]{473663469064676648L, 5950798832527652753L, 4341382597338982405L}).toString()),
    ISO8859_16(18, new ObfuscatedString(new long[]{-2452596189746206975L, 18991559312903073L, -6110220162672073058L}).toString()),
    SJIS(20, new ObfuscatedString(new long[]{6031659001367140816L, -893456086946035414L, -1363066174036454615L}).toString()),
    Cp1250(21, new ObfuscatedString(new long[]{-4300848025292738409L, 8246178623517419862L, -3970161787809445524L}).toString()),
    Cp1251(22, new ObfuscatedString(new long[]{2831401684524497340L, 442712626736426480L, -6110358612268510942L}).toString()),
    Cp1252(23, new ObfuscatedString(new long[]{-4464718855301482309L, -521554931540199534L, -3667949715801548092L}).toString()),
    Cp1256(24, new ObfuscatedString(new long[]{-823722841525909174L, 393698590365592531L, -4475721577460735460L}).toString()),
    UnicodeBigUnmarked(25, new ObfuscatedString(new long[]{287652411905133918L, -5683677996682262045L}).toString(), new ObfuscatedString(new long[]{8530767573313233382L, 3835454856181341182L, 1999663679875944542L}).toString()),
    UTF8(26, new ObfuscatedString(new long[]{1110519645254138395L, 4216719510234955682L}).toString()),
    ASCII(new int[]{27, 170}, new ObfuscatedString(new long[]{8738084029429008352L, 8655569376329829729L}).toString()),
    Big5(28),
    GB18030(29, new ObfuscatedString(new long[]{3596463606962675902L, -8975053287819814375L}).toString(), new ObfuscatedString(new long[]{-2751844751984122624L, -3247554388411732688L}).toString(), new ObfuscatedString(new long[]{-5157584365807295328L, -3649580486835706796L}).toString()),
    EUC_KR(30, new ObfuscatedString(new long[]{5011090775810711384L, -9017066576607637074L}).toString());

    private final String[] otherEncodingNames;
    private final int[] values;
    private static final Map<Integer, CharacterSetECI> VALUE_TO_ECI = new HashMap();
    private static final Map<String, CharacterSetECI> NAME_TO_ECI = new HashMap();

    static {
        for (CharacterSetECI characterSetECI : values()) {
            if (Charset.isSupported(characterSetECI.name())) {
                for (int i : characterSetECI.values) {
                    VALUE_TO_ECI.put(Integer.valueOf(i), characterSetECI);
                }
                NAME_TO_ECI.put(characterSetECI.name(), characterSetECI);
                for (String str : characterSetECI.otherEncodingNames) {
                    NAME_TO_ECI.put(str, characterSetECI);
                }
            }
        }
    }

    CharacterSetECI(int i) {
        this(new int[]{i}, new String[0]);
    }

    public static CharacterSetECI getCharacterSetECI(Charset charset) {
        return NAME_TO_ECI.get(charset.name());
    }

    public static CharacterSetECI getCharacterSetECIByName(String str) {
        return NAME_TO_ECI.get(str);
    }

    public static CharacterSetECI getCharacterSetECIByValue(int i) {
        if (i >= 0 && i < 900) {
            return VALUE_TO_ECI.get(Integer.valueOf(i));
        }
        throw FormatException.getFormatInstance();
    }

    public Charset getCharset() {
        return Charset.forName(name());
    }

    public int getValue() {
        return this.values[0];
    }

    CharacterSetECI(int i, String... strArr) {
        this.values = new int[]{i};
        this.otherEncodingNames = strArr;
    }

    CharacterSetECI(int[] iArr, String... strArr) {
        this.values = iArr;
        this.otherEncodingNames = strArr;
    }
}
