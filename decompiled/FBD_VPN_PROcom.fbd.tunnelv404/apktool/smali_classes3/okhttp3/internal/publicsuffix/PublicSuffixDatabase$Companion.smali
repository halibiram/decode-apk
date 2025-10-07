.class public final Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000c\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001J\r\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0014\u0010\r\u001a\u00020\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0010\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;",
        "",
        "Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;",
        "get",
        "()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;",
        "",
        "EXCEPTION_MARKER",
        "C",
        "",
        "",
        "PREVAILING_RULE",
        "Ljava/util/List;",
        "Lokio/Path;",
        "PUBLIC_SUFFIX_RESOURCE",
        "Lokio/Path;",
        "",
        "WILDCARD_LABEL",
        "[B",
        "instance",
        "Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;",
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


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final access$binarySearch(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;[B[[BI)Ljava/lang/String;
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    array-length v2, v0

    .line 9
    const/4 v4, 0x0

    .line 10
    :goto_0
    if-ge v4, v2, :cond_b

    .line 11
    .line 12
    add-int v5, v4, v2

    .line 13
    .line 14
    div-int/lit8 v5, v5, 0x2

    .line 15
    .line 16
    :goto_1
    const/4 v6, -0x1

    .line 17
    const/16 v7, 0xa

    .line 18
    .line 19
    if-le v5, v6, :cond_0

    .line 20
    .line 21
    aget-byte v8, v0, v5

    .line 22
    .line 23
    if-eq v8, v7, :cond_0

    .line 24
    .line 25
    add-int/lit8 v5, v5, -0x1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 v8, v5, 0x1

    .line 29
    .line 30
    const/4 v9, 0x1

    .line 31
    const/4 v10, 0x1

    .line 32
    :goto_2
    add-int v11, v8, v10

    .line 33
    .line 34
    aget-byte v12, v0, v11

    .line 35
    .line 36
    if-eq v12, v7, :cond_1

    .line 37
    .line 38
    add-int/lit8 v10, v10, 0x1

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_1
    sub-int v7, v11, v8

    .line 42
    .line 43
    move/from16 v12, p3

    .line 44
    .line 45
    const/4 v10, 0x0

    .line 46
    const/4 v13, 0x0

    .line 47
    const/4 v14, 0x0

    .line 48
    :goto_3
    const/16 v15, 0xff

    .line 49
    .line 50
    if-eqz v10, :cond_2

    .line 51
    .line 52
    const/16 v10, 0x2e

    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    goto :goto_4

    .line 56
    :cond_2
    aget-object v16, v1, v12

    .line 57
    .line 58
    aget-byte v3, v16, v13

    .line 59
    .line 60
    invoke-static {v3, v15}, Lokhttp3/internal/_UtilCommonKt;->and(BI)I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    move/from16 v17, v10

    .line 65
    .line 66
    move v10, v3

    .line 67
    move/from16 v3, v17

    .line 68
    .line 69
    :goto_4
    add-int v16, v8, v14

    .line 70
    .line 71
    aget-byte v6, v0, v16

    .line 72
    .line 73
    invoke-static {v6, v15}, Lokhttp3/internal/_UtilCommonKt;->and(BI)I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    sub-int/2addr v10, v6

    .line 78
    if-nez v10, :cond_5

    .line 79
    .line 80
    add-int/lit8 v14, v14, 0x1

    .line 81
    .line 82
    add-int/lit8 v13, v13, 0x1

    .line 83
    .line 84
    if-eq v14, v7, :cond_5

    .line 85
    .line 86
    aget-object v6, v1, v12

    .line 87
    .line 88
    array-length v6, v6

    .line 89
    if-ne v6, v13, :cond_4

    .line 90
    .line 91
    array-length v3, v1

    .line 92
    sub-int/2addr v3, v9

    .line 93
    if-ne v12, v3, :cond_3

    .line 94
    .line 95
    goto :goto_5

    .line 96
    :cond_3
    add-int/lit8 v12, v12, 0x1

    .line 97
    .line 98
    const/4 v6, -0x1

    .line 99
    const/4 v10, 0x1

    .line 100
    const/4 v13, -0x1

    .line 101
    goto :goto_3

    .line 102
    :cond_4
    move v10, v3

    .line 103
    const/4 v6, -0x1

    .line 104
    goto :goto_3

    .line 105
    :cond_5
    :goto_5
    if-gez v10, :cond_6

    .line 106
    .line 107
    :goto_6
    move v2, v5

    .line 108
    goto :goto_0

    .line 109
    :cond_6
    if-lez v10, :cond_7

    .line 110
    .line 111
    :goto_7
    add-int/lit8 v4, v11, 0x1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_7
    sub-int v3, v7, v14

    .line 115
    .line 116
    aget-object v6, v1, v12

    .line 117
    .line 118
    array-length v6, v6

    .line 119
    sub-int/2addr v6, v13

    .line 120
    add-int/lit8 v12, v12, 0x1

    .line 121
    .line 122
    array-length v9, v1

    .line 123
    :goto_8
    if-ge v12, v9, :cond_8

    .line 124
    .line 125
    aget-object v10, v1, v12

    .line 126
    .line 127
    array-length v10, v10

    .line 128
    add-int/2addr v6, v10

    .line 129
    add-int/lit8 v12, v12, 0x1

    .line 130
    .line 131
    goto :goto_8

    .line 132
    :cond_8
    if-ge v6, v3, :cond_9

    .line 133
    .line 134
    goto :goto_6

    .line 135
    :cond_9
    if-le v6, v3, :cond_a

    .line 136
    .line 137
    goto :goto_7

    .line 138
    :cond_a
    new-instance v1, Ljava/lang/String;

    .line 139
    .line 140
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 141
    .line 142
    invoke-direct {v1, v0, v8, v7, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 143
    .line 144
    .line 145
    goto :goto_9

    .line 146
    :cond_b
    const/4 v1, 0x0

    .line 147
    :goto_9
    return-object v1
.end method


# virtual methods
.method public final get()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->access$getInstance$cp()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
