package coil3;

import defpackage.AbstractC1197x89633db9;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.AbstractC0298xfbe0c504;
import kotlin.text.StringsKt__StringsKt;
import okio.Path;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0007\u001aS\u0010\b\u001a\u00020\u00072\n\b\u0002\u0010\u0001\u001a\u0004\u0018\u00010\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00002\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u0000¢\u0006\u0004\b\b\u0010\t\u001a\u001d\u0010\n\u001a\u00020\u0007*\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u0000H\u0007¢\u0006\u0004\b\n\u0010\u000b\"\u001b\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00000\f*\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e\"\u0017\u0010\u0012\u001a\u0004\u0018\u00010\u0000*\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, d2 = {"", "scheme", "authority", "path", "query", "fragment", "separator", "Lcoil3/Uri;", "Uri", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcoil3/Uri;", "toUri", "(Ljava/lang/String;Ljava/lang/String;)Lcoil3/Uri;", "", "getPathSegments", "(Lcoil3/Uri;)Ljava/util/List;", "pathSegments", "getFilePath", "(Lcoil3/Uri;)Ljava/lang/String;", "filePath", "coil-core_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class UriKt {
    @NotNull
    public static final Uri Uri(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @NotNull String str6) {
        if (str == null && str2 == null && str3 == null && str4 == null && str5 == null) {
            throw new IllegalArgumentException("At least one of scheme, authority, path, query, or fragment must be non-null.");
        }
        StringBuilder sb = new StringBuilder();
        if (str != null) {
            sb.append(str);
            sb.append(':');
        }
        if (str2 != null) {
            sb.append("//");
            sb.append(str2);
        }
        if (str3 != null) {
            sb.append(str3);
        }
        if (str4 != null) {
            sb.append('?');
            sb.append(str4);
        }
        if (str5 != null) {
            sb.append('#');
            sb.append(str5);
        }
        return new Uri(sb.toString(), str6, str, str2, str3, str4, str5);
    }

    public static /* synthetic */ Uri Uri$default(String str, String str2, String str3, String str4, String str5, String str6, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        if ((i & 4) != 0) {
            str3 = null;
        }
        if ((i & 8) != 0) {
            str4 = null;
        }
        if ((i & 16) != 0) {
            str5 = null;
        }
        if ((i & 32) != 0) {
            str6 = Path.DIRECTORY_SEPARATOR;
        }
        return Uri(str, str2, str3, str4, str5, str6);
    }

    @Nullable
    public static final String getFilePath(@NotNull Uri uri) {
        String str;
        List<String> pathSegments = getPathSegments(uri);
        if (pathSegments.isEmpty()) {
            return null;
        }
        String path = uri.getPath();
        Intrinsics.checkNotNull(path);
        if (AbstractC1197x89633db9.startsWith$default(path, uri.getSeparator(), false, 2, null)) {
            str = uri.getSeparator();
        } else {
            str = "";
        }
        return CollectionsKt___CollectionsKt.joinToString$default(pathSegments, uri.getSeparator(), str, null, 0, null, null, 60, null);
    }

    @NotNull
    public static final List<String> getPathSegments(@NotNull Uri uri) {
        String path = uri.getPath();
        if (path == null) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        int i = -1;
        while (i < path.length()) {
            int i2 = i + 1;
            i = StringsKt__StringsKt.indexOf$default((CharSequence) path, '/', i2, false, 4, (Object) null);
            if (i == -1) {
                i = path.length();
            }
            String substring = path.substring(i2, i);
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            if (substring.length() > 0) {
                arrayList.add(substring);
            }
        }
        return arrayList;
    }

    @JvmOverloads
    @NotNull
    public static final Uri toUri(@NotNull String str) {
        return toUri$default(str, null, 1, null);
    }

    public static /* synthetic */ Uri toUri$default(String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str2 = Path.DIRECTORY_SEPARATOR;
        }
        return toUri(str, str2);
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final String m928xfbe0c504(String str, byte[] bArr) {
        int length = str.length();
        int i = 0;
        int max = Math.max(0, length - 2);
        int i2 = 0;
        while (true) {
            if (i >= max) {
                if (i == i2) {
                    return str;
                }
                if (i >= length) {
                    return AbstractC1197x89633db9.decodeToString$default(bArr, 0, i2, false, 5, null);
                }
            } else if (str.charAt(i) == '%') {
                int i3 = i + 3;
                try {
                    String substring = str.substring(i + 1, i3);
                    Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                    bArr[i2] = (byte) Integer.parseInt(substring, AbstractC0298xfbe0c504.checkRadix(16));
                    i2++;
                    i = i3;
                } catch (NumberFormatException unused) {
                }
            }
            bArr[i2] = (byte) str.charAt(i);
            i2++;
            i++;
        }
    }

    @JvmOverloads
    @NotNull
    public static final Uri toUri(@NotNull String str, @NotNull String str2) {
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String replace$default = !Intrinsics.areEqual(str2, "/") ? AbstractC1197x89633db9.replace$default(str, str2, "/", false, 4, (Object) null) : str;
        int i = 0;
        int i2 = -1;
        int i3 = -1;
        boolean z = true;
        int i4 = -1;
        int i5 = -1;
        int i6 = -1;
        while (i < replace$default.length()) {
            char charAt = replace$default.charAt(i);
            if (charAt != '#') {
                if (charAt != '/') {
                    if (charAt != ':') {
                        if (charAt == '?' && i4 == -1 && i2 == -1) {
                            i4 = i + 1;
                        }
                    } else if (z && i4 == -1 && i2 == -1) {
                        int i7 = i + 2;
                        if (i7 < str.length() && str.charAt(i + 1) == '/' && str.charAt(i7) == '/') {
                            i5 = i + 3;
                            i6 = i;
                            i = i7;
                            z = false;
                        } else if (Intrinsics.areEqual(replace$default, str)) {
                            i3 = i + 1;
                            i6 = i;
                            i = i3;
                            i5 = i;
                        }
                    }
                } else if (i3 == -1 && i4 == -1 && i2 == -1) {
                    i3 = i5 == -1 ? 0 : i;
                    z = false;
                }
            } else if (i2 == -1) {
                i2 = i + 1;
            }
            i++;
        }
        int min = Math.min(i2 == -1 ? Integer.MAX_VALUE : i2 - 1, replace$default.length());
        int min2 = Math.min(i4 == -1 ? Integer.MAX_VALUE : i4 - 1, min);
        if (i5 != -1) {
            str4 = replace$default.substring(0, i6);
            Intrinsics.checkNotNullExpressionValue(str4, "substring(...)");
            str3 = replace$default.substring(i5, Math.min(i3 != -1 ? i3 : Integer.MAX_VALUE, min2));
            Intrinsics.checkNotNullExpressionValue(str3, "substring(...)");
        } else {
            str3 = null;
            str4 = null;
        }
        if (i3 != -1) {
            str5 = replace$default.substring(i3, min2);
            Intrinsics.checkNotNullExpressionValue(str5, "substring(...)");
        } else {
            str5 = null;
        }
        if (i4 != -1) {
            str6 = replace$default.substring(i4, min);
            Intrinsics.checkNotNullExpressionValue(str6, "substring(...)");
        } else {
            str6 = null;
        }
        if (i2 != -1) {
            str7 = replace$default.substring(i2, replace$default.length());
            Intrinsics.checkNotNullExpressionValue(str7, "substring(...)");
        } else {
            str7 = null;
        }
        byte[] bArr = new byte[Math.max(0, Math.max(str4 != null ? str4.length() : 0, Math.max(str3 != null ? str3.length() : 0, Math.max(str5 != null ? str5.length() : 0, Math.max(str6 != null ? str6.length() : 0, str7 != null ? str7.length() : 0)))) - 2)];
        return new Uri(replace$default, str2, str4 != null ? m928xfbe0c504(str4, bArr) : null, str3 != null ? m928xfbe0c504(str3, bArr) : null, str5 != null ? m928xfbe0c504(str5, bArr) : null, str6 != null ? m928xfbe0c504(str6, bArr) : null, str7 != null ? m928xfbe0c504(str7, bArr) : null);
    }
}
