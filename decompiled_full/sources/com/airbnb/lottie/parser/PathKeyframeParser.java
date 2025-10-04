package com.airbnb.lottie.parser;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.animation.keyframe.PathKeyframe;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.Utils;

/* loaded from: classes.dex */
class PathKeyframeParser {
    private PathKeyframeParser() {
    }

    public static PathKeyframe parse(JsonReader jsonReader, LottieComposition lottieComposition) {
        boolean z;
        if (jsonReader.peek() == JsonReader.Token.BEGIN_OBJECT) {
            z = true;
        } else {
            z = false;
        }
        return new PathKeyframe(lottieComposition, KeyframeParser.parse(jsonReader, lottieComposition, Utils.dpScale(), PathParser.INSTANCE, z, false));
    }
}
