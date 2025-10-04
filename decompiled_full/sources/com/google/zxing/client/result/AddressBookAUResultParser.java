package com.google.zxing.client.result;

import com.google.zxing.Result;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class AddressBookAUResultParser extends ResultParser {
    private static String[] matchMultipleValuePrefix(String str, String str2) {
        ArrayList arrayList = null;
        for (int i = 1; i <= 3; i++) {
            String matchSinglePrefixedField = ResultParser.matchSinglePrefixedField(str + i + ':', str2, '\r', true);
            if (matchSinglePrefixedField == null) {
                break;
            }
            if (arrayList == null) {
                arrayList = new ArrayList(3);
            }
            arrayList.add(matchSinglePrefixedField);
        }
        if (arrayList == null) {
            return null;
        }
        return (String[]) arrayList.toArray(ResultParser.EMPTY_STR_ARRAY);
    }

    @Override // com.google.zxing.client.result.ResultParser
    public AddressBookParsedResult parse(Result result) {
        String massagedText = ResultParser.getMassagedText(result);
        if (!massagedText.contains(new ObfuscatedString(new long[]{-8429485568639475278L, 8953875828513504179L}).toString()) || !massagedText.contains(new ObfuscatedString(new long[]{351311794602769523L, -7137609898293634183L}).toString())) {
            return null;
        }
        String matchSinglePrefixedField = ResultParser.matchSinglePrefixedField(new ObfuscatedString(new long[]{-3060882649372794284L, -627866367390933830L}).toString(), massagedText, '\r', true);
        String matchSinglePrefixedField2 = ResultParser.matchSinglePrefixedField(new ObfuscatedString(new long[]{-7165733845975918669L, 8415558536440395697L}).toString(), massagedText, '\r', true);
        String[] matchMultipleValuePrefix = matchMultipleValuePrefix(new ObfuscatedString(new long[]{8386276105486044867L, -7101214818636995146L}).toString(), massagedText);
        String[] matchMultipleValuePrefix2 = matchMultipleValuePrefix(new ObfuscatedString(new long[]{3230709794607732773L, 8954172847835562996L}).toString(), massagedText);
        String matchSinglePrefixedField3 = ResultParser.matchSinglePrefixedField(new ObfuscatedString(new long[]{1039785637170223915L, -1882227443802981654L}).toString(), massagedText, '\r', false);
        String matchSinglePrefixedField4 = ResultParser.matchSinglePrefixedField(new ObfuscatedString(new long[]{-7967563164524474061L, 1230746460355956288L}).toString(), massagedText, '\r', true);
        return new AddressBookParsedResult(ResultParser.maybeWrap(matchSinglePrefixedField), null, matchSinglePrefixedField2, matchMultipleValuePrefix, null, matchMultipleValuePrefix2, null, null, matchSinglePrefixedField3, matchSinglePrefixedField4 != null ? new String[]{matchSinglePrefixedField4} : null, null, null, null, null, null, null);
    }
}
