package com.airbnb.lottie.parser;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableColorValue;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.content.ShapeStroke;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.value.Keyframe;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ShapeStrokeParser {
    private static final JsonReader.Options NAMES = JsonReader.Options.of(new ObfuscatedString(new long[]{1091622923995022233L, 1377960787016721514L}).toString(), new ObfuscatedString(new long[]{9073463551164503663L, -370670241005237492L}).toString(), new ObfuscatedString(new long[]{-5737279697023753704L, 7158162834766268887L}).toString(), new ObfuscatedString(new long[]{-7267781164345998117L, 6307090683261386819L}).toString(), new ObfuscatedString(new long[]{2293140047272749187L, -2192959213223694302L}).toString(), new ObfuscatedString(new long[]{124877978037872972L, -4103021708528274594L}).toString(), new ObfuscatedString(new long[]{-6106961537362052870L, -5433997028914112212L}).toString(), new ObfuscatedString(new long[]{-8081265616958471624L, 4569301763256919568L}).toString(), new ObfuscatedString(new long[]{4511726937078115834L, -1548803750128750689L}).toString());
    private static final JsonReader.Options DASH_PATTERN_NAMES = JsonReader.Options.of(new ObfuscatedString(new long[]{-5781189834063114816L, -4113430642446265891L}).toString(), new ObfuscatedString(new long[]{-5535106048783642715L, 5633138142820620687L}).toString());

    private ShapeStrokeParser() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x0092, code lost:
    
        if (r14.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-8660670791248940718L, -8594042233135139250L}).toString()) != false) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ShapeStroke parse(JsonReader jsonReader, LottieComposition lottieComposition) {
        AnimatableIntegerValue animatableIntegerValue;
        ShapeStroke.LineCapType lineCapType;
        ShapeStroke.LineJoinType lineJoinType;
        char c;
        ArrayList arrayList = new ArrayList();
        String str = null;
        AnimatableFloatValue animatableFloatValue = null;
        AnimatableColorValue animatableColorValue = null;
        AnimatableFloatValue animatableFloatValue2 = null;
        AnimatableIntegerValue animatableIntegerValue2 = null;
        ShapeStroke.LineCapType lineCapType2 = null;
        float f = 0.0f;
        boolean z = false;
        ShapeStroke.LineJoinType lineJoinType2 = null;
        while (true) {
            int i = 100;
            if (jsonReader.hasNext()) {
                int i2 = 1;
                switch (jsonReader.selectName(NAMES)) {
                    case 0:
                        str = jsonReader.nextString();
                        break;
                    case 1:
                        animatableColorValue = AnimatableValueParser.parseColor(jsonReader, lottieComposition);
                        break;
                    case 2:
                        animatableFloatValue2 = AnimatableValueParser.parseFloat(jsonReader, lottieComposition);
                        break;
                    case 3:
                        animatableIntegerValue2 = AnimatableValueParser.parseInteger(jsonReader, lottieComposition);
                        break;
                    case 4:
                        lineCapType2 = ShapeStroke.LineCapType.values()[jsonReader.nextInt() - 1];
                        break;
                    case 5:
                        lineJoinType2 = ShapeStroke.LineJoinType.values()[jsonReader.nextInt() - 1];
                        break;
                    case 6:
                        f = (float) jsonReader.nextDouble();
                        break;
                    case 7:
                        z = jsonReader.nextBoolean();
                        break;
                    case 8:
                        jsonReader.beginArray();
                        while (jsonReader.hasNext()) {
                            jsonReader.beginObject();
                            AnimatableFloatValue animatableFloatValue3 = null;
                            String str2 = null;
                            while (jsonReader.hasNext()) {
                                int selectName = jsonReader.selectName(DASH_PATTERN_NAMES);
                                if (selectName != 0) {
                                    if (selectName != i2) {
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
                            int hashCode = str2.hashCode();
                            if (hashCode != i) {
                                if (hashCode != 103) {
                                    if (hashCode == 111 && str2.equals(new ObfuscatedString(new long[]{-4458227363351136576L, 6864211802724987325L}).toString())) {
                                        c = 0;
                                    }
                                    c = 65535;
                                } else {
                                    c = 2;
                                    break;
                                }
                            } else {
                                if (str2.equals(new ObfuscatedString(new long[]{-2914550793586044141L, -7241428743777882483L}).toString())) {
                                    c = 1;
                                }
                                c = 65535;
                            }
                            if (c != 0) {
                                if (c == 1 || c == 2) {
                                    lottieComposition.setHasDashPattern(true);
                                    arrayList.add(animatableFloatValue3);
                                }
                            } else {
                                animatableFloatValue = animatableFloatValue3;
                            }
                            i2 = 1;
                            i = 100;
                        }
                        jsonReader.endArray();
                        if (arrayList.size() != 1) {
                            break;
                        } else {
                            arrayList.add((AnimatableFloatValue) arrayList.get(0));
                            break;
                        }
                    default:
                        jsonReader.skipValue();
                        break;
                }
            } else {
                if (animatableIntegerValue2 == null) {
                    animatableIntegerValue = new AnimatableIntegerValue(Collections.singletonList(new Keyframe(100)));
                } else {
                    animatableIntegerValue = animatableIntegerValue2;
                }
                if (lineCapType2 == null) {
                    lineCapType = ShapeStroke.LineCapType.BUTT;
                } else {
                    lineCapType = lineCapType2;
                }
                if (lineJoinType2 == null) {
                    lineJoinType = ShapeStroke.LineJoinType.MITER;
                } else {
                    lineJoinType = lineJoinType2;
                }
                return new ShapeStroke(str, animatableFloatValue, arrayList, animatableColorValue, animatableIntegerValue, animatableFloatValue2, lineCapType, lineJoinType, f, z);
            }
        }
    }
}
