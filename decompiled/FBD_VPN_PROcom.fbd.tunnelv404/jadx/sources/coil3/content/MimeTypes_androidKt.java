package coil3.content;

import android.webkit.MimeTypeMap;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a\u0012\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0000¨\u0006\u0003"}, d2 = {"extensionFromMimeTypeMap", "", "extension", "coil-core_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MimeTypes_androidKt {
    @Nullable
    public static final String extensionFromMimeTypeMap(@NotNull String str) {
        return MimeTypeMap.getSingleton().getMimeTypeFromExtension(str);
    }
}
