package com.google.zxing.client.result;

import com.google.zxing.Result;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;

/* loaded from: classes3.dex */
public final class VEventResultParser extends ResultParser {
    private static String matchSingleVCardPrefixedField(CharSequence charSequence, String str) {
        List<String> matchSingleVCardPrefixedField = VCardResultParser.matchSingleVCardPrefixedField(charSequence, str, true, false);
        if (matchSingleVCardPrefixedField != null && !matchSingleVCardPrefixedField.isEmpty()) {
            return matchSingleVCardPrefixedField.get(0);
        }
        return null;
    }

    private static String[] matchVCardPrefixedField(CharSequence charSequence, String str) {
        List<List<String>> matchVCardPrefixedField = VCardResultParser.matchVCardPrefixedField(charSequence, str, true, false);
        if (matchVCardPrefixedField != null && !matchVCardPrefixedField.isEmpty()) {
            int size = matchVCardPrefixedField.size();
            String[] strArr = new String[size];
            for (int i = 0; i < size; i++) {
                strArr[i] = matchVCardPrefixedField.get(i).get(0);
            }
            return strArr;
        }
        return null;
    }

    private static String stripMailto(String str) {
        if (str != null) {
            if (str.startsWith(new ObfuscatedString(new long[]{-4529614076186119144L, 2712681787163418700L}).toString()) || str.startsWith(new ObfuscatedString(new long[]{-377185692755417779L, 1500716880765218488L}).toString())) {
                return str.substring(7);
            }
            return str;
        }
        return str;
    }

    @Override // com.google.zxing.client.result.ResultParser
    public CalendarParsedResult parse(Result result) {
        double parseDouble;
        double d;
        String massagedText = ResultParser.getMassagedText(result);
        if (massagedText.indexOf(new ObfuscatedString(new long[]{-7339132285950418488L, -6258176728168000063L, -8363672478220015195L}).toString()) < 0) {
            return null;
        }
        String matchSingleVCardPrefixedField = matchSingleVCardPrefixedField(new ObfuscatedString(new long[]{-8059154823013372588L, 1534340148482559127L}).toString(), massagedText);
        String matchSingleVCardPrefixedField2 = matchSingleVCardPrefixedField(new ObfuscatedString(new long[]{6201655425294928937L, 7659355652864930472L}).toString(), massagedText);
        if (matchSingleVCardPrefixedField2 == null) {
            return null;
        }
        String matchSingleVCardPrefixedField3 = matchSingleVCardPrefixedField(new ObfuscatedString(new long[]{-44147996578021443L, 1938670110994669789L}).toString(), massagedText);
        String matchSingleVCardPrefixedField4 = matchSingleVCardPrefixedField(new ObfuscatedString(new long[]{5929603402255908418L, 3079120599624895073L}).toString(), massagedText);
        String matchSingleVCardPrefixedField5 = matchSingleVCardPrefixedField(new ObfuscatedString(new long[]{-5461335623600937752L, 2107131548581202008L}).toString(), massagedText);
        String stripMailto = stripMailto(matchSingleVCardPrefixedField(new ObfuscatedString(new long[]{1027840230761794247L, 6672925528715723945L, -7827238036185484930L}).toString(), massagedText));
        String[] matchVCardPrefixedField = matchVCardPrefixedField(new ObfuscatedString(new long[]{7110738927261512236L, 3256254773100972875L}).toString(), massagedText);
        if (matchVCardPrefixedField != null) {
            for (int i = 0; i < matchVCardPrefixedField.length; i++) {
                matchVCardPrefixedField[i] = stripMailto(matchVCardPrefixedField[i]);
            }
        }
        String matchSingleVCardPrefixedField6 = matchSingleVCardPrefixedField(new ObfuscatedString(new long[]{768526518541768678L, 5984354431240938276L, -5901380196605791928L}).toString(), massagedText);
        String matchSingleVCardPrefixedField7 = matchSingleVCardPrefixedField(new ObfuscatedString(new long[]{-270498057782304358L, -7763526733916137968L}).toString(), massagedText);
        if (matchSingleVCardPrefixedField7 == null) {
            d = Double.NaN;
            parseDouble = Double.NaN;
        } else {
            int indexOf = matchSingleVCardPrefixedField7.indexOf(59);
            if (indexOf < 0) {
                return null;
            }
            try {
                double parseDouble2 = Double.parseDouble(matchSingleVCardPrefixedField7.substring(0, indexOf));
                parseDouble = Double.parseDouble(matchSingleVCardPrefixedField7.substring(indexOf + 1));
                d = parseDouble2;
            } catch (NumberFormatException | IllegalArgumentException unused) {
                return null;
            }
        }
        return new CalendarParsedResult(matchSingleVCardPrefixedField, matchSingleVCardPrefixedField2, matchSingleVCardPrefixedField3, matchSingleVCardPrefixedField4, matchSingleVCardPrefixedField5, stripMailto, matchVCardPrefixedField, matchSingleVCardPrefixedField6, d, parseDouble);
    }
}
