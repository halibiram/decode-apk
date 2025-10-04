package com.airbnb.lottie.parser;

import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.content.ContentModel;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.Logger;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ContentModelParser {
    private static final JsonReader.Options NAMES = JsonReader.Options.of(new ObfuscatedString(new long[]{7755974835066001269L, 7498540537293274131L}).toString(), new ObfuscatedString(new long[]{2319932864861838078L, 7332635344526161027L}).toString());

    private ContentModelParser() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:78:0x00ad, code lost:
    
        if (r3.equals(new com.panda912.muddy.ObfuscatedString(new long[]{2324637995538394951L, -7947941152914757402L}).toString()) != false) goto L86;
     */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ContentModel parse(JsonReader jsonReader, LottieComposition lottieComposition) {
        ContentModel contentModel;
        String str;
        jsonReader.beginObject();
        char c = 2;
        int i = 2;
        while (true) {
            contentModel = null;
            if (jsonReader.hasNext()) {
                int selectName = jsonReader.selectName(NAMES);
                if (selectName != 0) {
                    if (selectName != 1) {
                        jsonReader.skipName();
                        jsonReader.skipValue();
                    } else {
                        i = jsonReader.nextInt();
                    }
                } else {
                    str = jsonReader.nextString();
                    break;
                }
            } else {
                str = null;
                break;
            }
        }
        if (str == null) {
            return null;
        }
        int hashCode = str.hashCode();
        if (hashCode != 3239) {
            if (hashCode != 3270) {
                if (hashCode != 3295) {
                    if (hashCode != 3488) {
                        if (hashCode != 3646) {
                            if (hashCode != 3669) {
                                if (hashCode != 3679) {
                                    if (hashCode != 3681) {
                                        if (hashCode != 3705) {
                                            if (hashCode != 3710) {
                                                if (hashCode != 3307) {
                                                    if (hashCode != 3308) {
                                                        if (hashCode != 3633) {
                                                            if (hashCode == 3634 && str.equals(new ObfuscatedString(new long[]{8774373166919863812L, -8099919915636266721L}).toString())) {
                                                                c = '\r';
                                                            }
                                                            c = 65535;
                                                        } else {
                                                            if (str.equals(new ObfuscatedString(new long[]{-2598203477179791806L, 2823021574989534284L}).toString())) {
                                                                c = '\b';
                                                            }
                                                            c = 65535;
                                                        }
                                                    }
                                                } else {
                                                    if (str.equals(new ObfuscatedString(new long[]{-2981864553910259916L, 3543892699129450273L}).toString())) {
                                                        c = 0;
                                                    }
                                                    c = 65535;
                                                }
                                            } else {
                                                if (str.equals(new ObfuscatedString(new long[]{8714959767656038765L, -9193375871495074069L}).toString())) {
                                                    c = 5;
                                                }
                                                c = 65535;
                                            }
                                        } else {
                                            if (str.equals(new ObfuscatedString(new long[]{6159425111265970876L, -5556749674108688976L}).toString())) {
                                                c = '\t';
                                            }
                                            c = 65535;
                                        }
                                    } else {
                                        if (str.equals(new ObfuscatedString(new long[]{-1160069929265933681L, 7985318294716409342L}).toString())) {
                                            c = 1;
                                        }
                                        c = 65535;
                                    }
                                } else {
                                    if (str.equals(new ObfuscatedString(new long[]{-4962229976477689064L, 8435136566138262976L}).toString())) {
                                        c = '\n';
                                    }
                                    c = 65535;
                                }
                            } else {
                                if (str.equals(new ObfuscatedString(new long[]{5821916979720331395L, 2977101019583701884L}).toString())) {
                                    c = 6;
                                }
                                c = 65535;
                            }
                        } else {
                            if (str.equals(new ObfuscatedString(new long[]{8288100312718616409L, -5675781325488848649L}).toString())) {
                                c = '\f';
                            }
                            c = 65535;
                        }
                    } else {
                        if (str.equals(new ObfuscatedString(new long[]{-1664497190798542081L, 1610814333078838662L}).toString())) {
                            c = 11;
                        }
                        c = 65535;
                    }
                } else {
                    if (str.equals(new ObfuscatedString(new long[]{-915198360475119583L, -7625424762084415584L}).toString())) {
                        c = 4;
                    }
                    c = 65535;
                }
            } else {
                if (str.equals(new ObfuscatedString(new long[]{4228066647094428823L, 6149665340108636491L}).toString())) {
                    c = 3;
                }
                c = 65535;
            }
        } else {
            if (str.equals(new ObfuscatedString(new long[]{-6868122476006716151L, 594570113651997485L}).toString())) {
                c = 7;
            }
            c = 65535;
        }
        switch (c) {
            case 0:
                contentModel = ShapeGroupParser.parse(jsonReader, lottieComposition);
                break;
            case 1:
                contentModel = ShapeStrokeParser.parse(jsonReader, lottieComposition);
                break;
            case 2:
                contentModel = GradientStrokeParser.parse(jsonReader, lottieComposition);
                break;
            case 3:
                contentModel = ShapeFillParser.parse(jsonReader, lottieComposition);
                break;
            case 4:
                contentModel = GradientFillParser.parse(jsonReader, lottieComposition);
                break;
            case 5:
                contentModel = AnimatableTransformParser.parse(jsonReader, lottieComposition);
                break;
            case 6:
                contentModel = ShapePathParser.parse(jsonReader, lottieComposition);
                break;
            case 7:
                contentModel = CircleShapeParser.parse(jsonReader, lottieComposition, i);
                break;
            case '\b':
                contentModel = RectangleShapeParser.parse(jsonReader, lottieComposition);
                break;
            case '\t':
                contentModel = ShapeTrimPathParser.parse(jsonReader, lottieComposition);
                break;
            case '\n':
                contentModel = PolystarShapeParser.parse(jsonReader, lottieComposition, i);
                break;
            case 11:
                contentModel = MergePathsParser.parse(jsonReader);
                lottieComposition.addWarning(new ObfuscatedString(new long[]{-6123534899833150137L, -4708092564539022945L, -1347487104977086953L, -611151914230816213L, 6466549184222627540L, -615646268477722537L, -8233398955504697471L, 578057997448604159L, 3385943815245950736L, -5176068633323774531L, 4544615317306373953L, 5444117607851725118L, 5890901578860346094L, 2936830780007170634L, -4174556745783715042L, 7941251999860394080L, 58403844128388334L, 1711039198561849154L, -5040561573467298986L, -4662066623723015711L}).toString());
                break;
            case '\f':
                contentModel = RepeaterParser.parse(jsonReader, lottieComposition);
                break;
            case '\r':
                contentModel = RoundedCornersParser.parse(jsonReader, lottieComposition);
                break;
            default:
                Logger.warning(new ObfuscatedString(new long[]{2804227458431710066L, -6603912326942769879L, -7275225515394435064L, -5149425411072456083L}).toString() + str);
                break;
        }
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
        jsonReader.endObject();
        return contentModel;
    }
}
