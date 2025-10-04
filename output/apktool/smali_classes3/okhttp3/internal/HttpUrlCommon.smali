.class public final Lokhttp3/internal/HttpUrlCommon;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0008\u00c0\u0002\u0018\u00002\u00020\u0001J3\u0010\r\u001a\u00020\n*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0008H\u0000\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJW\u0010\u0014\u001a\u00020\u0003*\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0008H\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lokhttp3/internal/HttpUrlCommon;",
        "",
        "Lokio/Buffer;",
        "",
        "encoded",
        "",
        "pos",
        "limit",
        "",
        "plusIsSpace",
        "",
        "writePercentDecoded$okhttp",
        "(Lokio/Buffer;Ljava/lang/String;IIZ)V",
        "writePercentDecoded",
        "encodeSet",
        "alreadyEncoded",
        "strict",
        "unicodeAllowed",
        "canonicalize$okhttp",
        "(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;",
        "canonicalize",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lokhttp3/internal/HttpUrlCommon;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/internal/HttpUrlCommon;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lokhttp3/internal/HttpUrlCommon;->INSTANCE:Lokhttp3/internal/HttpUrlCommon;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic canonicalize$okhttp$default(Lokhttp3/internal/HttpUrlCommon;Ljava/lang/String;IILjava/lang/String;ZZZZILjava/lang/Object;)Ljava/lang/String;
    .locals 11

    .line 1
    and-int/lit8 v0, p9, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v4, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v4, p2

    .line 9
    :goto_0
    and-int/lit8 v0, p9, 0x2

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    move v5, v0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move v5, p3

    .line 20
    :goto_1
    and-int/lit8 v0, p9, 0x8

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    const/4 v7, 0x0

    .line 25
    goto :goto_2

    .line 26
    :cond_2
    move/from16 v7, p5

    .line 27
    .line 28
    :goto_2
    and-int/lit8 v0, p9, 0x10

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    const/4 v8, 0x0

    .line 33
    goto :goto_3

    .line 34
    :cond_3
    move/from16 v8, p6

    .line 35
    .line 36
    :goto_3
    and-int/lit8 v0, p9, 0x20

    .line 37
    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    const/4 v9, 0x0

    .line 41
    goto :goto_4

    .line 42
    :cond_4
    move/from16 v9, p7

    .line 43
    .line 44
    :goto_4
    and-int/lit8 v0, p9, 0x40

    .line 45
    .line 46
    if-eqz v0, :cond_5

    .line 47
    .line 48
    const/4 v10, 0x0

    .line 49
    goto :goto_5

    .line 50
    :cond_5
    move/from16 v10, p8

    .line 51
    .line 52
    :goto_5
    move-object v2, p0

    .line 53
    move-object v3, p1

    .line 54
    move-object v6, p4

    .line 55
    invoke-virtual/range {v2 .. v10}, Lokhttp3/internal/HttpUrlCommon;->canonicalize$okhttp(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    return-object v0
.end method


# virtual methods
.method public final canonicalize$okhttp(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    move-object v2, p1

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "encodeSet"

    .line 8
    .line 9
    move-object/from16 v5, p4

    .line 10
    .line 11
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object v1, Lokhttp3/internal/JvmHttpUrl;->INSTANCE:Lokhttp3/internal/JvmHttpUrl;

    .line 15
    .line 16
    const/16 v11, 0x80

    .line 17
    .line 18
    const/4 v12, 0x0

    .line 19
    const/4 v10, 0x0

    .line 20
    move v3, p2

    .line 21
    move/from16 v4, p3

    .line 22
    .line 23
    move/from16 v6, p5

    .line 24
    .line 25
    move/from16 v7, p6

    .line 26
    .line 27
    move/from16 v8, p7

    .line 28
    .line 29
    move/from16 v9, p8

    .line 30
    .line 31
    invoke-static/range {v1 .. v12}, Lokhttp3/internal/JvmHttpUrl;->canonicalizeWithCharset$okhttp$default(Lokhttp3/internal/JvmHttpUrl;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method public final writePercentDecoded$okhttp(Lokio/Buffer;Ljava/lang/String;IIZ)V
    .locals 5
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "encoded"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :goto_0
    if-ge p3, p4, :cond_2

    .line 12
    .line 13
    invoke-virtual {p2, p3}, Ljava/lang/String;->codePointAt(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v1, 0x25

    .line 18
    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    add-int/lit8 v1, p3, 0x2

    .line 22
    .line 23
    if-ge v1, p4, :cond_0

    .line 24
    .line 25
    add-int/lit8 v2, p3, 0x1

    .line 26
    .line 27
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-static {v2}, Lokhttp3/internal/_UtilCommonKt;->parseHexDigit(C)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-static {v3}, Lokhttp3/internal/_UtilCommonKt;->parseHexDigit(C)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    const/4 v4, -0x1

    .line 44
    if-eq v2, v4, :cond_1

    .line 45
    .line 46
    if-eq v3, v4, :cond_1

    .line 47
    .line 48
    shl-int/lit8 p3, v2, 0x4

    .line 49
    .line 50
    add-int/2addr p3, v3

    .line 51
    invoke-virtual {p1, p3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    add-int/2addr p3, v1

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const/16 v1, 0x2b

    .line 61
    .line 62
    if-ne v0, v1, :cond_1

    .line 63
    .line 64
    if-eqz p5, :cond_1

    .line 65
    .line 66
    const/16 v0, 0x20

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 69
    .line 70
    .line 71
    add-int/lit8 p3, p3, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p1, v0}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    add-int/2addr p3, v0

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    return-void
.end method
