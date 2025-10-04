package com.airbnb.lottie.parser;

import com.airbnb.lottie.model.Font;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes.dex */
class FontParser {
    private static final JsonReader.Options NAMES = JsonReader.Options.of(new ObfuscatedString(new long[]{-4719714444773408632L, -5367138772150029371L}).toString(), new ObfuscatedString(new long[]{-4938424489140391148L, 7002794500342485065L}).toString(), new ObfuscatedString(new long[]{-3974778619580876448L, -238813800182703993L}).toString(), new ObfuscatedString(new long[]{4145643897984701220L, -6354326703968587231L}).toString());

    private FontParser() {
    }

    public static Font parse(JsonReader jsonReader) {
        jsonReader.beginObject();
        String str = null;
        String str2 = null;
        String str3 = null;
        float f = 0.0f;
        while (jsonReader.hasNext()) {
            int selectName = jsonReader.selectName(NAMES);
            if (selectName != 0) {
                if (selectName != 1) {
                    if (selectName != 2) {
                        if (selectName != 3) {
                            jsonReader.skipName();
                            jsonReader.skipValue();
                        } else {
                            f = (float) jsonReader.nextDouble();
                        }
                    } else {
                        str3 = jsonReader.nextString();
                    }
                } else {
                    str2 = jsonReader.nextString();
                }
            } else {
                str = jsonReader.nextString();
            }
        }
        jsonReader.endObject();
        return new Font(str, str2, str3, f);
    }
}
