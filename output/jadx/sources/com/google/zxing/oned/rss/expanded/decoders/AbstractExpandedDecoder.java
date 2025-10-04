package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.common.BitArray;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes3.dex */
public abstract class AbstractExpandedDecoder {
    private final GeneralAppIdDecoder generalDecoder;
    private final BitArray information;

    public AbstractExpandedDecoder(BitArray bitArray) {
        this.information = bitArray;
        this.generalDecoder = new GeneralAppIdDecoder(bitArray);
    }

    public static AbstractExpandedDecoder createDecoder(BitArray bitArray) {
        if (bitArray.get(1)) {
            return new AI01AndOtherAIs(bitArray);
        }
        if (!bitArray.get(2)) {
            return new AnyAIDecoder(bitArray);
        }
        int extractNumericValueFromBitArray = GeneralAppIdDecoder.extractNumericValueFromBitArray(bitArray, 1, 4);
        if (extractNumericValueFromBitArray != 4) {
            if (extractNumericValueFromBitArray != 5) {
                int extractNumericValueFromBitArray2 = GeneralAppIdDecoder.extractNumericValueFromBitArray(bitArray, 1, 5);
                if (extractNumericValueFromBitArray2 != 12) {
                    if (extractNumericValueFromBitArray2 != 13) {
                        switch (GeneralAppIdDecoder.extractNumericValueFromBitArray(bitArray, 1, 7)) {
                            case 56:
                                return new AI013x0x1xDecoder(bitArray, new ObfuscatedString(new long[]{1762310044830625438L, 7968427754966740541L}).toString(), new ObfuscatedString(new long[]{8053207093593048293L, -7997353644729771900L}).toString());
                            case 57:
                                return new AI013x0x1xDecoder(bitArray, new ObfuscatedString(new long[]{-6324695625560143217L, 5420461659833658293L}).toString(), new ObfuscatedString(new long[]{-6110285258319010431L, 4705338060819567825L}).toString());
                            case 58:
                                return new AI013x0x1xDecoder(bitArray, new ObfuscatedString(new long[]{-6467603689149741197L, 6098598876156697707L}).toString(), new ObfuscatedString(new long[]{6084092751860689924L, 592114947477448472L}).toString());
                            case 59:
                                return new AI013x0x1xDecoder(bitArray, new ObfuscatedString(new long[]{-2877020830285996304L, 4305792083202117793L}).toString(), new ObfuscatedString(new long[]{2943138499053504645L, -2140179876127815477L}).toString());
                            case 60:
                                return new AI013x0x1xDecoder(bitArray, new ObfuscatedString(new long[]{5228008766012919711L, 8215853812934574170L}).toString(), new ObfuscatedString(new long[]{306132904905456606L, 145509507614619226L}).toString());
                            case 61:
                                return new AI013x0x1xDecoder(bitArray, new ObfuscatedString(new long[]{7570810847667542563L, 2062787186926502305L}).toString(), new ObfuscatedString(new long[]{-2133352830703119625L, 3800991550634036379L}).toString());
                            case 62:
                                return new AI013x0x1xDecoder(bitArray, new ObfuscatedString(new long[]{-3729130868196837865L, -7734228786333631208L}).toString(), new ObfuscatedString(new long[]{380102520928950258L, -1861132992378122420L}).toString());
                            case 63:
                                return new AI013x0x1xDecoder(bitArray, new ObfuscatedString(new long[]{5830394205476010424L, -1369060176844937208L}).toString(), new ObfuscatedString(new long[]{-4718276215835870731L, 5242120251065133131L}).toString());
                            default:
                                throw new IllegalStateException(new ObfuscatedString(new long[]{-1939915463953259904L, -5011775206633910675L, -4506251108989984804L, -455240410019972056L}).toString() + bitArray);
                        }
                    }
                    return new AI01393xDecoder(bitArray);
                }
                return new AI01392xDecoder(bitArray);
            }
            return new AI01320xDecoder(bitArray);
        }
        return new AI013103decoder(bitArray);
    }

    public final GeneralAppIdDecoder getGeneralDecoder() {
        return this.generalDecoder;
    }

    public final BitArray getInformation() {
        return this.information;
    }

    public abstract String parseInformation();
}
