.class final Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;
.super Lcom/google/common/hash/AbstractStreamingHasher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Murmur3_128HashFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Murmur3_128Hasher"
.end annotation


# static fields
.field private static final C1:J = -0x783c846eeebdac2bL

.field private static final C2:J = 0x4cf5ad432745937fL

.field private static final CHUNK_SIZE:I = 0x10


# instance fields
.field private h1:J

.field private h2:J

.field private length:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/google/common/hash/AbstractStreamingHasher;-><init>(I)V

    .line 4
    .line 5
    .line 6
    int-to-long v0, p1

    .line 7
    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->length:I

    .line 13
    .line 14
    return-void
.end method

.method private bmix64(JJ)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->mixK1(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    xor-long/2addr p1, v0

    .line 8
    iput-wide p1, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    .line 9
    .line 10
    const/16 v0, 0x1b

    .line 11
    .line 12
    invoke-static {p1, p2, v0}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 13
    .line 14
    .line 15
    move-result-wide p1

    .line 16
    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    .line 17
    .line 18
    add-long/2addr p1, v0

    .line 19
    const-wide/16 v2, 0x5

    .line 20
    .line 21
    mul-long p1, p1, v2

    .line 22
    .line 23
    const-wide/32 v4, 0x52dce729

    .line 24
    .line 25
    .line 26
    add-long/2addr p1, v4

    .line 27
    iput-wide p1, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    .line 28
    .line 29
    invoke-static {p3, p4}, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->mixK2(J)J

    .line 30
    .line 31
    .line 32
    move-result-wide p1

    .line 33
    xor-long/2addr p1, v0

    .line 34
    iput-wide p1, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    .line 35
    .line 36
    const/16 p3, 0x1f

    .line 37
    .line 38
    invoke-static {p1, p2, p3}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 39
    .line 40
    .line 41
    move-result-wide p1

    .line 42
    iget-wide p3, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    .line 43
    .line 44
    add-long/2addr p1, p3

    .line 45
    mul-long p1, p1, v2

    .line 46
    .line 47
    const-wide/32 p3, 0x38495ab5

    .line 48
    .line 49
    .line 50
    add-long/2addr p1, p3

    .line 51
    iput-wide p1, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    .line 52
    .line 53
    return-void
.end method

.method private static fmix64(J)J
    .locals 3

    const/16 v0, 0x21

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    const-wide v1, -0xae502812aa7333L

    mul-long p0, p0, v1

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    const-wide v1, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long p0, p0, v1

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method private static mixK1(J)J
    .locals 2

    .line 1
    const-wide v0, -0x783c846eeebdac2bL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    mul-long p0, p0, v0

    .line 7
    .line 8
    const/16 v0, 0x1f

    .line 9
    .line 10
    invoke-static {p0, p1, v0}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 11
    .line 12
    .line 13
    move-result-wide p0

    .line 14
    const-wide v0, 0x4cf5ad432745937fL    # 5.573325460219186E62

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    mul-long p0, p0, v0

    .line 20
    .line 21
    return-wide p0
.end method

.method private static mixK2(J)J
    .locals 2

    .line 1
    const-wide v0, 0x4cf5ad432745937fL    # 5.573325460219186E62

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    mul-long p0, p0, v0

    .line 7
    .line 8
    const/16 v0, 0x21

    .line 9
    .line 10
    invoke-static {p0, p1, v0}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 11
    .line 12
    .line 13
    move-result-wide p0

    .line 14
    const-wide v0, -0x783c846eeebdac2bL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    mul-long p0, p0, v0

    .line 20
    .line 21
    return-wide p0
.end method


# virtual methods
.method public makeHash()Lcom/google/common/hash/HashCode;
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    .line 2
    .line 3
    iget v2, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->length:I

    .line 4
    .line 5
    int-to-long v3, v2

    .line 6
    xor-long/2addr v0, v3

    .line 7
    iget-wide v3, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    .line 8
    .line 9
    int-to-long v5, v2

    .line 10
    xor-long v2, v3, v5

    .line 11
    .line 12
    add-long/2addr v0, v2

    .line 13
    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    .line 14
    .line 15
    add-long/2addr v2, v0

    .line 16
    iput-wide v2, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->fmix64(J)J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    .line 23
    .line 24
    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->fmix64(J)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    iget-wide v2, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    .line 31
    .line 32
    add-long/2addr v2, v0

    .line 33
    iput-wide v2, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    .line 34
    .line 35
    add-long/2addr v0, v2

    .line 36
    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    .line 37
    .line 38
    const/16 v0, 0x10

    .line 39
    .line 40
    new-array v0, v0, [B

    .line 41
    .line 42
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-wide v1, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-wide v1, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0
.end method

.method public process(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->bmix64(JJ)V

    .line 10
    .line 11
    .line 12
    iget p1, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->length:I

    .line 13
    .line 14
    add-int/lit8 p1, p1, 0x10

    .line 15
    .line 16
    iput p1, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->length:I

    .line 17
    .line 18
    return-void
.end method

.method public processRemaining(Ljava/nio/ByteBuffer;)V
    .locals 14

    .line 1
    const/4 v0, 0x4

    .line 2
    iget v1, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->length:I

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    add-int/2addr v2, v1

    .line 9
    iput v2, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->length:I

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/16 v2, 0x10

    .line 16
    .line 17
    const/16 v3, 0x18

    .line 18
    .line 19
    const/16 v4, 0x20

    .line 20
    .line 21
    const/16 v5, 0x28

    .line 22
    .line 23
    const/16 v6, 0x30

    .line 24
    .line 25
    const/16 v7, 0x8

    .line 26
    .line 27
    const-wide/16 v8, 0x0

    .line 28
    .line 29
    packed-switch v1, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    new-instance p1, Ljava/lang/AssertionError;

    .line 33
    .line 34
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    new-array v0, v0, [J

    .line 37
    .line 38
    fill-array-data v0, :array_0

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :pswitch_0
    const/16 v0, 0xe

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    int-to-long v0, v0

    .line 63
    shl-long v8, v0, v6

    .line 64
    .line 65
    :pswitch_1
    const/16 v0, 0xd

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    int-to-long v0, v0

    .line 76
    shl-long/2addr v0, v5

    .line 77
    xor-long/2addr v8, v0

    .line 78
    :pswitch_2
    const/16 v0, 0xc

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    int-to-long v0, v0

    .line 89
    shl-long/2addr v0, v4

    .line 90
    xor-long/2addr v8, v0

    .line 91
    :pswitch_3
    const/16 v0, 0xb

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    int-to-long v0, v0

    .line 102
    shl-long/2addr v0, v3

    .line 103
    xor-long/2addr v8, v0

    .line 104
    :pswitch_4
    const/16 v0, 0xa

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    int-to-long v0, v0

    .line 115
    shl-long/2addr v0, v2

    .line 116
    xor-long/2addr v8, v0

    .line 117
    :pswitch_5
    const/16 v0, 0x9

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    int-to-long v0, v0

    .line 128
    shl-long/2addr v0, v7

    .line 129
    xor-long/2addr v8, v0

    .line 130
    :pswitch_6
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    int-to-long v0, v0

    .line 139
    xor-long/2addr v8, v0

    .line 140
    :pswitch_7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    .line 141
    .line 142
    .line 143
    move-result-wide v0

    .line 144
    goto :goto_6

    .line 145
    :pswitch_8
    const/4 v1, 0x6

    .line 146
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    invoke-static {v1}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    int-to-long v10, v1

    .line 155
    shl-long/2addr v10, v6

    .line 156
    goto :goto_0

    .line 157
    :pswitch_9
    move-wide v10, v8

    .line 158
    :goto_0
    const/4 v1, 0x5

    .line 159
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    invoke-static {v1}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    int-to-long v12, v1

    .line 168
    shl-long v5, v12, v5

    .line 169
    .line 170
    xor-long/2addr v5, v10

    .line 171
    goto :goto_1

    .line 172
    :pswitch_a
    move-wide v5, v8

    .line 173
    :goto_1
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    int-to-long v0, v0

    .line 182
    shl-long/2addr v0, v4

    .line 183
    xor-long/2addr v0, v5

    .line 184
    goto :goto_2

    .line 185
    :pswitch_b
    move-wide v0, v8

    .line 186
    :goto_2
    const/4 v4, 0x3

    .line 187
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 188
    .line 189
    .line 190
    move-result v4

    .line 191
    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    int-to-long v4, v4

    .line 196
    shl-long v3, v4, v3

    .line 197
    .line 198
    xor-long/2addr v0, v3

    .line 199
    goto :goto_3

    .line 200
    :pswitch_c
    move-wide v0, v8

    .line 201
    :goto_3
    const/4 v3, 0x2

    .line 202
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    invoke-static {v3}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    int-to-long v3, v3

    .line 211
    shl-long v2, v3, v2

    .line 212
    .line 213
    xor-long/2addr v0, v2

    .line 214
    goto :goto_4

    .line 215
    :pswitch_d
    move-wide v0, v8

    .line 216
    :goto_4
    const/4 v2, 0x1

    .line 217
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    int-to-long v2, v2

    .line 226
    shl-long/2addr v2, v7

    .line 227
    xor-long/2addr v0, v2

    .line 228
    goto :goto_5

    .line 229
    :pswitch_e
    move-wide v0, v8

    .line 230
    :goto_5
    const/4 v2, 0x0

    .line 231
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    invoke-static {p1}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    int-to-long v2, p1

    .line 240
    xor-long/2addr v0, v2

    .line 241
    :goto_6
    iget-wide v2, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    .line 242
    .line 243
    invoke-static {v0, v1}, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->mixK1(J)J

    .line 244
    .line 245
    .line 246
    move-result-wide v0

    .line 247
    xor-long/2addr v0, v2

    .line 248
    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    .line 249
    .line 250
    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    .line 251
    .line 252
    invoke-static {v8, v9}, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->mixK2(J)J

    .line 253
    .line 254
    .line 255
    move-result-wide v2

    .line 256
    xor-long/2addr v0, v2

    .line 257
    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    .line 258
    .line 259
    return-void

    .line 260
    nop

    .line 261
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
    :array_0
    .array-data 8
        0x4442ac95c1b15797L    # 6.889549044804966E20
        -0xbfbfcd1608d37e4L    # -7.164175805934217E250
        0xb75a4b436a76d64L
        -0x4377543e6c6a1f32L    # -4.2797228422729436E-17
    .end array-data
.end method
