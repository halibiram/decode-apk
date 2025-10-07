package okio;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.OutputStream;
import java.nio.channels.WritableByteChannel;
import java.nio.charset.Charset;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u00012\u00020\u0002J\b\u0010\u0003\u001a\u00020\u0004H'J\u0010\u0010\u0007\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tH&J \u0010\u0007\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH&J\u0010\u0010\u0007\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eH&J \u0010\u0007\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH&J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u0011H&J\u0018\u0010\u0007\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u00112\u0006\u0010\f\u001a\u00020\u0010H&J\u0010\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0014H&J \u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u000bH&J\u0010\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u000bH&J\u0018\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u001bH&J(\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u001bH&J\u0010\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u000bH&J\u0010\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u000bH&J\u0010\u0010 \u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u000bH&J\u0010\u0010!\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020\u000bH&J\u0010\u0010#\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020\u000bH&J\u0010\u0010$\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\u0010H&J\u0010\u0010&\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\u0010H&J\u0010\u0010'\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\u0010H&J\u0010\u0010(\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\u0010H&J\b\u0010)\u001a\u00020*H&J\b\u0010+\u001a\u00020\u0000H&J\b\u0010,\u001a\u00020\u0000H&J\b\u0010-\u001a\u00020.H&R\u0012\u0010\u0003\u001a\u00020\u0004X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006\u0082\u0001\u0002\u0004/ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u00060À\u0006\u0001"}, d2 = {"Lokio/BufferedSink;", "Lokio/Sink;", "Ljava/nio/channels/WritableByteChannel;", "buffer", "Lokio/Buffer;", "getBuffer", "()Lokio/Buffer;", "write", "byteString", "Lokio/ByteString;", TypedValues.CycleType.S_WAVE_OFFSET, "", "byteCount", "source", "", "writeAll", "", "Lokio/Source;", "writeUtf8", TypedValues.Custom.S_STRING, "", "beginIndex", "endIndex", "writeUtf8CodePoint", "codePoint", "writeString", "charset", "Ljava/nio/charset/Charset;", "writeByte", "b", "writeShort", "s", "writeShortLe", "writeInt", "i", "writeIntLe", "writeLong", "v", "writeLongLe", "writeDecimalLong", "writeHexadecimalUnsignedLong", "flush", "", "emit", "emitCompleteSegments", "outputStream", "Ljava/io/OutputStream;", "Lokio/RealBufferedSink;", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public interface BufferedSink extends Sink, WritableByteChannel {
    @Deprecated(level = DeprecationLevel.WARNING, message = "moved to val: use getBuffer() instead", replaceWith = @ReplaceWith(expression = "buffer", imports = {}))
    @NotNull
    /* renamed from: buffer */
    Buffer getBufferField();

    @NotNull
    BufferedSink emit();

    @NotNull
    BufferedSink emitCompleteSegments();

    @Override // okio.Sink, java.io.Flushable
    void flush();

    @NotNull
    Buffer getBuffer();

    @NotNull
    OutputStream outputStream();

    @NotNull
    BufferedSink write(@NotNull ByteString byteString);

    @NotNull
    BufferedSink write(@NotNull ByteString byteString, int offset, int byteCount);

    @NotNull
    BufferedSink write(@NotNull Source source, long byteCount);

    @NotNull
    BufferedSink write(@NotNull byte[] source);

    @NotNull
    BufferedSink write(@NotNull byte[] source, int offset, int byteCount);

    long writeAll(@NotNull Source source);

    @NotNull
    BufferedSink writeByte(int b);

    @NotNull
    BufferedSink writeDecimalLong(long v);

    @NotNull
    BufferedSink writeHexadecimalUnsignedLong(long v);

    @NotNull
    BufferedSink writeInt(int i);

    @NotNull
    BufferedSink writeIntLe(int i);

    @NotNull
    BufferedSink writeLong(long v);

    @NotNull
    BufferedSink writeLongLe(long v);

    @NotNull
    BufferedSink writeShort(int s);

    @NotNull
    BufferedSink writeShortLe(int s);

    @NotNull
    BufferedSink writeString(@NotNull String string, int beginIndex, int endIndex, @NotNull Charset charset);

    @NotNull
    BufferedSink writeString(@NotNull String string, @NotNull Charset charset);

    @NotNull
    BufferedSink writeUtf8(@NotNull String string);

    @NotNull
    BufferedSink writeUtf8(@NotNull String string, int beginIndex, int endIndex);

    @NotNull
    BufferedSink writeUtf8CodePoint(int codePoint);
}
