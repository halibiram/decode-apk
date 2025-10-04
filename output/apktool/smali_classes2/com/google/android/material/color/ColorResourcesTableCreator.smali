.class final Lcom/google/android/material/color/ColorResourcesTableCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;
    }
.end annotation


# static fields
.field private static final ANDROID_PACKAGE_ID:B = 0x1t

.field private static final ANDROID_PACKAGE_INFO:Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

.field private static final APPLICATION_PACKAGE_ID:B = 0x7ft

.field private static final COLOR_RESOURCE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;",
            ">;"
        }
    .end annotation
.end field

.field private static final HEADER_TYPE_PACKAGE:S = 0x200s

.field private static final HEADER_TYPE_RES_TABLE:S = 0x2s

.field private static final HEADER_TYPE_STRING_POOL:S = 0x1s

.field private static final HEADER_TYPE_TYPE:S = 0x201s

.field private static final HEADER_TYPE_TYPE_SPEC:S = 0x202s

.field private static final RESOURCE_TYPE_NAME_COLOR:Ljava/lang/String;

.field private static typeIdColor:B


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
    sput-object v0, Lcom/google/android/material/color/ColorResourcesTableCreator;->RESOURCE_TYPE_NAME_COLOR:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    .line 19
    .line 20
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    new-array v1, v1, [J

    .line 23
    .line 24
    fill-array-data v1, :array_1

    .line 25
    .line 26
    .line 27
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-direct {v0, v2, v1}, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;-><init>(ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sput-object v0, Lcom/google/android/material/color/ColorResourcesTableCreator;->ANDROID_PACKAGE_INFO:Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    .line 39
    .line 40
    new-instance v0, Lcom/google/android/material/color/ColorResourcesTableCreator$1;

    .line 41
    .line 42
    invoke-direct {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$1;-><init>()V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lcom/google/android/material/color/ColorResourcesTableCreator;->COLOR_RESOURCE_COMPARATOR:Ljava/util/Comparator;

    .line 46
    .line 47
    return-void

    .line 48
    nop

    .line 49
    :array_0
    .array-data 8
        -0x3de4684905fd7a80L    # -2.962736704063037E10
        0x44818bb1231849dfL    # 1.0357136463438006E22
    .end array-data

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
        -0x66205035c0e7fc0aL
        -0x36f7c6e399657927L    # -6.752411866909042E43
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1200(C)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->charToByteArray(C)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$1300()B
    .locals 1

    .line 1
    sget-byte v0, Lcom/google/android/material/color/ColorResourcesTableCreator;->typeIdColor:B

    .line 2
    .line 3
    return v0
.end method

.method public static synthetic access$400()Ljava/util/Comparator;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/material/color/ColorResourcesTableCreator;->COLOR_RESOURCE_COMPARATOR:Ljava/util/Comparator;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$500(I)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->intToByteArray(I)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$600(S)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->shortToByteArray(S)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$800(Ljava/lang/String;)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->stringToByteArrayUtf8(Ljava/lang/String;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$900(Ljava/lang/String;)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->stringToByteArray(Ljava/lang/String;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static charToByteArray(C)[B
    .locals 3

    .line 1
    and-int/lit16 v0, p0, 0xff

    .line 2
    .line 3
    int-to-byte v0, v0

    .line 4
    shr-int/lit8 p0, p0, 0x8

    .line 5
    .line 6
    and-int/lit16 p0, p0, 0xff

    .line 7
    .line 8
    int-to-byte p0, p0

    .line 9
    const/4 v1, 0x2

    .line 10
    new-array v1, v1, [B

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    aput-byte v0, v1, v2

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    aput-byte p0, v1, v0

    .line 17
    .line 18
    return-object v1
.end method

.method public static create(Landroid/content/Context;Ljava/util/Map;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)[B"
        }
    .end annotation

    .line 1
    const/4 v0, 0x7

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_6

    .line 11
    .line 12
    new-instance v1, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/16 v3, 0x7f

    .line 19
    .line 20
    invoke-direct {v1, v3, v2}, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;-><init>(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/4 v4, 0x0

    .line 37
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_4

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Ljava/util/Map$Entry;

    .line 48
    .line 49
    new-instance v5, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    .line 50
    .line 51
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    check-cast v6, Ljava/lang/Integer;

    .line 56
    .line 57
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    check-cast v8, Ljava/lang/Integer;

    .line 70
    .line 71
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    check-cast v8, Ljava/lang/Integer;

    .line 84
    .line 85
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;-><init>(ILjava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    check-cast v4, Ljava/lang/Integer;

    .line 101
    .line 102
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 111
    .line 112
    const/4 v7, 0x2

    .line 113
    new-array v7, v7, [J

    .line 114
    .line 115
    fill-array-data v7, :array_0

    .line 116
    .line 117
    .line 118
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-eqz v4, :cond_3

    .line 130
    .line 131
    invoke-static {v5}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$300(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)B

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    const/4 v6, 0x1

    .line 136
    if-ne v4, v6, :cond_0

    .line 137
    .line 138
    sget-object v4, Lcom/google/android/material/color/ColorResourcesTableCreator;->ANDROID_PACKAGE_INFO:Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_0
    invoke-static {v5}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$300(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)B

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    if-ne v4, v3, :cond_2

    .line 146
    .line 147
    move-object v4, v1

    .line 148
    :goto_1
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    if-nez v6, :cond_1

    .line 153
    .line 154
    new-instance v6, Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    :cond_1
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    check-cast v4, Ljava/util/List;

    .line 167
    .line 168
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-object v4, v5

    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 175
    .line 176
    new-instance p1, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 182
    .line 183
    const/4 v1, 0x6

    .line 184
    new-array v1, v1, [J

    .line 185
    .line 186
    fill-array-data v1, :array_1

    .line 187
    .line 188
    .line 189
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-static {v5}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$300(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)B

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw p0

    .line 214
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 215
    .line 216
    new-instance p1, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    .line 221
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 222
    .line 223
    const/4 v1, 0x5

    .line 224
    new-array v1, v1, [J

    .line 225
    .line 226
    fill-array-data v1, :array_2

    .line 227
    .line 228
    .line 229
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-static {v5}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$100(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 247
    .line 248
    const/4 v1, 0x3

    .line 249
    new-array v1, v1, [J

    .line 250
    .line 251
    fill-array-data v1, :array_3

    .line 252
    .line 253
    .line 254
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-static {v5}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$200(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)B

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    and-int/lit16 v0, v0, 0xff

    .line 269
    .line 270
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    throw p0

    .line 285
    :cond_4
    invoke-static {v4}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$200(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)B

    .line 286
    .line 287
    .line 288
    move-result p0

    .line 289
    sput-byte p0, Lcom/google/android/material/color/ColorResourcesTableCreator;->typeIdColor:B

    .line 290
    .line 291
    if-eqz p0, :cond_5

    .line 292
    .line 293
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    .line 294
    .line 295
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 296
    .line 297
    .line 298
    new-instance p1, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;

    .line 299
    .line 300
    invoke-direct {p1, v2}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;-><init>(Ljava/util/Map;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1, p0}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 307
    .line 308
    .line 309
    move-result-object p0

    .line 310
    return-object p0

    .line 311
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 312
    .line 313
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 314
    .line 315
    new-array v0, v0, [J

    .line 316
    .line 317
    fill-array-data v0, :array_4

    .line 318
    .line 319
    .line 320
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    throw p0

    .line 331
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 332
    .line 333
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 334
    .line 335
    new-array v0, v0, [J

    .line 336
    .line 337
    fill-array-data v0, :array_5

    .line 338
    .line 339
    .line 340
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    throw p0

    .line 351
    :array_0
    .array-data 8
        -0x41b8777351d4924cL    # -1.0958591760968991E-8
        0x5c5066d4993cc9bfL    # 4.768550902217011E136
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
    :array_1
    .array-data 8
        -0x352d3eb29a37f1baL    # -2.806844489167039E52
        -0x3bc2a27c72518334L    # -5.4169396338561096E20
        0xfca97b0bd4805abL
        -0x5de76afaed676a8fL
        0x6d26fb730ed6fdb1L    # 6.338097899842697E217
        -0x5652a36365ef078dL    # -6.251060715169469E-108
    .end array-data

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
        0x610db9dced233b62L    # 3.2650106044520845E159
        -0xc360b733d0ff404L    # -5.807270041556384E249
        -0x6b9541961b9220a3L    # -2.542120944101459E-210
        0x65d2edfacbeed772L    # 3.141948141385193E182
        0x2719118c961970e7L    # 2.427006739338222E-120
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
        0x3f4583812a76af2aL    # 6.565457051030722E-4
        0x4fc1878a27ec74deL    # 1.585759259399233E76
        -0x68c852bbdb6c73acL    # -7.918560437542847E-197
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
        0x526ebaa4f077b265L    # 1.2225828125306063E89
        -0x19285e907e5c769bL    # -2.5704680538587234E187
        0x95a11a93f372b84L
        0x11bd1241bfbbf3L
        -0x72b5f257aac74527L
        0x18467a50b2cd1af4L    # 9.853407745708395E-192
        -0x2c6630bd53125a35L    # -5.383690897623522E94
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
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    :array_5
    .array-data 8
        -0x69a2a4cc4c8a5dadL    # -5.992438640250718E-201
        0x763c66d65a30dcbbL    # 3.493499743496299E261
        -0x1cb610c7c8e6aa33L    # -1.9575129113753898E170
        0x61b464dff560bdc8L    # 4.58755191951167E162
        0x11b9a843bcad90d1L
        -0x65ebde36f8a9df5dL    # -4.737933921164711E-183
        -0x183253bd371502a6L
    .end array-data
.end method

.method private static intToByteArray(I)[B
    .locals 5

    .line 1
    and-int/lit16 v0, p0, 0xff

    .line 2
    .line 3
    int-to-byte v0, v0

    .line 4
    shr-int/lit8 v1, p0, 0x8

    .line 5
    .line 6
    and-int/lit16 v1, v1, 0xff

    .line 7
    .line 8
    int-to-byte v1, v1

    .line 9
    shr-int/lit8 v2, p0, 0x10

    .line 10
    .line 11
    and-int/lit16 v2, v2, 0xff

    .line 12
    .line 13
    int-to-byte v2, v2

    .line 14
    shr-int/lit8 p0, p0, 0x18

    .line 15
    .line 16
    and-int/lit16 p0, p0, 0xff

    .line 17
    .line 18
    int-to-byte p0, p0

    .line 19
    const/4 v3, 0x4

    .line 20
    new-array v3, v3, [B

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    aput-byte v0, v3, v4

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    aput-byte v1, v3, v0

    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    aput-byte v2, v3, v0

    .line 30
    .line 31
    const/4 v0, 0x3

    .line 32
    aput-byte p0, v3, v0

    .line 33
    .line 34
    return-object v3
.end method

.method private static shortToByteArray(S)[B
    .locals 3

    .line 1
    and-int/lit16 v0, p0, 0xff

    .line 2
    .line 3
    int-to-byte v0, v0

    .line 4
    shr-int/lit8 p0, p0, 0x8

    .line 5
    .line 6
    and-int/lit16 p0, p0, 0xff

    .line 7
    .line 8
    int-to-byte p0, p0

    .line 9
    const/4 v1, 0x2

    .line 10
    new-array v1, v1, [B

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    aput-byte v0, v1, v2

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    aput-byte p0, v1, v0

    .line 17
    .line 18
    return-object v1
.end method

.method private static stringToByteArray(Ljava/lang/String;)[B
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length v0, p0

    .line 6
    mul-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    add-int/lit8 v1, v0, 0x4

    .line 9
    .line 10
    new-array v1, v1, [B

    .line 11
    .line 12
    array-length v2, p0

    .line 13
    int-to-short v2, v2

    .line 14
    invoke-static {v2}, Lcom/google/android/material/color/ColorResourcesTableCreator;->shortToByteArray(S)[B

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x0

    .line 19
    aget-byte v4, v2, v3

    .line 20
    .line 21
    aput-byte v4, v1, v3

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    aget-byte v2, v2, v4

    .line 25
    .line 26
    aput-byte v2, v1, v4

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    :goto_0
    array-length v5, p0

    .line 30
    if-ge v2, v5, :cond_0

    .line 31
    .line 32
    aget-char v5, p0, v2

    .line 33
    .line 34
    invoke-static {v5}, Lcom/google/android/material/color/ColorResourcesTableCreator;->charToByteArray(C)[B

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    mul-int/lit8 v6, v2, 0x2

    .line 39
    .line 40
    add-int/lit8 v7, v6, 0x2

    .line 41
    .line 42
    aget-byte v8, v5, v3

    .line 43
    .line 44
    aput-byte v8, v1, v7

    .line 45
    .line 46
    add-int/lit8 v6, v6, 0x3

    .line 47
    .line 48
    aget-byte v5, v5, v4

    .line 49
    .line 50
    aput-byte v5, v1, v6

    .line 51
    .line 52
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    add-int/lit8 p0, v0, 0x2

    .line 56
    .line 57
    aput-byte v3, v1, p0

    .line 58
    .line 59
    add-int/lit8 v0, v0, 0x3

    .line 60
    .line 61
    aput-byte v3, v1, v0

    .line 62
    .line 63
    return-object v1
.end method

.method private static stringToByteArrayUtf8(Ljava/lang/String;)[B
    .locals 5

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
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    array-length v0, p0

    .line 25
    int-to-byte v0, v0

    .line 26
    array-length v2, p0

    .line 27
    add-int/lit8 v3, v2, 0x3

    .line 28
    .line 29
    new-array v3, v3, [B

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-static {p0, v4, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    aput-byte v0, v3, p0

    .line 37
    .line 38
    aput-byte v0, v3, v4

    .line 39
    .line 40
    add-int/2addr v2, v1

    .line 41
    aput-byte v4, v3, v2

    .line 42
    .line 43
    return-object v3

    .line 44
    nop

    .line 45
    :array_0
    .array-data 8
        0x49b3fc268ab9ef8fL    # 1.1409396990866575E47
        -0x38cf98aa5b99b19cL    # -8.517262319876931E34
    .end array-data
.end method
