package com.airbnb.lottie.parser;

import android.graphics.Color;
import android.graphics.Rect;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableTextFrame;
import com.airbnb.lottie.model.animatable.AnimatableTextProperties;
import com.airbnb.lottie.model.animatable.AnimatableTransform;
import com.airbnb.lottie.model.content.BlurEffect;
import com.airbnb.lottie.model.content.ContentModel;
import com.airbnb.lottie.model.content.LBlendMode;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.Keyframe;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes.dex */
public class LayerParser {
    private static final JsonReader.Options NAMES = JsonReader.Options.of(new ObfuscatedString(new long[]{-3199058585492447073L, -3454354573957318287L}).toString(), new ObfuscatedString(new long[]{8269023180173604579L, 3333954057582784004L}).toString(), new ObfuscatedString(new long[]{8676692984662884329L, 653557891416241078L}).toString(), new ObfuscatedString(new long[]{-3462796886171942973L, 3677783532288911873L}).toString(), new ObfuscatedString(new long[]{3078276274075742000L, 8622828636135547694L}).toString(), new ObfuscatedString(new long[]{7082276367703738977L, -6892325597659326848L}).toString(), new ObfuscatedString(new long[]{8912766004999550224L, 402492198158986987L}).toString(), new ObfuscatedString(new long[]{-8009476236300923949L, -7131626597241929996L}).toString(), new ObfuscatedString(new long[]{-8883978680030453407L, -1535491210488576219L}).toString(), new ObfuscatedString(new long[]{5779340076998235181L, 4474517312246805443L}).toString(), new ObfuscatedString(new long[]{6744640730775545124L, -7748265193736721912L, 7944358360420231862L}).toString(), new ObfuscatedString(new long[]{8000017936268009317L, -6149988849650160481L}).toString(), new ObfuscatedString(new long[]{-8334028986304280855L, -4216103400196017958L}).toString(), new ObfuscatedString(new long[]{8451886790020025547L, -2717524281851867121L}).toString(), new ObfuscatedString(new long[]{107734821356935886L, -7991734923786981555L}).toString(), new ObfuscatedString(new long[]{3825365679646362228L, -123377940972756963L}).toString(), new ObfuscatedString(new long[]{6972706343747111595L, -2181283427759413036L}).toString(), new ObfuscatedString(new long[]{-2678045903493262919L, 5733608327488100797L}).toString(), new ObfuscatedString(new long[]{-2422736342365696243L, 999473026113723821L}).toString(), new ObfuscatedString(new long[]{6162036678882451342L, -6265085062749642913L}).toString(), new ObfuscatedString(new long[]{-9079324177946700242L, -3066817493758561654L}).toString(), new ObfuscatedString(new long[]{-7106535902934873406L, -5206220039796597065L}).toString(), new ObfuscatedString(new long[]{-1780414975848913119L, 137746740581720640L}).toString(), new ObfuscatedString(new long[]{5893716861631974144L, -9099250453181490290L}).toString(), new ObfuscatedString(new long[]{-6879399765288744708L, 8052103041299964478L}).toString());
    private static final JsonReader.Options TEXT_NAMES = JsonReader.Options.of(new ObfuscatedString(new long[]{1146239881736502342L, 8371299665728632103L}).toString(), new ObfuscatedString(new long[]{6970792230504380053L, 79508156956720884L}).toString());
    private static final JsonReader.Options EFFECTS_NAMES = JsonReader.Options.of(new ObfuscatedString(new long[]{-4379541516229884888L, -4167076081106209604L}).toString(), new ObfuscatedString(new long[]{7451299830317728727L, 802435039533035453L}).toString());

