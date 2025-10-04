package com.google.zxing.client.result;

import com.google.zxing.Result;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

/* loaded from: classes3.dex */
public final class SMSMMSResultParser extends ResultParser {
    private static void addNumberVia(Collection<String> collection, Collection<String> collection2, String str) {
        int indexOf = str.indexOf(59);
        String str2 = null;
        if (indexOf < 0) {
            collection.add(str);
            collection2.add(null);
            return;
        }
        collection.add(str.substring(0, indexOf));
        String substring = str.substring(indexOf + 1);
        if (substring.startsWith(new ObfuscatedString(new long[]{8842198248364577753L, 8870272218449120295L}).toString())) {
            str2 = substring.substring(4);
        }
        collection2.add(str2);
    }

    @Override // com.google.zxing.client.result.ResultParser
    public SMSParsedResult parse(Result result) {
        boolean z;
        String str;
        String substring;
        String massagedText = ResultParser.getMassagedText(result);
        String str2 = null;
        if (!massagedText.startsWith(new ObfuscatedString(new long[]{1857826076563262855L, -8504649238013521882L}).toString()) && !massagedText.startsWith(new ObfuscatedString(new long[]{-3859291176805363819L, -1908193907943091581L}).toString()) && !massagedText.startsWith(new ObfuscatedString(new long[]{7727116098478887989L, -3960314272166550730L}).toString()) && !massagedText.startsWith(new ObfuscatedString(new long[]{5597431696404603101L, 7574508527403542372L}).toString())) {
            return null;
        }
        Map<String, String> parseNameValuePairs = ResultParser.parseNameValuePairs(massagedText);
        if (parseNameValuePairs == null || parseNameValuePairs.isEmpty()) {
            z = false;
            str = null;
        } else {
            str2 = parseNameValuePairs.get(new ObfuscatedString(new long[]{8279021773445169303L, 8288916082556761198L}).toString());
            str = parseNameValuePairs.get(new ObfuscatedString(new long[]{-3330157321875354993L, -949371909254601083L}).toString());
            z = true;
        }
        int indexOf = massagedText.indexOf(63, 4);
        if (indexOf >= 0 && z) {
            substring = massagedText.substring(4, indexOf);
        } else {
            substring = massagedText.substring(4);
        }
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        int i = -1;
        while (true) {
            int i2 = i + 1;
            int indexOf2 = substring.indexOf(44, i2);
            if (indexOf2 > i) {
                addNumberVia(arrayList, arrayList2, substring.substring(i2, indexOf2));
                i = indexOf2;
            } else {
                addNumberVia(arrayList, arrayList2, substring.substring(i2));
                String[] strArr = ResultParser.EMPTY_STR_ARRAY;
                return new SMSParsedResult((String[]) arrayList.toArray(strArr), (String[]) arrayList2.toArray(strArr), str2, str);
            }
        }
    }
}
