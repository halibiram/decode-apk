package okhttp3.internal;

import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC1197x89633db9;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.Typography;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import okhttp3.CacheControl;
import okhttp3.Headers;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0013\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0000¢\u0006\u0004\b\u0002\u0010\u0003\u001a#\u0010\t\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0000¢\u0006\u0004\b\t\u0010\n\u001a#\u0010\f\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0000¢\u0006\u0004\b\f\u0010\n\u001a#\u0010\u000e\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0000¢\u0006\u0004\b\u000e\u0010\n\u001a\u0013\u0010\u0010\u001a\u00020\u0005*\u00020\u000fH\u0000¢\u0006\u0004\b\u0010\u0010\u0011\u001a\u0013\u0010\u0013\u001a\u00020\u0000*\u00020\u0012H\u0000¢\u0006\u0004\b\u0013\u0010\u0014\u001a\u0013\u0010\u0015\u001a\u00020\u0000*\u00020\u0012H\u0000¢\u0006\u0004\b\u0015\u0010\u0014\u001a\u0013\u0010\u0016\u001a\u00020\u0000*\u00020\u0004H\u0000¢\u0006\u0004\b\u0016\u0010\u0017\u001a\u0013\u0010\u0018\u001a\u00020\u0004*\u00020\u0004H\u0000¢\u0006\u0004\b\u0018\u0010\u0019\u001a\u0013\u0010\u001a\u001a\u00020\u0004*\u00020\u0004H\u0000¢\u0006\u0004\b\u001a\u0010\u0019\u001a\u0013\u0010\u001b\u001a\u00020\u0004*\u00020\u0004H\u0000¢\u0006\u0004\b\u001b\u0010\u0019\u001a\u0013\u0010\u001c\u001a\u00020\u0004*\u00020\u0004H\u0000¢\u0006\u0004\b\u001c\u0010\u0019\u001a\u0013\u0010\u001d\u001a\u00020\u0004*\u00020\u0004H\u0000¢\u0006\u0004\b\u001d\u0010\u0019\u001a\u001b\u0010 \u001a\u00020\u0000*\u00020\u00122\u0006\u0010\u001f\u001a\u00020\u001eH\u0000¢\u0006\u0004\b \u0010!¨\u0006\""}, d2 = {"Lokhttp3/CacheControl;", "", "commonToString", "(Lokhttp3/CacheControl;)Ljava/lang/String;", "Lokhttp3/CacheControl$Builder;", "", "maxAge", "Lkotlin/time/DurationUnit;", "timeUnit", "commonMaxAge", "(Lokhttp3/CacheControl$Builder;ILkotlin/time/DurationUnit;)Lokhttp3/CacheControl$Builder;", "maxStale", "commonMaxStale", "minFresh", "commonMinFresh", "", "commonClampToInt", "(J)I", "Lokhttp3/CacheControl$Companion;", "commonForceNetwork", "(Lokhttp3/CacheControl$Companion;)Lokhttp3/CacheControl;", "commonForceCache", "commonBuild", "(Lokhttp3/CacheControl$Builder;)Lokhttp3/CacheControl;", "commonNoCache", "(Lokhttp3/CacheControl$Builder;)Lokhttp3/CacheControl$Builder;", "commonNoStore", "commonOnlyIfCached", "commonNoTransform", "commonImmutable", "Lokhttp3/Headers;", "headers", "commonParse", "(Lokhttp3/CacheControl$Companion;Lokhttp3/Headers;)Lokhttp3/CacheControl;", "okhttp"}, k = 2, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\n-CacheControlCommon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 -CacheControlCommon.kt\nokhttp3/internal/_CacheControlCommonKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,263:1\n1#2:264\n*E\n"})
/* loaded from: classes3.dex */
public final class _CacheControlCommonKt {
    @NotNull
    public static final CacheControl commonBuild(@NotNull CacheControl.Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        return new CacheControl(builder.getNoCache(), builder.getNoStore(), builder.getMaxAgeSeconds(), -1, false, false, false, builder.getMaxStaleSeconds(), builder.getMinFreshSeconds(), builder.getOnlyIfCached(), builder.getNoTransform(), builder.getImmutable(), null);
    }

