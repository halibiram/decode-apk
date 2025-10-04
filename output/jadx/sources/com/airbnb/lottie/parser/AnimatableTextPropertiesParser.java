package com.airbnb.lottie.parser;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableColorValue;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.animatable.AnimatableTextProperties;
import com.airbnb.lottie.model.animatable.AnimatableTextRangeSelector;
import com.airbnb.lottie.model.animatable.AnimatableTextStyle;
import com.airbnb.lottie.model.content.TextRangeUnits;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.value.Keyframe;
import com.panda912.muddy.ObfuscatedString;
import java.util.Collections;

/* loaded from: classes.dex */
public class AnimatableTextPropertiesParser {
    private static final JsonReader.Options PROPERTIES_NAMES = JsonReader.Options.of(new ObfuscatedString(new long[]{-4126871332747072140L, -7006892780553041631L}).toString(), new ObfuscatedString(new long[]{-4225424771669478198L, -8584908758895613070L}).toString());
    private static final JsonReader.Options ANIMATABLE_RANGE_PROPERTIES_NAMES = JsonReader.Options.of(new ObfuscatedString(new long[]{1171048817514582547L, 6591937288789382959L}).toString(), new ObfuscatedString(new long[]{1921905319436864123L, 8601984641264954670L}).toString(), new ObfuscatedString(new long[]{-5203322588928798905L, 8860512639681864328L}).toString(), new ObfuscatedString(new long[]{2532527019280246625L, -647632547803956520L}).toString());
    private static final JsonReader.Options ANIMATABLE_PROPERTIES_NAMES = JsonReader.Options.of(new ObfuscatedString(new long[]{5485023731019957958L, 6142337414713493820L}).toString(), new ObfuscatedString(new long[]{4630798708513745251L, 8085699865743379511L}).toString(), new ObfuscatedString(new long[]{-6685598066495991305L, -7613624330855538256L}).toString(), new ObfuscatedString(new long[]{3648683104566253819L, 843392588998949668L}).toString(), new ObfuscatedString(new long[]{-2244446653660325452L, 7633660570788589267L}).toString());

    private AnimatableTextPropertiesParser() {
    }

    public static AnimatableTextProperties parse(JsonReader jsonReader, LottieComposition lottieComposition) {
        jsonReader.beginObject();
        AnimatableTextStyle animatableTextStyle = null;
        AnimatableTextRangeSelector animatableTextRangeSelector = null;
        while (jsonReader.hasNext()) {
            int selectName = jsonReader.selectName(PROPERTIES_NAMES);
            if (selectName != 0) {
                if (selectName != 1) {
                    jsonReader.skipName();
                    jsonReader.skipValue();
                } else {
                    animatableTextStyle = parseAnimatableTextStyle(jsonReader, lottieComposition);
                }
            } else {
                animatableTextRangeSelector = parseAnimatableTextRangeSelector(jsonReader, lottieComposition);
            }
        }
        jsonReader.endObject();
        return new AnimatableTextProperties(animatableTextStyle, animatableTextRangeSelector);
    }

    private static AnimatableTextRangeSelector parseAnimatableTextRangeSelector(JsonReader jsonReader, LottieComposition lottieComposition) {
        jsonReader.beginObject();
        AnimatableIntegerValue animatableIntegerValue = null;
        AnimatableIntegerValue animatableIntegerValue2 = null;
        AnimatableIntegerValue animatableIntegerValue3 = null;
        TextRangeUnits textRangeUnits = null;
        while (jsonReader.hasNext()) {
            int selectName = jsonReader.selectName(ANIMATABLE_RANGE_PROPERTIES_NAMES);
            if (selectName != 0) {
                if (selectName != 1) {
                    if (selectName != 2) {
                        if (selectName != 3) {
                            jsonReader.skipName();
                            jsonReader.skipValue();
                        } else {
                            int nextInt = jsonReader.nextInt();
                            if (nextInt != 1 && nextInt != 2) {
                                lottieComposition.addWarning(new ObfuscatedString(new long[]{1692310550738290426L, -2417125425731820306L, -8061374453014284151L, 816281286807531827L, 1158898034931554839L}).toString() + nextInt);
                                textRangeUnits = TextRangeUnits.INDEX;
                            } else if (nextInt == 1) {
                                textRangeUnits = TextRangeUnits.PERCENT;
                            } else {
                                textRangeUnits = TextRangeUnits.INDEX;
                            }
                        }
                    } else {
                        animatableIntegerValue3 = AnimatableValueParser.parseInteger(jsonReader, lottieComposition);
                    }
                } else {
                    animatableIntegerValue2 = AnimatableValueParser.parseInteger(jsonReader, lottieComposition);
                }
            } else {
                animatableIntegerValue = AnimatableValueParser.parseInteger(jsonReader, lottieComposition);
            }
        }
        jsonReader.endObject();
        if (animatableIntegerValue == null && animatableIntegerValue2 != null) {
            animatableIntegerValue = new AnimatableIntegerValue(Collections.singletonList(new Keyframe(0)));
        }
        return new AnimatableTextRangeSelector(animatableIntegerValue, animatableIntegerValue2, animatableIntegerValue3, textRangeUnits);
    }

    private static AnimatableTextStyle parseAnimatableTextStyle(JsonReader jsonReader, LottieComposition lottieComposition) {
        jsonReader.beginObject();
        AnimatableColorValue animatableColorValue = null;
        AnimatableColorValue animatableColorValue2 = null;
        AnimatableFloatValue animatableFloatValue = null;
        AnimatableFloatValue animatableFloatValue2 = null;
        AnimatableIntegerValue animatableIntegerValue = null;
        while (jsonReader.hasNext()) {
            int selectName = jsonReader.selectName(ANIMATABLE_PROPERTIES_NAMES);
            if (selectName != 0) {
                if (selectName != 1) {
                    if (selectName != 2) {
                        if (selectName != 3) {
                            if (selectName != 4) {
                                jsonReader.skipName();
                                jsonReader.skipValue();
                            } else {
                                animatableIntegerValue = AnimatableValueParser.parseInteger(jsonReader, lottieComposition);
                            }
                        } else {
                            animatableFloatValue2 = AnimatableValueParser.parseFloat(jsonReader, lottieComposition);
                        }
                    } else {
                        animatableFloatValue = AnimatableValueParser.parseFloat(jsonReader, lottieComposition);
                    }
                } else {
                    animatableColorValue2 = AnimatableValueParser.parseColor(jsonReader, lottieComposition);
                }
            } else {
                animatableColorValue = AnimatableValueParser.parseColor(jsonReader, lottieComposition);
            }
        }
        jsonReader.endObject();
        return new AnimatableTextStyle(animatableColorValue, animatableColorValue2, animatableFloatValue, animatableFloatValue2, animatableIntegerValue);
    }
}
