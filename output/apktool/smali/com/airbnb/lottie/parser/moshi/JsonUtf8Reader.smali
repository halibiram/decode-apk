.class final Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;
.super Lcom/airbnb/lottie/parser/moshi/JsonReader;
.source "SourceFile"


# static fields
.field private static final CLOSING_BLOCK_COMMENT:Lokio/ByteString;

.field private static final DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

.field private static final LINEFEED_OR_CARRIAGE_RETURN:Lokio/ByteString;

.field private static final MIN_INCOMPLETE_INTEGER:J = -0xcccccccccccccccL

.field private static final NUMBER_CHAR_DECIMAL:I = 0x3

.field private static final NUMBER_CHAR_DIGIT:I = 0x2

.field private static final NUMBER_CHAR_EXP_DIGIT:I = 0x7

.field private static final NUMBER_CHAR_EXP_E:I = 0x5

.field private static final NUMBER_CHAR_EXP_SIGN:I = 0x6

.field private static final NUMBER_CHAR_FRACTION_DIGIT:I = 0x4

.field private static final NUMBER_CHAR_NONE:I = 0x0

.field private static final NUMBER_CHAR_SIGN:I = 0x1

.field private static final PEEKED_BEGIN_ARRAY:I = 0x3

.field private static final PEEKED_BEGIN_OBJECT:I = 0x1

.field private static final PEEKED_BUFFERED:I = 0xb

.field private static final PEEKED_BUFFERED_NAME:I = 0xf

.field private static final PEEKED_DOUBLE_QUOTED:I = 0x9

.field private static final PEEKED_DOUBLE_QUOTED_NAME:I = 0xd

.field private static final PEEKED_END_ARRAY:I = 0x4

.field private static final PEEKED_END_OBJECT:I = 0x2

.field private static final PEEKED_EOF:I = 0x12

.field private static final PEEKED_FALSE:I = 0x6

.field private static final PEEKED_LONG:I = 0x10

.field private static final PEEKED_NONE:I = 0x0

.field private static final PEEKED_NULL:I = 0x7

.field private static final PEEKED_NUMBER:I = 0x11

.field private static final PEEKED_SINGLE_QUOTED:I = 0x8

.field private static final PEEKED_SINGLE_QUOTED_NAME:I = 0xc

.field private static final PEEKED_TRUE:I = 0x5

.field private static final PEEKED_UNQUOTED:I = 0xa

.field private static final PEEKED_UNQUOTED_NAME:I = 0xe

.field private static final SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

.field private static final UNQUOTED_STRING_TERMINALS:Lokio/ByteString;


# instance fields
.field private final buffer:Lokio/Buffer;

.field private peeked:I

.field private peekedLong:J

.field private peekedNumberLength:I

