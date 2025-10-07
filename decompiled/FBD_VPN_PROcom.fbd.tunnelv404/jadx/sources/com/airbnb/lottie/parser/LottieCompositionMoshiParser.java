package com.airbnb.lottie.parser;

import android.graphics.Rect;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieImageAsset;
import com.airbnb.lottie.model.Font;
import com.airbnb.lottie.model.FontCharacter;
import com.airbnb.lottie.model.Marker;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.Utils;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class LottieCompositionMoshiParser {
    private static final JsonReader.Options NAMES = JsonReader.Options.of(new ObfuscatedString(new long[]{1198306510669332656L, -3500263373154487578L}).toString(), new ObfuscatedString(new long[]{-8064474199738167641L, -6091994276816000009L}).toString(), new ObfuscatedString(new long[]{6555448124451488414L, -1555752624554721325L}).toString(), new ObfuscatedString(new long[]{8321776628514446867L, 7920289074893609109L}).toString(), new ObfuscatedString(new long[]{7667036068721894235L, 6532064941877869726L}).toString(), new ObfuscatedString(new long[]{2638435361562546088L, -5600374333947067535L}).toString(), new ObfuscatedString(new long[]{-4213578158011763350L, 6305537218990413975L}).toString(), new ObfuscatedString(new long[]{3726444243181218824L, 2651628263884082828L}).toString(), new ObfuscatedString(new long[]{-493767754788590073L, 973328146045359429L}).toString(), new ObfuscatedString(new long[]{-3373631843666869877L, 7108288414038877748L}).toString(), new ObfuscatedString(new long[]{-2021780758181227928L, 7257620537746324715L}).toString());
    static JsonReader.Options ASSETS_NAMES = JsonReader.Options.of(new ObfuscatedString(new long[]{-2080662505350865656L, -7694809830791588513L}).toString(), new ObfuscatedString(new long[]{-5057428098070922420L, 3895592607642651362L}).toString(), new ObfuscatedString(new long[]{-2939760302089646317L, -4844339920754762112L}).toString(), new ObfuscatedString(new long[]{2138214869909128394L, -3709646392918164133L}).toString(), new ObfuscatedString(new long[]{-5154395755797478712L, -6498957004742323177L}).toString(), new ObfuscatedString(new long[]{5541239580691949801L, -4273030025105171318L}).toString());
    private static final JsonReader.Options FONT_NAMES = JsonReader.Options.of(new ObfuscatedString(new long[]{8909850079084109971L, 1997567729298968710L}).toString());
    private static final JsonReader.Options MARKER_NAMES = JsonReader.Options.of(new ObfuscatedString(new long[]{-529929286294403774L, -7785669058909242679L}).toString(), new ObfuscatedString(new long[]{876888987243564726L, -4161718134617649239L}).toString(), new ObfuscatedString(new long[]{-1363185562646061036L, 6686036764681843647L}).toString());

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0045. Please report as an issue. */
    public static LottieComposition parse(JsonReader jsonReader) {
        ArrayList arrayList;
        float f;
        JsonReader jsonReader2 = jsonReader;
        int i = 2;
        float dpScale = Utils.dpScale();
        LongSparseArray<Layer> longSparseArray = new LongSparseArray<>();
        ArrayList arrayList2 = new ArrayList();
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        HashMap hashMap3 = new HashMap();
        ArrayList arrayList3 = new ArrayList();
        SparseArrayCompat<FontCharacter> sparseArrayCompat = new SparseArrayCompat<>();
        LottieComposition lottieComposition = new LottieComposition();
        jsonReader.beginObject();
        int i2 = 0;
        float f2 = 0.0f;
        float f3 = 0.0f;
        float f4 = 0.0f;
        int i3 = 0;
        while (jsonReader.hasNext()) {
            switch (jsonReader2.selectName(NAMES)) {
                case 0:
                    i2 = jsonReader.nextInt();
                    jsonReader2 = jsonReader;
                    i = 2;
                    break;
                case 1:
                    i3 = jsonReader.nextInt();
                    jsonReader2 = jsonReader;
                    i = 2;
                    break;
                case 2:
                    f = dpScale;
                    f2 = (float) jsonReader.nextDouble();
                    jsonReader2 = jsonReader;
                    dpScale = f;
                    i = 2;
                    break;
                case 3:
                    f = dpScale;
                    f3 = ((float) jsonReader.nextDouble()) - 0.01f;
                    jsonReader2 = jsonReader;
                    dpScale = f;
                    i = 2;
                    break;
                case 4:
                    f = dpScale;
                    f4 = (float) jsonReader.nextDouble();
                    jsonReader2 = jsonReader;
                    dpScale = f;
                    i = 2;
                    break;
                case 5:
                    arrayList = arrayList3;
                    long[] jArr = new long[i];
                    // fill-array-data instruction
                    jArr[0] = -5750222901485655983L;
                    jArr[1] = 2827134133105846317L;
                    String[] split = jsonReader.nextString().split(new ObfuscatedString(jArr).toString());
                    if (!Utils.isAtLeastVersion(Integer.parseInt(split[0]), Integer.parseInt(split[1]), Integer.parseInt(split[i]), 4, 4, 0)) {
                        lottieComposition.addWarning(new ObfuscatedString(new long[]{-4698036649472009016L, 6432929973992719536L, 8630620725263302374L, 4996950126951203243L, -8210741056793172887L, -7705580700678346484L}).toString());
                    }
                    jsonReader2 = jsonReader;
                    arrayList3 = arrayList;
                    break;
                case 6:
                    parseLayers(jsonReader2, lottieComposition, arrayList2, longSparseArray);
                    arrayList = arrayList3;
                    jsonReader2 = jsonReader;
                    arrayList3 = arrayList;
                    break;
                case 7:
                    parseAssets(jsonReader2, lottieComposition, hashMap, hashMap2);
                    arrayList = arrayList3;
                    jsonReader2 = jsonReader;
                    arrayList3 = arrayList;
                    break;
                case 8:
                    parseFonts(jsonReader2, hashMap3);
                    arrayList = arrayList3;
                    jsonReader2 = jsonReader;
                    arrayList3 = arrayList;
                    break;
                case 9:
                    parseChars(jsonReader2, lottieComposition, sparseArrayCompat);
                    arrayList = arrayList3;
                    jsonReader2 = jsonReader;
                    arrayList3 = arrayList;
                    break;
                case 10:
                    parseMarkers(jsonReader2, arrayList3);
                    arrayList = arrayList3;
                    jsonReader2 = jsonReader;
                    arrayList3 = arrayList;
                    break;
                default:
                    jsonReader.skipName();
                    jsonReader.skipValue();
                    arrayList = arrayList3;
                    jsonReader2 = jsonReader;
                    arrayList3 = arrayList;
                    break;
            }
        }
        float f5 = dpScale;
        int i4 = i3;
        lottieComposition.init(new Rect(0, 0, (int) (i2 * f5), (int) (i4 * f5)), f2, f3, f4, arrayList2, longSparseArray, hashMap, hashMap2, Utils.dpScale(), sparseArrayCompat, hashMap3, arrayList3, i2, i4);
        return lottieComposition;
    }

    private static void parseAssets(JsonReader jsonReader, LottieComposition lottieComposition, Map<String, List<Layer>> map, Map<String, LottieImageAsset> map2) {
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            ArrayList arrayList = new ArrayList();
            LongSparseArray longSparseArray = new LongSparseArray();
            jsonReader.beginObject();
            String str = null;
            String str2 = null;
            String str3 = null;
            int i = 0;
            int i2 = 0;
            while (jsonReader.hasNext()) {
                int selectName = jsonReader.selectName(ASSETS_NAMES);
                if (selectName != 0) {
                    if (selectName != 1) {
                        if (selectName != 2) {
                            if (selectName != 3) {
                                if (selectName != 4) {
                                    if (selectName != 5) {
                                        jsonReader.skipName();
                                        jsonReader.skipValue();
                                    } else {
                                        str3 = jsonReader.nextString();
                                    }
                                } else {
                                    str2 = jsonReader.nextString();
                                }
                            } else {
                                i2 = jsonReader.nextInt();
                            }
                        } else {
                            i = jsonReader.nextInt();
                        }
                    } else {
                        jsonReader.beginArray();
                        while (jsonReader.hasNext()) {
                            Layer parse = LayerParser.parse(jsonReader, lottieComposition);
                            longSparseArray.put(parse.getId(), parse);
                            arrayList.add(parse);
                        }
                        jsonReader.endArray();
                    }
                } else {
                    str = jsonReader.nextString();
                }
            }
            jsonReader.endObject();
            if (str2 != null) {
                LottieImageAsset lottieImageAsset = new LottieImageAsset(i, i2, str, str2, str3);
                map2.put(lottieImageAsset.getId(), lottieImageAsset);
            } else {
                map.put(str, arrayList);
            }
        }
        jsonReader.endArray();
    }

    private static void parseChars(JsonReader jsonReader, LottieComposition lottieComposition, SparseArrayCompat<FontCharacter> sparseArrayCompat) {
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            FontCharacter parse = FontCharacterParser.parse(jsonReader, lottieComposition);
            sparseArrayCompat.put(parse.hashCode(), parse);
        }
        jsonReader.endArray();
    }

    private static void parseFonts(JsonReader jsonReader, Map<String, Font> map) {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            if (jsonReader.selectName(FONT_NAMES) != 0) {
                jsonReader.skipName();
                jsonReader.skipValue();
            } else {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    Font parse = FontParser.parse(jsonReader);
                    map.put(parse.getName(), parse);
                }
                jsonReader.endArray();
            }
        }
        jsonReader.endObject();
    }

    private static void parseLayers(JsonReader jsonReader, LottieComposition lottieComposition, List<Layer> list, LongSparseArray<Layer> longSparseArray) {
        jsonReader.beginArray();
        int i = 0;
        while (jsonReader.hasNext()) {
            Layer parse = LayerParser.parse(jsonReader, lottieComposition);
            if (parse.getLayerType() == Layer.LayerType.IMAGE) {
                i++;
            }
            list.add(parse);
            longSparseArray.put(parse.getId(), parse);
            if (i > 4) {
                Logger.warning(new ObfuscatedString(new long[]{7201370706868685119L, -1466758967350589844L, -4554334816297040670L}).toString() + i + new ObfuscatedString(new long[]{5842440412338664711L, 8755071546820791495L, -4668924098869314200L, 7854741130213126585L, -4511007939192460323L, -5067888523701718306L, -7270318669567979318L, -9083387038273205256L, -3448514925377965698L, -4407642692010083893L, 5598128078768783202L, -1866417791418368585L, 1688468599184006782L, -1840187231982631779L, 6420664013489736231L, 545970170915611776L, -8574533696391428390L, 312791531055580752L, 4073572396326373156L}).toString());
            }
        }
        jsonReader.endArray();
    }

    private static void parseMarkers(JsonReader jsonReader, List<Marker> list) {
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            jsonReader.beginObject();
            float f = 0.0f;
            String str = null;
            float f2 = 0.0f;
            while (jsonReader.hasNext()) {
                int selectName = jsonReader.selectName(MARKER_NAMES);
                if (selectName != 0) {
                    if (selectName != 1) {
                        if (selectName != 2) {
                            jsonReader.skipName();
                            jsonReader.skipValue();
                        } else {
                            f2 = (float) jsonReader.nextDouble();
                        }
                    } else {
                        f = (float) jsonReader.nextDouble();
                    }
                } else {
                    str = jsonReader.nextString();
                }
            }
            jsonReader.endObject();
            list.add(new Marker(str, f, f2));
        }
        jsonReader.endArray();
    }
}
