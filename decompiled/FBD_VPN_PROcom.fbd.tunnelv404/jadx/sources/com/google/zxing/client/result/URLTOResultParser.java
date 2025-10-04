package com.google.zxing.client.result;

import com.google.zxing.Result;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes3.dex */
public final class URLTOResultParser extends ResultParser {
    @Override // com.google.zxing.client.result.ResultParser
    public URIParsedResult parse(Result result) {
        int indexOf;
        String massagedText = ResultParser.getMassagedText(result);
        if ((massagedText.startsWith(new ObfuscatedString(new long[]{4558858246322555613L, -8112093103386999046L}).toString()) || massagedText.startsWith(new ObfuscatedString(new long[]{9119965587101136206L, -3515136692900242737L}).toString())) && (indexOf = massagedText.indexOf(58, 6)) >= 0) {
            return new URIParsedResult(massagedText.substring(indexOf + 1), indexOf > 6 ? massagedText.substring(6, indexOf) : null);
        }
        return null;
    }
}
