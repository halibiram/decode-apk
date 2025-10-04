package com.airbnb.lottie.parser;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.FontCharacter;
import com.airbnb.lottie.model.content.ShapeGroup;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class FontCharacterParser {
    private static final JsonReader.Options NAMES = JsonReader.Options.of(new ObfuscatedString(new long[]{3890924365100185511L, -7009746897952274625L}).toString(), new ObfuscatedString(new long[]{4410277779298148033L, -5349193726568739270L}).toString(), new ObfuscatedString(new long[]{-8209534373697467991L, 2613853681699700129L}).toString(), new ObfuscatedString(new long[]{6737708607752449738L, -2752728680846842004L}).toString(), new ObfuscatedString(new long[]{-2322719970428583424L, 986841587342167831L}).toString(), new ObfuscatedString(new long[]{-4882556611981854070L, -5637551002962299337L}).toString());
    private static final JsonReader.Options DATA_NAMES = JsonReader.Options.of(new ObfuscatedString(new long[]{2579949856096635000L, 1623389472653723229L}).toString());

    private FontCharacterParser() {
    }

    public static FontCharacter parse(JsonReader jsonReader, LottieComposition lottieComposition) {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginObject();
        double d = 0.0d;
        String str = null;
        String str2 = null;
        double d2 = 0.0d;
        char c = 0;
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
                                    jsonReader.beginObject();
                                    while (jsonReader.hasNext()) {
                                        if (jsonReader.selectName(DATA_NAMES) != 0) {
                                            jsonReader.skipName();
                                            jsonReader.skipValue();
                                        } else {
                                            jsonReader.beginArray();
                                            while (jsonReader.hasNext()) {
                                                arrayList.add((ShapeGroup) ContentModelParser.parse(jsonReader, lottieComposition));
                                            }
                                            jsonReader.endArray();
                                        }
                                    }
                                    jsonReader.endObject();
                                }
                            } else {
                                str2 = jsonReader.nextString();
                            }
                        } else {
                            str = jsonReader.nextString();
                        }
                    } else {
                        d = jsonReader.nextDouble();
                    }
                } else {
                    d2 = jsonReader.nextDouble();
                }
            } else {
                c = jsonReader.nextString().charAt(0);
            }
        }
        jsonReader.endObject();
        return new FontCharacter(arrayList, c, d2, d, str, str2);
    }
}