    public static final int commonClampToInt(long j) {
        if (j > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j;
    }

    @NotNull
    public static final CacheControl commonForceCache(@NotNull CacheControl.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return new CacheControl.Builder().onlyIfCached().maxStale(Integer.MAX_VALUE, DurationUnit.SECONDS).build();
    }

    @NotNull
    public static final CacheControl commonForceNetwork(@NotNull CacheControl.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return new CacheControl.Builder().noCache().build();
    }

    @NotNull
    public static final CacheControl.Builder commonImmutable(@NotNull CacheControl.Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        builder.setImmutable$okhttp(true);
        return builder;
    }

    @NotNull
    public static final CacheControl.Builder commonMaxAge(@NotNull CacheControl.Builder builder, int i, @NotNull DurationUnit timeUnit) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
        if (i >= 0) {
            builder.setMaxAgeSeconds$okhttp(commonClampToInt(Duration.m2103getInWholeSecondsimpl(DurationKt.toDuration(i, timeUnit))));
            return builder;
        }
        throw new IllegalArgumentException(AbstractC0362x4440ab85.m2929x9738a56c(i, "maxAge < 0: ").toString());
    }

    @NotNull
    public static final CacheControl.Builder commonMaxStale(@NotNull CacheControl.Builder builder, int i, @NotNull DurationUnit timeUnit) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
        if (i >= 0) {
            builder.setMaxStaleSeconds$okhttp(commonClampToInt(Duration.m2103getInWholeSecondsimpl(DurationKt.toDuration(i, timeUnit))));
            return builder;
        }
        throw new IllegalArgumentException(AbstractC0362x4440ab85.m2929x9738a56c(i, "maxStale < 0: ").toString());
    }

    @NotNull
    public static final CacheControl.Builder commonMinFresh(@NotNull CacheControl.Builder builder, int i, @NotNull DurationUnit timeUnit) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
        if (i >= 0) {
            builder.setMinFreshSeconds$okhttp(commonClampToInt(Duration.m2103getInWholeSecondsimpl(DurationKt.toDuration(i, timeUnit))));
            return builder;
        }
        throw new IllegalArgumentException(AbstractC0362x4440ab85.m2929x9738a56c(i, "minFresh < 0: ").toString());
    }

    @NotNull
    public static final CacheControl.Builder commonNoCache(@NotNull CacheControl.Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        builder.setNoCache$okhttp(true);
        return builder;
    }

    @NotNull
    public static final CacheControl.Builder commonNoStore(@NotNull CacheControl.Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        builder.setNoStore$okhttp(true);
        return builder;
    }

    @NotNull
    public static final CacheControl.Builder commonNoTransform(@NotNull CacheControl.Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        builder.setNoTransform$okhttp(true);
        return builder;
    }

    @NotNull
    public static final CacheControl.Builder commonOnlyIfCached(@NotNull CacheControl.Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        builder.setOnlyIfCached$okhttp(true);
        return builder;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004f  */
    @NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final CacheControl commonParse(@NotNull CacheControl.Companion companion, @NotNull Headers headers) {
        int i;
        boolean z;
        boolean z2;
        int i2;
        int i3;
        boolean z3;
        String str;
        boolean z4;
        boolean z5;
        String str2;
        Headers headers2 = headers;
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(headers2, "headers");
        int size = headers.size();
        boolean z6 = true;
        int i4 = 0;
        boolean z7 = true;
        String str3 = null;
        boolean z8 = false;
        boolean z9 = false;
        int i5 = -1;
        int i6 = -1;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        int i7 = -1;
        int i8 = -1;
        boolean z13 = false;
        boolean z14 = false;
        boolean z15 = false;
        while (i4 < size) {
            String name = headers2.name(i4);
            String value = headers2.value(i4);
            if (AbstractC1197x89633db9.equals(name, "Cache-Control", z6)) {
                if (str3 == null) {
                    str3 = value;
                    i2 = 0;
                    while (i2 < value.length()) {
                        int length = value.length();
                        int i9 = i2;
                        while (true) {
                            if (i9 < length) {
                                i3 = size;
                                int i10 = length;
                                z3 = z7;
                                str = str3;
                                if (StringsKt__StringsKt.contains$default((CharSequence) "=,;", value.charAt(i9), false, 2, (Object) null)) {
                                    break;
                                }
                                i9++;
                                length = i10;
                                size = i3;
                                z7 = z3;
                                str3 = str;
                            } else {
                                i3 = size;
                                z3 = z7;
                                str = str3;
                                i9 = value.length();
                                break;
                            }
                        }
                        String substring = value.substring(i2, i9);
                        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                        String obj = StringsKt__StringsKt.trim(substring).toString();
                        if (i9 == value.length() || value.charAt(i9) == ',' || value.charAt(i9) == ';') {
                            z4 = z11;
                            z5 = z12;
                            i2 = i9 + 1;
                            str2 = null;
                        } else {
                            int indexOfNonWhitespace = _UtilCommonKt.indexOfNonWhitespace(value, i9 + 1);
                            if (indexOfNonWhitespace < value.length() && value.charAt(indexOfNonWhitespace) == '\"') {
                                int i11 = indexOfNonWhitespace + 1;
                                int indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) value, Typography.quote, i11, false, 4, (Object) null);
                                str2 = value.substring(i11, indexOf$default);
                                Intrinsics.checkNotNullExpressionValue(str2, "substring(...)");
                                i2 = indexOf$default + 1;
                                z4 = z11;
                                z5 = z12;
                            } else {
                                int length2 = value.length();
                                int i12 = indexOfNonWhitespace;
                                while (true) {
                                    if (i12 < length2) {
                                        int i13 = length2;
                                        z4 = z11;
                                        z5 = z12;
                                        if (StringsKt__StringsKt.contains$default((CharSequence) ",;", value.charAt(i12), false, 2, (Object) null)) {
                                            break;
                                        }
                                        i12++;
                                        length2 = i13;
                                        z12 = z5;
                                        z11 = z4;
                                    } else {
                                        z4 = z11;
                                        z5 = z12;
                                        i12 = value.length();
                                        break;
                                    }
                                }
                                String substring2 = value.substring(indexOfNonWhitespace, i12);
                                Intrinsics.checkNotNullExpressionValue(substring2, "substring(...)");
                                str2 = StringsKt__StringsKt.trim(substring2).toString();
                                i2 = i12;
                            }
                        }
                        z6 = true;
                        if (AbstractC1197x89633db9.equals("no-cache", obj, true)) {
                            z12 = z5;
                            z11 = z4;
                            size = i3;
                            z7 = z3;
                            str3 = str;
                            z8 = true;
                        } else if (AbstractC1197x89633db9.equals("no-store", obj, true)) {
                            z12 = z5;
                            z11 = z4;
                            size = i3;
                            z7 = z3;
                            str3 = str;
                            z9 = true;
                        } else {
                            if (AbstractC1197x89633db9.equals("max-age", obj, true)) {
                                i5 = _UtilCommonKt.toNonNegativeInt(str2, -1);
                            } else if (AbstractC1197x89633db9.equals("s-maxage", obj, true)) {
                                i6 = _UtilCommonKt.toNonNegativeInt(str2, -1);
                            } else if (AbstractC1197x89633db9.equals("private", obj, true)) {
                                z12 = z5;
                                z11 = z4;
                                size = i3;
                                z7 = z3;
                                str3 = str;
                                z10 = true;
                            } else if (AbstractC1197x89633db9.equals("public", obj, true)) {
                                z12 = z5;
                                size = i3;
                                z7 = z3;
                                str3 = str;
                                z11 = true;
                            } else if (AbstractC1197x89633db9.equals("must-revalidate", obj, true)) {
                                z11 = z4;
                                size = i3;
                                z7 = z3;
                                str3 = str;
                                z12 = true;
                            } else if (AbstractC1197x89633db9.equals("max-stale", obj, true)) {
                                i7 = _UtilCommonKt.toNonNegativeInt(str2, Integer.MAX_VALUE);
                            } else if (AbstractC1197x89633db9.equals("min-fresh", obj, true)) {
                                i8 = _UtilCommonKt.toNonNegativeInt(str2, -1);
                            } else if (AbstractC1197x89633db9.equals("only-if-cached", obj, true)) {
                                z12 = z5;
                                z11 = z4;
                                size = i3;
                                z7 = z3;
                                str3 = str;
                                z13 = true;
                            } else if (AbstractC1197x89633db9.equals("no-transform", obj, true)) {
                                z12 = z5;
                                z11 = z4;
                                size = i3;
                                z7 = z3;
                                str3 = str;
                                z14 = true;
                            } else {
                                z12 = z5;
                                z11 = z4;
                                if (AbstractC1197x89633db9.equals("immutable", obj, true)) {
                                    size = i3;
                                    z7 = z3;
                                    str3 = str;
                                    z15 = true;
                                } else {
                                    size = i3;
                                    z7 = z3;
                                    str3 = str;
                                }
                            }
                            z12 = z5;
                            z11 = z4;
                            size = i3;
                            z7 = z3;
                            str3 = str;
                        }
                    }
                    i = size;
                    z2 = z12;
                    z = z11;
                    i4++;
                    headers2 = headers;
                    z12 = z2;
                    z11 = z;
                    size = i;
                }
            } else if (!AbstractC1197x89633db9.equals(name, "Pragma", z6)) {
                i = size;
                z = z11;
                z2 = z12;
                i4++;
                headers2 = headers;
                z12 = z2;
                z11 = z;
                size = i;
            }
            z7 = false;
            i2 = 0;
            while (i2 < value.length()) {
            }
            i = size;
            z2 = z12;
            z = z11;
            i4++;
            headers2 = headers;
            z12 = z2;
            z11 = z;
            size = i;
        }
        return new CacheControl(z8, z9, i5, i6, z10, z11, z12, i7, i8, z13, z14, z15, !z7 ? null : str3);
    }

    @NotNull
    public static final String commonToString(@NotNull CacheControl cacheControl) {
        Intrinsics.checkNotNullParameter(cacheControl, "<this>");
        String headerValue = cacheControl.getHeaderValue();
        if (headerValue == null) {
            StringBuilder sb = new StringBuilder();
            if (cacheControl.noCache()) {
                sb.append("no-cache, ");
            }
            if (cacheControl.noStore()) {
                sb.append("no-store, ");
            }
            if (cacheControl.maxAgeSeconds() != -1) {
                sb.append("max-age=");
                sb.append(cacheControl.maxAgeSeconds());
                sb.append(", ");
            }
            if (cacheControl.sMaxAgeSeconds() != -1) {
                sb.append("s-maxage=");
                sb.append(cacheControl.sMaxAgeSeconds());
                sb.append(", ");
            }
            if (cacheControl.getIsPrivate()) {
                sb.append("private, ");
            }
            if (cacheControl.getIsPublic()) {
                sb.append("public, ");
            }
            if (cacheControl.mustRevalidate()) {
                sb.append("must-revalidate, ");
            }
            if (cacheControl.maxStaleSeconds() != -1) {
                sb.append("max-stale=");
                sb.append(cacheControl.maxStaleSeconds());
                sb.append(", ");
            }
            if (cacheControl.minFreshSeconds() != -1) {
                sb.append("min-fresh=");
                sb.append(cacheControl.minFreshSeconds());
                sb.append(", ");
            }
            if (cacheControl.onlyIfCached()) {
                sb.append("only-if-cached, ");
            }
            if (cacheControl.noTransform()) {
                sb.append("no-transform, ");
            }
            if (cacheControl.immutable()) {
                sb.append("immutable, ");
            }
            if (sb.length() == 0) {
                return "";
            }
            Intrinsics.checkNotNullExpressionValue(sb.delete(sb.length() - 2, sb.length()), "delete(...)");
            String sb2 = sb.toString();
            Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
            cacheControl.setHeaderValue$okhttp(sb2);
            return sb2;
        }
        return headerValue;
    }
}
