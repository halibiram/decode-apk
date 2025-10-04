package com.airbnb.lottie.parser;

import com.airbnb.lottie.model.content.MergePaths;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes.dex */
class MergePathsParser {
    private static final JsonReader.Options NAMES = JsonReader.Options.of(new ObfuscatedString(new long[]{-2382115373936644714L, 8494151981274299507L}).toString(), new ObfuscatedString(new long[]{3796240630745036639L, 2822936018926151570L}).toString(), new ObfuscatedString(new long[]{8189688887935780240L, 2572011080362260301L}).toString());

    private MergePathsParser() {
    }

    public static MergePaths parse(JsonReader jsonReader) {
        String str = null;
        MergePaths.MergePathsMode mergePathsMode = null;
        boolean z = false;
        while (jsonReader.hasNext()) {
            int selectName = jsonReader.selectName(NAMES);
            if (selectName != 0) {
                if (selectName != 1) {
                    if (selectName != 2) {
                        jsonReader.skipName();
                        jsonReader.skipValue();
                    } else {
                        z = jsonReader.nextBoolean();
                    }
                } else {
                    mergePathsMode = MergePaths.MergePathsMode.forId(jsonReader.nextInt());
                }
            } else {
                str = jsonReader.nextString();
            }
        }
        return new MergePaths(str, mergePathsMode, z);
    }
}
