package com.airbnb.lottie.parser;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes.dex */
public class PointFParser implements ValueParser<PointF> {
    public static final PointFParser INSTANCE = new PointFParser();

    private PointFParser() {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.airbnb.lottie.parser.ValueParser
    public PointF parse(JsonReader jsonReader, float f) {
        JsonReader.Token peek = jsonReader.peek();
        if (peek == JsonReader.Token.BEGIN_ARRAY) {
            return JsonUtils.jsonToPoint(jsonReader, f);
        }
        if (peek == JsonReader.Token.BEGIN_OBJECT) {
            return JsonUtils.jsonToPoint(jsonReader, f);
        }
        if (peek == JsonReader.Token.NUMBER) {
            PointF pointF = new PointF(((float) jsonReader.nextDouble()) * f, ((float) jsonReader.nextDouble()) * f);
            while (jsonReader.hasNext()) {
                jsonReader.skipValue();
            }
            return pointF;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{7270570399434535495L, -1876927303279324859L, 6492267451458255095L, 5617163744352516647L, 215949275381152555L, 2152978627024436880L, -4536879251708035241L}).toString() + peek);
    }
}
