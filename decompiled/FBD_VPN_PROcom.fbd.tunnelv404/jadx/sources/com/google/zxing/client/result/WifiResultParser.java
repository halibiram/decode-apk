package com.google.zxing.client.result;

import com.google.zxing.Result;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes3.dex */
public final class WifiResultParser extends ResultParser {
    @Override // com.google.zxing.client.result.ResultParser
    public WifiParsedResult parse(Result result) {
        String substring;
        String matchSinglePrefixedField;
        String str;
        boolean z;
        String massagedText = ResultParser.getMassagedText(result);
        if (!massagedText.startsWith(new ObfuscatedString(new long[]{-7141266253138636347L, -2829568138410095301L}).toString()) || (matchSinglePrefixedField = ResultParser.matchSinglePrefixedField(new ObfuscatedString(new long[]{7994417478438653072L, -4190920107015035690L}).toString(), (substring = massagedText.substring(new ObfuscatedString(new long[]{-6701117303258235516L, 5130237711890004312L}).toString().length())), ';', false)) == null || matchSinglePrefixedField.isEmpty()) {
            return null;
        }
        String matchSinglePrefixedField2 = ResultParser.matchSinglePrefixedField(new ObfuscatedString(new long[]{-5043353892146132677L, -3566272294879704759L}).toString(), substring, ';', false);
        String matchSinglePrefixedField3 = ResultParser.matchSinglePrefixedField(new ObfuscatedString(new long[]{-7792576285868217845L, -8932739660884460106L}).toString(), substring, ';', false);
        if (matchSinglePrefixedField3 == null) {
            matchSinglePrefixedField3 = new ObfuscatedString(new long[]{2634794769241013887L, -456335272684688912L}).toString();
        }
        String str2 = matchSinglePrefixedField3;
        String matchSinglePrefixedField4 = ResultParser.matchSinglePrefixedField(new ObfuscatedString(new long[]{8674345858260953347L, -102481478322254611L}).toString(), substring, ';', false);
        String matchSinglePrefixedField5 = ResultParser.matchSinglePrefixedField(new ObfuscatedString(new long[]{7320605684885569808L, -4269406521371153680L}).toString(), substring, ';', false);
        if (matchSinglePrefixedField5 == null) {
            str = matchSinglePrefixedField4;
        } else {
            if (matchSinglePrefixedField4 != null || new ObfuscatedString(new long[]{6062312494731551091L, 5246600129888052737L}).toString().equalsIgnoreCase(matchSinglePrefixedField5) || new ObfuscatedString(new long[]{-1696335161851629873L, 9192823896803014248L}).toString().equalsIgnoreCase(matchSinglePrefixedField5)) {
                str = matchSinglePrefixedField4;
                z = Boolean.parseBoolean(matchSinglePrefixedField5);
                return new WifiParsedResult(str2, matchSinglePrefixedField, matchSinglePrefixedField2, z, ResultParser.matchSinglePrefixedField(new ObfuscatedString(new long[]{-7445728290471671680L, -592143662482173252L}).toString(), substring, ';', false), ResultParser.matchSinglePrefixedField(new ObfuscatedString(new long[]{8675829499214223105L, 955500153442252057L}).toString(), substring, ';', false), ResultParser.matchSinglePrefixedField(new ObfuscatedString(new long[]{7327612131232641606L, -3921604083738466164L}).toString(), substring, ';', false), str);
            }
            str = matchSinglePrefixedField5;
        }
        z = false;
        return new WifiParsedResult(str2, matchSinglePrefixedField, matchSinglePrefixedField2, z, ResultParser.matchSinglePrefixedField(new ObfuscatedString(new long[]{-7445728290471671680L, -592143662482173252L}).toString(), substring, ';', false), ResultParser.matchSinglePrefixedField(new ObfuscatedString(new long[]{8675829499214223105L, 955500153442252057L}).toString(), substring, ';', false), ResultParser.matchSinglePrefixedField(new ObfuscatedString(new long[]{7327612131232641606L, -3921604083738466164L}).toString(), substring, ';', false), str);
    }
}
