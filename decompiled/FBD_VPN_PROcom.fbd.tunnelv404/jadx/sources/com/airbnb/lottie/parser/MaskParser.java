package com.airbnb.lottie.parser;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.animatable.AnimatableShapeValue;
import com.airbnb.lottie.model.content.Mask;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.Logger;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class MaskParser {
    private MaskParser() {
    }

    public static Mask parse(JsonReader jsonReader, LottieComposition lottieComposition) {
        char c;
        jsonReader.beginObject();
        Mask.MaskMode maskMode = null;
        AnimatableShapeValue animatableShapeValue = null;
        AnimatableIntegerValue animatableIntegerValue = null;
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            int hashCode = nextName.hashCode();
            char c2 = 65535;
            if (hashCode != 111) {
                if (hashCode != 3588) {
                    if (hashCode != 104433) {
                        if (hashCode == 3357091 && nextName.equals(new ObfuscatedString(new long[]{-3153968775048749127L, -143395065614625908L}).toString())) {
                            c = 0;
                        }
                        c = 65535;
                    } else {
                        if (nextName.equals(new ObfuscatedString(new long[]{-3393698195755739570L, -6442489760711102494L}).toString())) {
                            c = 3;
                        }
                        c = 65535;
                    }
                } else {
                    if (nextName.equals(new ObfuscatedString(new long[]{-3711608014088568879L, 3730811876042226782L}).toString())) {
                        c = 1;
                    }
                    c = 65535;
                }
            } else {
                if (nextName.equals(new ObfuscatedString(new long[]{827704512932657077L, -6019203856505223516L}).toString())) {
                    c = 2;
                }
                c = 65535;
            }
            if (c != 0) {
                if (c != 1) {
                    if (c != 2) {
                        if (c != 3) {
                            jsonReader.skipValue();
                        } else {
                            z = jsonReader.nextBoolean();
                        }
                    } else {
                        animatableIntegerValue = AnimatableValueParser.parseInteger(jsonReader, lottieComposition);
                    }
                } else {
                    animatableShapeValue = AnimatableValueParser.parseShapeData(jsonReader, lottieComposition);
                }
            } else {
                String nextString = jsonReader.nextString();
                int hashCode2 = nextString.hashCode();
                if (hashCode2 != 97) {
                    if (hashCode2 != 105) {
                        if (hashCode2 != 110) {
                            if (hashCode2 == 115 && nextString.equals(new ObfuscatedString(new long[]{-8185163111672499855L, 8928675120932859889L}).toString())) {
                                c2 = 1;
                            }
                        } else if (nextString.equals(new ObfuscatedString(new long[]{-6253444595202861898L, -2681739312613331875L}).toString())) {
                            c2 = 2;
                        }
                    } else if (nextString.equals(new ObfuscatedString(new long[]{849562078199753486L, -8510332565867240568L}).toString())) {
                        c2 = 3;
                    }
                } else if (nextString.equals(new ObfuscatedString(new long[]{3198379913126935689L, -417337627184561820L}).toString())) {
                    c2 = 0;
                }
                if (c2 != 0) {
                    if (c2 != 1) {
                        if (c2 != 2) {
                            if (c2 != 3) {
                                Logger.warning(new ObfuscatedString(new long[]{8894828704943856518L, 5538346851104012263L, 7212756172430764630L, 1164168929991158545L}).toString() + nextName + new ObfuscatedString(new long[]{-238759574126085916L, 4272409138269933553L, 6593930595351488632L, 7643156639792461512L}).toString());
                                maskMode = Mask.MaskMode.MASK_MODE_ADD;
                            } else {
                                lottieComposition.addWarning(new ObfuscatedString(new long[]{558679692461499507L, -2717222205285982015L, -2219287312558854616L, -7157616626701038864L, -2773933742481806295L, 5575725601758446830L, -8184203427812192404L, -5360095322785245906L, -3569265471575912157L, 381412667808486729L, -1461389721566904696L, -7305393853054153657L, -6059573599282336082L}).toString());
                                maskMode = Mask.MaskMode.MASK_MODE_INTERSECT;
                            }
                        } else {
                            maskMode = Mask.MaskMode.MASK_MODE_NONE;
                        }
                    } else {
                        maskMode = Mask.MaskMode.MASK_MODE_SUBTRACT;
                    }
                } else {
                    maskMode = Mask.MaskMode.MASK_MODE_ADD;
                }
            }
        }
        jsonReader.endObject();
        return new Mask(maskMode, animatableShapeValue, animatableIntegerValue, z);
    }
}
