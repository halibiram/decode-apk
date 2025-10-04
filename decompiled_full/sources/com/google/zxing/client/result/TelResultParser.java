package com.google.zxing.client.result;

import com.google.zxing.Result;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes3.dex */
public final class TelResultParser extends ResultParser {
    @Override // com.google.zxing.client.result.ResultParser
    public TelParsedResult parse(Result result) {
        String str;
        String massagedText = ResultParser.getMassagedText(result);
        if (!massagedText.startsWith(new ObfuscatedString(new long[]{-7157890316925044648L, 6709178941276501229L}).toString()) && !massagedText.startsWith(new ObfuscatedString(new long[]{538417091612958887L, -8095532289613661334L}).toString())) {
            return null;
        }
        if (massagedText.startsWith(new ObfuscatedString(new long[]{4784511488444918473L, -5790583330253967263L}).toString())) {
            str = new ObfuscatedString(new long[]{-3877956545874944795L, -5764146755783713458L}).toString() + massagedText.substring(4);
        } else {
            str = massagedText;
        }
        int indexOf = massagedText.indexOf(63, 4);
        return new TelParsedResult(indexOf < 0 ? massagedText.substring(4) : massagedText.substring(4, indexOf), str, null);
    }
}
