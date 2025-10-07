package com.google.zxing.client.result;

import com.google.zxing.Result;
import com.panda912.muddy.ObfuscatedString;
import java.util.Map;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class EmailAddressResultParser extends ResultParser {
    private static final Pattern COMMA = Pattern.compile(new ObfuscatedString(new long[]{-1658186395393842762L, 7067815865705233544L}).toString());

    @Override // com.google.zxing.client.result.ResultParser
    public EmailAddressParsedResult parse(Result result) {
        String[] strArr;
        String[] strArr2;
        String[] strArr3;
        String str;
        String str2;
        String str3;
        String massagedText = ResultParser.getMassagedText(result);
        if (!massagedText.startsWith(new ObfuscatedString(new long[]{6652194603471299329L, 4842975056738290094L}).toString()) && !massagedText.startsWith(new ObfuscatedString(new long[]{-6470951166719870293L, 8575053897414192098L}).toString())) {
            if (EmailDoCoMoResultParser.isBasicallyValidEmailAddress(massagedText)) {
                return new EmailAddressParsedResult(massagedText);
            }
            return null;
        }
        String substring = massagedText.substring(7);
        int indexOf = substring.indexOf(63);
        if (indexOf >= 0) {
            substring = substring.substring(0, indexOf);
        }
        try {
            String urlDecode = ResultParser.urlDecode(substring);
            String[] split = !urlDecode.isEmpty() ? COMMA.split(urlDecode) : null;
            Map<String, String> parseNameValuePairs = ResultParser.parseNameValuePairs(massagedText);
            if (parseNameValuePairs != null) {
                if (split == null && (str3 = parseNameValuePairs.get(new ObfuscatedString(new long[]{7020712027179879679L, 3033436367234281265L}).toString())) != null) {
                    split = COMMA.split(str3);
                }
                String str4 = parseNameValuePairs.get(new ObfuscatedString(new long[]{4695724031416038361L, 2593525448691813034L}).toString());
                String[] split2 = str4 != null ? COMMA.split(str4) : null;
                String str5 = parseNameValuePairs.get(new ObfuscatedString(new long[]{6702104083149581551L, 4297338213394531332L}).toString());
                String[] split3 = str5 != null ? COMMA.split(str5) : null;
                String str6 = parseNameValuePairs.get(new ObfuscatedString(new long[]{-7612625226656465590L, -4491365961538408865L}).toString());
                str2 = parseNameValuePairs.get(new ObfuscatedString(new long[]{-8417190773300729514L, 2760254030327865524L}).toString());
                strArr = split;
                strArr3 = split3;
                strArr2 = split2;
                str = str6;
            } else {
                strArr = split;
                strArr2 = null;
                strArr3 = null;
                str = null;
                str2 = null;
            }
            return new EmailAddressParsedResult(strArr, strArr2, strArr3, str, str2);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }
}
