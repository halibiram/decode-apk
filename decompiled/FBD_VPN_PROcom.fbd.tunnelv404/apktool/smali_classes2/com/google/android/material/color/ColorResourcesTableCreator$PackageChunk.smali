.class Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/ColorResourcesTableCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageChunk"
.end annotation


# static fields
.field private static final HEADER_SIZE:S = 0x120s

.field private static final PACKAGE_NAME_MAX_LENGTH:I = 0x80


# instance fields
.field private final header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

.field private final keyStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

.field private final packageInfo:Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

.field private final typeSpecChunk:Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;

.field private final typeStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;


# direct methods
.method public constructor <init>(Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;",
            "Ljava/util/List<",
            "Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->packageInfo:Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    .line 6
    .line 7
    new-instance p1, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    .line 8
    .line 9
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    new-array v3, v2, [J

    .line 13
    .line 14
    fill-array-data v3, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    new-array v3, v2, [J

    .line 27
    .line 28
    fill-array-data v3, :array_1

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    new-array v3, v2, [J

    .line 41
    .line 42
    fill-array-data v3, :array_2

    .line 43
    .line 44
    .line 45
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    new-array v3, v2, [J

    .line 55
    .line 56
    fill-array-data v3, :array_3

    .line 57
    .line 58
    .line 59
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 67
    .line 68
    new-array v3, v2, [J

    .line 69
    .line 70
    fill-array-data v3, :array_4

    .line 71
    .line 72
    .line 73
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 81
    .line 82
    new-array v2, v2, [J

    .line 83
    .line 84
    fill-array-data v2, :array_5

    .line 85
    .line 86
    .line 87
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    const/4 v2, 0x0

    .line 99
    invoke-direct {p1, v2, v1}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;-><init>(Z[Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iput-object p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    .line 103
    .line 104
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    new-array p1, p1, [Ljava/lang/String;

    .line 109
    .line 110
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-ge v2, v1, :cond_0

    .line 115
    .line 116
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    .line 121
    .line 122
    invoke-static {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$100(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    aput-object v1, p1, v2

    .line 127
    .line 128
    add-int/2addr v2, v0

    .line 129
    goto :goto_0

    .line 130
    :cond_0
    new-instance v1, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    .line 131
    .line 132
    invoke-direct {v1, v0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;-><init>(Z[Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iput-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->keyStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    .line 136
    .line 137
    new-instance p1, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;

    .line 138
    .line 139
    invoke-direct {p1, p2}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;-><init>(Ljava/util/List;)V

    .line 140
    .line 141
    .line 142
    iput-object p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeSpecChunk:Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;

    .line 143
    .line 144
    new-instance p1, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    .line 145
    .line 146
    const/16 p2, 0x120

    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->getChunkSize()I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    const/16 v1, 0x200

    .line 153
    .line 154
    invoke-direct {p1, v1, p2, v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;-><init>(SSI)V

    .line 155
    .line 156
    .line 157
    iput-object p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    .line 158
    .line 159
    return-void

    .line 160
    nop

    .line 161
    :array_0
    .array-data 8
        -0x705e701518ad088cL
        -0x65bb35aaecf363eeL    # -3.914304928976672E-182
    .end array-data

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
    :array_1
    .array-data 8
        0x911bd8f6d33e160L
        -0x515e43b9319d140fL    # -4.564713906677004E-84
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
    :array_2
    .array-data 8
        -0x3482393327082585L    # -4.563245036505265E55
        -0x5547762397d8e933L    # -6.847465396804E-103
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
    :array_3
    .array-data 8
        0x41194713ed7578b2L    # 414148.9818934306
        0x1a8ed4b824902a3bL    # 9.287510278228383E-181
    .end array-data

    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    :array_4
    .array-data 8
        0x7387115c83c184a7L    # 3.2257667030596224E248
        -0x23c84eb3a2b96fa8L    # -1.7220678428083172E136
    .end array-data

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
    :array_5
    .array-data 8
        0x73306de476e79f08L    # 7.179507581101597E246
        -0x3d1ea4837b34ed1dL    # -1.526770301892071E14
    .end array-data
.end method


# virtual methods
.method public getChunkSize()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->getChunkSize()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit16 v0, v0, 0x120

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->keyStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->getChunkSize()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    iget-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeSpecChunk:Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->getChunkSizeWithTypeChunk()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    add-int/2addr v0, v1

    .line 23
    return v0
.end method

.method public writeTo(Ljava/io/ByteArrayOutputStream;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->packageInfo:Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;->access$1000(Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->packageInfo:Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;->access$1100(Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v2, 0x0

    .line 31
    :goto_0
    const/16 v3, 0x80

    .line 32
    .line 33
    if-ge v2, v3, :cond_1

    .line 34
    .line 35
    array-length v3, v0

    .line 36
    if-ge v2, v3, :cond_0

    .line 37
    .line 38
    aget-char v3, v0, v2

    .line 39
    .line 40
    invoke-static {v3}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$1200(C)[B

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    invoke-static {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$1200(C)[B

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 53
    .line 54
    .line 55
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/16 v0, 0x120

    .line 59
    .line 60
    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 65
    .line 66
    .line 67
    invoke-static {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 72
    .line 73
    .line 74
    iget-object v2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->getChunkSize()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    add-int/2addr v2, v0

    .line 81
    invoke-static {v2}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 86
    .line 87
    .line 88
    invoke-static {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 93
    .line 94
    .line 95
    invoke-static {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    .line 103
    .line 104
    invoke-virtual {v0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->keyStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    .line 108
    .line 109
    invoke-virtual {v0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeSpecChunk:Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;

    .line 113
    .line 114
    invoke-virtual {v0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    .line 115
    .line 116
    .line 117
    return-void
.end method
