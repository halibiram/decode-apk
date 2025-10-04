package com.google.zxing.client.result;

import com.google.zxing.Result;
import com.panda912.muddy.ObfuscatedString;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class EmailDoCoMoResultParser extends AbstractDoCoMoResultParser {
    private static final Pattern ATEXT_ALPHANUMERIC = Pattern.compile(new ObfuscatedString(new long[]{-1906255498644160936L, -2621975069196210839L, 8820571792629814146L, 2437332778849956614L, -560899232352284145L, 7170198223671969756L}).toString());

    public static boolean isBasicallyValidEmailAddress(String str) {
        if (str != null && ATEXT_ALPHANUMERIC.matcher(str).matches() && str.indexOf(64) >= 0) {
            return true;
        }
        return false;
    }

    @Override // com.google.zxing.client.result.ResultParser
    public EmailAddressParsedResult parse(Result result) {
        String[] matchDoCoMoPrefixedField;
        String massagedText = ResultParser.getMassagedText(result);
        if (!massagedText.startsWith(new ObfuscatedString(new long[]{2766521220130062886L, 1922805573443695444L}).toString()) || (matchDoCoMoPrefixedField = AbstractDoCoMoResultParser.matchDoCoMoPrefixedField(new ObfuscatedString(new long[]{770556828388364307L, 4072582979806976626L}).toString(), massagedText)) == null) {
            return null;
        }
        for (String str : matchDoCoMoPrefixedField) {
            if (!isBasicallyValidEmailAddress(str)) {
                return null;
            }
        }
        return new EmailAddressParsedResult(matchDoCoMoPrefixedField, null, null, AbstractDoCoMoResultParser.matchSingleDoCoMoPrefixedField(new ObfuscatedString(new long[]{-9168165075418980559L, 989412567911913222L}).toString(), massagedText, false), AbstractDoCoMoResultParser.matchSingleDoCoMoPrefixedField(new ObfuscatedString(new long[]{-2231282007542378489L, 215414793986389481L}).toString(), massagedText, false));
    }
}
