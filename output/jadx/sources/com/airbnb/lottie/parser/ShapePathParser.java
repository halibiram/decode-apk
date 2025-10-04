package com.airbnb.lottie.parser;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableShapeValue;
import com.airbnb.lottie.model.content.ShapePath;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes.dex */
class ShapePathParser {
    static JsonReader.Options NAMES = JsonReader.Options.of(new ObfuscatedString(new long[]{7013198877391388033L, 1844985222129529574L}).toString(), new ObfuscatedString(new long[]{2395121853380260739L, 373522532753180242L}).toString(), new ObfuscatedString(new long[]{7961060753266867690L, 1968432935564123697L}).toString(), new ObfuscatedString(new long[]{-2850234342399265229L, -4931422398355900849L}).toString());

    private ShapePathParser() {
    }

    public static ShapePath parse(JsonReader jsonReader, LottieComposition lottieComposition) {
        String str = null;
        AnimatableShapeValue animatableShapeValue = null;
        int i = 0;
        boolean z = false;
        while (jsonReader.hasNext()) {
            int selectName = jsonReader.selectName(NAMES);
            if (selectName != 0) {
                if (selectName != 1) {
                    if (selectName != 2) {
                        if (selectName != 3) {
                            jsonReader.skipValue();
                        } else {
                            z = jsonReader.nextBoolean();
                        }
                    } else {
                        animatableShapeValue = AnimatableValueParser.parseShapeData(jsonReader, lottieComposition);
                    }
                } else {
                    i = jsonReader.nextInt();
                }
            } else {
                str = jsonReader.nextString();
            }
        }
        return new ShapePath(str, i, animatableShapeValue, z);
    }
}
