package okhttp3.internal;

import defpackage.AbstractC1197x89633db9;
import java.util.ArrayList;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.MatchGroup;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.Typography;
import okhttp3.MediaType;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\u001a\u001d\u0010\u0003\u001a\u0004\u0018\u00010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u001d\u0010\b\u001a\u00020\u0007*\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0000¢\u0006\u0004\b\b\u0010\t\u001a\u0013\u0010\n\u001a\u00020\u0001*\u00020\u0000H\u0000¢\u0006\u0004\b\n\u0010\u000b\u001a\u0013\u0010\r\u001a\u00020\f*\u00020\u0000H\u0000¢\u0006\u0004\b\r\u0010\u000e\u001a\u0013\u0010\u000f\u001a\u00020\u0000*\u00020\u0001H\u0000¢\u0006\u0004\b\u000f\u0010\u0010\u001a\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0000*\u00020\u0001¢\u0006\u0004\b\u0011\u0010\u0010¨\u0006\u0012"}, d2 = {"Lokhttp3/MediaType;", "", "name", "commonParameter", "(Lokhttp3/MediaType;Ljava/lang/String;)Ljava/lang/String;", "", "other", "", "commonEquals", "(Lokhttp3/MediaType;Ljava/lang/Object;)Z", "commonToString", "(Lokhttp3/MediaType;)Ljava/lang/String;", "", "commonHashCode", "(Lokhttp3/MediaType;)I", "commonToMediaType", "(Ljava/lang/String;)Lokhttp3/MediaType;", "commonToMediaTypeOrNull", "okhttp"}, k = 2, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\n-MediaTypeCommon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 -MediaTypeCommon.kt\nokhttp3/internal/_MediaTypeCommonKt\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,95:1\n37#2,2:96\n*S KotlinDebug\n*F\n+ 1 -MediaTypeCommon.kt\nokhttp3/internal/_MediaTypeCommonKt\n*L\n84#1:96,2\n*E\n"})
/* loaded from: classes3.dex */
public final class _MediaTypeCommonKt {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final Regex f2992xfbe0c504 = new Regex("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final Regex f2993x3271d0aa = new Regex(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    public static final boolean commonEquals(@NotNull MediaType mediaType, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(mediaType, "<this>");
        if ((obj instanceof MediaType) && Intrinsics.areEqual(((MediaType) obj).getMediaType(), mediaType.getMediaType())) {
            return true;
        }
        return false;
    }

    public static final int commonHashCode(@NotNull MediaType mediaType) {
        Intrinsics.checkNotNullParameter(mediaType, "<this>");
        return mediaType.getMediaType().hashCode();
    }

    @Nullable
    public static final String commonParameter(@NotNull MediaType mediaType, @NotNull String name) {
        Intrinsics.checkNotNullParameter(mediaType, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        int i = 0;
        int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(0, mediaType.getParameterNamesAndValues().length - 1, 2);
        if (progressionLastElement >= 0) {
            while (!AbstractC1197x89633db9.equals(mediaType.getParameterNamesAndValues()[i], name, true)) {
                if (i != progressionLastElement) {
                    i += 2;
                } else {
                    return null;
                }
            }
            return mediaType.getParameterNamesAndValues()[i + 1];
        }
        return null;
    }

    @NotNull
    public static final MediaType commonToMediaType(@NotNull String str) {
        String str2;
        String str3;
        Intrinsics.checkNotNullParameter(str, "<this>");
        MatchResult matchAtPolyfill = _UtilCommonKt.matchAtPolyfill(f2992xfbe0c504, str, 0);
        if (matchAtPolyfill != null) {
            String str4 = matchAtPolyfill.getGroupValues().get(1);
            Locale locale = Locale.ROOT;
            String lowerCase = str4.toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            String lowerCase2 = matchAtPolyfill.getGroupValues().get(2).toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
            ArrayList arrayList = new ArrayList();
            int last = matchAtPolyfill.getRange().getLast();
            while (true) {
                int i = last + 1;
                if (i < str.length()) {
                    MatchResult matchAtPolyfill2 = _UtilCommonKt.matchAtPolyfill(f2993x3271d0aa, str, i);
                    if (matchAtPolyfill2 != null) {
                        MatchGroup matchGroup = matchAtPolyfill2.getGroups().get(1);
                        if (matchGroup != null) {
                            str2 = matchGroup.getValue();
                        } else {
                            str2 = null;
                        }
                        if (str2 == null) {
                            last = matchAtPolyfill2.getRange().getLast();
                        } else {
                            MatchGroup matchGroup2 = matchAtPolyfill2.getGroups().get(2);
                            if (matchGroup2 != null) {
                                str3 = matchGroup2.getValue();
                            } else {
                                str3 = null;
                            }
                            if (str3 == null) {
                                MatchGroup matchGroup3 = matchAtPolyfill2.getGroups().get(3);
                                Intrinsics.checkNotNull(matchGroup3);
                                str3 = matchGroup3.getValue();
                            } else if (AbstractC1197x89633db9.startsWith$default(str3, "'", false, 2, null) && AbstractC1197x89633db9.endsWith$default(str3, "'", false, 2, null) && str3.length() > 2) {
                                str3 = str3.substring(1, str3.length() - 1);
                                Intrinsics.checkNotNullExpressionValue(str3, "substring(...)");
                            }
                            arrayList.add(str2);
                            arrayList.add(str3);
                            last = matchAtPolyfill2.getRange().getLast();
                        }
                    } else {
                        StringBuilder sb = new StringBuilder("Parameter is not formatted correctly: \"");
                        String substring = str.substring(i);
                        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                        sb.append(substring);
                        sb.append("\" for: \"");
                        sb.append(str);
                        sb.append(Typography.quote);
                        throw new IllegalArgumentException(sb.toString().toString());
                    }
                } else {
                    return new MediaType(str, lowerCase, lowerCase2, (String[]) arrayList.toArray(new String[0]));
                }
            }
        } else {
            throw new IllegalArgumentException("No subtype found for: \"" + str + Typography.quote);
        }
    }

    @Nullable
    public static final MediaType commonToMediaTypeOrNull(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        try {
            return commonToMediaType(str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    @NotNull
    public static final String commonToString(@NotNull MediaType mediaType) {
        Intrinsics.checkNotNullParameter(mediaType, "<this>");
        return mediaType.getMediaType();
    }
}
