package okhttp3;

import defpackage.AbstractC0362x4440ab85;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001J)\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\b\b\u0002\u0010\u0006\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lokhttp3/Credentials;", "", "", "username", "password", "Ljava/nio/charset/Charset;", "charset", "basic", "(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class Credentials {

    @NotNull
    public static final Credentials INSTANCE = new Object();

    @JvmStatic
    @JvmOverloads
    @NotNull
    public static final String basic(@NotNull String username, @NotNull String password) {
        Intrinsics.checkNotNullParameter(username, "username");
        Intrinsics.checkNotNullParameter(password, "password");
        return basic$default(username, password, null, 4, null);
    }

    public static /* synthetic */ String basic$default(String str, String str2, Charset charset, int i, Object obj) {
        if ((i & 4) != 0) {
            charset = Charsets.ISO_8859_1;
        }
        return basic(str, str2, charset);
    }

    @JvmStatic
    @JvmOverloads
    @NotNull
    public static final String basic(@NotNull String username, @NotNull String password, @NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(username, "username");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(charset, "charset");
        return AbstractC0362x4440ab85.m2952x5ac5058d("Basic ", ByteString.INSTANCE.encodeString(username + ':' + password, charset).base64());
    }
}
