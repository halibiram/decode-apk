package okio;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u00012\u00020\u0002J\b\u0010\u0003\u001a\u00020\u0004H'J\b\u0010\u0007\u001a\u00020\bH&J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH&J\u0010\u0010\r\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\fH&J\b\u0010\u000e\u001a\u00020\u000fH&J\b\u0010\u0010\u001a\u00020\u0011H&J\b\u0010\u0012\u001a\u00020\u0011H&J\b\u0010\u0013\u001a\u00020\u0014H&J\b\u0010\u0015\u001a\u00020\u0014H&J\b\u0010\u0016\u001a\u00020\fH&J\b\u0010\u0017\u001a\u00020\fH&J\b\u0010\u0018\u001a\u00020\fH&J\b\u0010\u0019\u001a\u00020\fH&J\u0010\u0010\u001a\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH&J\b\u0010\u001b\u001a\u00020\u001cH&J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u000b\u001a\u00020\fH&J\u0010\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u001fH&J'\u0010\u001d\u001a\u0004\u0018\u0001H \"\b\b\u0000\u0010 *\u00020!2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H 0\"H&¢\u0006\u0002\u0010#J\b\u0010$\u001a\u00020%H&J\u0010\u0010$\u001a\u00020%2\u0006\u0010\u000b\u001a\u00020\fH&J\u0010\u0010&\u001a\u00020\u00142\u0006\u0010'\u001a\u00020%H&J\u0010\u0010(\u001a\u00020\n2\u0006\u0010'\u001a\u00020%H&J \u0010&\u001a\u00020\u00142\u0006\u0010'\u001a\u00020%2\u0006\u0010)\u001a\u00020\u00142\u0006\u0010\u000b\u001a\u00020\u0014H&J\u0018\u0010(\u001a\u00020\n2\u0006\u0010'\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\fH&J\u0010\u0010*\u001a\u00020\f2\u0006\u0010'\u001a\u00020+H&J\b\u0010,\u001a\u00020-H&J\u0010\u0010,\u001a\u00020-2\u0006\u0010\u000b\u001a\u00020\fH&J\n\u0010.\u001a\u0004\u0018\u00010-H&J\b\u0010/\u001a\u00020-H&J\u0010\u0010/\u001a\u00020-2\u0006\u00100\u001a\u00020\fH&J\b\u00101\u001a\u00020\u0014H&J\u0010\u00102\u001a\u00020-2\u0006\u00103\u001a\u000204H&J\u0018\u00102\u001a\u00020-2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u00103\u001a\u000204H&J\u0010\u00105\u001a\u00020\f2\u0006\u00106\u001a\u00020\u000fH&J\u0018\u00105\u001a\u00020\f2\u0006\u00106\u001a\u00020\u000f2\u0006\u00107\u001a\u00020\fH&J \u00105\u001a\u00020\f2\u0006\u00106\u001a\u00020\u000f2\u0006\u00107\u001a\u00020\f2\u0006\u00108\u001a\u00020\fH&J\u0010\u00105\u001a\u00020\f2\u0006\u00109\u001a\u00020\u001cH&J\u0018\u00105\u001a\u00020\f2\u0006\u00109\u001a\u00020\u001c2\u0006\u00107\u001a\u00020\fH&J\u0010\u0010:\u001a\u00020\f2\u0006\u0010;\u001a\u00020\u001cH&J\u0018\u0010:\u001a\u00020\f2\u0006\u0010;\u001a\u00020\u001c2\u0006\u00107\u001a\u00020\fH&J\u0018\u0010<\u001a\u00020\b2\u0006\u0010)\u001a\u00020\f2\u0006\u00109\u001a\u00020\u001cH&J(\u0010<\u001a\u00020\b2\u0006\u0010)\u001a\u00020\f2\u0006\u00109\u001a\u00020\u001c2\u0006\u0010=\u001a\u00020\u00142\u0006\u0010\u000b\u001a\u00020\u0014H&J\b\u0010>\u001a\u00020\u0000H&J\b\u0010?\u001a\u00020@H&R\u0012\u0010\u0003\u001a\u00020\u0004X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006\u0082\u0001\u0002\u0004Aø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006BÀ\u0006\u0001"}, d2 = {"Lokio/BufferedSource;", "Lokio/Source;", "Ljava/nio/channels/ReadableByteChannel;", "buffer", "Lokio/Buffer;", "getBuffer", "()Lokio/Buffer;", "exhausted", "", "require", "", "byteCount", "", "request", "readByte", "", "readShort", "", "readShortLe", "readInt", "", "readIntLe", "readLong", "readLongLe", "readDecimalLong", "readHexadecimalUnsignedLong", "skip", "readByteString", "Lokio/ByteString;", "select", "options", "Lokio/Options;", ExifInterface.GPS_DIRECTION_TRUE, "", "Lokio/TypedOptions;", "(Lokio/TypedOptions;)Ljava/lang/Object;", "readByteArray", "", "read", "sink", "readFully", TypedValues.CycleType.S_WAVE_OFFSET, "readAll", "Lokio/Sink;", "readUtf8", "", "readUtf8Line", "readUtf8LineStrict", "limit", "readUtf8CodePoint", "readString", "charset", "Ljava/nio/charset/Charset;", "indexOf", "b", "fromIndex", "toIndex", "bytes", "indexOfElement", "targetBytes", "rangeEquals", "bytesOffset", "peek", "inputStream", "Ljava/io/InputStream;", "Lokio/RealBufferedSource;", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public interface BufferedSource extends Source, ReadableByteChannel {
    @Deprecated(level = DeprecationLevel.WARNING, message = "moved to val: use getBuffer() instead", replaceWith = @ReplaceWith(expression = "buffer", imports = {}))
    @NotNull
    Buffer buffer();

    boolean exhausted();

    @NotNull
    Buffer getBuffer();

    long indexOf(byte b);

    long indexOf(byte b, long fromIndex);

    long indexOf(byte b, long fromIndex, long toIndex);

    long indexOf(@NotNull ByteString bytes);

    long indexOf(@NotNull ByteString bytes, long fromIndex);

    long indexOfElement(@NotNull ByteString targetBytes);

    long indexOfElement(@NotNull ByteString targetBytes, long fromIndex);

    @NotNull
    InputStream inputStream();

    @NotNull
    BufferedSource peek();

    boolean rangeEquals(long offset, @NotNull ByteString bytes);

    boolean rangeEquals(long offset, @NotNull ByteString bytes, int bytesOffset, int byteCount);

    int read(@NotNull byte[] sink);

    int read(@NotNull byte[] sink, int offset, int byteCount);

    long readAll(@NotNull Sink sink);

    byte readByte();

    @NotNull
    byte[] readByteArray();

    @NotNull
    byte[] readByteArray(long byteCount);

    @NotNull
    ByteString readByteString();

    @NotNull
    ByteString readByteString(long byteCount);

    long readDecimalLong();

    void readFully(@NotNull Buffer sink, long byteCount);

    void readFully(@NotNull byte[] sink);

    long readHexadecimalUnsignedLong();

    int readInt();

    int readIntLe();

    long readLong();

    long readLongLe();

    short readShort();

    short readShortLe();

    @NotNull
    String readString(long byteCount, @NotNull Charset charset);

    @NotNull
    String readString(@NotNull Charset charset);

    @NotNull
    String readUtf8();

    @NotNull
    String readUtf8(long byteCount);

    int readUtf8CodePoint();

    @Nullable
    String readUtf8Line();

    @NotNull
    String readUtf8LineStrict();

    @NotNull
    String readUtf8LineStrict(long limit);

    boolean request(long byteCount);

    void require(long byteCount);

    int select(@NotNull Options options);

    @Nullable
    <T> T select(@NotNull TypedOptions<T> options);

    void skip(long byteCount);
}
