package com.google.zxing.client.result;

import com.google.zxing.Result;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes3.dex */
public final class AddressBookDoCoMoResultParser extends AbstractDoCoMoResultParser {
    private static String parseName(String str) {
        int indexOf = str.indexOf(44);
        if (indexOf >= 0) {
            return str.substring(indexOf + 1) + ' ' + str.substring(0, indexOf);
        }
        return str;
    }

    @Override // com.google.zxing.client.result.ResultParser
    public AddressBookParsedResult parse(Result result) {
        String[] matchDoCoMoPrefixedField;
        String massagedText = ResultParser.getMassagedText(result);
        if (!massagedText.startsWith(new ObfuscatedString(new long[]{-2305149106286024198L, 1240029228232546952L}).toString()) || (matchDoCoMoPrefixedField = AbstractDoCoMoResultParser.matchDoCoMoPrefixedField(new ObfuscatedString(new long[]{-3654141124081364725L, -8645586718015151277L}).toString(), massagedText)) == null) {
            return null;
        }
        String parseName = parseName(matchDoCoMoPrefixedField[0]);
        String matchSingleDoCoMoPrefixedField = AbstractDoCoMoResultParser.matchSingleDoCoMoPrefixedField(new ObfuscatedString(new long[]{-5438783010238190841L, -4322461647354402734L}).toString(), massagedText, true);
        String[] matchDoCoMoPrefixedField2 = AbstractDoCoMoResultParser.matchDoCoMoPrefixedField(new ObfuscatedString(new long[]{6372846754543135776L, 8551642258579861944L}).toString(), massagedText);
        String[] matchDoCoMoPrefixedField3 = AbstractDoCoMoResultParser.matchDoCoMoPrefixedField(new ObfuscatedString(new long[]{-6715679341731695620L, 7738837386070992197L}).toString(), massagedText);
        String matchSingleDoCoMoPrefixedField2 = AbstractDoCoMoResultParser.matchSingleDoCoMoPrefixedField(new ObfuscatedString(new long[]{-7872347191865574589L, -4413250976416003007L}).toString(), massagedText, false);
        String[] matchDoCoMoPrefixedField4 = AbstractDoCoMoResultParser.matchDoCoMoPrefixedField(new ObfuscatedString(new long[]{6339848702319111757L, 455709216605003538L}).toString(), massagedText);
        String matchSingleDoCoMoPrefixedField3 = AbstractDoCoMoResultParser.matchSingleDoCoMoPrefixedField(new ObfuscatedString(new long[]{-313735022886737644L, 7164046812304900955L}).toString(), massagedText, true);
        return new AddressBookParsedResult(ResultParser.maybeWrap(parseName), null, matchSingleDoCoMoPrefixedField, matchDoCoMoPrefixedField2, null, matchDoCoMoPrefixedField3, null, null, matchSingleDoCoMoPrefixedField2, matchDoCoMoPrefixedField4, null, AbstractDoCoMoResultParser.matchSingleDoCoMoPrefixedField(new ObfuscatedString(new long[]{-4610044765667347287L, 3729017348760647769L}).toString(), massagedText, true), !ResultParser.isStringOfDigits(matchSingleDoCoMoPrefixedField3, 8) ? null : matchSingleDoCoMoPrefixedField3, null, AbstractDoCoMoResultParser.matchDoCoMoPrefixedField(new ObfuscatedString(new long[]{4760713509236727502L, 7412729934740433093L}).toString(), massagedText), null);
    }
}
