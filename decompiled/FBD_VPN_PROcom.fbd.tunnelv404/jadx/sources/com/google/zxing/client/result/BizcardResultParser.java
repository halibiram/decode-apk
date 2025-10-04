package com.google.zxing.client.result;

import com.google.zxing.Result;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class BizcardResultParser extends AbstractDoCoMoResultParser {
    private static String buildName(String str, String str2) {
        if (str == null) {
            return str2;
        }
        if (str2 != null) {
            return str + ' ' + str2;
        }
        return str;
    }

    private static String[] buildPhoneNumbers(String str, String str2, String str3) {
        ArrayList arrayList = new ArrayList(3);
        if (str != null) {
            arrayList.add(str);
        }
        if (str2 != null) {
            arrayList.add(str2);
        }
        if (str3 != null) {
            arrayList.add(str3);
        }
        int size = arrayList.size();
        if (size == 0) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[size]);
    }

    @Override // com.google.zxing.client.result.ResultParser
    public AddressBookParsedResult parse(Result result) {
        String massagedText = ResultParser.getMassagedText(result);
        if (!massagedText.startsWith(new ObfuscatedString(new long[]{1909734713414484736L, -8588443563917943180L}).toString())) {
            return null;
        }
        String buildName = buildName(AbstractDoCoMoResultParser.matchSingleDoCoMoPrefixedField(new ObfuscatedString(new long[]{-5159973897751520701L, -6236100403692911897L}).toString(), massagedText, true), AbstractDoCoMoResultParser.matchSingleDoCoMoPrefixedField(new ObfuscatedString(new long[]{4938666358438694430L, -458156190218106218L}).toString(), massagedText, true));
        String matchSingleDoCoMoPrefixedField = AbstractDoCoMoResultParser.matchSingleDoCoMoPrefixedField(new ObfuscatedString(new long[]{-2658099617353008164L, -9014650362228020367L}).toString(), massagedText, true);
        String matchSingleDoCoMoPrefixedField2 = AbstractDoCoMoResultParser.matchSingleDoCoMoPrefixedField(new ObfuscatedString(new long[]{-789287973468120482L, -336949135994307866L}).toString(), massagedText, true);
        return new AddressBookParsedResult(ResultParser.maybeWrap(buildName), null, null, buildPhoneNumbers(AbstractDoCoMoResultParser.matchSingleDoCoMoPrefixedField(new ObfuscatedString(new long[]{-928444519248789281L, 7350009623005320576L}).toString(), massagedText, true), AbstractDoCoMoResultParser.matchSingleDoCoMoPrefixedField(new ObfuscatedString(new long[]{1399648044163406586L, 2624799689034820008L}).toString(), massagedText, true), AbstractDoCoMoResultParser.matchSingleDoCoMoPrefixedField(new ObfuscatedString(new long[]{8934931520937791351L, -2550527552981860446L}).toString(), massagedText, true)), null, ResultParser.maybeWrap(AbstractDoCoMoResultParser.matchSingleDoCoMoPrefixedField(new ObfuscatedString(new long[]{-5775919743703432273L, 7980480732667195446L}).toString(), massagedText, true)), null, null, null, AbstractDoCoMoResultParser.matchDoCoMoPrefixedField(new ObfuscatedString(new long[]{-271483488905746051L, 480138917765302090L}).toString(), massagedText), null, matchSingleDoCoMoPrefixedField2, null, matchSingleDoCoMoPrefixedField, null, null);
    }
}
