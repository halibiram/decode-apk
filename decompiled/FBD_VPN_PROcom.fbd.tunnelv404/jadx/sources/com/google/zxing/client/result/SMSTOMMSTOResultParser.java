package com.google.zxing.client.result;

import com.google.zxing.Result;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes3.dex */
public final class SMSTOMMSTOResultParser extends ResultParser {
    @Override // com.google.zxing.client.result.ResultParser
    public SMSParsedResult parse(Result result) {
        String str;
        String massagedText = ResultParser.getMassagedText(result);
        if (!massagedText.startsWith(new ObfuscatedString(new long[]{-3411368647163924057L, 622227863107502549L}).toString()) && !massagedText.startsWith(new ObfuscatedString(new long[]{4494021346844211968L, 6388484154533161740L}).toString()) && !massagedText.startsWith(new ObfuscatedString(new long[]{-2164270959549508824L, 3349399920255336076L}).toString()) && !massagedText.startsWith(new ObfuscatedString(new long[]{9021476585630083204L, 1399384285134864074L}).toString())) {
            return null;
        }
        String substring = massagedText.substring(6);
        int indexOf = substring.indexOf(58);
        if (indexOf >= 0) {
            str = substring.substring(indexOf + 1);
            substring = substring.substring(0, indexOf);
        } else {
            str = null;
        }
        return new SMSParsedResult(substring, (String) null, (String) null, str);
    }
}
