.class public final Lokhttp3/internal/JvmHttpUrl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u00c0\u0002\u0018\u00002\u00020\u0001J]\u0010\u0013\u001a\u00020\u0010*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0000\u00a2\u0006\u0004\u0008\u0011\u0010\u0012Jc\u0010\u0016\u001a\u00020\u0003*\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\t2\u0008\u0008\u0002\u0010\r\u001a\u00020\t2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0000\u00a2\u0006\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0017"
    }
    d2 = {
        "Lokhttp3/internal/JvmHttpUrl;",
        "",
        "Lokio/Buffer;",
        "",
        "input",
        "",
        "pos",
        "limit",
        "encodeSet",
        "",
        "alreadyEncoded",
        "strict",
        "plusIsSpace",
        "unicodeAllowed",
        "Ljava/nio/charset/Charset;",
        "charset",
        "",
        "writeCanonicalized$okhttp",
        "(Lokio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)V",
        "writeCanonicalized",
        "canonicalizeWithCharset$okhttp",
        "(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;",
        "canonicalizeWithCharset",
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
.field public static final INSTANCE:Lokhttp3/internal/JvmHttpUrl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/internal/JvmHttpUrl;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lokhttp3/internal/JvmHttpUrl;->INSTANCE:Lokhttp3/internal/JvmHttpUrl;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic canonicalizeWithCharset$okhttp$default(Lokhttp3/internal/JvmHttpUrl;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;
    .locals 13

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move v5, p2

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    move v6, v1

    goto :goto_1

    :cond_1
    move/from16 v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    move/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    const/4 v9, 0x0

    goto :goto_3

    :cond_3
    move/from16 v9, p6

    :goto_3
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    const/4 v10, 0x0

    goto :goto_4

    :cond_4
    move/from16 v10, p7

    :goto_4
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_5

    const/4 v11, 0x0

    goto :goto_5

    :cond_5
    move/from16 v11, p8

    :goto_5
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    move-object v12, v0

    goto :goto_6

    :cond_6
    move-object/from16 v12, p9

    :goto_6
    move-object v3, p0

    move-object v4, p1

    move-object/from16 v7, p4

    .line 2
    invoke-virtual/range {v3 .. v12}, Lokhttp3/internal/JvmHttpUrl;->canonicalizeWithCharset$okhttp(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final canonicalizeWithCharset$okhttp(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object v2, p1

    .line 2
    move v4, p3

    .line 3
    move-object/from16 v5, p4

    .line 4
    .line 5
    const-string v0, "<this>"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "encodeSet"

    .line 11
    .line 12
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    move v3, p2

    .line 16
    :goto_0
    if-ge v3, v4, :cond_4

    .line 17
    .line 18
    invoke-virtual {p1, v3}, Ljava/lang/String;->codePointAt(I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/16 v1, 0x20

    .line 23
    .line 24
    if-lt v0, v1, :cond_3

    .line 25
    .line 26
    const/16 v1, 0x7f

    .line 27
    .line 28
    if-eq v0, v1, :cond_3

    .line 29
    .line 30
    const/16 v1, 0x80

    .line 31
    .line 32
    if-lt v0, v1, :cond_0

    .line 33
    .line 34
    if-eqz p8, :cond_3

    .line 35
    .line 36
    :cond_0
    int-to-char v1, v0

    .line 37
    const/4 v6, 0x2

    .line 38
    const/4 v7, 0x0

    .line 39
    const/4 v8, 0x0

    .line 40
    invoke-static {v5, v1, v8, v6, v7}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_3

    .line 45
    .line 46
    const/16 v1, 0x25

    .line 47
    .line 48
    if-ne v0, v1, :cond_1

    .line 49
    .line 50
    if-eqz p5, :cond_3

    .line 51
    .line 52
    if-eqz p6, :cond_1

    .line 53
    .line 54
    sget-object v1, Lokhttp3/internal/CommonHttpUrl;->INSTANCE:Lokhttp3/internal/CommonHttpUrl;

    .line 55
    .line 56
    invoke-virtual {v1, p1, v3, p3}, Lokhttp3/internal/CommonHttpUrl;->isPercentEncoded$okhttp(Ljava/lang/String;II)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    :cond_1
    const/16 v1, 0x2b

    .line 63
    .line 64
    if-ne v0, v1, :cond_2

    .line 65
    .line 66
    if-eqz p7, :cond_2

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    add-int/2addr v3, v0

    .line 74
    goto :goto_0

    .line 75
    :cond_3
    :goto_1
    new-instance v11, Lokio/Buffer;

    .line 76
    .line 77
    invoke-direct {v11}, Lokio/Buffer;-><init>()V

    .line 78
    .line 79
    .line 80
    move v0, p2

    .line 81
    invoke-virtual {v11, p1, p2, v3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    .line 82
    .line 83
    .line 84
    move-object v0, p0

    .line 85
    move-object v1, v11

    .line 86
    move-object v2, p1

    .line 87
    move v4, p3

    .line 88
    move-object/from16 v5, p4

    .line 89
    .line 90
    move/from16 v6, p5

    .line 91
    .line 92
    move/from16 v7, p6

    .line 93
    .line 94
    move/from16 v8, p7

    .line 95
    .line 96
    move/from16 v9, p8

    .line 97
    .line 98
    move-object/from16 v10, p9

    .line 99
    .line 100
    invoke-virtual/range {v0 .. v10}, Lokhttp3/internal/JvmHttpUrl;->writeCanonicalized$okhttp(Lokio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v11}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    return-object v0

    .line 108
    :cond_4
    move v0, p2

    .line 109
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const-string v1, "substring(...)"

    .line 114
    .line 115
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return-object v0
.end method

.method public final writeCanonicalized$okhttp(Lokio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)V
    .locals 14
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p10

    const-string v5, "<this>"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "input"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "encodeSet"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    move/from16 v6, p3

    move-object v7, v5

    :goto_0
    if-ge v6, v2, :cond_b

    .line 1
    invoke-virtual {v1, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    if-eqz p6, :cond_0

    const/16 v9, 0x9

    if-eq v8, v9, :cond_a

    const/16 v9, 0xa

    if-eq v8, v9, :cond_a

    const/16 v9, 0xc

    if-eq v8, v9, :cond_a

    const/16 v9, 0xd

    if-ne v8, v9, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    const-string v9, "+"

    const/16 v10, 0x20

    if-ne v8, v10, :cond_1

    const-string v11, " !\"#$&\'()+,/:;<=>?@[\\]^`{|}~"

    if-ne v3, v11, :cond_1

    .line 3
    invoke-virtual {p1, v9}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    goto/16 :goto_5

    :cond_1
    const/16 v11, 0x2b

    if-ne v8, v11, :cond_3

    if-eqz p8, :cond_3

    if-eqz p6, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    const-string v9, "%2B"

    :goto_1
    invoke-virtual {p1, v9}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    goto/16 :goto_5

    :cond_3
    const/16 v9, 0x25

    if-lt v8, v10, :cond_6

    const/16 v10, 0x7f

    if-eq v8, v10, :cond_6

    const/16 v10, 0x80

    if-lt v8, v10, :cond_4

    if-eqz p9, :cond_6

    :cond_4
    int-to-char v10, v8

    const/4 v11, 0x0

    const/4 v12, 0x2

    .line 5
    invoke-static {v3, v10, v11, v12, v5}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    if-ne v8, v9, :cond_5

    if-eqz p6, :cond_6

    if-eqz p7, :cond_5

    .line 6
    sget-object v10, Lokhttp3/internal/CommonHttpUrl;->INSTANCE:Lokhttp3/internal/CommonHttpUrl;

    invoke-virtual {v10, v1, v6, v2}, Lokhttp3/internal/CommonHttpUrl;->isPercentEncoded$okhttp(Ljava/lang/String;II)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_2

    .line 7
    :cond_5
    invoke-virtual {p1, v8}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    goto :goto_5

    :cond_6
    :goto_2
    if-nez v7, :cond_7

    .line 8
    new-instance v7, Lokio/Buffer;

    invoke-direct {v7}, Lokio/Buffer;-><init>()V

    :cond_7
    if-eqz v4, :cond_9

    .line 9
    sget-object v10, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_3

    .line 10
    :cond_8
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    add-int/2addr v10, v6

    invoke-virtual {v7, v1, v6, v10, v4}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    goto :goto_4

    .line 11
    :cond_9
    :goto_3
    invoke-virtual {v7, v8}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    .line 12
    :goto_4
    invoke-virtual {v7}, Lokio/Buffer;->exhausted()Z

    move-result v10

    if-nez v10, :cond_a

    .line 13
    invoke-virtual {v7}, Lokio/Buffer;->readByte()B

    move-result v10

    and-int/lit16 v11, v10, 0xff

    .line 14
    invoke-virtual {p1, v9}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 15
    sget-object v12, Lokhttp3/internal/CommonHttpUrl;->INSTANCE:Lokhttp3/internal/CommonHttpUrl;

    invoke-virtual {v12}, Lokhttp3/internal/CommonHttpUrl;->getHEX_DIGITS$okhttp()[C

    move-result-object v13

    shr-int/lit8 v11, v11, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-char v11, v13, v11

    invoke-virtual {p1, v11}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 16
    invoke-virtual {v12}, Lokhttp3/internal/CommonHttpUrl;->getHEX_DIGITS$okhttp()[C

    move-result-object v11

    and-int/lit8 v10, v10, 0xf

    aget-char v10, v11, v10

    invoke-virtual {p1, v10}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_4

    .line 17
    :cond_a
    :goto_5
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int/2addr v6, v8

    goto/16 :goto_0

    :cond_b
    return-void
.end method