    /* renamed from: com.airbnb.lottie.parser.LayerParser$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$airbnb$lottie$model$layer$Layer$MatteType;

        static {
            int[] iArr = new int[Layer.MatteType.values().length];
            $SwitchMap$com$airbnb$lottie$model$layer$Layer$MatteType = iArr;
            try {
                iArr[Layer.MatteType.LUMA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$layer$Layer$MatteType[Layer.MatteType.LUMA_INVERTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private LayerParser() {
    }

    public static Layer parse(LottieComposition lottieComposition) {
        Rect bounds = lottieComposition.getBounds();
        return new Layer(Collections.emptyList(), lottieComposition, new ObfuscatedString(new long[]{8921091494913988435L, -4888014515596386899L, 484386058369591755L}).toString(), -1L, Layer.LayerType.PRE_COMP, -1L, null, Collections.emptyList(), new AnimatableTransform(), 0, 0, 0, 0.0f, 0.0f, bounds.width(), bounds.height(), null, null, Collections.emptyList(), Layer.MatteType.NONE, null, false, null, null, LBlendMode.NORMAL);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0070. Please report as an issue. */
    public static Layer parse(JsonReader jsonReader, LottieComposition lottieComposition) {
        ArrayList arrayList;
        long j;
        String str;
        boolean z;
        String str2;
        String obfuscatedString = new ObfuscatedString(new long[]{-8303177086813728002L, 6256645531509551332L}).toString();
        Layer.MatteType matteType = Layer.MatteType.NONE;
        LBlendMode lBlendMode = LBlendMode.NORMAL;
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        jsonReader.beginObject();
        Float valueOf = Float.valueOf(0.0f);
        Float valueOf2 = Float.valueOf(1.0f);
        String str3 = null;
        boolean z2 = false;
        Layer.MatteType matteType2 = matteType;
        LBlendMode lBlendMode2 = lBlendMode;
        Layer.LayerType layerType = null;
        String str4 = null;
        AnimatableTextFrame animatableTextFrame = null;
        AnimatableTextProperties animatableTextProperties = null;
        AnimatableFloatValue animatableFloatValue = null;
        BlurEffect blurEffect = null;
        DropShadowEffect dropShadowEffect = null;
        long j2 = 0;
        long j3 = -1;
        boolean z3 = false;
        float f = 0.0f;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        float f2 = 1.0f;
        float f3 = 0.0f;
        float f4 = 0.0f;
        float f5 = 0.0f;
        boolean z4 = false;
        float f6 = 0.0f;
        String str5 = obfuscatedString;
        AnimatableTransform animatableTransform = null;
        while (jsonReader.hasNext()) {
            switch (jsonReader.selectName(NAMES)) {
                case 0:
                    str5 = jsonReader.nextString();
                    z2 = false;
                    break;
                case 1:
                    j2 = jsonReader.nextInt();
                    z2 = false;
                    break;
                case 2:
                    str4 = jsonReader.nextString();
                    z2 = false;
                    break;
                case 3:
                    str2 = str3;
                    int nextInt = jsonReader.nextInt();
                    layerType = Layer.LayerType.UNKNOWN;
                    if (nextInt < layerType.ordinal()) {
                        layerType = Layer.LayerType.values()[nextInt];
                    }
                    str3 = str2;
                    z2 = false;
                    break;
                case 4:
                    j3 = jsonReader.nextInt();
                    z2 = false;
                    break;
                case 5:
                    i = (int) (Utils.dpScale() * jsonReader.nextInt());
                    z2 = false;
                    break;
                case 6:
                    i2 = (int) (Utils.dpScale() * jsonReader.nextInt());
                    z2 = false;
                    break;
                case 7:
                    i3 = Color.parseColor(jsonReader.nextString());
                    z2 = false;
                    break;
                case 8:
                    animatableTransform = AnimatableTransformParser.parse(jsonReader, lottieComposition);
                    z2 = false;
                    break;
                case 9:
                    str2 = str3;
                    int nextInt2 = jsonReader.nextInt();
                    if (nextInt2 >= Layer.MatteType.values().length) {
                        lottieComposition.addWarning(new ObfuscatedString(new long[]{5113947004829677541L, 3492801462907803240L, -8253303738661248074L, -6452826721748113093L}).toString() + nextInt2);
                    } else {
                        matteType2 = Layer.MatteType.values()[nextInt2];
                        int i4 = AnonymousClass1.$SwitchMap$com$airbnb$lottie$model$layer$Layer$MatteType[matteType2.ordinal()];
                        if (i4 == 1) {
                            lottieComposition.addWarning(new ObfuscatedString(new long[]{-3444957346315032726L, 6160713832891880941L, 1680908424534636244L, -2860004550434665142L, 7803358116447082863L}).toString());
                        } else if (i4 == 2) {
                            lottieComposition.addWarning(new ObfuscatedString(new long[]{6480591925508115465L, 8869134843520117259L, 8751525040155211428L, 1106115980922976277L, 9140536238779144174L, -8900913199442244330L}).toString());
                        }
                        lottieComposition.incrementMatteOrMaskCount(1);
                    }
                    str3 = str2;
                    z2 = false;
                    break;
                case 10:
                    str2 = str3;
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        arrayList2.add(MaskParser.parse(jsonReader, lottieComposition));
                    }
                    lottieComposition.incrementMatteOrMaskCount(arrayList2.size());
                    jsonReader.endArray();
                    str3 = str2;
                    z2 = false;
                    break;
                case 11:
                    str2 = str3;
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        ContentModel parse = ContentModelParser.parse(jsonReader, lottieComposition);
                        if (parse != null) {
                            arrayList3.add(parse);
                        }
                    }
                    jsonReader.endArray();
                    str3 = str2;
                    z2 = false;
                    break;
                case 12:
                    str2 = str3;
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        int selectName = jsonReader.selectName(TEXT_NAMES);
                        if (selectName == 0) {
                            animatableTextFrame = AnimatableValueParser.parseDocumentData(jsonReader, lottieComposition);
                        } else if (selectName != 1) {
                            jsonReader.skipName();
                            jsonReader.skipValue();
                        } else {
                            jsonReader.beginArray();
                            if (jsonReader.hasNext()) {
                                animatableTextProperties = AnimatableTextPropertiesParser.parse(jsonReader, lottieComposition);
                            }
                            while (jsonReader.hasNext()) {
                                jsonReader.skipValue();
                            }
                            jsonReader.endArray();
                        }
                    }
                    jsonReader.endObject();
                    str3 = str2;
                    z2 = false;
                    break;
                case 13:
                    str2 = str3;
                    jsonReader.beginArray();
                    ArrayList arrayList4 = new ArrayList();
                    while (jsonReader.hasNext()) {
                        jsonReader.beginObject();
                        while (jsonReader.hasNext()) {
                            int selectName2 = jsonReader.selectName(EFFECTS_NAMES);
                            if (selectName2 == 0) {
                                int nextInt3 = jsonReader.nextInt();
                                if (nextInt3 == 29) {
                                    blurEffect = BlurEffectParser.parse(jsonReader, lottieComposition);
                                } else if (nextInt3 == 25) {
                                    dropShadowEffect = new DropShadowEffectParser().parse(jsonReader, lottieComposition);
                                }
                            } else if (selectName2 != 1) {
                                jsonReader.skipName();
                                jsonReader.skipValue();
                            } else {
                                arrayList4.add(jsonReader.nextString());
                            }
                        }
                        jsonReader.endObject();
                    }
                    jsonReader.endArray();
                    lottieComposition.addWarning(new ObfuscatedString(new long[]{-4496636505880422980L, 5553906095322699364L, 2607211245723985871L, -7355831038067641791L, -5717057596695931157L, -2665476674929040210L, -6917200666123033993L, -8262951931846206244L, 7947739265679972991L, 1044641023841536173L, -8828324909550124815L, 2873284344575813903L, -8006562103831566533L, -3020211659915829549L, 2447619862171473852L, -7526768972135523108L, 1418630177655554019L, 5488619995456129541L, -1617168525117066578L, 6541104194473697449L, 8734815611230471671L, 3225356879363945784L}).toString() + arrayList4);
                    str3 = str2;
                    z2 = false;
                    break;
                case 14:
                    f2 = (float) jsonReader.nextDouble();
                    z2 = false;
                    break;
                case 15:
                    f3 = (float) jsonReader.nextDouble();
                    z2 = false;
                    break;
                case 16:
                    str2 = str3;
                    f4 = (float) (jsonReader.nextDouble() * Utils.dpScale());
                    str3 = str2;
                    z2 = false;
                    break;
                case 17:
                    str2 = str3;
                    f5 = (float) (jsonReader.nextDouble() * Utils.dpScale());
                    str3 = str2;
                    z2 = false;
                    break;
                case 18:
                    f = (float) jsonReader.nextDouble();
                    break;
                case 19:
                    f6 = (float) jsonReader.nextDouble();
                    break;
                case 20:
                    animatableFloatValue = AnimatableValueParser.parseFloat(jsonReader, lottieComposition, z2);
                    break;
                case 21:
                    str3 = jsonReader.nextString();
                    break;
                case 22:
                    z4 = jsonReader.nextBoolean();
                    break;
                case 23:
                    if (jsonReader.nextInt() != 1) {
                        z3 = false;
                        break;
                    } else {
                        z3 = true;
                        break;
                    }
                case 24:
                    int nextInt4 = jsonReader.nextInt();
                    if (nextInt4 >= LBlendMode.values().length) {
                        lottieComposition.addWarning(new ObfuscatedString(new long[]{7627680558379451582L, -8389147886406524855L, 7689823087847888987L, -8585391960240022787L}).toString() + nextInt4);
                        lBlendMode2 = LBlendMode.NORMAL;
                        break;
                    } else {
                        lBlendMode2 = LBlendMode.values()[nextInt4];
                        break;
                    }
                default:
                    jsonReader.skipName();
                    jsonReader.skipValue();
                    str2 = str3;
                    str3 = str2;
                    z2 = false;
                    break;
            }
        }
        String str6 = str3;
        jsonReader.endObject();
        ArrayList arrayList5 = new ArrayList();
        if (f > 0.0f) {
            arrayList = arrayList2;
            z = z3;
            j = j2;
            str = str6;
            arrayList5.add(new Keyframe(lottieComposition, valueOf, valueOf, null, 0.0f, Float.valueOf(f)));
        } else {
            arrayList = arrayList2;
            j = j2;
            str = str6;
            z = z3;
        }
        if (f6 <= 0.0f) {
            f6 = lottieComposition.getEndFrame();
        }
        arrayList5.add(new Keyframe(lottieComposition, valueOf2, valueOf2, null, f, Float.valueOf(f6)));
        arrayList5.add(new Keyframe(lottieComposition, valueOf, valueOf, null, f6, Float.valueOf(Float.MAX_VALUE)));
        if (str5.endsWith(new ObfuscatedString(new long[]{2617868651098962401L, 4084316401419269446L}).toString()) || new ObfuscatedString(new long[]{3537901381356128446L, 4005098821074851458L}).toString().equals(str)) {
            lottieComposition.addWarning(new ObfuscatedString(new long[]{-2023295888800444651L, 8755002731174477326L, 4297739191259206956L, -2618146622255499649L, 9060787482573325704L, -5075404005415899864L, 1423281119528556366L}).toString());
        }
        if (z) {
            if (animatableTransform == null) {
                animatableTransform = new AnimatableTransform();
            }
            AnimatableTransform animatableTransform2 = animatableTransform;
            animatableTransform2.setAutoOrient(z);
            animatableTransform = animatableTransform2;
        }
        return new Layer(arrayList3, lottieComposition, str5, j, layerType, j3, str4, arrayList, animatableTransform, i, i2, i3, f2, f3, f4, f5, animatableTextFrame, animatableTextProperties, arrayList5, matteType2, animatableFloatValue, z4, blurEffect, dropShadowEffect, lBlendMode2);
    }
}
