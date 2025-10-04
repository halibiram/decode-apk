package com.airbnb.lottie.parser;

import android.graphics.PointF;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatablePointValue;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import com.airbnb.lottie.model.content.RectangleShape;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class RectangleShapeParser {
    private static final JsonReader.Options NAMES = JsonReader.Options.of(new ObfuscatedString(new long[]{-4421997340142577026L, 8894533832215765189L}).toString(), new ObfuscatedString(new long[]{-8346289779086161064L, -6863718877510158366L}).toString(), new ObfuscatedString(new long[]{2297374436160250166L, -4224707778242787863L}).toString(), new ObfuscatedString(new long[]{6751619353796188961L, 862563673131351924L}).toString(), new ObfuscatedString(new long[]{7133518812014911323L, 4664230402347615115L}).toString());

    private RectangleShapeParser() {
    }

    public static RectangleShape parse(JsonReader jsonReader, LottieComposition lottieComposition) {
        String str = null;
        AnimatableValue<PointF, PointF> animatableValue = null;
        AnimatablePointValue animatablePointValue = null;
        AnimatableFloatValue animatableFloatValue = null;
        boolean z = false;
        while (jsonReader.hasNext()) {
            int selectName = jsonReader.selectName(NAMES);
            if (selectName != 0) {
                if (selectName != 1) {
                    if (selectName != 2) {
                        if (selectName != 3) {
                            if (selectName != 4) {
                                jsonReader.skipValue();
                            } else {
                                z = jsonReader.nextBoolean();
                            }
                        } else {
                            animatableFloatValue = AnimatableValueParser.parseFloat(jsonReader, lottieComposition);
                        }
                    } else {
                        animatablePointValue = AnimatableValueParser.parsePoint(jsonReader, lottieComposition);
                    }
                } else {
                    animatableValue = AnimatablePathValueParser.parseSplitPath(jsonReader, lottieComposition);
                }
            } else {
                str = jsonReader.nextString();
            }
        }
        return new RectangleShape(str, animatableValue, animatablePointValue, animatableFloatValue, z);
    }
}
