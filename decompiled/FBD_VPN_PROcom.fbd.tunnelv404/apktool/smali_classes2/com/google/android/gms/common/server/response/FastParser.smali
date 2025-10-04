.class public Lcom/google/android/gms/common/server/response/FastParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/server/response/FastParser$ParseException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/common/server/response/FastJsonResponse;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final zaa:[C

.field private static final zab:[C

.field private static final zac:[C

.field private static final zad:[C

.field private static final zae:[C

.field private static final zaf:[C

.field private static final zag:Lcom/google/android/gms/common/server/response/zai;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/server/response/zai<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final zah:Lcom/google/android/gms/common/server/response/zai;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/server/response/zai<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final zai:Lcom/google/android/gms/common/server/response/zai;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/server/response/zai<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final zaj:Lcom/google/android/gms/common/server/response/zai;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/server/response/zai<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final zak:Lcom/google/android/gms/common/server/response/zai;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/server/response/zai<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zal:Lcom/google/android/gms/common/server/response/zai;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/server/response/zai<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zam:Lcom/google/android/gms/common/server/response/zai;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/server/response/zai<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end field

.field private static final zan:Lcom/google/android/gms/common/server/response/zai;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/server/response/zai<",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zao:[C

.field private final zap:[C

.field private final zaq:[C

.field private final zar:Ljava/lang/StringBuilder;

.field private final zas:Ljava/lang/StringBuilder;

.field private final zat:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/gms/common/server/response/FastParser;->zaa:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zab:[C

    const/4 v0, 0x4

    new-array v1, v0, [C

    fill-array-data v1, :array_2

    sput-object v1, Lcom/google/android/gms/common/server/response/FastParser;->zac:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zad:[C

    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zae:[C

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/16 v1, 0xa

    const/4 v2, 0x0

    aput-char v1, v0, v2

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zaf:[C

    new-instance v0, Lcom/google/android/gms/common/server/response/zaa;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/zaa;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zag:Lcom/google/android/gms/common/server/response/zai;

    new-instance v0, Lcom/google/android/gms/common/server/response/zab;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/zab;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zah:Lcom/google/android/gms/common/server/response/zai;

    new-instance v0, Lcom/google/android/gms/common/server/response/zac;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/zac;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zai:Lcom/google/android/gms/common/server/response/zai;

    new-instance v0, Lcom/google/android/gms/common/server/response/zad;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/zad;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zaj:Lcom/google/android/gms/common/server/response/zai;

    new-instance v0, Lcom/google/android/gms/common/server/response/zae;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/zae;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zak:Lcom/google/android/gms/common/server/response/zai;

    new-instance v0, Lcom/google/android/gms/common/server/response/zaf;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/zaf;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zal:Lcom/google/android/gms/common/server/response/zai;

    new-instance v0, Lcom/google/android/gms/common/server/response/zag;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/zag;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zam:Lcom/google/android/gms/common/server/response/zai;

    new-instance v0, Lcom/google/android/gms/common/server/response/zah;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/zah;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zan:Lcom/google/android/gms/common/server/response/zai;

    return-void

    nop

    :array_0
    .array-data 2
        0x75s
        0x6cs
        0x6cs
    .end array-data

    nop

    :array_1
    .array-data 2
        0x72s
        0x75s
        0x65s
    .end array-data

    nop

    :array_2
    .array-data 2
        0x72s
        0x75s
        0x65s
        0x22s
    .end array-data

    :array_3
    .array-data 2
        0x61s
        0x6cs
        0x73s
        0x65s
    .end array-data

    :array_4
    .array-data 2
        0x61s
        0x6cs
        0x73s
        0x65s
        0x22s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v0, v0, [C

    .line 6
    .line 7
    iput-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zao:[C

    .line 8
    .line 9
    const/16 v0, 0x20

    .line 10
    .line 11
    new-array v1, v0, [C

    .line 12
    .line 13
    iput-object v1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zap:[C

    .line 14
    .line 15
    const/16 v1, 0x400

    .line 16
    .line 17
    new-array v2, v1, [C

    .line 18
    .line 19
    iput-object v2, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaq:[C

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object v2, p0, Lcom/google/android/gms/common/server/response/FastParser;->zar:Ljava/lang/StringBuilder;

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zas:Ljava/lang/StringBuilder;

    .line 34
    .line 35
    new-instance v0, Ljava/util/Stack;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zat:Ljava/util/Stack;

    .line 41
    .line 42
    return-void
.end method

.method private static final zaA(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;
    .locals 9
    .param p3    # [C
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4
    .line 5
    .line 6
    array-length v2, p1

    .line 7
    invoke-virtual {p0, v2}, Ljava/io/BufferedReader;->mark(I)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/Reader;->read([C)I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const/4 v5, -0x1

    .line 17
    if-eq v4, v5, :cond_7

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    :goto_1
    if-ge v5, v4, :cond_6

    .line 21
    .line 22
    aget-char v6, p1, v5

    .line 23
    .line 24
    invoke-static {v6}, Ljava/lang/Character;->isISOControl(C)Z

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    if-eqz v7, :cond_2

    .line 29
    .line 30
    if-eqz p3, :cond_1

    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    :goto_2
    if-gtz v7, :cond_1

    .line 34
    .line 35
    aget-char v8, p3, v7

    .line 36
    .line 37
    if-ne v8, v6, :cond_0

    .line 38
    .line 39
    goto :goto_3

    .line 40
    :cond_0
    add-int/2addr v7, v0

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    new-instance p0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 43
    .line 44
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    const/16 p2, 0x8

    .line 47
    .line 48
    new-array p2, p2, [J

    .line 49
    .line 50
    fill-array-data p2, :array_0

    .line 51
    .line 52
    .line 53
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p0

    .line 64
    :cond_2
    :goto_3
    const/16 v7, 0x22

    .line 65
    .line 66
    if-ne v6, v7, :cond_5

    .line 67
    .line 68
    if-nez v3, :cond_4

    .line 69
    .line 70
    invoke-virtual {p2, p1, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/io/BufferedReader;->reset()V

    .line 74
    .line 75
    .line 76
    add-int/2addr v5, v0

    .line 77
    int-to-long v0, v5

    .line 78
    invoke-virtual {p0, v0, v1}, Ljava/io/BufferedReader;->skip(J)J

    .line 79
    .line 80
    .line 81
    if-eqz v2, :cond_3

    .line 82
    .line 83
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {p0}, Lcom/google/android/gms/common/util/JsonUtils;->unescapeString(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0

    .line 92
    :cond_3
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    :cond_4
    const/4 v3, 0x0

    .line 98
    goto :goto_4

    .line 99
    :cond_5
    const/16 v7, 0x5c

    .line 100
    .line 101
    if-ne v6, v7, :cond_4

    .line 102
    .line 103
    xor-int/lit8 v2, v3, 0x1

    .line 104
    .line 105
    move v3, v2

    .line 106
    const/4 v2, 0x1

    .line 107
    :goto_4
    add-int/2addr v5, v0

    .line 108
    goto :goto_1

    .line 109
    :cond_6
    invoke-virtual {p2, p1, v1, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    array-length v4, p1

    .line 113
    invoke-virtual {p0, v4}, Ljava/io/BufferedReader;->mark(I)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_7
    new-instance p0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 118
    .line 119
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 120
    .line 121
    const/4 p2, 0x6

    .line 122
    new-array p2, p2, [J

    .line 123
    .line 124
    fill-array-data p2, :array_1

    .line 125
    .line 126
    .line 127
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p0

    .line 138
    nop

    .line 139
    :array_0
    .array-data 8
        0xca68805ce72bf6eL
        0x234c6557d4207fefL
        0x51686fe99e9d66b1L    # 1.4835408636340463E84
        0x4406b27cde348237L    # 5.233622107182222E19
        0x31365683457708dfL    # 1.2642826301779798E-71
        0x110f132f9d74768dL    # 1.639697167747948E-226
        -0xa71cc0e359c19beL
        0x731acf59c50e99b2L    # 2.928954961886568E246
    .end array-data

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    :array_1
    .array-data 8
        -0x2763adf36d631377L    # -7.1416620010142655E118
        0x6bb292dd255cda5aL    # 6.106257336794806E210
        0x52abae8c97f19215L    # 1.762152789938294E90
        0xcf5a96e0e6391e9L
        -0x26a9c59325ea7250L    # -2.2959530915525876E122
        0x56e2fdeaf222ce40L
    .end array-data
.end method

.method public static bridge synthetic zaa(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)D
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaj(Ljava/io/BufferedReader;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic zab(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zak(Ljava/io/BufferedReader;)F

    move-result p0

    return p0
.end method

.method public static bridge synthetic zac(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zal(Ljava/io/BufferedReader;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic zad(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)J
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zan(Ljava/io/BufferedReader;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic zae(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zao(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic zaf(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)Ljava/math/BigDecimal;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zas(Ljava/io/BufferedReader;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic zag(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)Ljava/math/BigInteger;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zat(Ljava/io/BufferedReader;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic zah(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;Z)Z
    .locals 0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastParser;->zay(Ljava/io/BufferedReader;Z)Z

    move-result p0

    return p0
.end method

.method private final zai(Ljava/io/BufferedReader;)C
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zao:[C

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/Reader;->read([C)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, -0x1

    .line 9
    if-eq v0, v2, :cond_2

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zao:[C

    .line 12
    .line 13
    aget-char v0, v0, v1

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zao:[C

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/io/Reader;->read([C)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-ne v0, v2, :cond_0

    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zao:[C

    .line 31
    .line 32
    aget-char p1, p1, v1

    .line 33
    .line 34
    return p1

    .line 35
    :cond_2
    return v1
.end method

.method private final zaj(Ljava/io/BufferedReader;)D
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaq:[C

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zam(Ljava/io/BufferedReader;[C)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    return-wide v0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaq:[C

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    return-wide v0
.end method

.method private final zak(Ljava/io/BufferedReader;)F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaq:[C

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zam(Ljava/io/BufferedReader;[C)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaq:[C

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method private final zal(Ljava/io/BufferedReader;)I
    .locals 12

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x5

    .line 4
    const/16 v3, 0xa

    .line 5
    .line 6
    const/4 v4, 0x1

    .line 7
    iget-object v5, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaq:[C

    .line 8
    .line 9
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/common/server/response/FastParser;->zam(Ljava/io/BufferedReader;[C)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v5, 0x0

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    return v5

    .line 17
    :cond_0
    iget-object v6, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaq:[C

    .line 18
    .line 19
    if-lez p1, :cond_b

    .line 20
    .line 21
    aget-char v7, v6, v5

    .line 22
    .line 23
    const/16 v8, 0x2d

    .line 24
    .line 25
    if-ne v7, v8, :cond_1

    .line 26
    .line 27
    const/high16 v9, -0x80000000

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const v9, -0x7fffffff

    .line 31
    .line 32
    .line 33
    :goto_0
    if-ne v7, v8, :cond_2

    .line 34
    .line 35
    const/4 v7, 0x1

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const/4 v7, 0x0

    .line 38
    :goto_1
    if-ge v7, p1, :cond_4

    .line 39
    .line 40
    add-int/lit8 v5, v7, 0x1

    .line 41
    .line 42
    aget-char v8, v6, v7

    .line 43
    .line 44
    invoke-static {v8, v3}, Ljava/lang/Character;->digit(CI)I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    if-ltz v8, :cond_3

    .line 49
    .line 50
    neg-int v8, v8

    .line 51
    goto :goto_2

    .line 52
    :cond_3
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 53
    .line 54
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    new-array v1, v2, [J

    .line 57
    .line 58
    fill-array-data v1, :array_0

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p1

    .line 72
    :cond_4
    move v5, v7

    .line 73
    const/4 v8, 0x0

    .line 74
    :goto_2
    if-ge v5, p1, :cond_8

    .line 75
    .line 76
    add-int/lit8 v10, v5, 0x1

    .line 77
    .line 78
    aget-char v5, v6, v5

    .line 79
    .line 80
    invoke-static {v5, v3}, Ljava/lang/Character;->digit(CI)I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-ltz v5, :cond_7

    .line 85
    .line 86
    const v11, -0xccccccc

    .line 87
    .line 88
    .line 89
    if-lt v8, v11, :cond_6

    .line 90
    .line 91
    mul-int/lit8 v8, v8, 0xa

    .line 92
    .line 93
    add-int v11, v9, v5

    .line 94
    .line 95
    if-lt v8, v11, :cond_5

    .line 96
    .line 97
    sub-int/2addr v8, v5

    .line 98
    move v5, v10

    .line 99
    goto :goto_2

    .line 100
    :cond_5
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 101
    .line 102
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 103
    .line 104
    new-array v1, v1, [J

    .line 105
    .line 106
    fill-array-data v1, :array_1

    .line 107
    .line 108
    .line 109
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p1

    .line 120
    :cond_6
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 121
    .line 122
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 123
    .line 124
    new-array v1, v1, [J

    .line 125
    .line 126
    fill-array-data v1, :array_2

    .line 127
    .line 128
    .line 129
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p1

    .line 140
    :cond_7
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 141
    .line 142
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 143
    .line 144
    new-array v1, v2, [J

    .line 145
    .line 146
    fill-array-data v1, :array_3

    .line 147
    .line 148
    .line 149
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw p1

    .line 160
    :cond_8
    if-eqz v7, :cond_a

    .line 161
    .line 162
    if-le v5, v4, :cond_9

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_9
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 166
    .line 167
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 168
    .line 169
    new-array v0, v0, [J

    .line 170
    .line 171
    fill-array-data v0, :array_4

    .line 172
    .line 173
    .line 174
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw p1

    .line 185
    :cond_a
    neg-int v8, v8

    .line 186
    :goto_3
    return v8

    .line 187
    :cond_b
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 188
    .line 189
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 190
    .line 191
    new-array v0, v0, [J

    .line 192
    .line 193
    fill-array-data v0, :array_5

    .line 194
    .line 195
    .line 196
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw p1

    .line 207
    :array_0
    .array-data 8
        0x60c80cf951c6c80eL    # 1.651030470706163E158
        -0x6ca8ed6a20a762c1L    # -1.673245394847444E-215
        -0x42502e1175100157L    # -1.44700816795721E-11
        0x51fc87ef75f9d385L    # 8.868205050370726E86
        0x16b16f2940977c5bL    # 2.27764209658368E-199
    .end array-data

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    :array_1
    .array-data 8
        0x439b19ae47fdaf10L    # 4.8819588441596006E17
        -0x296f5404d5f6f6b3L    # -9.788608769218564E108
        0x133583cdab6babc3L    # 3.90069134037853E-216
    .end array-data

    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    :array_2
    .array-data 8
        0x128451001ed21ba0L
        0xd7643b12dbf4180L
        0x5110cc4b64ceed31L    # 3.1868165459005714E82
    .end array-data

    :array_3
    .array-data 8
        -0x5240a7e5d6ffe488L
        0x35d565d3811b5c71L    # 2.287646957085774E-49
        0x458b1a1c79207b6dL    # 1.0484577246430543E27
        -0x551ea5bef05d4697L
        -0x6e37b55a0ab294eeL
    .end array-data

    :array_4
    .array-data 8
        -0x29b9ce994ea55807L    # -4.0719642687442E107
        -0x25ed8362e684bb50L    # -7.821306286440436E125
        -0xf7821f7f1794d2aL    # -1.1857418005332503E234
        0x5ea45b3cf95418daL    # 8.134087616026338E147
    .end array-data

    :array_5
    .array-data 8
        -0x78419678d8875e43L
        -0x319582edb90e7a7dL    # -5.7130413486137E69
        0x75c6df6047233571L    # 2.1979667250333175E259
        -0x2b5a25d371038d47L    # -5.9745416309997395E99
    .end array-data
.end method

.method private final zam(Ljava/io/BufferedReader;[C)I
    .locals 10

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    if-eqz v3, :cond_b

    .line 9
    .line 10
    const/16 v4, 0x2c

    .line 11
    .line 12
    if-eq v3, v4, :cond_a

    .line 13
    .line 14
    const/16 v5, 0x6e

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    if-ne v3, v5, :cond_0

    .line 18
    .line 19
    sget-object p2, Lcom/google/android/gms/common/server/response/FastParser;->zaa:[C

    .line 20
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastParser;->zax(Ljava/io/BufferedReader;[C)V

    .line 22
    .line 23
    .line 24
    return v6

    .line 25
    :cond_0
    const/16 v5, 0x400

    .line 26
    .line 27
    invoke-virtual {p1, v5}, Ljava/io/BufferedReader;->mark(I)V

    .line 28
    .line 29
    .line 30
    const/16 v7, 0x22

    .line 31
    .line 32
    if-ne v3, v7, :cond_5

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    const/4 v4, 0x0

    .line 36
    :goto_0
    if-ge v3, v5, :cond_8

    .line 37
    .line 38
    invoke-virtual {p1, p2, v3, v2}, Ljava/io/BufferedReader;->read([CII)I

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    if-eq v8, v0, :cond_8

    .line 43
    .line 44
    aget-char v8, p2, v3

    .line 45
    .line 46
    invoke-static {v8}, Ljava/lang/Character;->isISOControl(C)Z

    .line 47
    .line 48
    .line 49
    move-result v9

    .line 50
    if-nez v9, :cond_4

    .line 51
    .line 52
    if-ne v8, v7, :cond_3

    .line 53
    .line 54
    if-eqz v4, :cond_2

    .line 55
    .line 56
    :cond_1
    const/4 v4, 0x0

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    .line 59
    .line 60
    .line 61
    add-int/2addr v2, v3

    .line 62
    int-to-long v0, v2

    .line 63
    invoke-virtual {p1, v0, v1}, Ljava/io/BufferedReader;->skip(J)J

    .line 64
    .line 65
    .line 66
    return v3

    .line 67
    :cond_3
    const/16 v9, 0x5c

    .line 68
    .line 69
    if-ne v8, v9, :cond_1

    .line 70
    .line 71
    xor-int/2addr v4, v2

    .line 72
    :goto_1
    add-int/2addr v3, v2

    .line 73
    goto :goto_0

    .line 74
    :cond_4
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 75
    .line 76
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    const/16 v0, 0x8

    .line 79
    .line 80
    new-array v0, v0, [J

    .line 81
    .line 82
    fill-array-data v0, :array_0

    .line 83
    .line 84
    .line 85
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p1

    .line 96
    :cond_5
    aput-char v3, p2, v6

    .line 97
    .line 98
    const/4 v3, 0x1

    .line 99
    :goto_2
    if-ge v3, v5, :cond_8

    .line 100
    .line 101
    invoke-virtual {p1, p2, v3, v2}, Ljava/io/BufferedReader;->read([CII)I

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    if-eq v7, v0, :cond_8

    .line 106
    .line 107
    aget-char v7, p2, v3

    .line 108
    .line 109
    const/16 v8, 0x7d

    .line 110
    .line 111
    if-eq v7, v8, :cond_7

    .line 112
    .line 113
    if-eq v7, v4, :cond_7

    .line 114
    .line 115
    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    if-nez v7, :cond_7

    .line 120
    .line 121
    aget-char v7, p2, v3

    .line 122
    .line 123
    const/16 v8, 0x5d

    .line 124
    .line 125
    if-ne v7, v8, :cond_6

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_6
    add-int/2addr v3, v2

    .line 129
    goto :goto_2

    .line 130
    :cond_7
    :goto_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    .line 131
    .line 132
    .line 133
    add-int/2addr v0, v3

    .line 134
    int-to-long v0, v0

    .line 135
    invoke-virtual {p1, v0, v1}, Ljava/io/BufferedReader;->skip(J)J

    .line 136
    .line 137
    .line 138
    aput-char v6, p2, v3

    .line 139
    .line 140
    return v3

    .line 141
    :cond_8
    if-ne v3, v5, :cond_9

    .line 142
    .line 143
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 144
    .line 145
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 146
    .line 147
    const/4 v0, 0x4

    .line 148
    new-array v0, v0, [J

    .line 149
    .line 150
    fill-array-data v0, :array_1

    .line 151
    .line 152
    .line 153
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw p1

    .line 164
    :cond_9
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 165
    .line 166
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 167
    .line 168
    new-array v0, v1, [J

    .line 169
    .line 170
    fill-array-data v0, :array_2

    .line 171
    .line 172
    .line 173
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p1

    .line 184
    :cond_a
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 185
    .line 186
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 187
    .line 188
    new-array v0, v1, [J

    .line 189
    .line 190
    fill-array-data v0, :array_3

    .line 191
    .line 192
    .line 193
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw p1

    .line 204
    :cond_b
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 205
    .line 206
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 207
    .line 208
    new-array v0, v1, [J

    .line 209
    .line 210
    fill-array-data v0, :array_4

    .line 211
    .line 212
    .line 213
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw p1

    .line 224
    nop

    .line 225
    :array_0
    .array-data 8
        0x4738e7e93aa73f4cL    # 1.2931883953746532E35
        0x7ab644bae9f4a070L    # 1.2935000759149134E283
        -0x4039e52231f098L
        0x50f6e9d8b9969754L
        0x37596a09b74ddb61L    # 4.558450496363424E-42
        -0x457ad24daacc21f3L    # -8.553928995280684E-27
        0x4af190b3b0f7f364L    # 1.0515099547709485E53
        0x4b9ac3667f06c175L    # 1.6405844569613572E56
    .end array-data

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    :array_1
    .array-data 8
        -0x21d909cba692c64eL
        0x4762417399ab9890L    # 7.583108710016534E35
        -0x53a72ba531735b14L    # -4.6497493074181945E-95
        -0x5b88779378c43dd0L
    .end array-data

    :array_2
    .array-data 8
        -0x4b3b569f87e1a4deL    # -1.68529268947342E-54
        -0x55ea8cc9de08369L    # -5.036290378418698E282
        0x317fa8bca60984d2L    # 2.8669490805444047E-70
    .end array-data

    :array_3
    .array-data 8
        0x58d3767f84f0f936L    # 7.852816875493449E119
        0x50951a60279f085dL    # 1.563880895245212E80
        -0x419105251a291161L    # -5.7704565330449605E-8
    .end array-data

    :array_4
    .array-data 8
        0x2ebfa41891140ad7L    # 1.6287386895883299E-83
        0x18d95c529614c613L    # 5.691973350824823E-189
        0x18b439f4e492d78L
    .end array-data
.end method

.method private final zan(Ljava/io/BufferedReader;)J
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x5

    .line 6
    const/4 v4, 0x1

    .line 7
    iget-object v5, v0, Lcom/google/android/gms/common/server/response/FastParser;->zaq:[C

    .line 8
    .line 9
    move-object/from16 v6, p1

    .line 10
    .line 11
    invoke-direct {v0, v6, v5}, Lcom/google/android/gms/common/server/response/FastParser;->zam(Ljava/io/BufferedReader;[C)I

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    const-wide/16 v6, 0x0

    .line 16
    .line 17
    if-nez v5, :cond_0

    .line 18
    .line 19
    return-wide v6

    .line 20
    :cond_0
    iget-object v8, v0, Lcom/google/android/gms/common/server/response/FastParser;->zaq:[C

    .line 21
    .line 22
    if-lez v5, :cond_b

    .line 23
    .line 24
    const/4 v9, 0x0

    .line 25
    aget-char v10, v8, v9

    .line 26
    .line 27
    const/16 v11, 0x2d

    .line 28
    .line 29
    if-ne v10, v11, :cond_1

    .line 30
    .line 31
    const-wide/high16 v12, -0x8000000000000000L

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    :goto_0
    if-ne v10, v11, :cond_2

    .line 40
    .line 41
    const/4 v9, 0x1

    .line 42
    :cond_2
    const/16 v10, 0xa

    .line 43
    .line 44
    if-ge v9, v5, :cond_4

    .line 45
    .line 46
    add-int/lit8 v6, v9, 0x1

    .line 47
    .line 48
    aget-char v7, v8, v9

    .line 49
    .line 50
    invoke-static {v7, v10}, Ljava/lang/Character;->digit(CI)I

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-ltz v7, :cond_3

    .line 55
    .line 56
    neg-int v7, v7

    .line 57
    int-to-long v14, v7

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    new-instance v1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 60
    .line 61
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    new-array v3, v3, [J

    .line 64
    .line 65
    fill-array-data v3, :array_0

    .line 66
    .line 67
    .line 68
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v1

    .line 79
    :cond_4
    move-wide v14, v6

    .line 80
    move v6, v9

    .line 81
    :goto_1
    if-ge v6, v5, :cond_8

    .line 82
    .line 83
    add-int/lit8 v7, v6, 0x1

    .line 84
    .line 85
    aget-char v6, v8, v6

    .line 86
    .line 87
    invoke-static {v6, v10}, Ljava/lang/Character;->digit(CI)I

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-ltz v6, :cond_7

    .line 92
    .line 93
    const-wide v16, -0xcccccccccccccccL

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    cmp-long v11, v14, v16

    .line 99
    .line 100
    if-ltz v11, :cond_6

    .line 101
    .line 102
    const-wide/16 v16, 0xa

    .line 103
    .line 104
    mul-long v14, v14, v16

    .line 105
    .line 106
    int-to-long v10, v6

    .line 107
    add-long v16, v12, v10

    .line 108
    .line 109
    cmp-long v6, v14, v16

    .line 110
    .line 111
    if-ltz v6, :cond_5

    .line 112
    .line 113
    sub-long/2addr v14, v10

    .line 114
    move v6, v7

    .line 115
    const/16 v10, 0xa

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_5
    new-instance v1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 119
    .line 120
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 121
    .line 122
    new-array v2, v2, [J

    .line 123
    .line 124
    fill-array-data v2, :array_1

    .line 125
    .line 126
    .line 127
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw v1

    .line 138
    :cond_6
    new-instance v1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 139
    .line 140
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 141
    .line 142
    new-array v2, v2, [J

    .line 143
    .line 144
    fill-array-data v2, :array_2

    .line 145
    .line 146
    .line 147
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw v1

    .line 158
    :cond_7
    new-instance v1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 159
    .line 160
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 161
    .line 162
    new-array v3, v3, [J

    .line 163
    .line 164
    fill-array-data v3, :array_3

    .line 165
    .line 166
    .line 167
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw v1

    .line 178
    :cond_8
    if-eqz v9, :cond_a

    .line 179
    .line 180
    if-le v6, v4, :cond_9

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_9
    new-instance v2, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 184
    .line 185
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 186
    .line 187
    new-array v1, v1, [J

    .line 188
    .line 189
    fill-array-data v1, :array_4

    .line 190
    .line 191
    .line 192
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-direct {v2, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    throw v2

    .line 203
    :cond_a
    neg-long v14, v14

    .line 204
    :goto_2
    return-wide v14

    .line 205
    :cond_b
    new-instance v2, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 206
    .line 207
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 208
    .line 209
    new-array v1, v1, [J

    .line 210
    .line 211
    fill-array-data v1, :array_5

    .line 212
    .line 213
    .line 214
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-direct {v2, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    throw v2

    .line 225
    :array_0
    .array-data 8
        0x5a779894548a1362L    # 6.389057723546016E127
        0x156b3ca55d41a1cfL    # 1.69672171754848E-205
        -0x348d39de48406a86L    # -2.8770997712623365E55
        0x285887b6aabc34d9L    # 2.490241832251056E-114
        0x274da3832a3ab4dL
    .end array-data

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    :array_1
    .array-data 8
        -0x39faa8af28c6272L
        -0x4d0fee3dd872640L    # -2.3051985600071333E285
        0x78a0ea925bfef36L
    .end array-data

    :array_2
    .array-data 8
        -0x6a71fc16a465f5f5L    # -7.479203559133033E-205
        -0x7fe183970e98dfc2L
        -0x2456c5c3c8b5ed7dL    # -3.5813106136500556E133
    .end array-data

    :array_3
    .array-data 8
        0x2ada2b94e779f8a2L
        0x72af027073e3717eL    # 2.6466813807840377E244
        0x72cb53078d1445cbL    # 9.32859152814658E244
        0x917be8720469bfaL
        0x243d0507f77d3293L
    .end array-data

    :array_4
    .array-data 8
        0x381e8e2e0b57339fL    # 2.2448555266566642E-38
        0x7172bd21a792981aL    # 3.050550635631189E238
        -0x18dac88308df42b7L    # -7.385266462225119E188
        -0x1b9d4eb9d1c94723L    # -3.6985742964513915E175
    .end array-data

    :array_5
    .array-data 8
        -0x1a7ad3aa73e2c63aL    # -1.0982305187366308E181
        -0x49d8919cb17b88fL
        0x6a71541e3aad864bL    # 5.433006210048007E204
        0x6a1e9f6225410925L    # 1.500165016046424E203
    .end array-data
.end method

.method private final zao(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zap:[C

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zar:Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/server/response/FastParser;->zap(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method private final zap(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;
    .locals 2
    .param p4    # [C
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x22

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    const/16 p2, 0x6e

    .line 10
    .line 11
    if-ne v0, p2, :cond_0

    .line 12
    .line 13
    sget-object p2, Lcom/google/android/gms/common/server/response/FastParser;->zaa:[C

    .line 14
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastParser;->zax(Ljava/io/BufferedReader;[C)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    return-object p1

    .line 20
    :cond_0
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 21
    .line 22
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    const/4 p3, 0x3

    .line 25
    new-array p3, p3, [J

    .line 26
    .line 27
    fill-array-data p3, :array_0

    .line 28
    .line 29
    .line 30
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/common/server/response/FastParser;->zaA(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1

    .line 46
    nop

    .line 47
    :array_0
    .array-data 8
        0xfe2dbff82769b3aL    # 3.796124746258565E-232
        0x6f94cf5f60ebd55L
        0x65ab5b8c0a97995eL    # 5.676040520676019E181
    .end array-data
.end method

.method private final zaq(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x5

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zat:Ljava/util/Stack;

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    invoke-virtual {v1, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/16 v3, 0x22

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    if-eq v1, v3, :cond_2

    .line 20
    .line 21
    const/16 p1, 0x5d

    .line 22
    .line 23
    if-eq v1, p1, :cond_1

    .line 24
    .line 25
    const/16 p1, 0x7d

    .line 26
    .line 27
    if-ne v1, p1, :cond_0

    .line 28
    .line 29
    invoke-direct {p0, v2}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    .line 30
    .line 31
    .line 32
    return-object v4

    .line 33
    :cond_0
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const/16 v2, 0x13

    .line 38
    .line 39
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 40
    .line 41
    .line 42
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    const/4 v3, 0x4

    .line 45
    new-array v3, v3, [J

    .line 46
    .line 47
    fill-array-data v3, :array_0

    .line 48
    .line 49
    .line 50
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1

    .line 71
    :cond_1
    invoke-direct {p0, v2}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    .line 72
    .line 73
    .line 74
    const/4 p1, 0x1

    .line 75
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    .line 79
    .line 80
    .line 81
    return-object v4

    .line 82
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zat:Ljava/util/Stack;

    .line 83
    .line 84
    const/4 v2, 0x3

    .line 85
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v1, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zap:[C

    .line 93
    .line 94
    iget-object v3, p0, Lcom/google/android/gms/common/server/response/FastParser;->zar:Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-static {p1, v1, v3, v4}, Lcom/google/android/gms/common/server/response/FastParser;->zaA(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-direct {p0, v2}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    .line 101
    .line 102
    .line 103
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    const/16 v2, 0x3a

    .line 108
    .line 109
    if-ne p1, v2, :cond_3

    .line 110
    .line 111
    return-object v1

    .line 112
    :cond_3
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 113
    .line 114
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 115
    .line 116
    new-array v0, v0, [J

    .line 117
    .line 118
    fill-array-data v0, :array_1

    .line 119
    .line 120
    .line 121
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p1

    .line 132
    nop

    .line 133
    :array_0
    .array-data 8
        -0x519d8605fcd35d3L
        0x53508e2a22658d5dL    # 2.15832343451561E93
        -0x4c58f54dccf366cL    # -3.931689264015667E285
        0x45f5790cb80604a4L
    .end array-data

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    :array_1
    .array-data 8
        -0x4b118616a3784f0L
        0x58030d339f88bf7cL    # 9.383375476292655E115
        -0x3d7964779c30a100L    # -3.107157998059875E12
        -0x50c9a482676bb4edL    # -2.946199752479416E-81
        -0x6bac8fe15c3e93abL    # -9.238339031574287E-211
    .end array-data
.end method

.method private final zar(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 18
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const/4 v3, 0x4

    .line 7
    const/4 v4, 0x6

    .line 8
    const/4 v5, 0x1

    .line 9
    const/16 v6, 0x400

    .line 10
    .line 11
    invoke-virtual {v1, v6}, Ljava/io/BufferedReader;->mark(I)V

    .line 12
    .line 13
    .line 14
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    const/16 v7, 0x5c

    .line 19
    .line 20
    const/16 v8, 0x12

    .line 21
    .line 22
    const/16 v9, 0x7d

    .line 23
    .line 24
    const/16 v10, 0x2c

    .line 25
    .line 26
    const/16 v11, 0x22

    .line 27
    .line 28
    const/4 v12, 0x0

    .line 29
    if-eq v6, v11, :cond_10

    .line 30
    .line 31
    if-eq v6, v10, :cond_f

    .line 32
    .line 33
    const/16 v13, 0x20

    .line 34
    .line 35
    const/16 v14, 0x5b

    .line 36
    .line 37
    if-eq v6, v14, :cond_4

    .line 38
    .line 39
    const/16 v2, 0x7b

    .line 40
    .line 41
    if-eq v6, v2, :cond_0

    .line 42
    .line 43
    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedReader;->reset()V

    .line 44
    .line 45
    .line 46
    iget-object v2, v0, Lcom/google/android/gms/common/server/response/FastParser;->zaq:[C

    .line 47
    .line 48
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/server/response/FastParser;->zam(Ljava/io/BufferedReader;[C)I

    .line 49
    .line 50
    .line 51
    goto/16 :goto_3

    .line 52
    .line 53
    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/common/server/response/FastParser;->zat:Ljava/util/Stack;

    .line 54
    .line 55
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v2, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v13}, Ljava/io/BufferedReader;->mark(I)V

    .line 63
    .line 64
    .line 65
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-ne v2, v9, :cond_1

    .line 70
    .line 71
    invoke-direct {v0, v5}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_3

    .line 75
    .line 76
    :cond_1
    if-ne v2, v11, :cond_3

    .line 77
    .line 78
    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedReader;->reset()V

    .line 79
    .line 80
    .line 81
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaq(Ljava/io/BufferedReader;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zar(Ljava/io/BufferedReader;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    if-nez v2, :cond_2

    .line 89
    .line 90
    invoke-direct {v0, v5}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_3

    .line 94
    .line 95
    :cond_3
    new-instance v1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 96
    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 100
    .line 101
    .line 102
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 103
    .line 104
    new-array v3, v3, [J

    .line 105
    .line 106
    fill-array-data v3, :array_0

    .line 107
    .line 108
    .line 109
    invoke-direct {v5, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw v1

    .line 130
    :cond_4
    iget-object v6, v0, Lcom/google/android/gms/common/server/response/FastParser;->zat:Ljava/util/Stack;

    .line 131
    .line 132
    const/4 v15, 0x5

    .line 133
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-virtual {v6, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v13}, Ljava/io/BufferedReader;->mark(I)V

    .line 141
    .line 142
    .line 143
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    const/16 v6, 0x5d

    .line 148
    .line 149
    if-ne v3, v6, :cond_5

    .line 150
    .line 151
    invoke-direct {v0, v15}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_3

    .line 155
    .line 156
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedReader;->reset()V

    .line 157
    .line 158
    .line 159
    const/4 v3, 0x1

    .line 160
    const/4 v13, 0x0

    .line 161
    :goto_0
    const/16 v16, 0x0

    .line 162
    .line 163
    :goto_1
    if-lez v3, :cond_e

    .line 164
    .line 165
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    .line 166
    .line 167
    .line 168
    move-result v8

    .line 169
    if-eqz v8, :cond_d

    .line 170
    .line 171
    invoke-static {v8}, Ljava/lang/Character;->isISOControl(C)Z

    .line 172
    .line 173
    .line 174
    move-result v17

    .line 175
    if-nez v17, :cond_c

    .line 176
    .line 177
    if-ne v8, v11, :cond_7

    .line 178
    .line 179
    if-nez v16, :cond_6

    .line 180
    .line 181
    xor-int/2addr v13, v5

    .line 182
    :cond_6
    const/16 v8, 0x22

    .line 183
    .line 184
    :cond_7
    if-ne v8, v14, :cond_9

    .line 185
    .line 186
    if-nez v13, :cond_8

    .line 187
    .line 188
    add-int/2addr v3, v5

    .line 189
    :cond_8
    const/16 v8, 0x5b

    .line 190
    .line 191
    :cond_9
    if-ne v8, v6, :cond_a

    .line 192
    .line 193
    if-nez v13, :cond_a

    .line 194
    .line 195
    add-int/2addr v3, v2

    .line 196
    :cond_a
    if-ne v8, v7, :cond_b

    .line 197
    .line 198
    if-eqz v13, :cond_b

    .line 199
    .line 200
    xor-int/lit8 v16, v16, 0x1

    .line 201
    .line 202
    const/16 v8, 0x12

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_b
    const/16 v8, 0x12

    .line 206
    .line 207
    goto :goto_0

    .line 208
    :cond_c
    new-instance v1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 209
    .line 210
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 211
    .line 212
    const/4 v3, 0x7

    .line 213
    new-array v3, v3, [J

    .line 214
    .line 215
    fill-array-data v3, :array_1

    .line 216
    .line 217
    .line 218
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw v1

    .line 229
    :cond_d
    new-instance v1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 230
    .line 231
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 232
    .line 233
    new-array v3, v4, [J

    .line 234
    .line 235
    fill-array-data v3, :array_2

    .line 236
    .line 237
    .line 238
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    throw v1

    .line 249
    :cond_e
    invoke-direct {v0, v15}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    .line 250
    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_f
    new-instance v1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 254
    .line 255
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 256
    .line 257
    const/4 v3, 0x3

    .line 258
    new-array v3, v3, [J

    .line 259
    .line 260
    fill-array-data v3, :array_3

    .line 261
    .line 262
    .line 263
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw v1

    .line 274
    :cond_10
    iget-object v3, v0, Lcom/google/android/gms/common/server/response/FastParser;->zao:[C

    .line 275
    .line 276
    invoke-virtual {v1, v3}, Ljava/io/Reader;->read([C)I

    .line 277
    .line 278
    .line 279
    move-result v3

    .line 280
    if-eq v3, v2, :cond_18

    .line 281
    .line 282
    iget-object v3, v0, Lcom/google/android/gms/common/server/response/FastParser;->zao:[C

    .line 283
    .line 284
    aget-char v3, v3, v12

    .line 285
    .line 286
    const/4 v6, 0x0

    .line 287
    :goto_2
    if-ne v3, v11, :cond_11

    .line 288
    .line 289
    if-eqz v6, :cond_12

    .line 290
    .line 291
    const/16 v3, 0x22

    .line 292
    .line 293
    const/4 v6, 0x1

    .line 294
    :cond_11
    const/16 v8, 0x12

    .line 295
    .line 296
    const/4 v13, 0x4

    .line 297
    goto :goto_4

    .line 298
    :cond_12
    :goto_3
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    const/4 v3, 0x2

    .line 303
    if-eq v2, v10, :cond_14

    .line 304
    .line 305
    if-ne v2, v9, :cond_13

    .line 306
    .line 307
    invoke-direct {v0, v3}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    .line 308
    .line 309
    .line 310
    const/4 v1, 0x0

    .line 311
    return-object v1

    .line 312
    :cond_13
    new-instance v1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 313
    .line 314
    new-instance v3, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    const/16 v8, 0x12

    .line 317
    .line 318
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 319
    .line 320
    .line 321
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 322
    .line 323
    const/4 v13, 0x4

    .line 324
    new-array v5, v13, [J

    .line 325
    .line 326
    fill-array-data v5, :array_4

    .line 327
    .line 328
    .line 329
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v4

    .line 336
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    throw v1

    .line 350
    :cond_14
    invoke-direct {v0, v3}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    .line 351
    .line 352
    .line 353
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaq(Ljava/io/BufferedReader;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    return-object v1

    .line 358
    :goto_4
    if-ne v3, v7, :cond_15

    .line 359
    .line 360
    xor-int/lit8 v3, v6, 0x1

    .line 361
    .line 362
    move v6, v3

    .line 363
    goto :goto_5

    .line 364
    :cond_15
    const/4 v6, 0x0

    .line 365
    :goto_5
    iget-object v3, v0, Lcom/google/android/gms/common/server/response/FastParser;->zao:[C

    .line 366
    .line 367
    invoke-virtual {v1, v3}, Ljava/io/Reader;->read([C)I

    .line 368
    .line 369
    .line 370
    move-result v3

    .line 371
    if-eq v3, v2, :cond_17

    .line 372
    .line 373
    iget-object v3, v0, Lcom/google/android/gms/common/server/response/FastParser;->zao:[C

    .line 374
    .line 375
    aget-char v3, v3, v12

    .line 376
    .line 377
    invoke-static {v3}, Ljava/lang/Character;->isISOControl(C)Z

    .line 378
    .line 379
    .line 380
    move-result v14

    .line 381
    if-nez v14, :cond_16

    .line 382
    .line 383
    goto :goto_2

    .line 384
    :cond_16
    new-instance v1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 385
    .line 386
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 387
    .line 388
    const/16 v3, 0x8

    .line 389
    .line 390
    new-array v3, v3, [J

    .line 391
    .line 392
    fill-array-data v3, :array_5

    .line 393
    .line 394
    .line 395
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v2

    .line 402
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    throw v1

    .line 406
    :cond_17
    new-instance v1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 407
    .line 408
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 409
    .line 410
    new-array v3, v4, [J

    .line 411
    .line 412
    fill-array-data v3, :array_6

    .line 413
    .line 414
    .line 415
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    throw v1

    .line 426
    :cond_18
    new-instance v1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 427
    .line 428
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 429
    .line 430
    new-array v3, v4, [J

    .line 431
    .line 432
    fill-array-data v3, :array_7

    .line 433
    .line 434
    .line 435
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v2

    .line 442
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    throw v1

    .line 446
    nop

    .line 447
    :array_0
    .array-data 8
        -0x6386bd6936fea1d2L
        0x3a3cdef75dfd8d54L    # 3.644027717791275E-28
        0x6171817d73c27617L    # 2.4611617914138923E161
        -0x621042517e4b4531L
    .end array-data

    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    :array_1
    .array-data 8
        0x5634a9a05caa4cf3L    # 1.895586071800028E107
        -0x2f28d987d3ea48bfL    # -2.7449531050132552E81
        0x6e80b57ff62d7c8bL    # 1.9327550856192883E224
        0x7759784025f9b610L    # 8.212596709161799E266
        0x19b428c263fdcae6L    # 7.413039474640765E-185
        -0x4e43293ecd78bbd4L    # -4.1784910671812853E-69
        0x64ec39d4346a1f7L
    .end array-data

    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    :array_2
    .array-data 8
        -0x63e1e77686ad1e0dL    # -3.042069182186031E-173
        0x121b55190ab9aefeL    # 1.890345466501427E-221
        0x3a441be5402cb93bL    # 5.076216890473801E-28
        -0x42608e86c4b138d5L    # -7.149368707017069E-12
        -0x253f797b3a3cb028L    # -1.4318641150895697E129
        -0x267992e10dc5b229L    # -1.8531260877204808E123
    .end array-data

    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    :array_3
    .array-data 8
        -0x3330a2c4138c2a4dL    # -1.0080063831371679E62
        0x726d85634dda738dL    # 1.5747741136478258E243
        -0x424910a5aaf59e38L    # -2.0859235619198142E-11
    .end array-data

    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    :array_4
    .array-data 8
        -0x1b2fa020f65b6c2L
        -0x39e19e1f179ef180L    # -6.017842045358993E29
        -0x1d95b82070d7d061L    # -1.2107248759606832E166
        -0x63a71bd2d6b21d3eL
    .end array-data

    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    :array_5
    .array-data 8
        0x7b8a2dab44cd044L
        0x2801b7da9a33db34L    # 5.620963583964021E-116
        -0x435c5236f026c118L    # -1.365494468278709E-16
        -0x5b3db3cf012078d3L    # -1.288921801351536E-131
        -0x3c56e60faf89444fL    # -9.0437047687301338E17
        0x61d6baa9e0e65625L    # 2.0451301470019458E163
        0xf10a00a9a3588e8L    # 4.0849739204479E-236
        -0x274c44beebfdca88L    # -1.9902954974334995E119
    .end array-data

    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    :array_6
    .array-data 8
        0x35f80871f0ceb29bL    # 1.027752380776284E-48
        -0x7a90b935448b3a7fL
        0x3f606d74826551beL    # 0.002005317265835609
        -0x6f389406d18c5cc9L    # -7.724191292561718E-228
        0x775e14be6a28f229L    # 9.69948968675513E266
        0x1c5f07163b34806aL    # 5.018013602445302E-172
    .end array-data

    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    :array_7
    .array-data 8
        0x1dc44097a471fe45L    # 2.747559074190356E-165
        -0x5e88d7f9659ea125L
        0x63f18321ad45c76fL    # 2.707067202545599E173
        -0x3f59f4fea6f83ccaL    # -2821.502632372455
        0x2a949f2540d693d0L
        -0x7484a5d5093e4064L
    .end array-data
.end method

.method private final zas(Ljava/io/BufferedReader;)Ljava/math/BigDecimal;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaq:[C

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zam(Ljava/io/BufferedReader;[C)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/String;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaq:[C

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v1, v2, v3, p1}, Ljava/lang/String;-><init>([CII)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method private final zat(Ljava/io/BufferedReader;)Ljava/math/BigInteger;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaq:[C

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zam(Ljava/io/BufferedReader;[C)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/String;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaq:[C

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v1, v2, v3, p1}, Ljava/lang/String;-><init>([CII)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method private final zau(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/zai;)Ljava/util/ArrayList;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/BufferedReader;",
            "Lcom/google/android/gms/common/server/response/zai<",
            "TO;>;)",
            "Ljava/util/ArrayList<",
            "TO;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x6e

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    sget-object p2, Lcom/google/android/gms/common/server/response/FastParser;->zaa:[C

    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastParser;->zax(Ljava/io/BufferedReader;[C)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    return-object p1

    .line 16
    :cond_0
    const/16 v1, 0x5b

    .line 17
    .line 18
    if-ne v0, v1, :cond_4

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zat:Ljava/util/Stack;

    .line 21
    .line 22
    const/4 v1, 0x5

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    const/16 v2, 0x400

    .line 36
    .line 37
    invoke-virtual {p1, v2}, Ljava/io/BufferedReader;->mark(I)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    const/16 v3, 0x2c

    .line 47
    .line 48
    if-eq v2, v3, :cond_1

    .line 49
    .line 50
    const/16 v3, 0x5d

    .line 51
    .line 52
    if-eq v2, v3, :cond_2

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    .line 55
    .line 56
    .line 57
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/common/server/response/zai;->zaa(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    .line 66
    .line 67
    .line 68
    return-object v0

    .line 69
    :cond_3
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 70
    .line 71
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 72
    .line 73
    const/4 v0, 0x3

    .line 74
    new-array v0, v0, [J

    .line 75
    .line 76
    fill-array-data v0, :array_0

    .line 77
    .line 78
    .line 79
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1

    .line 90
    :cond_4
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 91
    .line 92
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 93
    .line 94
    const/4 v0, 0x4

    .line 95
    new-array v0, v0, [J

    .line 96
    .line 97
    fill-array-data v0, :array_1

    .line 98
    .line 99
    .line 100
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p1

    .line 111
    :array_0
    .array-data 8
        -0x6d9800c4f7c96db3L    # -5.310923312298944E-220
        -0x621c1657b367d9fbL
        -0x42261f597fd90545L    # -9.414194427319493E-11
    .end array-data

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    :array_1
    .array-data 8
        -0x3310a36a7036e741L    # -4.031699197837743E62
        -0x55ef3e2a9ac708ceL
        0x73fbd0a0ad829d2L
        0x39189b685cc3d01fL    # 1.1847868998877285E-33
    .end array-data
.end method

.method private final zav(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/util/ArrayList;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse;",
            ">(",
            "Ljava/io/BufferedReader;",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<",
            "**>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x5

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const/16 v4, 0x5d

    .line 13
    .line 14
    if-eq v3, v4, :cond_6

    .line 15
    .line 16
    const/16 v5, 0x6e

    .line 17
    .line 18
    if-eq v3, v5, :cond_5

    .line 19
    .line 20
    const/16 v5, 0x13

    .line 21
    .line 22
    const/16 v6, 0x7b

    .line 23
    .line 24
    if-ne v3, v6, :cond_4

    .line 25
    .line 26
    iget-object v3, p0, Lcom/google/android/gms/common/server/response/FastParser;->zat:Ljava/util/Stack;

    .line 27
    .line 28
    const/4 v7, 0x1

    .line 29
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v8

    .line 33
    invoke-virtual {v3, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zad()Lcom/google/android/gms/common/server/response/FastJsonResponse;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse;)Z

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    if-eqz v8, :cond_3

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    const/16 v8, 0x2c

    .line 54
    .line 55
    if-eq v3, v8, :cond_1

    .line 56
    .line 57
    if-ne v3, v4, :cond_0

    .line 58
    .line 59
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    .line 60
    .line 61
    .line 62
    return-object v2

    .line 63
    :cond_0
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 64
    .line 65
    new-instance p2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 68
    .line 69
    .line 70
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    new-array v0, v0, [J

    .line 73
    .line 74
    fill-array-data v0, :array_0

    .line 75
    .line 76
    .line 77
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1

    .line 98
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-ne v3, v6, :cond_2

    .line 103
    .line 104
    iget-object v3, p0, Lcom/google/android/gms/common/server/response/FastParser;->zat:Ljava/util/Stack;

    .line 105
    .line 106
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    invoke-virtual {v3, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_2
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 115
    .line 116
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 117
    .line 118
    const/4 v0, 0x6

    .line 119
    new-array v0, v0, [J

    .line 120
    .line 121
    fill-array-data v0, :array_1

    .line 122
    .line 123
    .line 124
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw p1

    .line 135
    :catch_0
    move-exception p1

    .line 136
    goto :goto_1

    .line 137
    :catch_1
    move-exception p1

    .line 138
    goto :goto_2

    .line 139
    :cond_3
    return-object v2

    .line 140
    :goto_1
    new-instance p2, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 141
    .line 142
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 143
    .line 144
    new-array v1, v1, [J

    .line 145
    .line 146
    fill-array-data v1, :array_2

    .line 147
    .line 148
    .line 149
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    .line 158
    .line 159
    throw p2

    .line 160
    :goto_2
    new-instance p2, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 161
    .line 162
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 163
    .line 164
    new-array v1, v1, [J

    .line 165
    .line 166
    fill-array-data v1, :array_3

    .line 167
    .line 168
    .line 169
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    .line 178
    .line 179
    throw p2

    .line 180
    :cond_4
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 181
    .line 182
    new-instance p2, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 185
    .line 186
    .line 187
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 188
    .line 189
    new-array v0, v0, [J

    .line 190
    .line 191
    fill-array-data v0, :array_4

    .line 192
    .line 193
    .line 194
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    throw p1

    .line 215
    :cond_5
    sget-object p2, Lcom/google/android/gms/common/server/response/FastParser;->zaa:[C

    .line 216
    .line 217
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastParser;->zax(Ljava/io/BufferedReader;[C)V

    .line 218
    .line 219
    .line 220
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    .line 221
    .line 222
    .line 223
    const/4 p1, 0x0

    .line 224
    return-object p1

    .line 225
    :cond_6
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    .line 226
    .line 227
    .line 228
    return-object v2

    .line 229
    :array_0
    .array-data 8
        0x2c1636007ccf5c34L    # 2.5996113934371E-96
        0x5c3b7fdde3148129L    # 1.9987686582154823E136
        -0xa02da264de67b0eL
        -0x6b87227c496668ddL    # -4.727119508044219E-210
    .end array-data

    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    :array_1
    .array-data 8
        0x389d36984a4e6e66L    # 5.494403773765657E-36
        0x10cd37f3f8dbdc0dL    # 9.63589803317479E-228
        -0x6defc143f796ad31L
        -0x4a8181a612fcedfaL
        -0x3ac5ee9482f54b3aL    # -3.1514334352017796E25
        -0x7dd57630bd917183L
    .end array-data

    .line 250
    .line 251
    .line 252
    :array_2
    .array-data 8
        0x6ff1c31067cf1049L    # 1.7234861467911242E231
        0x518d64d1cb00fb4eL    # 7.137808969594063E84
        0x2c229de1d86255dcL    # 4.357874617673277E-96
        0x73caefb5d4c08951L    # 6.026781741013231E249
        -0x7252c0127b27b8ddL    # -8.567521268302908E-243
    .end array-data

    :array_3
    .array-data 8
        -0x738fac2c090b3386L    # -9.121831266006578E-249
        -0x46f858c047a261e7L    # -5.69432870635144E-34
        -0x32ef5b08e9b98a7fL    # -1.7117767647147502E63
        -0x3ace45c85c8eb47cL    # -2.1431125447464035E25
        -0x33e79e09e8c60fa3L    # -3.826311138441112E58
    .end array-data

    :array_4
    .array-data 8
        -0x7daf146ba37a44ccL
        0x69209b58129aa3fL
        0x6d27e5d03c5ac4d1L    # 6.590572546959006E217
        0x6f31135b59d4e313L    # 4.045135129202372E227
    .end array-data
.end method

.method private final zaw(I)V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zat:Ljava/util/Stack;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/16 v2, 0x2e

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zat:Ljava/util/Stack;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-ne v1, p1, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance v3, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 28
    .line 29
    new-instance v4, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 32
    .line 33
    .line 34
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    new-array v5, v0, [J

    .line 37
    .line 38
    fill-array-data v5, :array_0

    .line 39
    .line 40
    .line 41
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    new-array v0, v0, [J

    .line 57
    .line 58
    fill-array-data v0, :array_1

    .line 59
    .line 60
    .line 61
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-static {p1, v4, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-direct {v3, p1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v3

    .line 72
    :cond_1
    new-instance v1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 73
    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 77
    .line 78
    .line 79
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 80
    .line 81
    new-array v0, v0, [J

    .line 82
    .line 83
    fill-array-data v0, :array_2

    .line 84
    .line 85
    .line 86
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 100
    .line 101
    const/4 v0, 0x4

    .line 102
    new-array v0, v0, [J

    .line 103
    .line 104
    fill-array-data v0, :array_3

    .line 105
    .line 106
    .line 107
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 108
    .line 109
    .line 110
    invoke-static {p1, v3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-direct {v1, p1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw v1

    .line 118
    nop

    .line 119
    :array_0
    .array-data 8
        0x2d2c858399874e24L
        -0x616818cf437f04f3L
        -0x19ce229670e98c36L    # -1.8977445706062303E184
    .end array-data

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    :array_1
    .array-data 8
        0x17fabbc81453ac49L    # 3.662173927279481E-193
        0x7c7fa91e5d843128L    # 4.9366828748391123E291
        0x5cf89bb8df83610cL    # 7.326211229734742E139
    .end array-data

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    :array_2
    .array-data 8
        -0x59d0c308692fc08dL    # -9.22947833209296E-125
        0x5e60ecc206dd609bL    # 4.22680648344957E146
        0x219ffbce617e64a9L    # 1.0005290728684028E-146
    .end array-data

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    :array_3
    .array-data 8
        -0x137e4aacd60185cdL    # -4.769180969397397E214
        0x2af8fe30cd4a020bL
        -0x669543520e49ccf0L    # -3.0724572062040007E-186
        -0x2c9bf92fc46131dbL    # -5.221751679791204E93
    .end array-data
.end method

.method private final zax(Ljava/io/BufferedReader;[C)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p2

    .line 4
    if-ge v1, v2, :cond_3

    .line 5
    .line 6
    iget-object v3, p0, Lcom/google/android/gms/common/server/response/FastParser;->zap:[C

    .line 7
    .line 8
    sub-int/2addr v2, v1

    .line 9
    invoke-virtual {p1, v3, v0, v2}, Ljava/io/BufferedReader;->read([CII)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, -0x1

    .line 14
    if-eq v2, v3, :cond_2

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_1
    if-ge v3, v2, :cond_1

    .line 18
    .line 19
    add-int v4, v3, v1

    .line 20
    .line 21
    aget-char v4, p2, v4

    .line 22
    .line 23
    iget-object v5, p0, Lcom/google/android/gms/common/server/response/FastParser;->zap:[C

    .line 24
    .line 25
    aget-char v5, v5, v3

    .line 26
    .line 27
    if-ne v4, v5, :cond_0

    .line 28
    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 33
    .line 34
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/4 v0, 0x4

    .line 37
    new-array v0, v0, [J

    .line 38
    .line 39
    fill-array-data v0, :array_0

    .line 40
    .line 41
    .line 42
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_1
    add-int/2addr v1, v2

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 56
    .line 57
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    const/4 v0, 0x3

    .line 60
    new-array v0, v0, [J

    .line 61
    .line 62
    fill-array-data v0, :array_1

    .line 63
    .line 64
    .line 65
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :cond_3
    return-void

    .line 77
    :array_0
    .array-data 8
        0x18b4731981f697bfL
        0x20d62f6d4ca99b6dL    # 1.694364054348937E-150
        -0x7ec5d3cee0405942L    # -9.541389966700224E-303
        -0x28cf816703fa4edfL    # -9.916950263077223E111
    .end array-data

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    :array_1
    .array-data 8
        0x450db24346888dc4L    # 4.487583877137004E24
        0x75568c36f2c15aa7L    # 1.6927733813153692E257
        0x1afea91baec6820aL    # 1.182232601209395E-178
    .end array-data
.end method

.method private final zay(Ljava/io/BufferedReader;Z)Z
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x22

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq v0, v1, :cond_5

    .line 9
    .line 10
    const/16 v1, 0x66

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eq v0, v1, :cond_3

    .line 14
    .line 15
    const/16 v1, 0x6e

    .line 16
    .line 17
    if-eq v0, v1, :cond_2

    .line 18
    .line 19
    const/16 v1, 0x74

    .line 20
    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    sget-object p2, Lcom/google/android/gms/common/server/response/FastParser;->zac:[C

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget-object p2, Lcom/google/android/gms/common/server/response/FastParser;->zab:[C

    .line 29
    .line 30
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastParser;->zax(Ljava/io/BufferedReader;[C)V

    .line 31
    .line 32
    .line 33
    return v2

    .line 34
    :cond_1
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 35
    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const/16 v1, 0x13

    .line 39
    .line 40
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    new-array v2, v2, [J

    .line 47
    .line 48
    fill-array-data v2, :array_0

    .line 49
    .line 50
    .line 51
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p1

    .line 72
    :cond_2
    sget-object p2, Lcom/google/android/gms/common/server/response/FastParser;->zaa:[C

    .line 73
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastParser;->zax(Ljava/io/BufferedReader;[C)V

    .line 75
    .line 76
    .line 77
    return v3

    .line 78
    :cond_3
    if-eqz p2, :cond_4

    .line 79
    .line 80
    sget-object p2, Lcom/google/android/gms/common/server/response/FastParser;->zae:[C

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_4
    sget-object p2, Lcom/google/android/gms/common/server/response/FastParser;->zad:[C

    .line 84
    .line 85
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastParser;->zax(Ljava/io/BufferedReader;[C)V

    .line 86
    .line 87
    .line 88
    return v3

    .line 89
    :cond_5
    if-nez p2, :cond_6

    .line 90
    .line 91
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/common/server/response/FastParser;->zay(Ljava/io/BufferedReader;Z)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    return p1

    .line 96
    :cond_6
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 97
    .line 98
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 99
    .line 100
    const/4 v0, 0x5

    .line 101
    new-array v0, v0, [J

    .line 102
    .line 103
    fill-array-data v0, :array_1

    .line 104
    .line 105
    .line 106
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p1

    .line 117
    :array_0
    .array-data 8
        -0x54ef92b540c87a9bL    # -2.933713201948567E-101
        0x366365b264ec6252L    # 1.0617711446634947E-46
        0x3c4629e25dc47e13L    # 2.402983446482278E-18
        -0x797b5eff70046d69L    # -2.909312580858562E-277
    .end array-data

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    :array_1
    .array-data 8
        -0x6f50c94bd0d8e92dL
        -0x5ee71d8cbf107cbL    # -9.958269753518892E279
        0x5a69775c38038d2fL    # 3.4477295940316093E127
        0x64e31cefdcb44dfL
        -0x1bb41c68bccb3872L
    .end array-data
.end method

.method private final zaz(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse;)Z
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    const/4 v4, 0x5

    .line 9
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->getFieldMappings()Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaq(Ljava/io/BufferedReader;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    const/4 v8, 0x1

    .line 18
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v9

    .line 22
    if-eqz v6, :cond_1c

    .line 23
    .line 24
    :goto_0
    if-eqz v6, :cond_1b

    .line 25
    .line 26
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    check-cast v6, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    .line 31
    .line 32
    if-nez v6, :cond_0

    .line 33
    .line 34
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zar(Ljava/io/BufferedReader;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v10, v1, Lcom/google/android/gms/common/server/response/FastParser;->zat:Ljava/util/Stack;

    .line 40
    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v11

    .line 45
    invoke-virtual {v10, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    iget v10, v6, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zaa:I

    .line 49
    .line 50
    const/16 v11, 0x2c

    .line 51
    .line 52
    const/16 v12, 0x7b

    .line 53
    .line 54
    const/16 v13, 0x7d

    .line 55
    .line 56
    const/16 v14, 0x6e

    .line 57
    .line 58
    const/4 v15, 0x0

    .line 59
    packed-switch v10, :pswitch_data_0

    .line 60
    .line 61
    .line 62
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 63
    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const/16 v4, 0x1e

    .line 67
    .line 68
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 69
    .line 70
    .line 71
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 72
    .line 73
    new-array v3, v3, [J

    .line 74
    .line 75
    fill-array-data v3, :array_0

    .line 76
    .line 77
    .line 78
    invoke-direct {v4, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-static {v4, v2, v10}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-direct {v0, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v0

    .line 89
    :pswitch_0
    iget-boolean v10, v6, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zab:Z

    .line 90
    .line 91
    if-eqz v10, :cond_3

    .line 92
    .line 93
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    .line 94
    .line 95
    .line 96
    move-result v10

    .line 97
    if-ne v10, v14, :cond_1

    .line 98
    .line 99
    sget-object v10, Lcom/google/android/gms/common/server/response/FastParser;->zaa:[C

    .line 100
    .line 101
    invoke-direct {v1, v0, v10}, Lcom/google/android/gms/common/server/response/FastParser;->zax(Ljava/io/BufferedReader;[C)V

    .line 102
    .line 103
    .line 104
    iget-object v10, v6, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v2, v6, v10, v15}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->addConcreteTypeArrayInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 107
    .line 108
    .line 109
    :goto_1
    move-object v3, v5

    .line 110
    :goto_2
    const/4 v4, 0x4

    .line 111
    goto/16 :goto_9

    .line 112
    .line 113
    :cond_1
    iget-object v12, v1, Lcom/google/android/gms/common/server/response/FastParser;->zat:Ljava/util/Stack;

    .line 114
    .line 115
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v14

    .line 119
    invoke-virtual {v12, v14}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    const/16 v12, 0x5b

    .line 123
    .line 124
    if-ne v10, v12, :cond_2

    .line 125
    .line 126
    iget-object v10, v6, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    .line 127
    .line 128
    invoke-direct {v1, v0, v6}, Lcom/google/android/gms/common/server/response/FastParser;->zav(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/util/ArrayList;

    .line 129
    .line 130
    .line 131
    move-result-object v12

    .line 132
    invoke-virtual {v2, v6, v10, v12}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->addConcreteTypeArrayInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_2
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 137
    .line 138
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 139
    .line 140
    new-array v3, v3, [J

    .line 141
    .line 142
    fill-array-data v3, :array_1

    .line 143
    .line 144
    .line 145
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-direct {v0, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw v0

    .line 156
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    .line 157
    .line 158
    .line 159
    move-result v10

    .line 160
    if-ne v10, v14, :cond_4

    .line 161
    .line 162
    sget-object v10, Lcom/google/android/gms/common/server/response/FastParser;->zaa:[C

    .line 163
    .line 164
    invoke-direct {v1, v0, v10}, Lcom/google/android/gms/common/server/response/FastParser;->zax(Ljava/io/BufferedReader;[C)V

    .line 165
    .line 166
    .line 167
    iget-object v10, v6, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {v2, v6, v10, v15}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->addConcreteTypeInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_4
    iget-object v14, v1, Lcom/google/android/gms/common/server/response/FastParser;->zat:Ljava/util/Stack;

    .line 174
    .line 175
    invoke-virtual {v14, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    if-ne v10, v12, :cond_5

    .line 179
    .line 180
    :try_start_0
    invoke-virtual {v6}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zad()Lcom/google/android/gms/common/server/response/FastJsonResponse;

    .line 181
    .line 182
    .line 183
    move-result-object v10

    .line 184
    invoke-direct {v1, v0, v10}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse;)Z

    .line 185
    .line 186
    .line 187
    iget-object v12, v6, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v2, v6, v12, v10}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->addConcreteTypeInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .line 191
    .line 192
    goto :goto_1

    .line 193
    :catch_0
    move-exception v0

    .line 194
    goto :goto_3

    .line 195
    :catch_1
    move-exception v0

    .line 196
    goto :goto_4

    .line 197
    :goto_3
    new-instance v2, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 198
    .line 199
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 200
    .line 201
    new-array v4, v4, [J

    .line 202
    .line 203
    fill-array-data v4, :array_2

    .line 204
    .line 205
    .line 206
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    .line 215
    .line 216
    throw v2

    .line 217
    :goto_4
    new-instance v2, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 218
    .line 219
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 220
    .line 221
    new-array v4, v4, [J

    .line 222
    .line 223
    fill-array-data v4, :array_3

    .line 224
    .line 225
    .line 226
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 234
    .line 235
    .line 236
    throw v2

    .line 237
    :cond_5
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 238
    .line 239
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 240
    .line 241
    new-array v3, v3, [J

    .line 242
    .line 243
    fill-array-data v3, :array_4

    .line 244
    .line 245
    .line 246
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    invoke-direct {v0, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    throw v0

    .line 257
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    .line 258
    .line 259
    .line 260
    move-result v10

    .line 261
    if-ne v10, v14, :cond_6

    .line 262
    .line 263
    sget-object v10, Lcom/google/android/gms/common/server/response/FastParser;->zaa:[C

    .line 264
    .line 265
    invoke-direct {v1, v0, v10}, Lcom/google/android/gms/common/server/response/FastParser;->zax(Ljava/io/BufferedReader;[C)V

    .line 266
    .line 267
    .line 268
    move-object v10, v15

    .line 269
    goto/16 :goto_8

    .line 270
    .line 271
    :cond_6
    if-ne v10, v12, :cond_10

    .line 272
    .line 273
    iget-object v10, v1, Lcom/google/android/gms/common/server/response/FastParser;->zat:Ljava/util/Stack;

    .line 274
    .line 275
    invoke-virtual {v10, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    new-instance v10, Ljava/util/HashMap;

    .line 279
    .line 280
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 281
    .line 282
    .line 283
    :goto_5
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    .line 284
    .line 285
    .line 286
    move-result v12

    .line 287
    if-eqz v12, :cond_f

    .line 288
    .line 289
    const/16 v14, 0x22

    .line 290
    .line 291
    if-eq v12, v14, :cond_8

    .line 292
    .line 293
    if-eq v12, v13, :cond_7

    .line 294
    .line 295
    goto :goto_5

    .line 296
    :cond_7
    invoke-direct {v1, v8}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    .line 297
    .line 298
    .line 299
    goto/16 :goto_8

    .line 300
    .line 301
    :cond_8
    iget-object v12, v1, Lcom/google/android/gms/common/server/response/FastParser;->zap:[C

    .line 302
    .line 303
    iget-object v3, v1, Lcom/google/android/gms/common/server/response/FastParser;->zar:Ljava/lang/StringBuilder;

    .line 304
    .line 305
    invoke-static {v0, v12, v3, v15}, Lcom/google/android/gms/common/server/response/FastParser;->zaA(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    .line 310
    .line 311
    .line 312
    move-result v12

    .line 313
    const/16 v7, 0x3a

    .line 314
    .line 315
    if-eq v12, v7, :cond_a

    .line 316
    .line 317
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 318
    .line 319
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 324
    .line 325
    new-array v4, v4, [J

    .line 326
    .line 327
    fill-array-data v4, :array_5

    .line 328
    .line 329
    .line 330
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 338
    .line 339
    .line 340
    move-result v4

    .line 341
    if-eqz v4, :cond_9

    .line 342
    .line 343
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    goto :goto_6

    .line 348
    :cond_9
    new-instance v2, Ljava/lang/String;

    .line 349
    .line 350
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    :goto_6
    invoke-direct {v0, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    throw v0

    .line 357
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    .line 358
    .line 359
    .line 360
    move-result v7

    .line 361
    if-eq v7, v14, :cond_c

    .line 362
    .line 363
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 364
    .line 365
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 370
    .line 371
    new-array v4, v4, [J

    .line 372
    .line 373
    fill-array-data v4, :array_6

    .line 374
    .line 375
    .line 376
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 384
    .line 385
    .line 386
    move-result v4

    .line 387
    if-eqz v4, :cond_b

    .line 388
    .line 389
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v2

    .line 393
    goto :goto_7

    .line 394
    :cond_b
    new-instance v2, Ljava/lang/String;

    .line 395
    .line 396
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    :goto_7
    invoke-direct {v0, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    throw v0

    .line 403
    :cond_c
    iget-object v7, v1, Lcom/google/android/gms/common/server/response/FastParser;->zap:[C

    .line 404
    .line 405
    iget-object v12, v1, Lcom/google/android/gms/common/server/response/FastParser;->zar:Ljava/lang/StringBuilder;

    .line 406
    .line 407
    invoke-static {v0, v7, v12, v15}, Lcom/google/android/gms/common/server/response/FastParser;->zaA(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v7

    .line 411
    invoke-virtual {v10, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    .line 415
    .line 416
    .line 417
    move-result v3

    .line 418
    if-eq v3, v11, :cond_e

    .line 419
    .line 420
    if-ne v3, v13, :cond_d

    .line 421
    .line 422
    invoke-direct {v1, v8}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    .line 423
    .line 424
    .line 425
    :goto_8
    invoke-virtual {v2, v6, v10}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaB(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/Map;)V

    .line 426
    .line 427
    .line 428
    goto/16 :goto_1

    .line 429
    .line 430
    :cond_d
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 431
    .line 432
    new-instance v2, Ljava/lang/StringBuilder;

    .line 433
    .line 434
    const/16 v4, 0x30

    .line 435
    .line 436
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 437
    .line 438
    .line 439
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 440
    .line 441
    const/4 v5, 0x7

    .line 442
    new-array v5, v5, [J

    .line 443
    .line 444
    fill-array-data v5, :array_7

    .line 445
    .line 446
    .line 447
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v4

    .line 454
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    invoke-direct {v0, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    throw v0

    .line 468
    :cond_e
    const/4 v3, 0x4

    .line 469
    goto/16 :goto_5

    .line 470
    .line 471
    :cond_f
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 472
    .line 473
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 474
    .line 475
    const/4 v3, 0x3

    .line 476
    new-array v3, v3, [J

    .line 477
    .line 478
    fill-array-data v3, :array_8

    .line 479
    .line 480
    .line 481
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    invoke-direct {v0, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    throw v0

    .line 492
    :cond_10
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 493
    .line 494
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 495
    .line 496
    new-array v3, v4, [J

    .line 497
    .line 498
    fill-array-data v3, :array_9

    .line 499
    .line 500
    .line 501
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v2

    .line 508
    invoke-direct {v0, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    throw v0

    .line 512
    :pswitch_2
    iget-object v3, v1, Lcom/google/android/gms/common/server/response/FastParser;->zaq:[C

    .line 513
    .line 514
    iget-object v7, v1, Lcom/google/android/gms/common/server/response/FastParser;->zas:Ljava/lang/StringBuilder;

    .line 515
    .line 516
    sget-object v10, Lcom/google/android/gms/common/server/response/FastParser;->zaf:[C

    .line 517
    .line 518
    invoke-direct {v1, v0, v3, v7, v10}, Lcom/google/android/gms/common/server/response/FastParser;->zap(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v3

    .line 522
    invoke-static {v3}, Lcom/google/android/gms/common/util/Base64Utils;->decodeUrlSafe(Ljava/lang/String;)[B

    .line 523
    .line 524
    .line 525
    move-result-object v3

    .line 526
    invoke-virtual {v2, v6, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;[B)V

    .line 527
    .line 528
    .line 529
    goto/16 :goto_1

    .line 530
    .line 531
    :pswitch_3
    iget-object v3, v1, Lcom/google/android/gms/common/server/response/FastParser;->zaq:[C

    .line 532
    .line 533
    iget-object v7, v1, Lcom/google/android/gms/common/server/response/FastParser;->zas:Ljava/lang/StringBuilder;

    .line 534
    .line 535
    sget-object v10, Lcom/google/android/gms/common/server/response/FastParser;->zaf:[C

    .line 536
    .line 537
    invoke-direct {v1, v0, v3, v7, v10}, Lcom/google/android/gms/common/server/response/FastParser;->zap(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v3

    .line 541
    invoke-static {v3}, Lcom/google/android/gms/common/util/Base64Utils;->decode(Ljava/lang/String;)[B

    .line 542
    .line 543
    .line 544
    move-result-object v3

    .line 545
    invoke-virtual {v2, v6, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;[B)V

    .line 546
    .line 547
    .line 548
    goto/16 :goto_1

    .line 549
    .line 550
    :pswitch_4
    iget-boolean v3, v6, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zab:Z

    .line 551
    .line 552
    if-eqz v3, :cond_11

    .line 553
    .line 554
    sget-object v3, Lcom/google/android/gms/common/server/response/FastParser;->zal:Lcom/google/android/gms/common/server/response/zai;

    .line 555
    .line 556
    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/common/server/response/FastParser;->zau(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/zai;)Ljava/util/ArrayList;

    .line 557
    .line 558
    .line 559
    move-result-object v3

    .line 560
    invoke-virtual {v2, v6, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaC(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    .line 561
    .line 562
    .line 563
    goto/16 :goto_1

    .line 564
    .line 565
    :cond_11
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zao(Ljava/io/BufferedReader;)Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v3

    .line 569
    invoke-virtual {v2, v6, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaA(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    goto/16 :goto_1

    .line 573
    .line 574
    :pswitch_5
    iget-boolean v3, v6, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zab:Z

    .line 575
    .line 576
    if-eqz v3, :cond_12

    .line 577
    .line 578
    sget-object v3, Lcom/google/android/gms/common/server/response/FastParser;->zak:Lcom/google/android/gms/common/server/response/zai;

    .line 579
    .line 580
    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/common/server/response/FastParser;->zau(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/zai;)Ljava/util/ArrayList;

    .line 581
    .line 582
    .line 583
    move-result-object v3

    .line 584
    invoke-virtual {v2, v6, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaj(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    .line 585
    .line 586
    .line 587
    goto/16 :goto_1

    .line 588
    .line 589
    :cond_12
    const/4 v3, 0x0

    .line 590
    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/common/server/response/FastParser;->zay(Ljava/io/BufferedReader;Z)Z

    .line 591
    .line 592
    .line 593
    move-result v7

    .line 594
    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zai(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Z)V

    .line 595
    .line 596
    .line 597
    goto/16 :goto_1

    .line 598
    .line 599
    :pswitch_6
    iget-boolean v3, v6, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zab:Z

    .line 600
    .line 601
    if-eqz v3, :cond_13

    .line 602
    .line 603
    sget-object v3, Lcom/google/android/gms/common/server/response/FastParser;->zan:Lcom/google/android/gms/common/server/response/zai;

    .line 604
    .line 605
    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/common/server/response/FastParser;->zau(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/zai;)Ljava/util/ArrayList;

    .line 606
    .line 607
    .line 608
    move-result-object v3

    .line 609
    invoke-virtual {v2, v6, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zac(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    .line 610
    .line 611
    .line 612
    goto/16 :goto_1

    .line 613
    .line 614
    :cond_13
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zas(Ljava/io/BufferedReader;)Ljava/math/BigDecimal;

    .line 615
    .line 616
    .line 617
    move-result-object v3

    .line 618
    invoke-virtual {v2, v6, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaa(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/math/BigDecimal;)V

    .line 619
    .line 620
    .line 621
    goto/16 :goto_1

    .line 622
    .line 623
    :pswitch_7
    iget-boolean v3, v6, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zab:Z

    .line 624
    .line 625
    if-eqz v3, :cond_14

    .line 626
    .line 627
    sget-object v3, Lcom/google/android/gms/common/server/response/FastParser;->zaj:Lcom/google/android/gms/common/server/response/zai;

    .line 628
    .line 629
    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/common/server/response/FastParser;->zau(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/zai;)Ljava/util/ArrayList;

    .line 630
    .line 631
    .line 632
    move-result-object v3

    .line 633
    invoke-virtual {v2, v6, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zao(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    .line 634
    .line 635
    .line 636
    goto/16 :goto_1

    .line 637
    .line 638
    :cond_14
    move-object v3, v5

    .line 639
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaj(Ljava/io/BufferedReader;)D

    .line 640
    .line 641
    .line 642
    move-result-wide v4

    .line 643
    invoke-virtual {v2, v6, v4, v5}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zam(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;D)V

    .line 644
    .line 645
    .line 646
    goto/16 :goto_2

    .line 647
    .line 648
    :pswitch_8
    move-object v3, v5

    .line 649
    iget-boolean v4, v6, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zab:Z

    .line 650
    .line 651
    if-eqz v4, :cond_15

    .line 652
    .line 653
    sget-object v4, Lcom/google/android/gms/common/server/response/FastParser;->zai:Lcom/google/android/gms/common/server/response/zai;

    .line 654
    .line 655
    invoke-direct {v1, v0, v4}, Lcom/google/android/gms/common/server/response/FastParser;->zau(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/zai;)Ljava/util/ArrayList;

    .line 656
    .line 657
    .line 658
    move-result-object v4

    .line 659
    invoke-virtual {v2, v6, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zas(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    .line 660
    .line 661
    .line 662
    goto/16 :goto_2

    .line 663
    .line 664
    :cond_15
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zak(Ljava/io/BufferedReader;)F

    .line 665
    .line 666
    .line 667
    move-result v4

    .line 668
    invoke-virtual {v2, v6, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaq(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;F)V

    .line 669
    .line 670
    .line 671
    goto/16 :goto_2

    .line 672
    .line 673
    :pswitch_9
    move-object v3, v5

    .line 674
    iget-boolean v4, v6, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zab:Z

    .line 675
    .line 676
    if-eqz v4, :cond_16

    .line 677
    .line 678
    sget-object v4, Lcom/google/android/gms/common/server/response/FastParser;->zah:Lcom/google/android/gms/common/server/response/zai;

    .line 679
    .line 680
    invoke-direct {v1, v0, v4}, Lcom/google/android/gms/common/server/response/FastParser;->zau(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/zai;)Ljava/util/ArrayList;

    .line 681
    .line 682
    .line 683
    move-result-object v4

    .line 684
    invoke-virtual {v2, v6, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zay(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    .line 685
    .line 686
    .line 687
    goto/16 :goto_2

    .line 688
    .line 689
    :cond_16
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zan(Ljava/io/BufferedReader;)J

    .line 690
    .line 691
    .line 692
    move-result-wide v4

    .line 693
    invoke-virtual {v2, v6, v4, v5}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zax(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;J)V

    .line 694
    .line 695
    .line 696
    goto/16 :goto_2

    .line 697
    .line 698
    :pswitch_a
    move-object v3, v5

    .line 699
    iget-boolean v4, v6, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zab:Z

    .line 700
    .line 701
    if-eqz v4, :cond_17

    .line 702
    .line 703
    sget-object v4, Lcom/google/android/gms/common/server/response/FastParser;->zam:Lcom/google/android/gms/common/server/response/zai;

    .line 704
    .line 705
    invoke-direct {v1, v0, v4}, Lcom/google/android/gms/common/server/response/FastParser;->zau(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/zai;)Ljava/util/ArrayList;

    .line 706
    .line 707
    .line 708
    move-result-object v4

    .line 709
    invoke-virtual {v2, v6, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zag(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    .line 710
    .line 711
    .line 712
    goto/16 :goto_2

    .line 713
    .line 714
    :cond_17
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zat(Ljava/io/BufferedReader;)Ljava/math/BigInteger;

    .line 715
    .line 716
    .line 717
    move-result-object v4

    .line 718
    invoke-virtual {v2, v6, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zae(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/math/BigInteger;)V

    .line 719
    .line 720
    .line 721
    goto/16 :goto_2

    .line 722
    .line 723
    :pswitch_b
    move-object v3, v5

    .line 724
    iget-boolean v4, v6, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zab:Z

    .line 725
    .line 726
    if-eqz v4, :cond_18

    .line 727
    .line 728
    sget-object v4, Lcom/google/android/gms/common/server/response/FastParser;->zag:Lcom/google/android/gms/common/server/response/zai;

    .line 729
    .line 730
    invoke-direct {v1, v0, v4}, Lcom/google/android/gms/common/server/response/FastParser;->zau(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/zai;)Ljava/util/ArrayList;

    .line 731
    .line 732
    .line 733
    move-result-object v4

    .line 734
    invoke-virtual {v2, v6, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zav(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    .line 735
    .line 736
    .line 737
    goto/16 :goto_2

    .line 738
    .line 739
    :cond_18
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zal(Ljava/io/BufferedReader;)I

    .line 740
    .line 741
    .line 742
    move-result v4

    .line 743
    invoke-virtual {v2, v6, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zau(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;I)V

    .line 744
    .line 745
    .line 746
    goto/16 :goto_2

    .line 747
    .line 748
    :goto_9
    invoke-direct {v1, v4}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    .line 749
    .line 750
    .line 751
    const/4 v5, 0x2

    .line 752
    invoke-direct {v1, v5}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    .line 753
    .line 754
    .line 755
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    .line 756
    .line 757
    .line 758
    move-result v5

    .line 759
    if-eq v5, v11, :cond_1a

    .line 760
    .line 761
    if-ne v5, v13, :cond_19

    .line 762
    .line 763
    move-object v5, v3

    .line 764
    move-object v6, v15

    .line 765
    :goto_a
    const/4 v3, 0x4

    .line 766
    const/4 v4, 0x5

    .line 767
    goto/16 :goto_0

    .line 768
    .line 769
    :cond_19
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 770
    .line 771
    new-instance v2, Ljava/lang/StringBuilder;

    .line 772
    .line 773
    const/16 v3, 0x37

    .line 774
    .line 775
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 776
    .line 777
    .line 778
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 779
    .line 780
    const/16 v4, 0x8

    .line 781
    .line 782
    new-array v4, v4, [J

    .line 783
    .line 784
    fill-array-data v4, :array_a

    .line 785
    .line 786
    .line 787
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 788
    .line 789
    .line 790
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 791
    .line 792
    .line 793
    move-result-object v3

    .line 794
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    .line 796
    .line 797
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 798
    .line 799
    .line 800
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 801
    .line 802
    .line 803
    move-result-object v2

    .line 804
    invoke-direct {v0, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 805
    .line 806
    .line 807
    throw v0

    .line 808
    :cond_1a
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaq(Ljava/io/BufferedReader;)Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object v6

    .line 812
    move-object v5, v3

    .line 813
    goto :goto_a

    .line 814
    :cond_1b
    invoke-direct {v1, v8}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    .line 815
    .line 816
    .line 817
    return v8

    .line 818
    :cond_1c
    invoke-direct {v1, v8}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V

    .line 819
    .line 820
    .line 821
    const/4 v0, 0x0

    .line 822
    return v0

    .line 823
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    :array_0
    .array-data 8
        -0x4d1685e989e45681L    # -1.9353414367492766E-63
        0x4a71cb827ef6b73dL    # 4.1611780988927125E50
        0x8d1a402c2660ec6L
        -0x46df0e95c5851226L    # -1.631554168506527E-33
    .end array-data

    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    :array_1
    .array-data 8
        -0x19c08d3a1bfabe5L    # -6.685383542324432E300
        0xeebec54b3a867eL
        -0x4acb1b38cd220562L    # -2.181400360265596E-52
        0x3e617e7178121e06L    # 3.258496318001243E-8
    .end array-data

    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    :array_2
    .array-data 8
        -0x19c50ace131d7634L    # -2.8636616182805425E184
        0x4a1aeeae78d6ce90L    # 9.84041830757335E48
        -0x1cea69cf9ef3a35fL    # -2.0366825748193945E169
        0x61500d06097a9644L    # 5.641523094413542E160
        -0x2eaf75302cae0e9dL    # -5.02126292951791E83
    .end array-data

    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    :array_3
    .array-data 8
        -0x4e6d014acc804719L    # -6.880487725844869E-70
        0x61394194da643154L    # 2.219245423003038E160
        0x6643dc30bc772428L
        0x547aef821cc82dacL    # 9.205447644793209E98
        0x22fa801ad984ec31L    # 3.477079475036297E-140
    .end array-data

    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    :array_4
    .array-data 8
        0x10ee460f44242874L
        0x578d89d5038cbdb2L    # 5.682971090042566E113
        0x62a2707ea9d539c1L    # 1.3591743409960283E167
        -0x73b9bbfca3a4fed3L    # -1.554925170639619E-249
    .end array-data

    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    :array_5
    .array-data 8
        0x6746c1ec37a28ad9L    # 3.1686337555346974E189
        -0x67969660f27a39a7L
        -0x534beedcc019f4dfL    # -2.4050416071699346E-93
        0x127694981cdb5683L    # 9.994836421712072E-220
        0x45fd36cf0862f65bL    # 1.4466119941832145E29
    .end array-data

    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    :array_6
    .array-data 8
        0x5ba623ae2842c397L    # 3.14292108177047E133
        -0x40aec7273022136eL    # -0.0010511510185711487
        -0x6afab1d0ebc99ebbL    # -2.073780603486532E-207
        -0xf8e214b8ac41b53L    # -4.438945091053965E233
        0x16fad8b5c047ddb4L    # 5.611654354182896E-198
    .end array-data

    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    :array_7
    .array-data 8
        -0x6ca1c6296d785312L
        0x13d65c146a82446dL    # 4.151153464469473E-213
        -0x106bfc3f72e9096L
        -0x4f2325566afaac27L    # -2.5516984722464525E-73
        0x2e32d12dc02e86c9L    # 3.7836768871437575E-86
        0xf2e7ea98b299d6dL
        -0x355d76d568639407L    # -3.467534213893146E51
    .end array-data

    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    :array_8
    .array-data 8
        0x1bba674d2819505eL    # 4.170079923577428E-175
        -0x5ee983dc19e9369aL    # -2.747600328265417E-149
        0x65b792cbb8546a13L    # 9.781827753879351E181
    .end array-data

    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    :array_9
    .array-data 8
        0x182272ed740ceae9L    # 2.021827492822169E-192
        0x62f57a31b4dc9455L    # 5.065912643256832E168
        0x2f7aeb018ee000daL    # 5.6754961086175525E-80
        -0x68a2f147490964bcL    # -3.887238364215889E-196
        -0xb8e8c8018b4a3c7L    # -7.996518278722054E252
    .end array-data

    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    :array_a
    .array-data 8
        0x785a6dd9b1e33b3bL    # 5.584940233234438E271
        0x2d875d80932440d0L    # 2.2940432487960148E-89
        0xcc44c76d2cfde9dL
        0x1957947981e00ad0L
        -0x26381aea938b0802L    # -3.159167720572547E124
        0x46892d760569ddd5L    # 6.383275414752028E31
        -0x5ccfe1bd9d573920L    # -3.383752305357542E-139
        0x6578acca7387aa36L    # 6.399321746860838E180
    .end array-data
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    .locals 6
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/server/response/FastJsonResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "TT;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x3

    .line 3
    new-instance v2, Ljava/io/BufferedReader;

    .line 4
    .line 5
    new-instance v3, Ljava/io/InputStreamReader;

    .line 6
    .line 7
    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x400

    .line 11
    .line 12
    invoke-direct {v2, v3, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zat:Ljava/util/Stack;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {p1, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v2}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)C

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    const/16 v4, 0x5b

    .line 32
    .line 33
    const/4 v5, 0x1

    .line 34
    if-eq p1, v4, :cond_1

    .line 35
    .line 36
    const/16 v4, 0x7b

    .line 37
    .line 38
    if-ne p1, v4, :cond_0

    .line 39
    .line 40
    iget-object p1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zat:Ljava/util/Stack;

    .line 41
    .line 42
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {p1, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, v2, p2}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    goto/16 :goto_2

    .line 55
    .line 56
    :catch_0
    move-exception p1

    .line 57
    goto/16 :goto_1

    .line 58
    .line 59
    :cond_0
    new-instance p2, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 60
    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const/16 v4, 0x13

    .line 64
    .line 65
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 66
    .line 67
    .line 68
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    const/4 v5, 0x4

    .line 71
    new-array v5, v5, [J

    .line 72
    .line 73
    fill-array-data v5, :array_0

    .line 74
    .line 75
    .line 76
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-direct {p2, p1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p2

    .line 97
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zat:Ljava/util/Stack;

    .line 98
    .line 99
    const/4 v4, 0x5

    .line 100
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {p1, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->getFieldMappings()Ljava/util/Map;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-ne v4, v5, :cond_2

    .line 116
    .line 117
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    check-cast p1, Ljava/util/Map$Entry;

    .line 130
    .line 131
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    check-cast p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    .line 136
    .line 137
    invoke-direct {p0, v2, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zav(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/util/ArrayList;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    iget-object v5, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {p2, p1, v5, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->addConcreteTypeArrayInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 144
    .line 145
    .line 146
    :goto_0
    invoke-direct {p0, v3}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .line 148
    .line 149
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :catch_1
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 154
    .line 155
    new-array p2, v1, [J

    .line 156
    .line 157
    fill-array-data p2, :array_1

    .line 158
    .line 159
    .line 160
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 167
    .line 168
    new-array p2, v0, [J

    .line 169
    .line 170
    fill-array-data p2, :array_2

    .line 171
    .line 172
    .line 173
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :cond_2
    :try_start_2
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 181
    .line 182
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 183
    .line 184
    const/16 v3, 0x8

    .line 185
    .line 186
    new-array v3, v3, [J

    .line 187
    .line 188
    fill-array-data v3, :array_3

    .line 189
    .line 190
    .line 191
    invoke-direct {p2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw p1

    .line 202
    :cond_3
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 203
    .line 204
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 205
    .line 206
    new-array v3, v1, [J

    .line 207
    .line 208
    fill-array-data v3, :array_4

    .line 209
    .line 210
    .line 211
    invoke-direct {p2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    :goto_1
    :try_start_3
    new-instance p2, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 223
    .line 224
    invoke-direct {p2, p1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/Throwable;)V

    .line 225
    .line 226
    .line 227
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 228
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 229
    .line 230
    .line 231
    goto :goto_3

    .line 232
    :catch_2
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 233
    .line 234
    new-array v1, v1, [J

    .line 235
    .line 236
    fill-array-data v1, :array_5

    .line 237
    .line 238
    .line 239
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 246
    .line 247
    new-array v0, v0, [J

    .line 248
    .line 249
    fill-array-data v0, :array_6

    .line 250
    .line 251
    .line 252
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    :goto_3
    throw p1

    .line 259
    :array_0
    .array-data 8
        0x4829a1321dcc3f02L    # 4.360662549779842E39
        0x286c29d9adb71490L
        -0xfab76c6232d0a2eL    # -1.275302893797366E233
        0x6cf575898136a3e0L    # 7.397568479464002E216
    .end array-data

    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    :array_1
    .array-data 8
        -0x2d168e868cae6b83L    # -2.5914417414195597E91
        0x777f55b2cc182210L    # 4.041499528180861E267
        0x5cf07b33bc3e2708L    # 4.906687144712816E139
    .end array-data

    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    :array_2
    .array-data 8
        0x3181129a79a053dbL    # 3.092092338873391E-70
        -0x20fde528a61bd345L    # -4.630018830420842E149
        0x18b3bca900c3fcfcL
        -0x738953d8af0cbafaL    # -1.266667187114497E-248
        -0x47cce8e1b2ca5140L    # -5.610136748626749E-38
        -0x490c76f82869fd98L    # -5.474950426974973E-44
    .end array-data

    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    :array_3
    .array-data 8
        -0x287e447c62bb9cd3L    # -3.411597507935087E113
        -0x8c306e4f74c7c32L
        -0x15c22926ba78afe6L    # -5.84716070206075E203
        -0x62bb6e99371b7ef2L    # -1.0899936091223105E-167
        -0x34264380e6a026c9L    # -2.524210369510007E57
        -0x31afa5f9611a5ed3L    # -1.7633599060761427E69
        -0x1a29726675ef19e5L    # -3.7433815788956576E182
        0x1369e74b043228c8L    # 3.757087963295038E-215
    .end array-data

    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    :array_4
    .array-data 8
        -0x9dcff2a9a00283L    # -3.99119991986381E305
        -0x23c97accd6969a04L    # -1.636863478418078E136
        0x9a0882930b17a00L
    .end array-data

    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    :array_5
    .array-data 8
        -0x2e66b7c9b4ecb251L    # -1.2278676833640305E85
        0x35b4453a05a86c6L
        -0x290beed8b2d2704fL    # -7.540514874522908E110
    .end array-data

    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    :array_6
    .array-data 8
        0x5011be334f1a31e0L    # 5.13623903352418E77
        -0x53447c24f080910fL    # -3.297705270102712E-93
        -0x20e485cedf8d89f3L    # -1.405374615724499E150
        0x5e36822907aa5623L    # 7.026568546716936E145
        0x4114b69c3acd76c6L    # 339367.0574244078
        0x18a0c6ecd528f86cL    # 4.706828523943047E-190
    .end array-data
.end method
