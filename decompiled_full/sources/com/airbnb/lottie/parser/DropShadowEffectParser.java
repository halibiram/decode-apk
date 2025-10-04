package com.airbnb.lottie.parser;

import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableColorValue;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes.dex */
public class DropShadowEffectParser {
    private static final JsonReader.Options DROP_SHADOW_EFFECT_NAMES = JsonReader.Options.of(new ObfuscatedString(new long[]{258068500527717910L, 8312419281114645453L}).toString());
    private static final JsonReader.Options INNER_EFFECT_NAMES = JsonReader.Options.of(new ObfuscatedString(new long[]{2176340223925204254L, 3294843649641778532L}).toString(), new ObfuscatedString(new long[]{-7936129106238865153L, 8553345679731138061L}).toString());
    private AnimatableColorValue color;
    private AnimatableFloatValue direction;
    private AnimatableFloatValue distance;
    private AnimatableFloatValue opacity;
    private AnimatableFloatValue radius;

    private void maybeParseInnerEffect(JsonReader jsonReader, LottieComposition lottieComposition) {
        char c;
        String obfuscatedString = new ObfuscatedString(new long[]{7515834987119441496L}).toString();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            int selectName = jsonReader.selectName(INNER_EFFECT_NAMES);
            if (selectName != 0) {
                if (selectName != 1) {
                    jsonReader.skipName();
                    jsonReader.skipValue();
                } else {
                    switch (obfuscatedString.hashCode()) {
                        case 353103893:
                            if (obfuscatedString.equals(new ObfuscatedString(new long[]{-2325759604914572185L, -8189806351251913195L}).toString())) {
                                c = 3;
                                break;
                            }
                            break;
                        case 397447147:
                            if (obfuscatedString.equals(new ObfuscatedString(new long[]{-412598178717524035L, 2594923263734616105L}).toString())) {
                                c = 1;
                                break;
                            }
                            break;
                        case 1041377119:
                            if (obfuscatedString.equals(new ObfuscatedString(new long[]{-4694876455853362065L, 8554931832193945204L, 8006002329335910213L}).toString())) {
                                c = 2;
                                break;
                            }
                            break;
                        case 1379387491:
                            if (obfuscatedString.equals(new ObfuscatedString(new long[]{-2220153959037598695L, 406940559391934297L, -602647330710071388L}).toString())) {
                                c = 0;
                                break;
                            }
                            break;
                        case 1383710113:
                            if (obfuscatedString.equals(new ObfuscatedString(new long[]{-6824811185348116294L, 6110479777590887733L}).toString())) {
                                c = 4;
                                break;
                            }
                            break;
                    }
                    c = 65535;
                    if (c != 0) {
                        if (c != 1) {
                            if (c != 2) {
                                if (c != 3) {
                                    if (c != 4) {
                                        jsonReader.skipValue();
                                    } else {
                                        this.radius = AnimatableValueParser.parseFloat(jsonReader, lottieComposition);
                                    }
                                } else {
                                    this.distance = AnimatableValueParser.parseFloat(jsonReader, lottieComposition);
                                }
                            } else {
                                this.direction = AnimatableValueParser.parseFloat(jsonReader, lottieComposition, false);
                            }
                        } else {
                            this.opacity = AnimatableValueParser.parseFloat(jsonReader, lottieComposition, false);
                        }
                    } else {
                        this.color = AnimatableValueParser.parseColor(jsonReader, lottieComposition);
                    }
                }
            } else {
                obfuscatedString = jsonReader.nextString();
            }
        }
        jsonReader.endObject();
    }

    @Nullable
    public DropShadowEffect parse(JsonReader jsonReader, LottieComposition lottieComposition) {
        AnimatableFloatValue animatableFloatValue;
        AnimatableFloatValue animatableFloatValue2;
        AnimatableFloatValue animatableFloatValue3;
        AnimatableFloatValue animatableFloatValue4;
        while (jsonReader.hasNext()) {
            if (jsonReader.selectName(DROP_SHADOW_EFFECT_NAMES) != 0) {
                jsonReader.skipName();
                jsonReader.skipValue();
            } else {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    maybeParseInnerEffect(jsonReader, lottieComposition);
                }
                jsonReader.endArray();
            }
        }
        AnimatableColorValue animatableColorValue = this.color;
        if (animatableColorValue != null && (animatableFloatValue = this.opacity) != null && (animatableFloatValue2 = this.direction) != null && (animatableFloatValue3 = this.distance) != null && (animatableFloatValue4 = this.radius) != null) {
            return new DropShadowEffect(animatableColorValue, animatableFloatValue, animatableFloatValue2, animatableFloatValue3, animatableFloatValue4);
        }
        return null;
    }
}
