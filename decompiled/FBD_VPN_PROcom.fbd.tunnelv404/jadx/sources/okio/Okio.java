package okio;

import defpackage.AbstractC0720xaa9ccb5a;
import defpackage.AbstractC1007x6c2349d5;
import defpackage.C0887x5654f8f8;
import defpackage.C1016x6f7814b4;
import defpackage.C1159xdea9bec;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.file.OpenOption;
import java.security.MessageDigest;
import java.util.logging.Logger;
import javax.crypto.Cipher;
import javax.crypto.Mac;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import okio.internal.ResourceFileSystem;
import okio.internal.ZipFilesKt;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"딤딅딻듽듻땋됨딨돨돶땅땦듰듰딁됴땪딽땜듬딄둬땋땥둑두든땐뒨돵딟뒵딃땦땝딤딠듼듔땹돳땃뒼뒐땮땯딜둥딞땨뎸뒀딻땲땬듸뒵뒉뒈돠뒘됫둠딄둔땀뒬두뒋땨돶뒵듟돠딄두됴뒾땝땅땳됐뎰디땮둡땨뒵딀듸땥됩뎻딃둘뒬듸딠듰뒬딟딜뒋듽딐땨돷됫뒀땸뒻땦땔딃딠도딝뒘땭딨뒐딃돛땦돨돸뒐땀땹딤"}, d2 = {}, k = 4, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class Okio {
    @NotNull
    public static final Sink appendingSink(@NotNull File file) {
        Logger logger = AbstractC1007x6c2349d5.f5199xfbe0c504;
        Intrinsics.checkNotNullParameter(file, "<this>");
        return sink(new FileOutputStream(file, true));
    }

    @NotNull
    public static final FileSystem asResourceFileSystem(@NotNull ClassLoader classLoader) {
        Logger logger = AbstractC1007x6c2349d5.f5199xfbe0c504;
        Intrinsics.checkNotNullParameter(classLoader, "<this>");
        return new ResourceFileSystem(classLoader, true, null, 4, null);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, okio.Sink] */
    @JvmName(name = "blackhole")
    @NotNull
    public static final Sink blackhole() {
        return new Object();
    }

    @NotNull
    public static final BufferedSink buffer(@NotNull Sink sink) {
        Intrinsics.checkNotNullParameter(sink, "<this>");
        return new RealBufferedSink(sink);
    }

    @NotNull
    public static final CipherSink cipherSink(@NotNull Sink sink, @NotNull Cipher cipher) {
        Logger logger = AbstractC1007x6c2349d5.f5199xfbe0c504;
        Intrinsics.checkNotNullParameter(sink, "<this>");
        Intrinsics.checkNotNullParameter(cipher, "cipher");
        return new CipherSink(buffer(sink), cipher);
    }

    @NotNull
    public static final CipherSource cipherSource(@NotNull Source source, @NotNull Cipher cipher) {
        Logger logger = AbstractC1007x6c2349d5.f5199xfbe0c504;
        Intrinsics.checkNotNullParameter(source, "<this>");
        Intrinsics.checkNotNullParameter(cipher, "cipher");
        return new CipherSource(buffer(source), cipher);
    }

    @NotNull
    public static final HashingSink hashingSink(@NotNull Sink sink, @NotNull MessageDigest digest) {
        Logger logger = AbstractC1007x6c2349d5.f5199xfbe0c504;
        Intrinsics.checkNotNullParameter(sink, "<this>");
        Intrinsics.checkNotNullParameter(digest, "digest");
        return new HashingSink(sink, digest);
    }

    @NotNull
    public static final HashingSource hashingSource(@NotNull Source source, @NotNull MessageDigest digest) {
        Logger logger = AbstractC1007x6c2349d5.f5199xfbe0c504;
        Intrinsics.checkNotNullParameter(source, "<this>");
        Intrinsics.checkNotNullParameter(digest, "digest");
        return new HashingSource(source, digest);
    }

    public static final boolean isAndroidGetsocknameError(@NotNull AssertionError assertionError) {
        boolean z;
        Logger logger = AbstractC1007x6c2349d5.f5199xfbe0c504;
        Intrinsics.checkNotNullParameter(assertionError, "<this>");
        if (assertionError.getCause() == null) {
            return false;
        }
        String message = assertionError.getMessage();
        if (message != null) {
            z = StringsKt__StringsKt.contains$default((CharSequence) message, (CharSequence) "getsockname failed", false, 2, (Object) null);
        } else {
            z = false;
        }
        if (!z) {
            return false;
        }
        return true;
    }

    @NotNull
    public static final FileSystem openZip(@NotNull FileSystem fileSystem, @NotNull Path zipPath) {
        Intrinsics.checkNotNullParameter(fileSystem, "<this>");
        Intrinsics.checkNotNullParameter(zipPath, "zipPath");
        return ZipFilesKt.openZip$default(zipPath, fileSystem, null, 4, null);
    }

    @JvmOverloads
    @NotNull
    public static final Sink sink(@NotNull File file) {
        Logger logger = AbstractC1007x6c2349d5.f5199xfbe0c504;
        Intrinsics.checkNotNullParameter(file, "<this>");
        return sink$default(file, false, 1, null);
    }

    public static /* synthetic */ Sink sink$default(File file, boolean z, int i, Object obj) {
        Logger logger = AbstractC1007x6c2349d5.f5199xfbe0c504;
        if ((i & 1) != 0) {
            z = false;
        }
        return sink(file, z);
    }

    @NotNull
    public static final Source source(@NotNull File file) {
        Logger logger = AbstractC1007x6c2349d5.f5199xfbe0c504;
        Intrinsics.checkNotNullParameter(file, "<this>");
        return new C0887x5654f8f8(new FileInputStream(file), Timeout.NONE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    public static final <T extends Closeable, R> R use(T t, @NotNull Function1<? super T, ? extends R> block) {
        ?? r4;
        Intrinsics.checkNotNullParameter(block, "block");
        R th = null;
        try {
            R invoke = block.invoke(t);
            InlineMarker.finallyStart(1);
            if (t != null) {
                try {
                    t.close();
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            InlineMarker.finallyEnd(1);
            R r = th;
            th = invoke;
            r4 = r;
        } catch (Throwable th3) {
            InlineMarker.finallyStart(1);
            if (t != null) {
                try {
                    t.close();
                } catch (Throwable th4) {
                    AbstractC0720xaa9ccb5a.addSuppressed(th3, th4);
                }
            }
            InlineMarker.finallyEnd(1);
            r4 = th3;
        }
        if (r4 == 0) {
            return th;
        }
        throw r4;
    }

    @NotNull
    public static final BufferedSource buffer(@NotNull Source source) {
        Intrinsics.checkNotNullParameter(source, "<this>");
        return new RealBufferedSource(source);
    }

    @JvmOverloads
    @NotNull
    public static final Sink sink(@NotNull File file, boolean z) {
        Logger logger = AbstractC1007x6c2349d5.f5199xfbe0c504;
        Intrinsics.checkNotNullParameter(file, "<this>");
        return sink(new FileOutputStream(file, z));
    }

    @NotNull
    public static final HashingSink hashingSink(@NotNull Sink sink, @NotNull Mac mac) {
        Logger logger = AbstractC1007x6c2349d5.f5199xfbe0c504;
        Intrinsics.checkNotNullParameter(sink, "<this>");
        Intrinsics.checkNotNullParameter(mac, "mac");
        return new HashingSink(sink, mac);
    }

    @NotNull
    public static final HashingSource hashingSource(@NotNull Source source, @NotNull Mac mac) {
        Logger logger = AbstractC1007x6c2349d5.f5199xfbe0c504;
        Intrinsics.checkNotNullParameter(source, "<this>");
        Intrinsics.checkNotNullParameter(mac, "mac");
        return new HashingSource(source, mac);
    }

    @NotNull
    public static final Source source(@NotNull InputStream inputStream) {
        Logger logger = AbstractC1007x6c2349d5.f5199xfbe0c504;
        Intrinsics.checkNotNullParameter(inputStream, "<this>");
        return new C0887x5654f8f8(inputStream, new Timeout());
    }

    @NotNull
    public static final Sink sink(@NotNull OutputStream outputStream) {
        Logger logger = AbstractC1007x6c2349d5.f5199xfbe0c504;
        Intrinsics.checkNotNullParameter(outputStream, "<this>");
        return new C1016x6f7814b4(outputStream, new Timeout());
    }

    @NotNull
    public static final Source source(@NotNull Socket socket) {
        Logger logger = AbstractC1007x6c2349d5.f5199xfbe0c504;
        Intrinsics.checkNotNullParameter(socket, "<this>");
        C1159xdea9bec c1159xdea9bec = new C1159xdea9bec(socket);
        InputStream inputStream = socket.getInputStream();
        Intrinsics.checkNotNullExpressionValue(inputStream, "getInputStream(...)");
        return c1159xdea9bec.source(new C0887x5654f8f8(inputStream, c1159xdea9bec));
    }

    @NotNull
    public static final Sink sink(@NotNull Socket socket) {
        Logger logger = AbstractC1007x6c2349d5.f5199xfbe0c504;
        Intrinsics.checkNotNullParameter(socket, "<this>");
        C1159xdea9bec c1159xdea9bec = new C1159xdea9bec(socket);
        OutputStream outputStream = socket.getOutputStream();
        Intrinsics.checkNotNullExpressionValue(outputStream, "getOutputStream(...)");
        return c1159xdea9bec.sink(new C1016x6f7814b4(outputStream, c1159xdea9bec));
    }

    @NotNull
    public static final Source source(@NotNull java.nio.file.Path path, @NotNull OpenOption... openOptionArr) {
        return AbstractC1007x6c2349d5.m3592x3271d0aa(path, openOptionArr);
    }

    @NotNull
    public static final Sink sink(@NotNull java.nio.file.Path path, @NotNull OpenOption... openOptionArr) {
        return AbstractC1007x6c2349d5.m3591xfbe0c504(path, openOptionArr);
    }
}
