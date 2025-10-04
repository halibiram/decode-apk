package com.airbnb.lottie.parser;

import android.graphics.Color;
import android.graphics.PointF;
import androidx.annotation.ColorInt;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
class JsonUtils {
    private static final JsonReader.Options POINT_NAMES = JsonReader.Options.of(new ObfuscatedString(new long[]{6363711942189865369L, -4338249739045367013L}).toString(), new ObfuscatedString(new long[]{-1793920668414839629L, -6413166666363701963L}).toString());

    /* renamed from: com.airbnb.lottie.parser.JsonUtils$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$airbnb$lottie$parser$moshi$JsonReader$Token;

        static {
            int[] iArr = new int[JsonReader.Token.values().length];
            $SwitchMap$com$airbnb$lottie$parser$moshi$JsonReader$Token = iArr;
            try {
                iArr[JsonReader.Token.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$parser$moshi$JsonReader$Token[JsonReader.Token.BEGIN_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$parser$moshi$JsonReader$Token[JsonReader.Token.BEGIN_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private JsonUtils() {
    }

    private static PointF jsonArrayToPoint(JsonReader jsonReader, float f) {
        jsonReader.beginArray();
        float nextDouble = (float) jsonReader.nextDouble();
        float nextDouble2 = (float) jsonReader.nextDouble();
        while (jsonReader.peek() != JsonReader.Token.END_ARRAY) {
            jsonReader.skipValue();
        }
        jsonReader.endArray();
        return new PointF(nextDouble * f, nextDouble2 * f);
    }

    private static PointF jsonNumbersToPoint(JsonReader jsonReader, float f) {
        float nextDouble = (float) jsonReader.nextDouble();
        float nextDouble2 = (float) jsonReader.nextDouble();
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
        return new PointF(nextDouble * f, nextDouble2 * f);
    }

    private static PointF jsonObjectToPoint(JsonReader jsonReader, float f) {
        jsonReader.beginObject();
        float f2 = 0.0f;
        float f3 = 0.0f;
        while (jsonReader.hasNext()) {
            int selectName = jsonReader.selectName(POINT_NAMES);
            if (selectName != 0) {
                if (selectName != 1) {
                    jsonReader.skipName();
                    jsonReader.skipValue();
                } else {
                    f3 = valueFromObject(jsonReader);
                }
            } else {
                f2 = valueFromObject(jsonReader);
            }
        }
        jsonReader.endObject();
        return new PointF(f2 * f, f3 * f);
    }

    @ColorInt
    public static int jsonToColor(JsonReader jsonReader) {
        jsonReader.beginArray();
        int nextDouble = (int) (jsonReader.nextDouble() * 255.0d);
        int nextDouble2 = (int) (jsonReader.nextDouble() * 255.0d);
        int nextDouble3 = (int) (jsonReader.nextDouble() * 255.0d);
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
        jsonReader.endArray();
        return Color.argb(255, nextDouble, nextDouble2, nextDouble3);
    }

    public static PointF jsonToPoint(JsonReader jsonReader, float f) {
        int i = AnonymousClass1.$SwitchMap$com$airbnb$lottie$parser$moshi$JsonReader$Token[jsonReader.peek().ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return jsonObjectToPoint(jsonReader, f);
                }
                throw new IllegalArgumentException(new ObfuscatedString(new long[]{139656409188013063L, 1883251690848273778L, 854450037769706208L, 8288402760215345550L, 3202780404371930465L}).toString() + jsonReader.peek());
            }
            return jsonArrayToPoint(jsonReader, f);
        }
        return jsonNumbersToPoint(jsonReader, f);
    }

    public static List<PointF> jsonToPoints(JsonReader jsonReader, float f) {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.peek() == JsonReader.Token.BEGIN_ARRAY) {
            jsonReader.beginArray();
            arrayList.add(jsonToPoint(jsonReader, f));
            jsonReader.endArray();
        }
        jsonReader.endArray();
        return arrayList;
    }

    public static float valueFromObject(JsonReader jsonReader) {
        JsonReader.Token peek = jsonReader.peek();
        int i = AnonymousClass1.$SwitchMap$com$airbnb$lottie$parser$moshi$JsonReader$Token[peek.ordinal()];
        if (i != 1) {
            if (i == 2) {
                jsonReader.beginArray();
                float nextDouble = (float) jsonReader.nextDouble();
                while (jsonReader.hasNext()) {
                    jsonReader.skipValue();
                }
                jsonReader.endArray();
                return nextDouble;
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{8372336273902324996L, 8944331676414249720L, -7264426545872006947L, 6071394472848632450L, 3127348462507275088L}).toString() + peek);
        }
        return (float) jsonReader.nextDouble();
    }
}
