package com.airbnb.lottie.parser;

import android.graphics.Path;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableColorValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.content.ShapeFill;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.value.Keyframe;
import com.panda912.muddy.ObfuscatedString;
import java.util.Collections;

/* loaded from: classes.dex */
class ShapeFillParser {
    private static final JsonReader.Options NAMES = JsonReader.Options.of(new ObfuscatedString(new long[]{8252096061907554488L, 3675436124442360185L}).toString(), new ObfuscatedString(new long[]{1399947198330195688L, -7668037880824188863L}).toString(), new ObfuscatedString(new long[]{-1488265544062539160L, -7732595402108241546L}).toString(), new ObfuscatedString(new long[]{-6079756418436752431L, 3458654125055639374L, -6526629477956099213L}).toString(), new ObfuscatedString(new long[]{7337550424432298210L, 1835206717176823369L}).toString(), new ObfuscatedString(new long[]{-4623415330757071627L, 2852320918054370839L}).toString());

    private ShapeFillParser() {
    }

    public static ShapeFill parse(JsonReader jsonReader, LottieComposition lottieComposition) {
        Path.FillType fillType;
        AnimatableIntegerValue animatableIntegerValue = null;
        String str = null;
        AnimatableColorValue animatableColorValue = null;
        int i = 1;
        boolean z = false;
        boolean z2 = false;
        while (jsonReader.hasNext()) {
            int selectName = jsonReader.selectName(NAMES);
            if (selectName != 0) {
                if (selectName != 1) {
                    if (selectName != 2) {
                        if (selectName != 3) {
                            if (selectName != 4) {
                                if (selectName != 5) {
                                    jsonReader.skipName();
                                    jsonReader.skipValue();
                                } else {
                                    z2 = jsonReader.nextBoolean();
                                }
                            } else {
                                i = jsonReader.nextInt();
                            }
                        } else {
                            z = jsonReader.nextBoolean();
                        }
                    } else {
                        animatableIntegerValue = AnimatableValueParser.parseInteger(jsonReader, lottieComposition);
                    }
                } else {
                    animatableColorValue = AnimatableValueParser.parseColor(jsonReader, lottieComposition);
                }
            } else {
                str = jsonReader.nextString();
            }
        }
        if (animatableIntegerValue == null) {
            animatableIntegerValue = new AnimatableIntegerValue(Collections.singletonList(new Keyframe(100)));
        }
        AnimatableIntegerValue animatableIntegerValue2 = animatableIntegerValue;
        if (i == 1) {
            fillType = Path.FillType.WINDING;
        } else {
            fillType = Path.FillType.EVEN_ODD;
        }
        return new ShapeFill(str, z, fillType, animatableColorValue, animatableIntegerValue2, z2);
    }
}
