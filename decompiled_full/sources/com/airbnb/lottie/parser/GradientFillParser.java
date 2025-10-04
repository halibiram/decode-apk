package com.airbnb.lottie.parser;

import android.graphics.Path;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableGradientColorValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.animatable.AnimatablePointValue;
import com.airbnb.lottie.model.content.GradientFill;
import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.value.Keyframe;
import com.panda912.muddy.ObfuscatedString;
import java.util.Collections;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class GradientFillParser {
    private static final JsonReader.Options NAMES = JsonReader.Options.of(new ObfuscatedString(new long[]{6928444736952484778L, 8482095629452333823L}).toString(), new ObfuscatedString(new long[]{-3260537579521264721L, -1257402122630896961L}).toString(), new ObfuscatedString(new long[]{6178766533276306917L, -1331318288617906515L}).toString(), new ObfuscatedString(new long[]{-4557941916606899457L, 2606430414328797224L}).toString(), new ObfuscatedString(new long[]{-1319592747085414376L, -9044512663195364281L}).toString(), new ObfuscatedString(new long[]{-3743783155422024206L, 6270585195297438082L}).toString(), new ObfuscatedString(new long[]{-2411140097482435378L, 4253054201099827870L}).toString(), new ObfuscatedString(new long[]{2115889790522697637L, 1768506827915022102L}).toString());
    private static final JsonReader.Options GRADIENT_NAMES = JsonReader.Options.of(new ObfuscatedString(new long[]{3230037464143274591L, 5127678076738166701L}).toString(), new ObfuscatedString(new long[]{-7368988880320043176L, -2949779776770076759L}).toString());

    private GradientFillParser() {
    }

    public static GradientFill parse(JsonReader jsonReader, LottieComposition lottieComposition) {
        AnimatableIntegerValue animatableIntegerValue;
        GradientType gradientType;
        Path.FillType fillType;
        AnimatableIntegerValue animatableIntegerValue2 = null;
        Path.FillType fillType2 = Path.FillType.WINDING;
        String str = null;
        GradientType gradientType2 = null;
        AnimatableGradientColorValue animatableGradientColorValue = null;
        AnimatablePointValue animatablePointValue = null;
        AnimatablePointValue animatablePointValue2 = null;
        boolean z = false;
        while (jsonReader.hasNext()) {
            switch (jsonReader.selectName(NAMES)) {
                case 0:
                    str = jsonReader.nextString();
                    break;
                case 1:
                    jsonReader.beginObject();
                    int i = -1;
                    while (jsonReader.hasNext()) {
                        int selectName = jsonReader.selectName(GRADIENT_NAMES);
                        if (selectName != 0) {
                            if (selectName != 1) {
                                jsonReader.skipName();
                                jsonReader.skipValue();
                            } else {
                                animatableGradientColorValue = AnimatableValueParser.parseGradientColor(jsonReader, lottieComposition, i);
                            }
                        } else {
                            i = jsonReader.nextInt();
                        }
                    }
                    jsonReader.endObject();
                    break;
                case 2:
                    animatableIntegerValue2 = AnimatableValueParser.parseInteger(jsonReader, lottieComposition);
                    break;
                case 3:
                    if (jsonReader.nextInt() == 1) {
                        gradientType = GradientType.LINEAR;
                    } else {
                        gradientType = GradientType.RADIAL;
                    }
                    gradientType2 = gradientType;
                    break;
                case 4:
                    animatablePointValue = AnimatableValueParser.parsePoint(jsonReader, lottieComposition);
                    break;
                case 5:
                    animatablePointValue2 = AnimatableValueParser.parsePoint(jsonReader, lottieComposition);
                    break;
                case 6:
                    if (jsonReader.nextInt() == 1) {
                        fillType = Path.FillType.WINDING;
                    } else {
                        fillType = Path.FillType.EVEN_ODD;
                    }
                    fillType2 = fillType;
                    break;
                case 7:
                    z = jsonReader.nextBoolean();
                    break;
                default:
                    jsonReader.skipName();
                    jsonReader.skipValue();
                    break;
            }
        }
        if (animatableIntegerValue2 == null) {
            animatableIntegerValue = new AnimatableIntegerValue(Collections.singletonList(new Keyframe(100)));
        } else {
            animatableIntegerValue = animatableIntegerValue2;
        }
        return new GradientFill(str, gradientType2, fillType2, animatableGradientColorValue, animatableIntegerValue, animatablePointValue, animatablePointValue2, null, null, z);
    }
}
