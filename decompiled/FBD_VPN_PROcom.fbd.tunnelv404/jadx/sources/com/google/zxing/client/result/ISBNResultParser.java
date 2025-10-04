package com.google.zxing.client.result;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes3.dex */
public final class ISBNResultParser extends ResultParser {
    @Override // com.google.zxing.client.result.ResultParser
    public ISBNParsedResult parse(Result result) {
        if (result.getBarcodeFormat() != BarcodeFormat.EAN_13) {
            return null;
        }
        String massagedText = ResultParser.getMassagedText(result);
        if (massagedText.length() != 13) {
            return null;
        }
        if (massagedText.startsWith(new ObfuscatedString(new long[]{-8683687458236673720L, 2849053424579822017L}).toString()) || massagedText.startsWith(new ObfuscatedString(new long[]{5542252646316094568L, 4139207805492090483L}).toString())) {
            return new ISBNParsedResult(massagedText);
        }
        return null;
    }
}
