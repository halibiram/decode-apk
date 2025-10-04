package com.airbnb.lottie.parser;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.animation.keyframe.PathKeyframe;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.value.Keyframe;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
class KeyframesParser {
    static JsonReader.Options NAMES = JsonReader.Options.of(new ObfuscatedString(new long[]{-3243483507275679495L, 1171204437321941379L}).toString());

    private KeyframesParser() {
    }

    public static <T> List<Keyframe<T>> parse(JsonReader jsonReader, LottieComposition lottieComposition, float f, ValueParser<T> valueParser, boolean z) {
        ArrayList arrayList = new ArrayList();
        if (jsonReader.peek() == JsonReader.Token.STRING) {
            lottieComposition.addWarning(new ObfuscatedString(new long[]{-5656559460051821015L, 7044630313428814000L, -6698735847643692451L, -3519545186759695882L, 932900526478135600L, 4204566639208274719L}).toString());
            return arrayList;
        }
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            if (jsonReader.selectName(NAMES) != 0) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() == JsonReader.Token.BEGIN_ARRAY) {
                jsonReader.beginArray();
                if (jsonReader.peek() == JsonReader.Token.NUMBER) {
                    arrayList.add(KeyframeParser.parse(jsonReader, lottieComposition, f, valueParser, false, z));
                } else {
                    while (jsonReader.hasNext()) {
                        arrayList.add(KeyframeParser.parse(jsonReader, lottieComposition, f, valueParser, true, z));
                    }
                }
                jsonReader.endArray();
            } else {
                arrayList.add(KeyframeParser.parse(jsonReader, lottieComposition, f, valueParser, false, z));
            }
        }
        jsonReader.endObject();
        setEndFrames(arrayList);
        return arrayList;
    }

    public static <T> void setEndFrames(List<? extends Keyframe<T>> list) {
        int i;
        T t;
        int size = list.size();
        int i2 = 0;
        while (true) {
            i = size - 1;
            if (i2 >= i) {
                break;
            }
            Keyframe<T> keyframe = list.get(i2);
            i2++;
            Keyframe<T> keyframe2 = list.get(i2);
            keyframe.endFrame = Float.valueOf(keyframe2.startFrame);
            if (keyframe.endValue == null && (t = keyframe2.startValue) != null) {
                keyframe.endValue = t;
                if (keyframe instanceof PathKeyframe) {
                    ((PathKeyframe) keyframe).createPath();
                }
            }
        }
        Keyframe<T> keyframe3 = list.get(i);
        if ((keyframe3.startValue == null || keyframe3.endValue == null) && list.size() > 1) {
            list.remove(keyframe3);
        }
    }
}
