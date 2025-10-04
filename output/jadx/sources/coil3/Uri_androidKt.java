package coil3;

import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0002*\u00020\u0001¨\u0006\u0004"}, d2 = {"toCoilUri", "Lcoil3/Uri;", "Landroid/net/Uri;", "toAndroidUri", "coil-core_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nUri.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Uri.android.kt\ncoil3/Uri_androidKt\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,9:1\n29#2:10\n*S KotlinDebug\n*F\n+ 1 Uri.android.kt\ncoil3/Uri_androidKt\n*L\n8#1:10\n*E\n"})
/* loaded from: classes.dex */
public final class Uri_androidKt {
    @NotNull
    public static final android.net.Uri toAndroidUri(@NotNull Uri uri) {
        return android.net.Uri.parse(uri.getF492xfbe0c504());
    }

    @NotNull
    public static final Uri toCoilUri(@NotNull android.net.Uri uri) {
        return UriKt.toUri$default(uri.toString(), null, 1, null);
    }
}
