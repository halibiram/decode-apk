package com.airbnb.lottie.parser;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes.dex */
class ShapeTrimPathParser {
    private static final JsonReader.Options NAMES = JsonReader.Options.of(new ObfuscatedString(new long[]{6290759374713520293L, -3541824717764310371L}).toString(), new ObfuscatedString(new long[]{-3407341415639885428L, 581093976319162365L}).toString(), new ObfuscatedString(new long[]{-7560040531277073171L, -4998772926295790425L}).toString(), new ObfuscatedString(new long[]{-2378181872343460646L, 5460952041448293740L}).toString(), new ObfuscatedString(new long[]{-7831388071903998523L, 2861174705084322711L}).toString(), new ObfuscatedString(new long[]{6992415166804344532L, 8609151354981058095L}).toString());

    private ShapeTrimPathParser() {
    }

    public static ShapeTrimPath parse(JsonReader jsonReader, LottieComposition lottieComposition) {
        String str = null;
        ShapeTrimPath.Type type = null;
        AnimatableFloatValue animatableFloatValue = null;
        AnimatableFloatValue animatableFloatValue2 = null;
        AnimatableFloatValue animatableFloatValue3 = null;
        boolean z = false;
        while (jsonReader.hasNext()) {
            int selectName = jsonReader.selectName(NAMES);
            if (selectName != 0) {
                if (selectName != 1) {
                    if (selectName != 2) {
                        if (selectName != 3) {
                            if (selectName != 4) {
                                if (selectName != 5) {
                                    jsonReader.skipValue();
                                } else {
                                    z = jsonReader.nextBoolean();
                                }
                            } else {
                                type = ShapeTrimPath.Type.forId(jsonReader.nextInt());
                            }
                        } else {
                            str = jsonReader.nextString();
                        }
                    } else {
                        animatableFloatValue3 = AnimatableValueParser.parseFloat(jsonReader, lottieComposition, false);
                    }
                } else {
                    animatableFloatValue2 = AnimatableValueParser.parseFloat(jsonReader, lottieComposition, false);
                }
            } else {
                animatableFloatValue = AnimatableValueParser.parseFloat(jsonReader, lottieComposition, false);
            }
        }
        return new ShapeTrimPath(str, type, animatableFloatValue, animatableFloatValue2, animatableFloatValue3, z);
    }
}
