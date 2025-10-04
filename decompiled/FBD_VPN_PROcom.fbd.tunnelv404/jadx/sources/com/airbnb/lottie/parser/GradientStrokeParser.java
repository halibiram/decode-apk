package com.airbnb.lottie.parser;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableGradientColorValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.animatable.AnimatablePointValue;
import com.airbnb.lottie.model.content.GradientStroke;
import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.model.content.ShapeStroke;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.value.Keyframe;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class GradientStrokeParser {
    private static final JsonReader.Options NAMES = JsonReader.Options.of(new ObfuscatedString(new long[]{-4946817365035632090L, -6363623766505743450L}).toString(), new ObfuscatedString(new long[]{2739719599183532267L, 404888612104150842L}).toString(), new ObfuscatedString(new long[]{8953411513154141088L, 1860019250164613062L}).toString(), new ObfuscatedString(new long[]{1918280466549231359L, -7118755409099678832L}).toString(), new ObfuscatedString(new long[]{-4391255826230668037L, -657619460551584932L}).toString(), new ObfuscatedString(new long[]{-1038968812308265848L, -7592218732704300466L}).toString(), new ObfuscatedString(new long[]{-6184725762512152339L, -1344753825875043280L}).toString(), new ObfuscatedString(new long[]{8819435844463484985L, 3649370905631063310L}).toString(), new ObfuscatedString(new long[]{-6026448562442288772L, -3045015646570019550L}).toString(), new ObfuscatedString(new long[]{529890596364177759L, 774467569751272898L}).toString(), new ObfuscatedString(new long[]{4043496704253738318L, 2609736704194990303L}).toString(), new ObfuscatedString(new long[]{5373317104445819704L, 6096589241427351498L}).toString());
    private static final JsonReader.Options GRADIENT_NAMES = JsonReader.Options.of(new ObfuscatedString(new long[]{-6639616909333511188L, 5537720292829589551L}).toString(), new ObfuscatedString(new long[]{-904438060170839721L, 366135761319294796L}).toString());
    private static final JsonReader.Options DASH_PATTERN_NAMES = JsonReader.Options.of(new ObfuscatedString(new long[]{-6556559111923447298L, 586133745744267674L}).toString(), new ObfuscatedString(new long[]{-5821649573273058026L, -8859637978653560418L}).toString());

    private GradientStrokeParser() {
    }

    public static GradientStroke parse(JsonReader jsonReader, LottieComposition lottieComposition) {
        AnimatableIntegerValue animatableIntegerValue;
        GradientType gradientType;
        ArrayList arrayList = new ArrayList();
        String str = null;
        GradientType gradientType2 = null;
        AnimatableGradientColorValue animatableGradientColorValue = null;
        AnimatablePointValue animatablePointValue = null;
        AnimatablePointValue animatablePointValue2 = null;
        AnimatableFloatValue animatableFloatValue = null;
        ShapeStroke.LineCapType lineCapType = null;
        ShapeStroke.LineJoinType lineJoinType = null;
        float f = 0.0f;
        AnimatableFloatValue animatableFloatValue2 = null;
        boolean z = false;
        AnimatableIntegerValue animatableIntegerValue2 = null;
        while (jsonReader.hasNext()) {
            int i = 1;
            switch (jsonReader.selectName(NAMES)) {
                case 0:
                    str = jsonReader.nextString();
                    break;
                case 1:
                    jsonReader.beginObject();
                    int i2 = -1;
                    while (jsonReader.hasNext()) {
                        int selectName = jsonReader.selectName(GRADIENT_NAMES);
                        if (selectName != 0) {
                            if (selectName != 1) {
                                jsonReader.skipName();
                                jsonReader.skipValue();
                            } else {
                                animatableGradientColorValue = AnimatableValueParser.parseGradientColor(jsonReader, lottieComposition, i2);
                            }
                        } else {
                            i2 = jsonReader.nextInt();
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
                    animatableFloatValue = AnimatableValueParser.parseFloat(jsonReader, lottieComposition);
                    break;
                case 7:
                    lineCapType = ShapeStroke.LineCapType.values()[jsonReader.nextInt() - 1];
                    break;
                case 8:
                    lineJoinType = ShapeStroke.LineJoinType.values()[jsonReader.nextInt() - 1];
                    break;
                case 9:
                    f = (float) jsonReader.nextDouble();
                    break;
                case 10:
                    z = jsonReader.nextBoolean();
                    break;
                case 11:
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        jsonReader.beginObject();
                        String str2 = null;
                        AnimatableFloatValue animatableFloatValue3 = null;
                        while (jsonReader.hasNext()) {
                            int selectName2 = jsonReader.selectName(DASH_PATTERN_NAMES);
                            if (selectName2 != 0) {
                                if (selectName2 != i) {
                                    jsonReader.skipName();
                                    jsonReader.skipValue();
                                } else {
                                    animatableFloatValue3 = AnimatableValueParser.parseFloat(jsonReader, lottieComposition);
                                }
                            } else {
                                str2 = jsonReader.nextString();
                            }
                        }
                        jsonReader.endObject();
                        AnimatableFloatValue animatableFloatValue4 = animatableFloatValue2;
                        if (str2.equals(new ObfuscatedString(new long[]{8255507401780113790L, -1672748149610207847L}).toString())) {
                            animatableFloatValue2 = animatableFloatValue3;
                        } else {
                            if (str2.equals(new ObfuscatedString(new long[]{6382612645942913695L, 8265814358795998275L}).toString()) || str2.equals(new ObfuscatedString(new long[]{6367972143406341906L, -7002400864066083910L}).toString())) {
                                lottieComposition.setHasDashPattern(true);
                                arrayList.add(animatableFloatValue3);
                            }
                            animatableFloatValue2 = animatableFloatValue4;
                        }
                        i = 1;
                    }
                    AnimatableFloatValue animatableFloatValue5 = animatableFloatValue2;
                    jsonReader.endArray();
                    if (arrayList.size() == 1) {
                        arrayList.add((AnimatableFloatValue) arrayList.get(0));
                    }
                    animatableFloatValue2 = animatableFloatValue5;
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
        return new GradientStroke(str, gradientType2, animatableGradientColorValue, animatableIntegerValue, animatablePointValue, animatablePointValue2, animatableFloatValue, lineCapType, lineJoinType, f, arrayList, animatableFloatValue2, z);
    }
}
