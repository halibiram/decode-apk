package com.airbnb.lottie.parser;

import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.content.RoundedCorners;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes.dex */
public class RoundedCornersParser {
    private static final JsonReader.Options NAMES = JsonReader.Options.of(new ObfuscatedString(new long[]{-8739356223487296483L, -5441753446170019399L}).toString(), new ObfuscatedString(new long[]{2500611398902038975L, 5473486767658409743L}).toString(), new ObfuscatedString(new long[]{-1659683643646991074L, 3120198242466428569L}).toString());

    private RoundedCornersParser() {
    }

    @Nullable
    public static RoundedCorners parse(JsonReader jsonReader, LottieComposition lottieComposition) {
        boolean z = false;
        String str = null;
        AnimatableFloatValue animatableFloatValue = null;
        while (jsonReader.hasNext()) {
            int selectName = jsonReader.selectName(NAMES);
            if (selectName != 0) {
                if (selectName != 1) {
                    if (selectName != 2) {
                        jsonReader.skipValue();
                    } else {
                        z = jsonReader.nextBoolean();
                    }
                } else {
                    animatableFloatValue = AnimatableValueParser.parseFloat(jsonReader, lottieComposition, true);
                }
            } else {
                str = jsonReader.nextString();
            }
        }
        if (z) {
            return null;
        }
        return new RoundedCorners(str, animatableFloatValue);
    }
}
