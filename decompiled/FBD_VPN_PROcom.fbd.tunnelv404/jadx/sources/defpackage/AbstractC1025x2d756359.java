package defpackage;

import java.io.InputStreamReader;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.util.Arrays;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.io.path.ExperimentalPathApi;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;

/* renamed from: 따딨땋듐뒬뒝뎸딜돴뒋돰둣도듻땮드뒝뒀땩듼땸땻들뒈땲둔딐뒼듬뒷든딀됫땠땭뒘되딃돤듟땪듨뎬땯듬돤됩땝땬딻두뒉디딝딽땍듌딄땭땁딄딌듌뒬땩듻뒼도드도뒐땫됨뒀땲땨뎸딄듻뒝땹듻땬딄땧딞딌됫딁듟뒬땅땸돨뒙딜돰듸뎠땹둠땟뎽둠듐둣될뒈돶뒋듌딠둔뎻뒬땍뒈듐딄땻뒋됴됩뒝딟딤땰됨딅딤, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC1025x2d756359 {
    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    public static final void appendText(@NotNull Path path, @NotNull CharSequence text, @NotNull Charset charset) {
        StandardOpenOption standardOpenOption;
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(charset, "charset");
        standardOpenOption = StandardOpenOption.APPEND;
        writeText(path, text, charset, standardOpenOption);
    }

    public static /* synthetic */ void appendText$default(Path path, CharSequence charSequence, Charset charset, int i, Object obj) {
        if ((i & 2) != 0) {
            charset = Charsets.UTF_8;
        }
        appendText(path, charSequence, charset);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    @NotNull
    public static final String readText(@NotNull Path path, @NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(charset, "charset");
        InputStreamReader inputStreamReader = new InputStreamReader(Files.newInputStream(path, (OpenOption[]) Arrays.copyOf(new OpenOption[0], 0)), charset);
        try {
            String readText = TextStreamsKt.readText(inputStreamReader);
            CloseableKt.closeFinally(inputStreamReader, null);
            return readText;
        } finally {
        }
    }

    public static /* synthetic */ String readText$default(Path path, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return readText(path, charset);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalPathApi.class})
    public static final void writeText(@NotNull Path path, @NotNull CharSequence text, @NotNull Charset charset, @NotNull OpenOption... options) {
        CharBuffer wrap;
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(charset, "charset");
        Intrinsics.checkNotNullParameter(options, "options");
        OutputStream newOutputStream = Files.newOutputStream(path, (OpenOption[]) Arrays.copyOf(options, options.length));
        try {
            if (text instanceof String) {
                Intrinsics.checkNotNull(newOutputStream);
                AbstractC0741xc99a73a4.writeTextImpl(newOutputStream, (String) text, charset);
            } else {
                CharsetEncoder newReplaceEncoder = AbstractC0741xc99a73a4.newReplaceEncoder(charset);
                if (text instanceof CharBuffer) {
                    wrap = ((CharBuffer) text).asReadOnlyBuffer();
                } else {
                    wrap = CharBuffer.wrap(text);
                }
                int min = Math.min(text.length(), 8192);
                Intrinsics.checkNotNull(newReplaceEncoder);
                ByteBuffer byteBufferForEncoding = AbstractC0741xc99a73a4.byteBufferForEncoding(min, newReplaceEncoder);
                while (wrap.hasRemaining()) {
                    if (!newReplaceEncoder.encode(wrap, byteBufferForEncoding, true).isError()) {
                        newOutputStream.write(byteBufferForEncoding.array(), 0, byteBufferForEncoding.position());
                        byteBufferForEncoding.clear();
                    } else {
                        throw new IllegalStateException("Check failed.");
                    }
                }
            }
            CloseableKt.closeFinally(newOutputStream, null);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(newOutputStream, th);
                throw th2;
            }
        }
    }

    public static /* synthetic */ void writeText$default(Path path, CharSequence charSequence, Charset charset, OpenOption[] openOptionArr, int i, Object obj) {
        if ((i & 2) != 0) {
            charset = Charsets.UTF_8;
        }
        writeText(path, charSequence, charset, openOptionArr);
    }
}
