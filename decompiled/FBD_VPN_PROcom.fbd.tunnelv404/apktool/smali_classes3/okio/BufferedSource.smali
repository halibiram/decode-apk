.class public interface abstract Lokio/BufferedSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Source;
.implements Ljava/nio/channels/ReadableByteChannel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\n\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008v\u0018\u00002\u00020\u00012\u00020\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\'J\u0008\u0010\u0007\u001a\u00020\u0008H&J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH&J\u0010\u0010\r\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000cH&J\u0008\u0010\u000e\u001a\u00020\u000fH&J\u0008\u0010\u0010\u001a\u00020\u0011H&J\u0008\u0010\u0012\u001a\u00020\u0011H&J\u0008\u0010\u0013\u001a\u00020\u0014H&J\u0008\u0010\u0015\u001a\u00020\u0014H&J\u0008\u0010\u0016\u001a\u00020\u000cH&J\u0008\u0010\u0017\u001a\u00020\u000cH&J\u0008\u0010\u0018\u001a\u00020\u000cH&J\u0008\u0010\u0019\u001a\u00020\u000cH&J\u0010\u0010\u001a\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH&J\u0008\u0010\u001b\u001a\u00020\u001cH&J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u000b\u001a\u00020\u000cH&J\u0010\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u001fH&J\'\u0010\u001d\u001a\u0004\u0018\u0001H \"\u0008\u0008\u0000\u0010 *\u00020!2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u0002H 0\"H&\u00a2\u0006\u0002\u0010#J\u0008\u0010$\u001a\u00020%H&J\u0010\u0010$\u001a\u00020%2\u0006\u0010\u000b\u001a\u00020\u000cH&J\u0010\u0010&\u001a\u00020\u00142\u0006\u0010\'\u001a\u00020%H&J\u0010\u0010(\u001a\u00020\n2\u0006\u0010\'\u001a\u00020%H&J \u0010&\u001a\u00020\u00142\u0006\u0010\'\u001a\u00020%2\u0006\u0010)\u001a\u00020\u00142\u0006\u0010\u000b\u001a\u00020\u0014H&J\u0018\u0010(\u001a\u00020\n2\u0006\u0010\'\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000cH&J\u0010\u0010*\u001a\u00020\u000c2\u0006\u0010\'\u001a\u00020+H&J\u0008\u0010,\u001a\u00020-H&J\u0010\u0010,\u001a\u00020-2\u0006\u0010\u000b\u001a\u00020\u000cH&J\n\u0010.\u001a\u0004\u0018\u00010-H&J\u0008\u0010/\u001a\u00020-H&J\u0010\u0010/\u001a\u00020-2\u0006\u00100\u001a\u00020\u000cH&J\u0008\u00101\u001a\u00020\u0014H&J\u0010\u00102\u001a\u00020-2\u0006\u00103\u001a\u000204H&J\u0018\u00102\u001a\u00020-2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u00103\u001a\u000204H&J\u0010\u00105\u001a\u00020\u000c2\u0006\u00106\u001a\u00020\u000fH&J\u0018\u00105\u001a\u00020\u000c2\u0006\u00106\u001a\u00020\u000f2\u0006\u00107\u001a\u00020\u000cH&J \u00105\u001a\u00020\u000c2\u0006\u00106\u001a\u00020\u000f2\u0006\u00107\u001a\u00020\u000c2\u0006\u00108\u001a\u00020\u000cH&J\u0010\u00105\u001a\u00020\u000c2\u0006\u00109\u001a\u00020\u001cH&J\u0018\u00105\u001a\u00020\u000c2\u0006\u00109\u001a\u00020\u001c2\u0006\u00107\u001a\u00020\u000cH&J\u0010\u0010:\u001a\u00020\u000c2\u0006\u0010;\u001a\u00020\u001cH&J\u0018\u0010:\u001a\u00020\u000c2\u0006\u0010;\u001a\u00020\u001c2\u0006\u00107\u001a\u00020\u000cH&J\u0018\u0010<\u001a\u00020\u00082\u0006\u0010)\u001a\u00020\u000c2\u0006\u00109\u001a\u00020\u001cH&J(\u0010<\u001a\u00020\u00082\u0006\u0010)\u001a\u00020\u000c2\u0006\u00109\u001a\u00020\u001c2\u0006\u0010=\u001a\u00020\u00142\u0006\u0010\u000b\u001a\u00020\u0014H&J\u0008\u0010>\u001a\u00020\u0000H&J\u0008\u0010?\u001a\u00020@H&R\u0012\u0010\u0003\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0001\u0002\u0004A\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006B\u00c0\u0006\u0001"
    }
    d2 = {
        "Lokio/BufferedSource;",
        "Lokio/Source;",
        "Ljava/nio/channels/ReadableByteChannel;",
        "buffer",
        "Lokio/Buffer;",
        "getBuffer",
        "()Lokio/Buffer;",
        "exhausted",
        "",
        "require",
        "",
        "byteCount",
        "",
        "request",
        "readByte",
        "",
        "readShort",
        "",
        "readShortLe",
        "readInt",
        "",
        "readIntLe",
        "readLong",
        "readLongLe",
        "readDecimalLong",
        "readHexadecimalUnsignedLong",
        "skip",
        "readByteString",
        "Lokio/ByteString;",
        "select",
        "options",
        "Lokio/Options;",
        "T",
        "",
        "Lokio/TypedOptions;",
        "(Lokio/TypedOptions;)Ljava/lang/Object;",
        "readByteArray",
        "",
        "read",
        "sink",
        "readFully",
        "offset",
        "readAll",
        "Lokio/Sink;",
        "readUtf8",
        "",
        "readUtf8Line",
        "readUtf8LineStrict",
        "limit",
        "readUtf8CodePoint",
        "readString",
        "charset",
        "Ljava/nio/charset/Charset;",
        "indexOf",
        "b",
        "fromIndex",
        "toIndex",
        "bytes",
        "indexOfElement",
        "targetBytes",
        "rangeEquals",
        "bytesOffset",
        "peek",
        "inputStream",
        "Ljava/io/InputStream;",
        "Lokio/RealBufferedSource;",
        "okio"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract buffer()Lokio/Buffer;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "moved to val: use getBuffer() instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "buffer"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract exhausted()Z
.end method

.method public abstract getBuffer()Lokio/Buffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract indexOf(B)J
.end method

.method public abstract indexOf(BJ)J
.end method

.method public abstract indexOf(BJJ)J
.end method

.method public abstract indexOf(Lokio/ByteString;)J
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract indexOf(Lokio/ByteString;J)J
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract indexOfElement(Lokio/ByteString;)J
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract indexOfElement(Lokio/ByteString;J)J
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract inputStream()Ljava/io/InputStream;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract peek()Lokio/BufferedSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract rangeEquals(JLokio/ByteString;)Z
    .param p3    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract rangeEquals(JLokio/ByteString;II)Z
    .param p3    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract read([B)I
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract read([BII)I
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract readAll(Lokio/Sink;)J
    .param p1    # Lokio/Sink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract readByte()B
.end method

.method public abstract readByteArray()[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract readByteArray(J)[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract readByteString()Lokio/ByteString;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract readByteString(J)Lokio/ByteString;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract readDecimalLong()J
.end method

.method public abstract readFully(Lokio/Buffer;J)V
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract readFully([B)V
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract readHexadecimalUnsignedLong()J
.end method

.method public abstract readInt()I
.end method

.method public abstract readIntLe()I
.end method

.method public abstract readLong()J
.end method

.method public abstract readLongLe()J
.end method

.method public abstract readShort()S
.end method

.method public abstract readShortLe()S
.end method

.method public abstract readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .param p3    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .param p1    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract readUtf8()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract readUtf8(J)Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract readUtf8CodePoint()I
.end method

.method public abstract readUtf8Line()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract readUtf8LineStrict()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract readUtf8LineStrict(J)Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract request(J)Z
.end method

.method public abstract require(J)V
.end method

.method public abstract select(Lokio/Options;)I
    .param p1    # Lokio/Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract select(Lokio/TypedOptions;)Ljava/lang/Object;
    .param p1    # Lokio/TypedOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokio/TypedOptions<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract skip(J)V
.end method