.field private peekedString:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final source:Lokio/BufferedSource;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 21
    .line 22
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    new-array v2, v1, [J

    .line 25
    .line 26
    fill-array-data v2, :array_1

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 41
    .line 42
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    const/4 v2, 0x3

    .line 45
    new-array v2, v2, [J

    .line 46
    .line 47
    fill-array-data v2, :array_2

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->UNQUOTED_STRING_TERMINALS:Lokio/ByteString;

    .line 62
    .line 63
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 64
    .line 65
    new-array v2, v1, [J

    .line 66
    .line 67
    fill-array-data v2, :array_3

    .line 68
    .line 69
    .line 70
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->LINEFEED_OR_CARRIAGE_RETURN:Lokio/ByteString;

    .line 82
    .line 83
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    new-array v1, v1, [J

    .line 86
    .line 87
    fill-array-data v1, :array_4

    .line 88
    .line 89
    .line 90
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->CLOSING_BLOCK_COMMENT:Lokio/ByteString;

    .line 102
    .line 103
    return-void

    .line 104
    nop

    .line 105
    :array_0
    .array-data 8
        -0x5c4d0c1b21268f50L    # -1.0185757171800065E-136
        -0x667709e921a81b36L
    .end array-data

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    :array_1
    .array-data 8
        0x39883c8b5f2f6ec8L    # 1.4936897364996247E-31
        -0x52c304ded733114bL    # -8.891894601589459E-91
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
    :array_2
    .array-data 8
        0xef930b806ebe418L
        -0x6213d2c8bc2d2783L
        -0x12092c158b4dc7b8L    # -5.157281223296828E221
    .end array-data

    .line 130
    .line 131
    .line 132
    .line 133
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
    :array_3
    .array-data 8
        -0x3cfe61bb151917ccL    # -6.198866800058945E14
        -0x100866c826fcb4c9L    # -2.2898194544271914E231
    .end array-data

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
    :array_4
    .array-data 8
        0x34d0f3438f3ea3c7L    # 2.765138490605107E-54
        -0x1af89a2a0d9fd131L    # -4.740699122439558E178
    .end array-data
.end method

.method public constructor <init>(Lokio/BufferedSource;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    .line 10
    .line 11
    invoke-interface {p1}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 16
    .line 17
    const/4 p1, 0x6

    .line 18
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pushScope(I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 23
    .line 24
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    new-array v1, v1, [J

    .line 28
    .line 29
    fill-array-data v1, :array_0

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :array_0
    .array-data 8
        -0x379a89f0df5bf4eaL    # -5.84228572426333E40
        0x529604ae71102c0dL    # 7.008131606945952E89
        -0x71ac9aee33b7bb24L    # -1.163452960146734E-239
    .end array-data
.end method

.method private checkLenient()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->lenient:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v1, v1, [J

    .line 11
    .line 12
    fill-array-data v1, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    throw v0

    .line 27
    :array_0
    .array-data 8
        0x4a58cef08a4d300dL    # 1.450298224853604E50
        0x7b18234bcbfff3bbL    # 8.973357183340485E284
        -0x4951df06dd1c033dL    # -2.638715206205279E-45
        -0x1c2fb7f5dab89c91L    # -6.292009981522997E172
        -0x10674569f9ff9af7L    # -3.7492177372005436E229
        -0x5894072db55f0f92L
        0x6fb1e917d239007eL    # 1.0861877315255107E230
        0x57a3802e84f640ffL    # 1.5007169717458981E114
    .end array-data
.end method

.method private doPeek()I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->scopes:[I

    .line 4
    .line 5
    iget v2, v0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    add-int/lit8 v4, v2, -0x1

    .line 9
    .line 10
    aget v4, v1, v4

    .line 11
    .line 12
    const/16 v6, 0x22

    .line 13
    .line 14
    const/16 v7, 0x8

    .line 15
    .line 16
    const-wide/16 v8, 0x0

    .line 17
    .line 18
    const/4 v10, 0x3

    .line 19
    const/16 v11, 0x5d

    .line 20
    .line 21
    const/4 v12, 0x7

    .line 22
    const/16 v13, 0x3b

    .line 23
    .line 24
    const/16 v14, 0x2c

    .line 25
    .line 26
    const/4 v15, 0x4

    .line 27
    const/4 v5, 0x2

    .line 28
    if-ne v4, v3, :cond_0

    .line 29
    .line 30
    sub-int/2addr v2, v3

    .line 31
    aput v5, v1, v2

    .line 32
    .line 33
    goto/16 :goto_0

    .line 34
    .line 35
    :cond_0
    if-ne v4, v5, :cond_3

    .line 36
    .line 37
    invoke-direct {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iget-object v2, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 42
    .line 43
    invoke-virtual {v2}, Lokio/Buffer;->readByte()B

    .line 44
    .line 45
    .line 46
    if-eq v1, v14, :cond_a

    .line 47
    .line 48
    if-eq v1, v13, :cond_2

    .line 49
    .line 50
    if-ne v1, v11, :cond_1

    .line 51
    .line 52
    iput v15, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 53
    .line 54
    return v15

    .line 55
    :cond_1
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    new-array v2, v15, [J

    .line 58
    .line 59
    fill-array-data v2, :array_0

    .line 60
    .line 61
    .line 62
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    throw v1

    .line 74
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    const/4 v5, 0x5

    .line 79
    if-eq v4, v10, :cond_17

    .line 80
    .line 81
    if-ne v4, v5, :cond_4

    .line 82
    .line 83
    goto/16 :goto_2

    .line 84
    .line 85
    :cond_4
    if-ne v4, v15, :cond_6

    .line 86
    .line 87
    sub-int/2addr v2, v3

    .line 88
    aput v5, v1, v2

    .line 89
    .line 90
    invoke-direct {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    iget-object v2, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 95
    .line 96
    invoke-virtual {v2}, Lokio/Buffer;->readByte()B

    .line 97
    .line 98
    .line 99
    const/16 v2, 0x3a

    .line 100
    .line 101
    if-eq v1, v2, :cond_a

    .line 102
    .line 103
    const/16 v2, 0x3d

    .line 104
    .line 105
    if-ne v1, v2, :cond_5

    .line 106
    .line 107
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 108
    .line 109
    .line 110
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    .line 111
    .line 112
    const-wide/16 v13, 0x1

    .line 113
    .line 114
    invoke-interface {v1, v13, v14}, Lokio/BufferedSource;->request(J)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_a

    .line 119
    .line 120
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 121
    .line 122
    invoke-virtual {v1, v8, v9}, Lokio/Buffer;->getByte(J)B

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    const/16 v2, 0x3e

    .line 127
    .line 128
    if-ne v1, v2, :cond_a

    .line 129
    .line 130
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 131
    .line 132
    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 137
    .line 138
    new-array v2, v10, [J

    .line 139
    .line 140
    fill-array-data v2, :array_1

    .line 141
    .line 142
    .line 143
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    throw v1

    .line 155
    :cond_6
    const/4 v5, 0x6

    .line 156
    if-ne v4, v5, :cond_7

    .line 157
    .line 158
    sub-int/2addr v2, v3

    .line 159
    aput v12, v1, v2

    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_7
    if-ne v4, v12, :cond_9

    .line 163
    .line 164
    const/4 v1, 0x0

    .line 165
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    const/4 v2, -0x1

    .line 170
    if-ne v1, v2, :cond_8

    .line 171
    .line 172
    const/16 v1, 0x12

    .line 173
    .line 174
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 175
    .line 176
    return v1

    .line 177
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 178
    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_9
    if-eq v4, v7, :cond_16

    .line 182
    .line 183
    :cond_a
    :goto_0
    invoke-direct {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-eq v1, v6, :cond_15

    .line 188
    .line 189
    const/16 v2, 0x27

    .line 190
    .line 191
    if-eq v1, v2, :cond_14

    .line 192
    .line 193
    const/16 v2, 0x2c

    .line 194
    .line 195
    if-eq v1, v2, :cond_11

    .line 196
    .line 197
    const/16 v2, 0x3b

    .line 198
    .line 199
    if-eq v1, v2, :cond_11

    .line 200
    .line 201
    const/16 v2, 0x5b

    .line 202
    .line 203
    if-eq v1, v2, :cond_10

    .line 204
    .line 205
    if-eq v1, v11, :cond_f

    .line 206
    .line 207
    const/16 v2, 0x7b

    .line 208
    .line 209
    if-eq v1, v2, :cond_e

    .line 210
    .line 211
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekKeyword()I

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-eqz v1, :cond_b

    .line 216
    .line 217
    return v1

    .line 218
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekNumber()I

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-eqz v1, :cond_c

    .line 223
    .line 224
    return v1

    .line 225
    :cond_c
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 226
    .line 227
    invoke-virtual {v1, v8, v9}, Lokio/Buffer;->getByte(J)B

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->isLiteral(I)Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_d

    .line 236
    .line 237
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 238
    .line 239
    .line 240
    const/16 v1, 0xa

    .line 241
    .line 242
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 243
    .line 244
    return v1

    .line 245
    :cond_d
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 246
    .line 247
    new-array v2, v10, [J

    .line 248
    .line 249
    fill-array-data v2, :array_2

    .line 250
    .line 251
    .line 252
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    throw v1

    .line 264
    :cond_e
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 265
    .line 266
    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 267
    .line 268
    .line 269
    iput v3, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 270
    .line 271
    return v3

    .line 272
    :cond_f
    if-ne v4, v3, :cond_11

    .line 273
    .line 274
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 275
    .line 276
    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 277
    .line 278
    .line 279
    iput v15, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 280
    .line 281
    return v15

    .line 282
    :cond_10
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 283
    .line 284
    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 285
    .line 286
    .line 287
    iput v10, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 288
    .line 289
    return v10

    .line 290
    :cond_11
    if-eq v4, v3, :cond_13

    .line 291
    .line 292
    const/4 v1, 0x2

    .line 293
    if-ne v4, v1, :cond_12

    .line 294
    .line 295
    goto :goto_1

    .line 296
    :cond_12
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 297
    .line 298
    new-array v2, v10, [J

    .line 299
    .line 300
    fill-array-data v2, :array_3

    .line 301
    .line 302
    .line 303
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    throw v1

    .line 315
    :cond_13
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 316
    .line 317
    .line 318
    iput v12, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 319
    .line 320
    return v12

    .line 321
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 322
    .line 323
    .line 324
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 325
    .line 326
    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 327
    .line 328
    .line 329
    iput v7, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 330
    .line 331
    return v7

    .line 332
    :cond_15
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 333
    .line 334
    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 335
    .line 336
    .line 337
    const/16 v1, 0x9

    .line 338
    .line 339
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 340
    .line 341
    return v1

    .line 342
    :cond_16
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 343
    .line 344
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 345
    .line 346
    new-array v3, v15, [J

    .line 347
    .line 348
    fill-array-data v3, :array_4

    .line 349
    .line 350
    .line 351
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    throw v1

    .line 362
    :cond_17
    :goto_2
    sub-int/2addr v2, v3

    .line 363
    aput v15, v1, v2

    .line 364
    .line 365
    const/16 v1, 0x7d

    .line 366
    .line 367
    if-ne v4, v5, :cond_1a

    .line 368
    .line 369
    invoke-direct {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    .line 370
    .line 371
    .line 372
    move-result v2

    .line 373
    iget-object v7, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 374
    .line 375
    invoke-virtual {v7}, Lokio/Buffer;->readByte()B

    .line 376
    .line 377
    .line 378
    const/16 v7, 0x2c

    .line 379
    .line 380
    if-eq v2, v7, :cond_1a

    .line 381
    .line 382
    const/16 v7, 0x3b

    .line 383
    .line 384
    if-eq v2, v7, :cond_19

    .line 385
    .line 386
    if-ne v2, v1, :cond_18

    .line 387
    .line 388
    const/4 v1, 0x2

    .line 389
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 390
    .line 391
    return v1

    .line 392
    :cond_18
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 393
    .line 394
    new-array v2, v15, [J

    .line 395
    .line 396
    fill-array-data v2, :array_5

    .line 397
    .line 398
    .line 399
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    throw v1

    .line 411
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 412
    .line 413
    .line 414
    :cond_1a
    invoke-direct {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    .line 415
    .line 416
    .line 417
    move-result v2

    .line 418
    if-eq v2, v6, :cond_1f

    .line 419
    .line 420
    const/16 v3, 0x27

    .line 421
    .line 422
    if-eq v2, v3, :cond_1e

    .line 423
    .line 424
    if-eq v2, v1, :cond_1c

    .line 425
    .line 426
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 427
    .line 428
    .line 429
    int-to-char v1, v2

    .line 430
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->isLiteral(I)Z

    .line 431
    .line 432
    .line 433
    move-result v1

    .line 434
    if-eqz v1, :cond_1b

    .line 435
    .line 436
    const/16 v1, 0xe

    .line 437
    .line 438
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 439
    .line 440
    return v1

    .line 441
    :cond_1b
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 442
    .line 443
    new-array v2, v10, [J

    .line 444
    .line 445
    fill-array-data v2, :array_6

    .line 446
    .line 447
    .line 448
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    throw v1

    .line 460
    :cond_1c
    if-eq v4, v5, :cond_1d

    .line 461
    .line 462
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 463
    .line 464
    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 465
    .line 466
    .line 467
    const/4 v1, 0x2

    .line 468
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 469
    .line 470
    return v1

    .line 471
    :cond_1d
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 472
    .line 473
    new-array v2, v10, [J

    .line 474
    .line 475
    fill-array-data v2, :array_7

    .line 476
    .line 477
    .line 478
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    throw v1

    .line 490
    :cond_1e
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 491
    .line 492
    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 493
    .line 494
    .line 495
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 496
    .line 497
    .line 498
    const/16 v1, 0xc

    .line 499
    .line 500
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 501
    .line 502
    return v1

    .line 503
    :cond_1f
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 504
    .line 505
    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 506
    .line 507
    .line 508
    const/16 v1, 0xd

    .line 509
    .line 510
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 511
    .line 512
    return v1

    .line 513
    :array_0
    .array-data 8
        0x2d19062ea40b852fL    # 1.919466987885676E-91
        -0x70d66043b39361dL    # -4.025167720412027E274
        -0x678d62a5f2acb3d2L
        0x1ea4e9735d951368L    # 4.648214556599853E-161
    .end array-data

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
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    :array_1
    .array-data 8
        -0x314d69055fd5fc63L    # -1.2830182020291626E71
        -0x34bb4d19c6cdd508L    # -3.965107209200192E54
        0x7c646a5a11a7e4aeL    # 1.5916387417495552E291
    .end array-data

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
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    :array_2
    .array-data 8
        0x517e3dd0986f8a07L    # 3.671821980422713E84
        0x6c038370e34eaa54L    # 2.05286706110351E212
        -0x473d6d44f48462eL
    .end array-data

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
    .line 564
    .line 565
    :array_3
    .array-data 8
        0x2b75e53b8dd22abdL    # 2.5026211814280073E-99
        -0x4679970fd83aab5bL    # -1.3811176111359358E-31
        0x35ebb8c2dc1048d4L    # 5.927491503815312E-49
    .end array-data

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
    :array_4
    .array-data 8
        -0x5ab27eab18f603fL
        0x27781fd23003e2d6L
        0x3b443cbce5738ebaL    # 3.34797338271157E-23
        -0x2249f47def905f96L    # -2.6882344231086636E143
    .end array-data

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
    .line 600
    .line 601
    :array_5
    .array-data 8
        -0x48fb5689ff300374L    # -1.1581427353432346E-43
        -0x6e6c960e202fc9abL    # -5.244871306630832E-224
        0x1b14025def0e04deL    # 3.086123454597341E-178
        -0xed889f46636f5a6L    # -1.193535233948688E237
    .end array-data

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
    :array_6
    .array-data 8
        -0x125fabae99a34331L    # -1.152859013082261E220
        -0x67cd964748dc9b78L    # -4.035773027260633E-192
        -0x160ced2f54179b2cL    # -2.335970851133087E202
    .end array-data

    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    :array_7
    .array-data 8
        0x63c3f513687c638aL    # 3.856292028824349E172
        0x65eb22aa929bc50aL    # 9.007906238086719E182
        0x5926d56214fdf7e2L    # 2.948093726968527E121
    .end array-data
.end method

.method private findName(Ljava/lang/String;Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I
    .locals 4

    .line 1
    iget-object v0, p2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    if-ge v2, v0, :cond_1

    .line 7
    .line 8
    iget-object v3, p2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    .line 9
    .line 10
    aget-object v3, v3, v2

    .line 11
    .line 12
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 19
    .line 20
    iget-object p2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    .line 21
    .line 22
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 23
    .line 24
    add-int/lit8 v0, v0, -0x1

    .line 25
    .line 26
    aput-object p1, p2, v0

    .line 27
    .line 28
    return v2

    .line 29
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p1, -0x1

    .line 33
    return p1
.end method

.method private isLiteral(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0xc

    .line 10
    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0xd

    .line 14
    .line 15
    if-eq p1, v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x20

    .line 18
    .line 19
    if-eq p1, v0, :cond_1

    .line 20
    .line 21
    const/16 v0, 0x23

    .line 22
    .line 23
    if-eq p1, v0, :cond_0

    .line 24
    .line 25
    const/16 v0, 0x2c

    .line 26
    .line 27
    if-eq p1, v0, :cond_1

    .line 28
    .line 29
    const/16 v0, 0x2f

    .line 30
    .line 31
    if-eq p1, v0, :cond_0

    .line 32
    .line 33
    const/16 v0, 0x3d

    .line 34
    .line 35
    if-eq p1, v0, :cond_0

    .line 36
    .line 37
    const/16 v0, 0x7b

    .line 38
    .line 39
    if-eq p1, v0, :cond_1

    .line 40
    .line 41
    const/16 v0, 0x7d

    .line 42
    .line 43
    if-eq p1, v0, :cond_1

    .line 44
    .line 45
    const/16 v0, 0x3a

    .line 46
    .line 47
    if-eq p1, v0, :cond_1

    .line 48
    .line 49
    const/16 v0, 0x3b

    .line 50
    .line 51
    if-eq p1, v0, :cond_0

    .line 52
    .line 53
    packed-switch p1, :pswitch_data_0

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x1

    .line 57
    return p1

    .line 58
    :cond_0
    :pswitch_0
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 59
    .line 60
    .line 61
    :cond_1
    :pswitch_1
    const/4 p1, 0x0

    .line 62
    return p1

    .line 63
    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private nextNonWhitespace(Z)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, 0x0

    .line 3
    :goto_1
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    .line 4
    .line 5
    add-int/lit8 v3, v1, 0x1

    .line 6
    .line 7
    int-to-long v4, v3

    .line 8
    invoke-interface {v2, v4, v5}, Lokio/BufferedSource;->request(J)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_8

    .line 13
    .line 14
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 15
    .line 16
    int-to-long v4, v1

    .line 17
    invoke-virtual {v2, v4, v5}, Lokio/Buffer;->getByte(J)B

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/16 v4, 0xa

    .line 22
    .line 23
    if-eq v2, v4, :cond_7

    .line 24
    .line 25
    const/16 v4, 0x20

    .line 26
    .line 27
    if-eq v2, v4, :cond_7

    .line 28
    .line 29
    const/16 v4, 0xd

    .line 30
    .line 31
    if-eq v2, v4, :cond_7

    .line 32
    .line 33
    const/16 v4, 0x9

    .line 34
    .line 35
    if-ne v2, v4, :cond_0

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_0
    iget-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 39
    .line 40
    int-to-long v4, v1

    .line 41
    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->skip(J)V

    .line 42
    .line 43
    .line 44
    const/16 v1, 0x2f

    .line 45
    .line 46
    if-ne v2, v1, :cond_5

    .line 47
    .line 48
    iget-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    .line 49
    .line 50
    const-wide/16 v4, 0x2

    .line 51
    .line 52
    invoke-interface {v3, v4, v5}, Lokio/BufferedSource;->request(J)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_1

    .line 57
    .line 58
    return v2

    .line 59
    :cond_1
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 60
    .line 61
    .line 62
    iget-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 63
    .line 64
    const-wide/16 v4, 0x1

    .line 65
    .line 66
    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->getByte(J)B

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    const/16 v4, 0x2a

    .line 71
    .line 72
    if-eq v3, v4, :cond_3

    .line 73
    .line 74
    if-eq v3, v1, :cond_2

    .line 75
    .line 76
    return v2

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 78
    .line 79
    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 83
    .line 84
    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 85
    .line 86
    .line 87
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipToEndOfLine()V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 92
    .line 93
    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 97
    .line 98
    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 99
    .line 100
    .line 101
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipToEndOfBlockComment()Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_4

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_4
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 109
    .line 110
    const/4 v0, 0x4

    .line 111
    new-array v0, v0, [J

    .line 112
    .line 113
    fill-array-data v0, :array_0

    .line 114
    .line 115
    .line 116
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    throw p1

    .line 128
    :cond_5
    const/16 v1, 0x23

    .line 129
    .line 130
    if-ne v2, v1, :cond_6

    .line 131
    .line 132
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 133
    .line 134
    .line 135
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipToEndOfLine()V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_0

    .line 139
    .line 140
    :cond_6
    return v2

    .line 141
    :cond_7
    :goto_2
    move v1, v3

    .line 142
    goto/16 :goto_1

    .line 143
    .line 144
    :cond_8
    if-nez p1, :cond_9

    .line 145
    .line 146
    const/4 p1, -0x1

    .line 147
    return p1

    .line 148
    :cond_9
    new-instance p1, Ljava/io/EOFException;

    .line 149
    .line 150
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 151
    .line 152
    const/4 v1, 0x3

    .line 153
    new-array v1, v1, [J

    .line 154
    .line 155
    fill-array-data v1, :array_1

    .line 156
    .line 157
    .line 158
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw p1

    .line 169
    :array_0
    .array-data 8
        -0xda674a47114b44L
        0x44a5716309a4eaebL    # 5.063065731850257E22
        0x6da2a7a45fef0df2L    # 1.31703905475204E220
        0x5ba8e8a05215d727L    # 3.5360556722208607E133
    .end array-data

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    :array_1
    .array-data 8
        -0x159a6f4a08f238a5L    # -3.380664750743287E204
        0x3427ec17f2ce9755L    # 1.905516385827668E-57
        0x7fa678047e5ce63dL    # 7.889070485607669E306
    .end array-data
.end method

.method private nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    .line 3
    .line 4
    invoke-interface {v1, p1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    const-wide/16 v3, -0x1

    .line 9
    .line 10
    cmp-long v5, v1, v3

    .line 11
    .line 12
    if-eqz v5, :cond_3

    .line 13
    .line 14
    iget-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 15
    .line 16
    invoke-virtual {v3, v1, v2}, Lokio/Buffer;->getByte(J)B

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/16 v4, 0x5c

    .line 21
    .line 22
    if-ne v3, v4, :cond_1

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 32
    .line 33
    invoke-virtual {v3, v1, v2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 41
    .line 42
    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->readEscapeCharacter()C

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    if-nez v0, :cond_2

    .line 54
    .line 55
    iget-object p1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 56
    .line 57
    invoke-virtual {p1, v1, v2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 62
    .line 63
    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    .line 64
    .line 65
    .line 66
    return-object p1

    .line 67
    :cond_2
    iget-object p1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 68
    .line 69
    invoke-virtual {p1, v1, v2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 77
    .line 78
    invoke-virtual {p1}, Lokio/Buffer;->readByte()B

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    return-object p1

    .line 86
    :cond_3
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 87
    .line 88
    const/4 v0, 0x4

    .line 89
    new-array v0, v0, [J

    .line 90
    .line 91
    fill-array-data v0, :array_0

    .line 92
    .line 93
    .line 94
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    throw p1

    .line 106
    nop

    .line 107
    :array_0
    .array-data 8
        -0x613bc69306def302L
        -0x52313e7d8bfcd447L    # -4.8314743051791813E-88
        -0x36775de506c3a360L    # -1.757885611898904E46
        0x7d715ba6bf559bcbL    # 1.773763699976377E296
    .end array-data
.end method

.method private nextUnquotedValue()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    .line 2
    .line 3
    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->UNQUOTED_STRING_TERMINALS:Lokio/ByteString;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide/16 v2, -0x1

    .line 10
    .line 11
    cmp-long v4, v0, v2

    .line 12
    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 16
    .line 17
    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 23
    .line 24
    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_0
    return-object v0
.end method

.method private peekKeyword()I
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    invoke-virtual {v2, v3, v4}, Lokio/Buffer;->getByte(J)B

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/16 v3, 0x74

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    if-eq v2, v3, :cond_5

    .line 15
    .line 16
    const/16 v3, 0x54

    .line 17
    .line 18
    if-ne v2, v3, :cond_0

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    const/16 v3, 0x66

    .line 22
    .line 23
    if-eq v2, v3, :cond_4

    .line 24
    .line 25
    const/16 v3, 0x46

    .line 26
    .line 27
    if-ne v2, v3, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/16 v3, 0x6e

    .line 31
    .line 32
    if-eq v2, v3, :cond_3

    .line 33
    .line 34
    const/16 v3, 0x4e

    .line 35
    .line 36
    if-ne v2, v3, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    return v4

    .line 40
    :cond_3
    :goto_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    new-array v3, v1, [J

    .line 43
    .line 44
    fill-array-data v3, :array_0

    .line 45
    .line 46
    .line 47
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    new-array v1, v1, [J

    .line 57
    .line 58
    fill-array-data v1, :array_1

    .line 59
    .line 60
    .line 61
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const/4 v3, 0x7

    .line 69
    goto :goto_3

    .line 70
    :cond_4
    :goto_1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    new-array v3, v1, [J

    .line 73
    .line 74
    fill-array-data v3, :array_2

    .line 75
    .line 76
    .line 77
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    new-array v1, v1, [J

    .line 87
    .line 88
    fill-array-data v1, :array_3

    .line 89
    .line 90
    .line 91
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    const/4 v3, 0x6

    .line 99
    goto :goto_3

    .line 100
    :cond_5
    :goto_2
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 101
    .line 102
    new-array v3, v1, [J

    .line 103
    .line 104
    fill-array-data v3, :array_4

    .line 105
    .line 106
    .line 107
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 115
    .line 116
    new-array v1, v1, [J

    .line 117
    .line 118
    fill-array-data v1, :array_5

    .line 119
    .line 120
    .line 121
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    const/4 v3, 0x5

    .line 129
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    const/4 v6, 0x1

    .line 134
    :goto_4
    if-ge v6, v5, :cond_8

    .line 135
    .line 136
    iget-object v7, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    .line 137
    .line 138
    add-int/lit8 v8, v6, 0x1

    .line 139
    .line 140
    int-to-long v9, v8

    .line 141
    invoke-interface {v7, v9, v10}, Lokio/BufferedSource;->request(J)Z

    .line 142
    .line 143
    .line 144
    move-result v7

    .line 145
    if-nez v7, :cond_6

    .line 146
    .line 147
    return v4

    .line 148
    :cond_6
    iget-object v7, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 149
    .line 150
    int-to-long v9, v6

    .line 151
    invoke-virtual {v7, v9, v10}, Lokio/Buffer;->getByte(J)B

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    if-eq v7, v9, :cond_7

    .line 160
    .line 161
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    if-eq v7, v6, :cond_7

    .line 166
    .line 167
    return v4

    .line 168
    :cond_7
    move v6, v8

    .line 169
    goto :goto_4

    .line 170
    :cond_8
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    .line 171
    .line 172
    add-int/2addr v0, v5

    .line 173
    int-to-long v6, v0

    .line 174
    invoke-interface {v1, v6, v7}, Lokio/BufferedSource;->request(J)Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_9

    .line 179
    .line 180
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 181
    .line 182
    int-to-long v1, v5

    .line 183
    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->getByte(J)B

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->isLiteral(I)Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-eqz v0, :cond_9

    .line 192
    .line 193
    return v4

    .line 194
    :cond_9
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 195
    .line 196
    int-to-long v1, v5

    .line 197
    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->skip(J)V

    .line 198
    .line 199
    .line 200
    iput v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 201
    .line 202
    return v3

    .line 203
    :array_0
    .array-data 8
        -0x2022997f9b1ac194L    # -6.159294862463898E153
        0xe7e0d2cdd638c69L    # 7.210894009908549E-239
    .end array-data

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    :array_1
    .array-data 8
        0x2f2e79c0cc10b389L    # 2.0079986726018767E-81
        -0x17794f34cbe4143aL    # -3.312784575959589E195
    .end array-data

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
    :array_2
    .array-data 8
        -0xd118e72f556869cL    # -4.157400814205754E245
        0x713e58b498d43534L    # 3.0876302785852667E237
    .end array-data

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
    :array_3
    .array-data 8
        0x52489979644f2a49L    # 2.4467814404766385E88
        -0x7f79f5ef619ada70L    # -3.923128485823033E-306
    .end array-data

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
    :array_4
    .array-data 8
        0x2e4995c341e929fcL    # 1.0289087164781165E-85
        -0x165efa5f5ca75f81L    # -6.514742613799849E200
    .end array-data

    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    :array_5
    .array-data 8
        0x2397f41ff310a17aL
        0x220b77c30157259L
    .end array-data
.end method

.method private peekNumber()I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    move-wide v8, v1

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v7, 0x1

    .line 11
    const/4 v10, 0x0

    .line 12
    :goto_0
    iget-object v11, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    .line 13
    .line 14
    add-int/lit8 v12, v5, 0x1

    .line 15
    .line 16
    int-to-long v13, v12

    .line 17
    invoke-interface {v11, v13, v14}, Lokio/BufferedSource;->request(J)Z

    .line 18
    .line 19
    .line 20
    move-result v11

    .line 21
    const/4 v15, 0x2

    .line 22
    if-nez v11, :cond_0

    .line 23
    .line 24
    goto/16 :goto_5

    .line 25
    .line 26
    :cond_0
    iget-object v11, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 27
    .line 28
    int-to-long v13, v5

    .line 29
    invoke-virtual {v11, v13, v14}, Lokio/Buffer;->getByte(J)B

    .line 30
    .line 31
    .line 32
    move-result v11

    .line 33
    const/16 v13, 0x2b

    .line 34
    .line 35
    if-eq v11, v13, :cond_1a

    .line 36
    .line 37
    const/16 v13, 0x45

    .line 38
    .line 39
    if-eq v11, v13, :cond_17

    .line 40
    .line 41
    const/16 v13, 0x65

    .line 42
    .line 43
    if-eq v11, v13, :cond_17

    .line 44
    .line 45
    const/16 v13, 0x2d

    .line 46
    .line 47
    if-eq v11, v13, :cond_14

    .line 48
    .line 49
    const/16 v13, 0x2e

    .line 50
    .line 51
    const/4 v14, 0x3

    .line 52
    if-eq v11, v13, :cond_12

    .line 53
    .line 54
    const/16 v13, 0x30

    .line 55
    .line 56
    if-lt v11, v13, :cond_a

    .line 57
    .line 58
    const/16 v13, 0x39

    .line 59
    .line 60
    if-le v11, v13, :cond_1

    .line 61
    .line 62
    goto :goto_4

    .line 63
    :cond_1
    if-eq v6, v4, :cond_9

    .line 64
    .line 65
    if-nez v6, :cond_2

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_2
    if-ne v6, v15, :cond_6

    .line 69
    .line 70
    cmp-long v5, v8, v1

    .line 71
    .line 72
    if-nez v5, :cond_3

    .line 73
    .line 74
    return v3

    .line 75
    :cond_3
    const-wide/16 v13, 0xa

    .line 76
    .line 77
    mul-long v13, v13, v8

    .line 78
    .line 79
    add-int/lit8 v11, v11, -0x30

    .line 80
    .line 81
    int-to-long v4, v11

    .line 82
    sub-long/2addr v13, v4

    .line 83
    const-wide v4, -0xcccccccccccccccL

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    cmp-long v11, v8, v4

    .line 89
    .line 90
    if-gtz v11, :cond_5

    .line 91
    .line 92
    if-nez v11, :cond_4

    .line 93
    .line 94
    cmp-long v4, v13, v8

    .line 95
    .line 96
    if-gez v4, :cond_4

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    const/4 v4, 0x0

    .line 100
    goto :goto_2

    .line 101
    :cond_5
    :goto_1
    const/4 v4, 0x1

    .line 102
    :goto_2
    and-int/2addr v7, v4

    .line 103
    move-wide v8, v13

    .line 104
    goto/16 :goto_a

    .line 105
    .line 106
    :cond_6
    if-ne v6, v14, :cond_7

    .line 107
    .line 108
    const/4 v6, 0x4

    .line 109
    goto/16 :goto_a

    .line 110
    .line 111
    :cond_7
    const/4 v4, 0x5

    .line 112
    if-eq v6, v4, :cond_8

    .line 113
    .line 114
    const/4 v4, 0x6

    .line 115
    if-ne v6, v4, :cond_1b

    .line 116
    .line 117
    :cond_8
    const/4 v6, 0x7

    .line 118
    goto/16 :goto_a

    .line 119
    .line 120
    :cond_9
    :goto_3
    add-int/lit8 v11, v11, -0x30

    .line 121
    .line 122
    neg-int v4, v11

    .line 123
    int-to-long v8, v4

    .line 124
    const/4 v6, 0x2

    .line 125
    goto :goto_a

    .line 126
    :cond_a
    :goto_4
    invoke-direct {v0, v11}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->isLiteral(I)Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-nez v4, :cond_11

    .line 131
    .line 132
    :goto_5
    if-ne v6, v15, :cond_e

    .line 133
    .line 134
    if-eqz v7, :cond_e

    .line 135
    .line 136
    const-wide/high16 v11, -0x8000000000000000L

    .line 137
    .line 138
    cmp-long v4, v8, v11

    .line 139
    .line 140
    if-nez v4, :cond_b

    .line 141
    .line 142
    if-eqz v10, :cond_e

    .line 143
    .line 144
    :cond_b
    cmp-long v4, v8, v1

    .line 145
    .line 146
    if-nez v4, :cond_c

    .line 147
    .line 148
    if-nez v10, :cond_e

    .line 149
    .line 150
    :cond_c
    if-eqz v10, :cond_d

    .line 151
    .line 152
    goto :goto_6

    .line 153
    :cond_d
    neg-long v8, v8

    .line 154
    :goto_6
    iput-wide v8, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedLong:J

    .line 155
    .line 156
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 157
    .line 158
    int-to-long v2, v5

    .line 159
    invoke-virtual {v1, v2, v3}, Lokio/Buffer;->skip(J)V

    .line 160
    .line 161
    .line 162
    const/16 v1, 0x10

    .line 163
    .line 164
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 165
    .line 166
    return v1

    .line 167
    :cond_e
    if-eq v6, v15, :cond_10

    .line 168
    .line 169
    const/4 v1, 0x4

    .line 170
    if-eq v6, v1, :cond_10

    .line 171
    .line 172
    const/4 v1, 0x7

    .line 173
    if-ne v6, v1, :cond_f

    .line 174
    .line 175
    goto :goto_7

    .line 176
    :cond_f
    return v3

    .line 177
    :cond_10
    :goto_7
    iput v5, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    .line 178
    .line 179
    const/16 v1, 0x11

    .line 180
    .line 181
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 182
    .line 183
    return v1

    .line 184
    :cond_11
    return v3

    .line 185
    :cond_12
    if-ne v6, v15, :cond_13

    .line 186
    .line 187
    const/4 v6, 0x3

    .line 188
    goto :goto_a

    .line 189
    :cond_13
    return v3

    .line 190
    :cond_14
    const/4 v4, 0x6

    .line 191
    if-nez v6, :cond_15

    .line 192
    .line 193
    const/4 v6, 0x1

    .line 194
    const/4 v10, 0x1

    .line 195
    goto :goto_a

    .line 196
    :cond_15
    const/4 v5, 0x5

    .line 197
    if-ne v6, v5, :cond_16

    .line 198
    .line 199
    :goto_8
    const/4 v6, 0x6

    .line 200
    goto :goto_a

    .line 201
    :cond_16
    return v3

    .line 202
    :cond_17
    const/4 v5, 0x5

    .line 203
    if-eq v6, v15, :cond_19

    .line 204
    .line 205
    const/4 v4, 0x4

    .line 206
    if-ne v6, v4, :cond_18

    .line 207
    .line 208
    goto :goto_9

    .line 209
    :cond_18
    return v3

    .line 210
    :cond_19
    :goto_9
    const/4 v6, 0x5

    .line 211
    goto :goto_a

    .line 212
    :cond_1a
    const/4 v4, 0x6

    .line 213
    const/4 v5, 0x5

    .line 214
    if-ne v6, v5, :cond_1c

    .line 215
    .line 216
    goto :goto_8

    .line 217
    :cond_1b
    :goto_a
    move v5, v12

    .line 218
    const/4 v4, 0x1

    .line 219
    goto/16 :goto_0

    .line 220
    .line 221
    :cond_1c
    return v3
.end method

.method private readEscapeCharacter()C
    .locals 10

    .line 1
    const/16 v0, 0x30

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x5

    .line 5
    iget-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    .line 6
    .line 7
    const-wide/16 v4, 0x1

    .line 8
    .line 9
    invoke-interface {v3, v4, v5}, Lokio/BufferedSource;->request(J)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_d

    .line 14
    .line 15
    iget-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 16
    .line 17
    invoke-virtual {v3}, Lokio/Buffer;->readByte()B

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/16 v4, 0xa

    .line 22
    .line 23
    if-eq v3, v4, :cond_c

    .line 24
    .line 25
    const/16 v5, 0x22

    .line 26
    .line 27
    if-eq v3, v5, :cond_c

    .line 28
    .line 29
    const/16 v5, 0x27

    .line 30
    .line 31
    if-eq v3, v5, :cond_c

    .line 32
    .line 33
    const/16 v5, 0x2f

    .line 34
    .line 35
    if-eq v3, v5, :cond_c

    .line 36
    .line 37
    const/16 v5, 0x5c

    .line 38
    .line 39
    if-eq v3, v5, :cond_c

    .line 40
    .line 41
    const/16 v5, 0x62

    .line 42
    .line 43
    if-eq v3, v5, :cond_b

    .line 44
    .line 45
    const/16 v5, 0x66

    .line 46
    .line 47
    if-eq v3, v5, :cond_a

    .line 48
    .line 49
    const/16 v6, 0x6e

    .line 50
    .line 51
    if-eq v3, v6, :cond_9

    .line 52
    .line 53
    const/16 v4, 0x72

    .line 54
    .line 55
    if-eq v3, v4, :cond_8

    .line 56
    .line 57
    const/16 v4, 0x74

    .line 58
    .line 59
    if-eq v3, v4, :cond_7

    .line 60
    .line 61
    const/16 v4, 0x75

    .line 62
    .line 63
    if-eq v3, v4, :cond_1

    .line 64
    .line 65
    iget-boolean v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->lenient:Z

    .line 66
    .line 67
    if-eqz v0, :cond_0

    .line 68
    .line 69
    int-to-char v0, v3

    .line 70
    return v0

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    new-array v2, v2, [J

    .line 79
    .line 80
    fill-array-data v2, :array_0

    .line 81
    .line 82
    .line 83
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    int-to-char v1, v3

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    throw v0

    .line 106
    :cond_1
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    .line 107
    .line 108
    const-wide/16 v3, 0x4

    .line 109
    .line 110
    invoke-interface {v2, v3, v4}, Lokio/BufferedSource;->request(J)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_6

    .line 115
    .line 116
    const/4 v2, 0x0

    .line 117
    const/4 v6, 0x0

    .line 118
    :goto_0
    if-ge v2, v1, :cond_5

    .line 119
    .line 120
    iget-object v7, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 121
    .line 122
    int-to-long v8, v2

    .line 123
    invoke-virtual {v7, v8, v9}, Lokio/Buffer;->getByte(J)B

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    shl-int/2addr v6, v1

    .line 128
    int-to-char v6, v6

    .line 129
    if-lt v7, v0, :cond_2

    .line 130
    .line 131
    const/16 v8, 0x39

    .line 132
    .line 133
    if-gt v7, v8, :cond_2

    .line 134
    .line 135
    sub-int/2addr v7, v0

    .line 136
    :goto_1
    add-int/2addr v7, v6

    .line 137
    int-to-char v6, v7

    .line 138
    goto :goto_2

    .line 139
    :cond_2
    const/16 v8, 0x61

    .line 140
    .line 141
    if-lt v7, v8, :cond_3

    .line 142
    .line 143
    if-gt v7, v5, :cond_3

    .line 144
    .line 145
    add-int/lit8 v7, v7, -0x57

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_3
    const/16 v8, 0x41

    .line 149
    .line 150
    if-lt v7, v8, :cond_4

    .line 151
    .line 152
    const/16 v8, 0x46

    .line 153
    .line 154
    if-gt v7, v8, :cond_4

    .line 155
    .line 156
    add-int/lit8 v7, v7, -0x37

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 168
    .line 169
    const/4 v2, 0x2

    .line 170
    new-array v2, v2, [J

    .line 171
    .line 172
    fill-array-data v2, :array_1

    .line 173
    .line 174
    .line 175
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 186
    .line 187
    invoke-virtual {v1, v3, v4}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    throw v0

    .line 203
    :cond_5
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 204
    .line 205
    invoke-virtual {v0, v3, v4}, Lokio/Buffer;->skip(J)V

    .line 206
    .line 207
    .line 208
    return v6

    .line 209
    :cond_6
    new-instance v0, Ljava/io/EOFException;

    .line 210
    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .line 215
    .line 216
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 217
    .line 218
    const/4 v3, 0x6

    .line 219
    new-array v3, v3, [J

    .line 220
    .line 221
    fill-array-data v3, :array_2

    .line 222
    .line 223
    .line 224
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 225
    .line 226
    .line 227
    invoke-static {v2, v1, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw v0

    .line 235
    :cond_7
    const/16 v0, 0x9

    .line 236
    .line 237
    return v0

    .line 238
    :cond_8
    const/16 v0, 0xd

    .line 239
    .line 240
    return v0

    .line 241
    :cond_9
    return v4

    .line 242
    :cond_a
    const/16 v0, 0xc

    .line 243
    .line 244
    return v0

    .line 245
    :cond_b
    const/16 v0, 0x8

    .line 246
    .line 247
    return v0

    .line 248
    :cond_c
    int-to-char v0, v3

    .line 249
    return v0

    .line 250
    :cond_d
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 251
    .line 252
    new-array v1, v2, [J

    .line 253
    .line 254
    fill-array-data v1, :array_3

    .line 255
    .line 256
    .line 257
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    throw v0

    .line 269
    :array_0
    .array-data 8
        -0x7a0796f2d24e5d82L
        0x72b3cc0ec9d2837eL    # 3.379388233745288E244
        -0x20a1e79445a14de8L    # -2.4628494850597864E151
        -0xc22f1ff488ff269L
        -0x2e24bd557bdc9779L    # -2.118318359446666E86
    .end array-data

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
    :array_1
    .array-data 8
        0x5660321d7643a487L    # 1.1886386513826584E108
        0x4837e4754afa4931L    # 8.130167441680997E39
    .end array-data

    .line 294
    .line 295
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
    :array_2
    .array-data 8
        -0x12397d77b3cd996cL    # -6.356824988630667E220
        -0x3799d6aa06c66271L    # -6.032925456164449E40
        -0x1a78ffc78f7e3baeL    # -1.1930303954909445E181
        -0xc149a1054b1386aL
        0x596e30c5db1ede04L    # 6.236757129256996E122
        -0x362fa44e9da16ea1L    # -3.735546899769274E47
    .end array-data

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
    :array_3
    .array-data 8
        -0x1045b75cee559aceL    # -1.5939835603131796E230
        -0x89e8a2ceafff972L
        -0x6ffdb8acef06941aL    # -1.471690678830674E-231
        -0x15fcbeeb1c6f645aL    # -4.716210073085316E202
        -0x6c135bd909e4579fL
    .end array-data
.end method

.method private skipQuotedValue(Lokio/ByteString;)V
    .locals 6

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, -0x1

    .line 8
    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    if-eqz v4, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 14
    .line 15
    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->getByte(J)B

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/16 v3, 0x5c

    .line 20
    .line 21
    const-wide/16 v4, 0x1

    .line 22
    .line 23
    if-ne v2, v3, :cond_0

    .line 24
    .line 25
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 26
    .line 27
    add-long/2addr v0, v4

    .line 28
    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->skip(J)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->readEscapeCharacter()C

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 36
    .line 37
    add-long/2addr v0, v4

    .line 38
    invoke-virtual {p1, v0, v1}, Lokio/Buffer;->skip(J)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    const/4 v0, 0x4

    .line 45
    new-array v0, v0, [J

    .line 46
    .line 47
    fill-array-data v0, :array_0

    .line 48
    .line 49
    .line 50
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    throw p1

    .line 62
    nop

    .line 63
    :array_0
    .array-data 8
        -0x899144d944d61f9L
        -0x725695925d8cc9ccL    # -7.444511208666958E-243
        0x79aa94e3058f193L
        0x438f1b98eb51f97bL    # 2.80194172000874336E17
    .end array-data
.end method

.method private skipToEndOfBlockComment()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    .line 2
    .line 3
    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->CLOSING_BLOCK_COMMENT:Lokio/ByteString;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lokio/BufferedSource;->indexOf(Lokio/ByteString;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const-wide/16 v4, -0x1

    .line 10
    .line 11
    cmp-long v0, v2, v4

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    iget-object v4, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1}, Lokio/ByteString;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    int-to-long v5, v1

    .line 27
    add-long/2addr v2, v5

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v4}, Lokio/Buffer;->size()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    :goto_1
    invoke-virtual {v4, v2, v3}, Lokio/Buffer;->skip(J)V

    .line 34
    .line 35
    .line 36
    return v0
.end method

.method private skipToEndOfLine()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    .line 2
    .line 3
    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->LINEFEED_OR_CARRIAGE_RETURN:Lokio/ByteString;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 10
    .line 11
    const-wide/16 v3, -0x1

    .line 12
    .line 13
    cmp-long v5, v0, v3

    .line 14
    .line 15
    if-eqz v5, :cond_0

    .line 16
    .line 17
    const-wide/16 v3, 0x1

    .line 18
    .line 19
    add-long/2addr v0, v3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    :goto_0
    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->skip(J)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private skipUnquotedValue()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    .line 2
    .line 3
    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->UNQUOTED_STRING_TERMINALS:Lokio/ByteString;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 10
    .line 11
    const-wide/16 v3, -0x1

    .line 12
    .line 13
    cmp-long v5, v0, v3

    .line 14
    .line 15
    if-eqz v5, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    :goto_0
    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->skip(J)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public beginArray()V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    :cond_0
    if-ne v1, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pushScope(I)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 17
    .line 18
    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 19
    .line 20
    sub-int/2addr v2, v0

    .line 21
    const/4 v0, 0x0

    .line 22
    aput v0, v1, v2

    .line 23
    .line 24
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    new-instance v1, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/4 v4, 0x5

    .line 37
    new-array v4, v4, [J

    .line 38
    .line 39
    fill-array-data v4, :array_0

    .line 40
    .line 41
    .line 42
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    new-array v0, v0, [J

    .line 62
    .line 63
    fill-array-data v0, :array_1

    .line 64
    .line 65
    .line 66
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-static {v3, v2, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-direct {v1, v0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v1

    .line 77
    :array_0
    .array-data 8
        0x7d36970e2513d533L    # 1.4427568483396853E295
        -0x28bcf9ebeb1bc4a2L    # -2.287517321332998E112
        -0x2565fb0ba335d431L    # -2.8180888045281964E128
        0x798fe14fa46c8ca3L    # 3.5320430775769753E277
        0xb98f5a0cf6278ddL
    .end array-data

    .line 78
    .line 79
    .line 80
    :array_1
    .array-data 8
        0x7a9c7ead51bd1628L    # 4.1379196484518913E282
        0x55b2982d74334f2cL    # 6.663489155711558E104
        -0x75e1471c1a4a40e5L    # -6.244194967251218E-260
    .end array-data
.end method

.method public beginObject()V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    :cond_0
    const/4 v2, 0x1

    .line 11
    if-ne v1, v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pushScope(I)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    new-instance v1, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/4 v4, 0x5

    .line 30
    new-array v4, v4, [J

    .line 31
    .line 32
    fill-array-data v4, :array_0

    .line 33
    .line 34
    .line 35
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    new-array v0, v0, [J

    .line 55
    .line 56
    fill-array-data v0, :array_1

    .line 57
    .line 58
    .line 59
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-static {v3, v2, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-direct {v1, v0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v1

    .line 70
    nop

    .line 71
    :array_0
    .array-data 8
        -0x61a27405ed1b63e0L
        0x26ff761a0e9fe10aL    # 7.61480699621378E-121
        0x344efdb9f1acb7d3L    # 9.874340049707957E-57
        0x1916d1bdae19226L
        -0x51a824995ecc8a43L    # -1.918835317411616E-85
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    :array_1
    .array-data 8
        -0x7ea4434ab4dd031cL
        0x3f035993e6ee3b00L    # 3.690703021340912E-5
        -0x20cfc64e17f0df07L    # -3.319498542041029E150
    .end array-data
.end method

.method public close()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->scopes:[I

    .line 5
    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    aput v2, v1, v0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 12
    .line 13
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 14
    .line 15
    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    .line 19
    .line 20
    invoke-interface {v0}, Lokio/Source;->close()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public endArray()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x4

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 13
    .line 14
    add-int/lit8 v1, v0, -0x1

    .line 15
    .line 16
    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 17
    .line 18
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 19
    .line 20
    add-int/lit8 v0, v0, -0x2

    .line 21
    .line 22
    aget v2, v1, v0

    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    aput v2, v1, v0

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    const/4 v3, 0x5

    .line 42
    new-array v3, v3, [J

    .line 43
    .line 44
    fill-array-data v3, :array_0

    .line 45
    .line 46
    .line 47
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 65
    .line 66
    const/4 v3, 0x3

    .line 67
    new-array v3, v3, [J

    .line 68
    .line 69
    fill-array-data v3, :array_1

    .line 70
    .line 71
    .line 72
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 73
    .line 74
    .line 75
    invoke-static {v2, v1, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v0

    .line 83
    :array_0
    .array-data 8
        -0x47454fb35abeca42L    # -2.0078323359536385E-35
        -0x62ed9e4af837645bL
        -0x316f573f64b613f1L    # -2.874437410770513E70
        -0x6edadba7d0e786bL
        0x5f5ee8deb32ba473L    # 2.5294837970991153E151
    .end array-data

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
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    :array_1
    .array-data 8
        -0x6360a32625b2a91fL    # -8.115511618725209E-171
        0x4ccf07f550850ec4L    # 9.973006835791418E61
        0x768ba7435aec2f35L    # 1.0884646278087147E263
    .end array-data
.end method

.method public endObject()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x2

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 13
    .line 14
    add-int/lit8 v2, v0, -0x1

    .line 15
    .line 16
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 17
    .line 18
    iget-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    aput-object v4, v3, v2

    .line 22
    .line 23
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 24
    .line 25
    sub-int/2addr v0, v1

    .line 26
    aget v1, v2, v0

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    aput v1, v2, v0

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    const/4 v3, 0x5

    .line 46
    new-array v3, v3, [J

    .line 47
    .line 48
    fill-array-data v3, :array_0

    .line 49
    .line 50
    .line 51
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    const/4 v3, 0x3

    .line 71
    new-array v3, v3, [J

    .line 72
    .line 73
    fill-array-data v3, :array_1

    .line 74
    .line 75
    .line 76
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-static {v2, v1, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v0

    .line 87
    :array_0
    .array-data 8
        -0x3f0a2b191aa11369L    # -89422.43099872988
        0x148e3f41a4f49227L    # 1.150049959526364E-209
        -0x693969fa2b192f7eL    # -5.901368141686817E-199
        0x63486c1d643a3d42L    # 1.843378622724652E170
        -0x220ee584279f90aL
    .end array-data

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
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    :array_1
    .array-data 8
        -0x3f670ee728ed22bdL    # -1596.2742579410121
        -0x265825e57cbbbddL    # -1.082804276632569E297
        0x10c650292b4a03a4L    # 7.358575523360956E-228
    .end array-data
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x2

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const/16 v1, 0x12

    .line 16
    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method public nextBoolean()Z
    .locals 5

    .line 1
    const/4 v0, 0x5

    .line 2
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    :cond_0
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v1, v0, :cond_1

    .line 13
    .line 14
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 15
    .line 16
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 17
    .line 18
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 19
    .line 20
    sub-int/2addr v1, v3

    .line 21
    aget v2, v0, v1

    .line 22
    .line 23
    add-int/2addr v2, v3

    .line 24
    aput v2, v0, v1

    .line 25
    .line 26
    return v3

    .line 27
    :cond_1
    const/4 v4, 0x6

    .line 28
    if-ne v1, v4, :cond_2

    .line 29
    .line 30
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 31
    .line 32
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 33
    .line 34
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 35
    .line 36
    sub-int/2addr v1, v3

    .line 37
    aget v4, v0, v1

    .line 38
    .line 39
    add-int/2addr v4, v3

    .line 40
    aput v4, v0, v1

    .line 41
    .line 42
    return v2

    .line 43
    :cond_2
    new-instance v1, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 44
    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    new-array v0, v0, [J

    .line 53
    .line 54
    fill-array-data v0, :array_0

    .line 55
    .line 56
    .line 57
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    const/4 v3, 0x3

    .line 77
    new-array v3, v3, [J

    .line 78
    .line 79
    fill-array-data v3, :array_1

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 83
    .line 84
    .line 85
    invoke-static {v0, v2, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-direct {v1, v0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw v1

    .line 93
    :array_0
    .array-data 8
        -0x650ee064e01fbe2fL    # -6.602586920045826E-179
        0x2bb04e06a7672f29L    # 2.981786924743533E-98
        0x7ec4b36c9000510aL    # 4.4362332082679174E302
        -0x71bfcdd2259c2121L    # -4.857821567605215E-240
        0x7538a1b105da76f7L    # 4.623055177754721E256
    .end array-data

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    :array_1
    .array-data 8
        -0x126caa7576e56528L    # -6.824986967588571E219
        0x158cb5a8eb4d3026L
        -0x5e7b42df6c21aa5aL    # -3.243809182739986E-147
    .end array-data
.end method

.method public nextDouble()D
    .locals 8

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x3

    .line 3
    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    :cond_0
    const/16 v3, 0x10

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    if-ne v2, v3, :cond_1

    .line 15
    .line 16
    iput v4, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 17
    .line 18
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 19
    .line 20
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 21
    .line 22
    add-int/lit8 v1, v1, -0x1

    .line 23
    .line 24
    aget v2, v0, v1

    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    aput v2, v0, v1

    .line 29
    .line 30
    iget-wide v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedLong:J

    .line 31
    .line 32
    long-to-double v0, v0

    .line 33
    return-wide v0

    .line 34
    :cond_1
    const/16 v3, 0x11

    .line 35
    .line 36
    const/16 v5, 0xb

    .line 37
    .line 38
    if-ne v2, v3, :cond_2

    .line 39
    .line 40
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 41
    .line 42
    iget v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    .line 43
    .line 44
    int-to-long v6, v3

    .line 45
    invoke-virtual {v2, v6, v7}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iput-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/16 v3, 0x9

    .line 53
    .line 54
    if-ne v2, v3, :cond_3

    .line 55
    .line 56
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 57
    .line 58
    invoke-direct {p0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    iput-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    const/16 v3, 0x8

    .line 66
    .line 67
    if-ne v2, v3, :cond_4

    .line 68
    .line 69
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 70
    .line 71
    invoke-direct {p0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    iput-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    const/16 v3, 0xa

    .line 79
    .line 80
    if-ne v2, v3, :cond_5

    .line 81
    .line 82
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextUnquotedValue()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    iput-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_5
    if-ne v2, v5, :cond_8

    .line 90
    .line 91
    :goto_0
    iput v5, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 92
    .line 93
    :try_start_0
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 96
    .line 97
    .line 98
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    iget-boolean v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->lenient:Z

    .line 100
    .line 101
    if-nez v0, :cond_7

    .line 102
    .line 103
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_6

    .line 108
    .line 109
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-nez v0, :cond_6

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_6
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    .line 117
    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 124
    .line 125
    const/4 v6, 0x6

    .line 126
    new-array v6, v6, [J

    .line 127
    .line 128
    fill-array-data v6, :array_0

    .line 129
    .line 130
    .line 131
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 145
    .line 146
    new-array v1, v1, [J

    .line 147
    .line 148
    fill-array-data v1, :array_1

    .line 149
    .line 150
    .line 151
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 152
    .line 153
    .line 154
    invoke-static {v2, v4, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw v0

    .line 162
    :cond_7
    :goto_1
    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 164
    .line 165
    iput v4, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 166
    .line 167
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 168
    .line 169
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 170
    .line 171
    add-int/lit8 v1, v1, -0x1

    .line 172
    .line 173
    aget v4, v0, v1

    .line 174
    .line 175
    add-int/lit8 v4, v4, 0x1

    .line 176
    .line 177
    aput v4, v0, v1

    .line 178
    .line 179
    return-wide v2

    .line 180
    :catch_0
    new-instance v2, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 181
    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 188
    .line 189
    new-array v0, v0, [J

    .line 190
    .line 191
    fill-array-data v0, :array_2

    .line 192
    .line 193
    .line 194
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 210
    .line 211
    new-array v1, v1, [J

    .line 212
    .line 213
    fill-array-data v1, :array_3

    .line 214
    .line 215
    .line 216
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 217
    .line 218
    .line 219
    invoke-static {v0, v3, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-direct {v2, v0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw v2

    .line 227
    :cond_8
    new-instance v2, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 228
    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .line 233
    .line 234
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 235
    .line 236
    new-array v0, v0, [J

    .line 237
    .line 238
    fill-array-data v0, :array_4

    .line 239
    .line 240
    .line 241
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 259
    .line 260
    new-array v1, v1, [J

    .line 261
    .line 262
    fill-array-data v1, :array_5

    .line 263
    .line 264
    .line 265
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 266
    .line 267
    .line 268
    invoke-static {v0, v3, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-direct {v2, v0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    throw v2

    .line 276
    nop

    .line 277
    :array_0
    .array-data 8
        -0x12987bf6b2bbdc9eL    # -1.037638344887884E219
        -0x5458b264f656810dL    # -2.1308162502058046E-98
        -0x620b06c8c8a12c34L    # -2.276319723088686E-164
        0x1058ac65c791f243L    # 6.357008824660158E-230
        -0x76d63b0348997a7eL
        0x4339b02ab8798cbfL    # 7.230571947855039E15
    .end array-data

    .line 278
    .line 279
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
    :array_1
    .array-data 8
        -0x73bd4e8919d9bc36L
        0xdbba67fe3663544L
        0x33f965ef5c148646L    # 2.5288525520675085E-58
    .end array-data

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
    :array_2
    .array-data 8
        -0x1367fd5d6db8ee81L    # -1.2932854268556345E215
        0x7624f1a937237559L    # 1.2880883254337407E261
        -0x3e8a9504569ae29L    # -5.686054246648795E289
        0x6e5af9018d39a49fL    # 3.8999667003446386E223
        -0x748b845ca8b70760L    # -1.746129302865955E-253
    .end array-data

    .line 322
    .line 323
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
    :array_3
    .array-data 8
        -0x221d28cdac2419f0L    # -1.8379891319866928E144
        0x76c05675151d981L
        -0x5538698d374291caL
    .end array-data

    .line 346
    :array_4
    .array-data 8
        0x2b2edc95353df800L
        0x16b8afb86027fd46L
        -0x7399592514a00272L
        -0x359da1dcce7f8d27L    # -2.1475567554165163E50
        -0x11a0c5eabb597abbL    # -4.515080440305655E223
    .end array-data

    :array_5
    .array-data 8
        -0xdca0730d3f86964L
        -0x1d08f6d1a44a958L    # -6.579678437412183E299
        0x46ceada6f40a649cL    # 1.2444608595262555E33
    .end array-data
.end method

.method public nextInt()I
    .locals 9

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x4

    .line 3
    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    :cond_0
    const/16 v3, 0x10

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    if-ne v2, v3, :cond_2

    .line 15
    .line 16
    iget-wide v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedLong:J

    .line 17
    .line 18
    long-to-int v5, v2

    .line 19
    int-to-long v6, v5

    .line 20
    cmp-long v8, v2, v6

    .line 21
    .line 22
    if-nez v8, :cond_1

    .line 23
    .line 24
    iput v4, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 25
    .line 26
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 27
    .line 28
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 29
    .line 30
    add-int/lit8 v1, v1, -0x1

    .line 31
    .line 32
    aget v2, v0, v1

    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    aput v2, v0, v1

    .line 37
    .line 38
    return v5

    .line 39
    :cond_1
    new-instance v2, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 40
    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    new-array v1, v1, [J

    .line 49
    .line 50
    fill-array-data v1, :array_0

    .line 51
    .line 52
    .line 53
    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-wide v4, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedLong:J

    .line 64
    .line 65
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    new-array v0, v0, [J

    .line 71
    .line 72
    fill-array-data v0, :array_1

    .line 73
    .line 74
    .line 75
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-static {v1, v3, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-direct {v2, v0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw v2

    .line 86
    :cond_2
    const/16 v3, 0x11

    .line 87
    .line 88
    const/16 v5, 0xb

    .line 89
    .line 90
    if-ne v2, v3, :cond_3

    .line 91
    .line 92
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 93
    .line 94
    iget v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    .line 95
    .line 96
    int-to-long v6, v3

    .line 97
    invoke-virtual {v2, v6, v7}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    iput-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_3
    const/16 v3, 0x9

    .line 105
    .line 106
    if-eq v2, v3, :cond_6

    .line 107
    .line 108
    const/16 v6, 0x8

    .line 109
    .line 110
    if-ne v2, v6, :cond_4

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_4
    if-ne v2, v5, :cond_5

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_5
    new-instance v2, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 117
    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 124
    .line 125
    new-array v1, v1, [J

    .line 126
    .line 127
    fill-array-data v1, :array_2

    .line 128
    .line 129
    .line 130
    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 148
    .line 149
    new-array v0, v0, [J

    .line 150
    .line 151
    fill-array-data v0, :array_3

    .line 152
    .line 153
    .line 154
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 155
    .line 156
    .line 157
    invoke-static {v1, v3, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-direct {v2, v0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw v2

    .line 165
    :cond_6
    :goto_0
    if-ne v2, v3, :cond_7

    .line 166
    .line 167
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 168
    .line 169
    invoke-direct {p0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    goto :goto_1

    .line 174
    :cond_7
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 175
    .line 176
    invoke-direct {p0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    :goto_1
    iput-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 181
    .line 182
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    iput v4, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 187
    .line 188
    iget-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 189
    .line 190
    iget v6, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 191
    .line 192
    add-int/lit8 v6, v6, -0x1

    .line 193
    .line 194
    aget v7, v3, v6

    .line 195
    .line 196
    add-int/lit8 v7, v7, 0x1

    .line 197
    .line 198
    aput v7, v3, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .line 200
    return v2

    .line 201
    :catch_0
    :goto_2
    iput v5, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 202
    .line 203
    :try_start_1
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 204
    .line 205
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 206
    .line 207
    .line 208
    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 209
    double-to-int v5, v2

    .line 210
    int-to-double v6, v5

    .line 211
    cmpl-double v8, v6, v2

    .line 212
    .line 213
    if-nez v8, :cond_8

    .line 214
    .line 215
    const/4 v0, 0x0

    .line 216
    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 217
    .line 218
    iput v4, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 219
    .line 220
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 221
    .line 222
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 223
    .line 224
    add-int/lit8 v1, v1, -0x1

    .line 225
    .line 226
    aget v2, v0, v1

    .line 227
    .line 228
    add-int/lit8 v2, v2, 0x1

    .line 229
    .line 230
    aput v2, v0, v1

    .line 231
    .line 232
    return v5

    .line 233
    :cond_8
    new-instance v2, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 234
    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 241
    .line 242
    new-array v1, v1, [J

    .line 243
    .line 244
    fill-array-data v1, :array_4

    .line 245
    .line 246
    .line 247
    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 258
    .line 259
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 263
    .line 264
    new-array v0, v0, [J

    .line 265
    .line 266
    fill-array-data v0, :array_5

    .line 267
    .line 268
    .line 269
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 270
    .line 271
    .line 272
    invoke-static {v1, v3, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-direct {v2, v0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    throw v2

    .line 280
    :catch_1
    new-instance v2, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 281
    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .line 286
    .line 287
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 288
    .line 289
    new-array v1, v1, [J

    .line 290
    .line 291
    fill-array-data v1, :array_6

    .line 292
    .line 293
    .line 294
    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 305
    .line 306
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 310
    .line 311
    new-array v0, v0, [J

    .line 312
    .line 313
    fill-array-data v0, :array_7

    .line 314
    .line 315
    .line 316
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 317
    .line 318
    .line 319
    invoke-static {v1, v3, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-direct {v2, v0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    throw v2

    .line 327
    :array_0
    .array-data 8
        -0x6c6860ce5b852748L
        0x12c7a4ab02c67664L
        0x1123d39c49af498cL    # 4.18467357731522E-226
        0x70b621b2b7eb2b27L    # 8.796098835068364E234
    .end array-data

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
    :array_1
    .array-data 8
        -0x36b963317f226723L    # -1.008552360864791E45
        -0x23af63ab1970f9b3L    # -4.829311416740154E136
        -0x34794ad5135c568fL    # -6.959885576314668E55
    .end array-data

    :array_2
    .array-data 8
        0x2fba002091f99670L    # 8.771276345823435E-79
        0x20181bf51753317fL    # 4.495367301942757E-154
        0x151d1c070b1909e8L
        -0x24d899a6c5b0638L
    .end array-data

    :array_3
    .array-data 8
        -0x74968b7c12c067caL
        -0x418de4f9ae52e824L    # -6.744848627974094E-8
        -0x4632fbde4d039a89L    # -2.8612122302477645E-30
    .end array-data

    :array_4
    .array-data 8
        0x30c79ea8a9bb5618L    # 1.0443992987308178E-73
        -0x70a33126502be454L
        0x3aac739011e8c30eL    # 4.5965743380466287E-26
        -0x2da70a3eeea9a4b2L    # -4.965270662630521E88
    .end array-data

    :array_5
    .array-data 8
        -0x3b5b4804e83617dfL    # -4.892058848745428E22
        0x704a64df157b324fL    # 8.195441507243199E232
        -0x28126a954a6fa748L    # -3.6426735471137602E115
    .end array-data

    :array_6
    .array-data 8
        -0xa91fac41ad964d6L    # -4.507579947491783E257
        0x2a8c055b82719185L    # 9.774037753322812E-104
        0x47899c41c3af78c8L    # 4.255254008122019E36
        0x673b0c989147de36L    # 1.8830929934732929E189
    .end array-data

    :array_7
    .array-data 8
        -0x5da628c771881158L
        -0x306d19f136f1e124L    # -2.1370270360707564E75
        0x1f38cd53abc46b0dL    # 2.82260435726133E-158
    .end array-data
.end method

.method public nextName()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/16 v1, 0xe

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextUnquotedValue()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/16 v1, 0xd

    .line 19
    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 23
    .line 24
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/16 v1, 0xc

    .line 30
    .line 31
    if-ne v0, v1, :cond_3

    .line 32
    .line 33
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 34
    .line 35
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    const/16 v1, 0xf

    .line 41
    .line 42
    if-ne v0, v1, :cond_4

    .line 43
    .line 44
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 45
    .line 46
    :goto_0
    const/4 v1, 0x0

    .line 47
    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 48
    .line 49
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    .line 50
    .line 51
    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 52
    .line 53
    add-int/lit8 v2, v2, -0x1

    .line 54
    .line 55
    aput-object v0, v1, v2

    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_4
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 59
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 66
    .line 67
    const/4 v3, 0x4

    .line 68
    new-array v3, v3, [J

    .line 69
    .line 70
    fill-array-data v3, :array_0

    .line 71
    .line 72
    .line 73
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 91
    .line 92
    const/4 v3, 0x3

    .line 93
    new-array v3, v3, [J

    .line 94
    .line 95
    fill-array-data v3, :array_1

    .line 96
    .line 97
    .line 98
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 99
    .line 100
    .line 101
    invoke-static {v2, v1, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v0

    .line 109
    :array_0
    .array-data 8
        -0x5230cfc648be2668L    # -4.8994136243119144E-88
        -0x223b998916377727L    # -4.9753482045843645E143
        0x6cd97c3760fbc53dL    # 2.196368928847271E216
        -0x1afa8cb05a77951dL    # -4.346138188223262E178
    .end array-data

    .line 110
    .line 111
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
    .line 128
    .line 129
    :array_1
    .array-data 8
        -0x2ec8a3ac9300acf7L    # -1.7727345361593605E83
        0x692716fbbe46d9f9L    # 3.451969360275792E198
        -0x46a4c2f9b56fbf4dL    # -2.0983682550655028E-32
    .end array-data
.end method

.method public nextString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/16 v1, 0xa

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextUnquotedValue()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/16 v1, 0x9

    .line 19
    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 23
    .line 24
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/16 v1, 0x8

    .line 30
    .line 31
    if-ne v0, v1, :cond_3

    .line 32
    .line 33
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 34
    .line 35
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    const/16 v1, 0xb

    .line 41
    .line 42
    if-ne v0, v1, :cond_4

    .line 43
    .line 44
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    iput-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_4
    const/16 v1, 0x10

    .line 51
    .line 52
    if-ne v0, v1, :cond_5

    .line 53
    .line 54
    iget-wide v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedLong:J

    .line 55
    .line 56
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    goto :goto_0

    .line 61
    :cond_5
    const/16 v1, 0x11

    .line 62
    .line 63
    if-ne v0, v1, :cond_6

    .line 64
    .line 65
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 66
    .line 67
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    .line 68
    .line 69
    int-to-long v1, v1

    .line 70
    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    :goto_0
    const/4 v1, 0x0

    .line 75
    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 76
    .line 77
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 78
    .line 79
    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 80
    .line 81
    add-int/lit8 v2, v2, -0x1

    .line 82
    .line 83
    aget v3, v1, v2

    .line 84
    .line 85
    add-int/lit8 v3, v3, 0x1

    .line 86
    .line 87
    aput v3, v1, v2

    .line 88
    .line 89
    return-object v0

    .line 90
    :cond_6
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 91
    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 98
    .line 99
    const/4 v3, 0x5

    .line 100
    new-array v3, v3, [J

    .line 101
    .line 102
    fill-array-data v3, :array_0

    .line 103
    .line 104
    .line 105
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 123
    .line 124
    const/4 v3, 0x3

    .line 125
    new-array v3, v3, [J

    .line 126
    .line 127
    fill-array-data v3, :array_1

    .line 128
    .line 129
    .line 130
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 131
    .line 132
    .line 133
    invoke-static {v2, v1, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw v0

    .line 141
    :array_0
    .array-data 8
        -0x6925283a97d76a8fL
        0x7ddfc2bce2fa6985L    # 2.0771397534927334E298
        -0x46b6ade76e0ed489L    # -9.753174018986175E-33
        0x1ccfdc79413314e8L    # 6.595609437849842E-170
        -0x1d1e2118682701f5L    # -2.107607212750559E168
    .end array-data

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
    :array_1
    .array-data 8
        0x56f8f478eee91267L    # 9.377249662293278E110
        -0x5249ef8ef3079339L    # -1.733045485506947E-88
        0x3346c1bedcff7151L    # 1.106375232626058E-61
    .end array-data
.end method

.method public peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;
    .locals 1

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v0, Ljava/lang/AssertionError;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 15
    .line 16
    .line 17
    throw v0

    .line 18
    :pswitch_0
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_DOCUMENT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 19
    .line 20
    return-object v0

    .line 21
    :pswitch_1
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 22
    .line 23
    return-object v0

    .line 24
    :pswitch_2
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NAME:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 25
    .line 26
    return-object v0

    .line 27
    :pswitch_3
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->STRING:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 28
    .line 29
    return-object v0

    .line 30
    :pswitch_4
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NULL:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 31
    .line 32
    return-object v0

    .line 33
    :pswitch_5
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BOOLEAN:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 34
    .line 35
    return-object v0

    .line 36
    :pswitch_6
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 37
    .line 38
    return-object v0

    .line 39
    :pswitch_7
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 40
    .line 41
    return-object v0

    .line 42
    :pswitch_8
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 43
    .line 44
    return-object v0

    .line 45
    :pswitch_9
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 46
    .line 47
    return-object v0

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I
    .locals 4

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/16 v1, 0xc

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    if-lt v0, v1, :cond_5

    .line 13
    .line 14
    const/16 v1, 0xf

    .line 15
    .line 16
    if-le v0, v1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    if-ne v0, v1, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 22
    .line 23
    invoke-direct {p0, v0, p1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->findName(Ljava/lang/String;Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    .line 29
    .line 30
    iget-object v3, p1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->doubleQuoteSuffix:Lokio/Options;

    .line 31
    .line 32
    invoke-interface {v0, v3}, Lokio/BufferedSource;->select(Lokio/Options;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eq v0, v2, :cond_3

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 40
    .line 41
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    .line 42
    .line 43
    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 44
    .line 45
    add-int/lit8 v2, v2, -0x1

    .line 46
    .line 47
    iget-object p1, p1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    .line 48
    .line 49
    aget-object p1, p1, v0

    .line 50
    .line 51
    aput-object p1, v1, v2

    .line 52
    .line 53
    return v0

    .line 54
    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    .line 55
    .line 56
    iget v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 57
    .line 58
    add-int/lit8 v3, v3, -0x1

    .line 59
    .line 60
    aget-object v0, v0, v3

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-direct {p0, v3, p1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->findName(Ljava/lang/String;Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-ne p1, v2, :cond_4

    .line 71
    .line 72
    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 73
    .line 74
    iput-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 75
    .line 76
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    .line 77
    .line 78
    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 79
    .line 80
    add-int/lit8 v2, v2, -0x1

    .line 81
    .line 82
    aput-object v0, v1, v2

    .line 83
    .line 84
    :cond_4
    return p1

    .line 85
    :cond_5
    :goto_0
    return v2
.end method

.method public skipName()V
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x2

    .line 3
    iget-boolean v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->failOnUnknown:Z

    .line 4
    .line 5
    if-nez v2, :cond_5

    .line 6
    .line 7
    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    :cond_0
    const/16 v3, 0xe

    .line 16
    .line 17
    if-ne v2, v3, :cond_1

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipUnquotedValue()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/16 v3, 0xd

    .line 24
    .line 25
    if-ne v2, v3, :cond_2

    .line 26
    .line 27
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 28
    .line 29
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipQuotedValue(Lokio/ByteString;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const/16 v3, 0xc

    .line 34
    .line 35
    if-ne v2, v3, :cond_3

    .line 36
    .line 37
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 38
    .line 39
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipQuotedValue(Lokio/ByteString;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    const/16 v3, 0xf

    .line 44
    .line 45
    if-ne v2, v3, :cond_4

    .line 46
    .line 47
    :goto_0
    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 49
    .line 50
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    .line 51
    .line 52
    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 53
    .line 54
    add-int/lit8 v2, v2, -0x1

    .line 55
    .line 56
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 57
    .line 58
    new-array v1, v1, [J

    .line 59
    .line 60
    fill-array-data v1, :array_0

    .line 61
    .line 62
    .line 63
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    aput-object v1, v0, v2

    .line 71
    .line 72
    return-void

    .line 73
    :cond_4
    new-instance v1, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 74
    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 81
    .line 82
    new-array v0, v0, [J

    .line 83
    .line 84
    fill-array-data v0, :array_1

    .line 85
    .line 86
    .line 87
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 105
    .line 106
    const/4 v3, 0x3

    .line 107
    new-array v3, v3, [J

    .line 108
    .line 109
    fill-array-data v3, :array_2

    .line 110
    .line 111
    .line 112
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 113
    .line 114
    .line 115
    invoke-static {v0, v2, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-direct {v1, v0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw v1

    .line 123
    :cond_5
    new-instance v2, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 124
    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 131
    .line 132
    new-array v0, v0, [J

    .line 133
    .line 134
    fill-array-data v0, :array_3

    .line 135
    .line 136
    .line 137
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 155
    .line 156
    new-array v1, v1, [J

    .line 157
    .line 158
    fill-array-data v1, :array_4

    .line 159
    .line 160
    .line 161
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 162
    .line 163
    .line 164
    invoke-static {v0, v3, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-direct {v2, v0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw v2

    .line 172
    nop

    .line 173
    :array_0
    .array-data 8
        -0x327a5af7c005061aL    # -2.849310556431102E65
        0xc9954e5c2fa26f2L
    .end array-data

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    :array_1
    .array-data 8
        -0xdf23f7453c1ca7L
        -0x6e0f413d91fc8292L    # -2.895291940564054E-222
        -0x77fb5311555a001eL
        -0x35096bd3357ebdc1L    # -1.3516376280603348E53
    .end array-data

    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    :array_2
    .array-data 8
        0x2ffdab5dffa2cae6L    # 1.6014372856714983E-77
        0x17af650167c1da3bL
        0x3bf0171c5c2bf141L    # 5.451597726968318E-20
    .end array-data

    .line 206
    .line 207
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
    :array_3
    .array-data 8
        0x3720fabadb509101L    # 3.806916216427584E-43
        0x3c6f077a49662e6L
        0x31a67a402764e942L    # 1.628395211961739E-69
        -0x1cd959a8ab9aa3e5L    # -4.273969054041146E169
    .end array-data

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
    :array_4
    .array-data 8
        -0x7841495aaa537cbaL
        0x3066b2f29b46008bL    # 1.5682601138977647E-75
    .end array-data
.end method

.method public skipValue()V
    .locals 10

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x5

    .line 4
    const/4 v3, 0x1

    .line 5
    const/4 v4, 0x3

    .line 6
    iget-boolean v5, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->failOnUnknown:Z

    .line 7
    .line 8
    if-nez v5, :cond_10

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    :cond_0
    iget v7, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 13
    .line 14
    if-nez v7, :cond_1

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    .line 17
    .line 18
    .line 19
    move-result v7

    .line 20
    :cond_1
    if-ne v7, v4, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pushScope(I)V

    .line 23
    .line 24
    .line 25
    :goto_0
    add-int/2addr v6, v3

    .line 26
    goto/16 :goto_4

    .line 27
    .line 28
    :cond_2
    if-ne v7, v3, :cond_3

    .line 29
    .line 30
    invoke-virtual {p0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pushScope(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    if-ne v7, v0, :cond_5

    .line 35
    .line 36
    add-int/lit8 v6, v6, -0x1

    .line 37
    .line 38
    if-ltz v6, :cond_4

    .line 39
    .line 40
    iget v7, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 41
    .line 42
    sub-int/2addr v7, v3

    .line 43
    iput v7, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 44
    .line 45
    goto/16 :goto_4

    .line 46
    .line 47
    :cond_4
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    new-array v2, v2, [J

    .line 57
    .line 58
    fill-array-data v2, :array_0

    .line 59
    .line 60
    .line 61
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 79
    .line 80
    new-array v3, v4, [J

    .line 81
    .line 82
    fill-array-data v3, :array_1

    .line 83
    .line 84
    .line 85
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 86
    .line 87
    .line 88
    invoke-static {v2, v1, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v0

    .line 96
    :cond_5
    if-ne v7, v1, :cond_7

    .line 97
    .line 98
    add-int/lit8 v6, v6, -0x1

    .line 99
    .line 100
    if-ltz v6, :cond_6

    .line 101
    .line 102
    iget v7, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 103
    .line 104
    sub-int/2addr v7, v3

    .line 105
    iput v7, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 106
    .line 107
    goto/16 :goto_4

    .line 108
    .line 109
    :cond_6
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 110
    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 117
    .line 118
    new-array v2, v2, [J

    .line 119
    .line 120
    fill-array-data v2, :array_2

    .line 121
    .line 122
    .line 123
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 141
    .line 142
    new-array v3, v4, [J

    .line 143
    .line 144
    fill-array-data v3, :array_3

    .line 145
    .line 146
    .line 147
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 148
    .line 149
    .line 150
    invoke-static {v2, v1, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw v0

    .line 158
    :cond_7
    const/16 v8, 0xe

    .line 159
    .line 160
    if-eq v7, v8, :cond_f

    .line 161
    .line 162
    const/16 v8, 0xa

    .line 163
    .line 164
    if-ne v7, v8, :cond_8

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_8
    const/16 v8, 0x9

    .line 168
    .line 169
    if-eq v7, v8, :cond_e

    .line 170
    .line 171
    const/16 v8, 0xd

    .line 172
    .line 173
    if-ne v7, v8, :cond_9

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_9
    const/16 v8, 0x8

    .line 177
    .line 178
    if-eq v7, v8, :cond_d

    .line 179
    .line 180
    const/16 v8, 0xc

    .line 181
    .line 182
    if-ne v7, v8, :cond_a

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_a
    const/16 v8, 0x11

    .line 186
    .line 187
    if-ne v7, v8, :cond_b

    .line 188
    .line 189
    iget-object v7, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 190
    .line 191
    iget v8, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    .line 192
    .line 193
    int-to-long v8, v8

    .line 194
    invoke-virtual {v7, v8, v9}, Lokio/Buffer;->skip(J)V

    .line 195
    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_b
    const/16 v8, 0x12

    .line 199
    .line 200
    if-eq v7, v8, :cond_c

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_c
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 204
    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 211
    .line 212
    new-array v2, v2, [J

    .line 213
    .line 214
    fill-array-data v2, :array_4

    .line 215
    .line 216
    .line 217
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 235
    .line 236
    new-array v3, v4, [J

    .line 237
    .line 238
    fill-array-data v3, :array_5

    .line 239
    .line 240
    .line 241
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 242
    .line 243
    .line 244
    invoke-static {v2, v1, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    throw v0

    .line 252
    :cond_d
    :goto_1
    sget-object v7, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 253
    .line 254
    invoke-direct {p0, v7}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipQuotedValue(Lokio/ByteString;)V

    .line 255
    .line 256
    .line 257
    goto :goto_4

    .line 258
    :cond_e
    :goto_2
    sget-object v7, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 259
    .line 260
    invoke-direct {p0, v7}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipQuotedValue(Lokio/ByteString;)V

    .line 261
    .line 262
    .line 263
    goto :goto_4

    .line 264
    :cond_f
    :goto_3
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipUnquotedValue()V

    .line 265
    .line 266
    .line 267
    :goto_4
    iput v5, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 268
    .line 269
    if-nez v6, :cond_0

    .line 270
    .line 271
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 272
    .line 273
    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 274
    .line 275
    add-int/lit8 v4, v2, -0x1

    .line 276
    .line 277
    aget v5, v0, v4

    .line 278
    .line 279
    add-int/2addr v5, v3

    .line 280
    aput v5, v0, v4

    .line 281
    .line 282
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    .line 283
    .line 284
    sub-int/2addr v2, v3

    .line 285
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 286
    .line 287
    new-array v1, v1, [J

    .line 288
    .line 289
    fill-array-data v1, :array_6

    .line 290
    .line 291
    .line 292
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    aput-object v1, v0, v2

    .line 300
    .line 301
    return-void

    .line 302
    :cond_10
    new-instance v2, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 303
    .line 304
    new-instance v3, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .line 308
    .line 309
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 310
    .line 311
    new-array v0, v0, [J

    .line 312
    .line 313
    fill-array-data v0, :array_7

    .line 314
    .line 315
    .line 316
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 334
    .line 335
    new-array v1, v1, [J

    .line 336
    .line 337
    fill-array-data v1, :array_8

    .line 338
    .line 339
    .line 340
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 341
    .line 342
    .line 343
    invoke-static {v0, v3, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    invoke-direct {v2, v0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    throw v2

    .line 351
    :array_0
    .array-data 8
        0x60c98b3666cee1fcL
        0x4052c49791ad408bL    # 75.07175104064133
        -0x68bf794cd1aa9c1eL
        0x4a2e675e0e9c6eeaL    # 2.2217586356087044E49
        0x3c32d4ebb3284a85L    # 1.0208696677741209E-18
    .end array-data

    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
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
    :array_1
    .array-data 8
        -0x33e48a16ba4cfb9eL    # -4.309323038796348E58
        -0x1852a305daec02aL
        0x12737fc187ec2dbaL
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
    :array_2
    .array-data 8
        -0x652b9bb1b5e9156eL
        0x6eae4754cfaae69aL
        0x47998c6303bf8926L    # 8.489907427582615E36
        -0x1d88ccd847df6910L
        0x143886a164ee08e3L
    .end array-data

    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    :array_3
    .array-data 8
        0xe7e4cbd002a158fL    # 7.270472306484224E-239
        0x55a0b59916a772eL
        0x5ff18a84aa310c73L    # 1.4699220172211773E154
    .end array-data

    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    :array_4
    .array-data 8
        0x7a84117a352938b4L    # 1.4571219866892827E282
        -0x36ab4c1e8f7dafd1L    # -1.8467388649404608E45
        -0x303cfcd3cade2b39L    # -1.7199099547111332E76
        -0x5ee70dda78a299c2L
        -0x32d5d32fb4e753eL    # -1.859718095881943E293
    .end array-data

    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    :array_5
    .array-data 8
        0x4bdb51476eb0cef1L    # 2.6792922334321404E57
        -0x589b05073990f0d0L    # -6.49986933807002E-119
        -0x37f5a959c7fc241bL    # -1.120314775622637E39
    .end array-data

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
    .line 468
    .line 469
    .line 470
    .line 471
    :array_6
    .array-data 8
        0x6f1a8b16c42adb29L    # 1.5719977771973154E227
        0x2b65f422e061620fL    # 1.2546376670603368E-99
    .end array-data

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
    :array_7
    .array-data 8
        -0x3eeab462d40e7183L    # -348903.2929136528
        0x6f22e3ac2bace80dL    # 2.2374001470261717E227
        -0x6c6897efb7fc6183L    # -2.7159360819995783E-214
        0x5489642f275f4304L    # 1.7355386463243088E99
    .end array-data

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
    .line 500
    .line 501
    .line 502
    .line 503
    :array_8
    .array-data 8
        -0x780bc0d8da56acfdL    # -2.395289215379206E-270
        -0xd9bbce9575420c5L
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    new-array v2, v2, [J

    .line 10
    .line 11
    fill-array-data v2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    new-array v2, v2, [J

    .line 33
    .line 34
    fill-array-data v2, :array_1

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0

    .line 45
    :array_0
    .array-data 8
        -0x2089d5299a971549L    # -7.256234267335901E151
        0x73a33aeeb456ccddL    # 1.0756484155654022E249
        0x68027505948f01a3L    # 1.0526187192717741E193
    .end array-data

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    :array_1
    .array-data 8
        0x33d7fe51828a08cL
        0x3a166eabfdc68dfaL    # 7.078389542069611E-29
    .end array-data
.end method
