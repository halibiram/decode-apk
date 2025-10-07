package coil3.content;

import coil3.annotation.InternalCoilApi;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\bÇ\u0002\u0018\u00002\u00020\u0001J\u0017\u0010\u0004\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\u0007\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\u0005¨\u0006\b"}, d2 = {"Lcoil3/util/MimeTypeMap;", "", "", "url", "getMimeTypeFromUrl", "(Ljava/lang/String;)Ljava/lang/String;", "extension", "getMimeTypeFromExtension", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@InternalCoilApi
/* loaded from: classes.dex */
public final class MimeTypeMap {

    @NotNull
    public static final MimeTypeMap INSTANCE = new Object();

    @Nullable
    public final String getMimeTypeFromExtension(@NotNull String extension) {
        Map map;
        if (StringsKt__StringsKt.isBlank(extension)) {
            return null;
        }
        String lowerCase = extension.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        map = MimeTypesKt.f893xfbe0c504;
        String str = (String) map.get(lowerCase);
        if (str == null) {
            return MimeTypes_androidKt.extensionFromMimeTypeMap(lowerCase);
        }
        return str;
    }

    @Nullable
    public final String getMimeTypeFromUrl(@NotNull String url) {
        if (StringsKt__StringsKt.isBlank(url)) {
            return null;
        }
        return getMimeTypeFromExtension(StringsKt__StringsKt.substringAfterLast(StringsKt__StringsKt.substringAfterLast$default(StringsKt__StringsKt.substringBeforeLast$default(StringsKt__StringsKt.substringBeforeLast$default(url, '#', (String) null, 2, (Object) null), '?', (String) null, 2, (Object) null), '/', (String) null, 2, (Object) null), '.', ""));
    }
}
