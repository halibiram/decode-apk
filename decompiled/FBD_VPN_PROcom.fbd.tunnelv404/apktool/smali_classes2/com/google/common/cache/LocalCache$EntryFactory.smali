.class abstract enum Lcom/google/common/cache/LocalCache$EntryFactory;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "EntryFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/cache/LocalCache$EntryFactory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/cache/LocalCache$EntryFactory;

.field static final ACCESS_MASK:I = 0x1

.field public static final enum STRONG:Lcom/google/common/cache/LocalCache$EntryFactory;

.field public static final enum STRONG_ACCESS:Lcom/google/common/cache/LocalCache$EntryFactory;

.field public static final enum STRONG_ACCESS_WRITE:Lcom/google/common/cache/LocalCache$EntryFactory;

.field public static final enum STRONG_WRITE:Lcom/google/common/cache/LocalCache$EntryFactory;

.field public static final enum WEAK:Lcom/google/common/cache/LocalCache$EntryFactory;

.field public static final enum WEAK_ACCESS:Lcom/google/common/cache/LocalCache$EntryFactory;

.field public static final enum WEAK_ACCESS_WRITE:Lcom/google/common/cache/LocalCache$EntryFactory;

.field static final WEAK_MASK:I = 0x4

.field public static final enum WEAK_WRITE:Lcom/google/common/cache/LocalCache$EntryFactory;

.field static final WRITE_MASK:I = 0x2

.field static final factories:[Lcom/google/common/cache/LocalCache$EntryFactory;


# direct methods
.method private static synthetic $values()[Lcom/google/common/cache/LocalCache$EntryFactory;
    .locals 3

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 4
    .line 5
    sget-object v1, Lcom/google/common/cache/LocalCache$EntryFactory;->STRONG:Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lcom/google/common/cache/LocalCache$EntryFactory;->STRONG_ACCESS:Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lcom/google/common/cache/LocalCache$EntryFactory;->STRONG_WRITE:Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lcom/google/common/cache/LocalCache$EntryFactory;->STRONG_ACCESS_WRITE:Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lcom/google/common/cache/LocalCache$EntryFactory;->WEAK:Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lcom/google/common/cache/LocalCache$EntryFactory;->WEAK_ACCESS:Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lcom/google/common/cache/LocalCache$EntryFactory;->WEAK_WRITE:Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lcom/google/common/cache/LocalCache$EntryFactory;->WEAK_ACCESS_WRITE:Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/google/common/cache/LocalCache$EntryFactory$1;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v3, v2, [J

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-direct {v0, v1, v3}, Lcom/google/common/cache/LocalCache$EntryFactory$1;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/google/common/cache/LocalCache$EntryFactory;->STRONG:Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 23
    .line 24
    new-instance v1, Lcom/google/common/cache/LocalCache$EntryFactory$2;

    .line 25
    .line 26
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v5, 0x3

    .line 29
    new-array v6, v5, [J

    .line 30
    .line 31
    fill-array-data v6, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const/4 v6, 0x1

    .line 42
    invoke-direct {v1, v4, v6}, Lcom/google/common/cache/LocalCache$EntryFactory$2;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    sput-object v1, Lcom/google/common/cache/LocalCache$EntryFactory;->STRONG_ACCESS:Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 46
    .line 47
    new-instance v4, Lcom/google/common/cache/LocalCache$EntryFactory$3;

    .line 48
    .line 49
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    new-array v8, v5, [J

    .line 52
    .line 53
    fill-array-data v8, :array_2

    .line 54
    .line 55
    .line 56
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-direct {v4, v7, v2}, Lcom/google/common/cache/LocalCache$EntryFactory$3;-><init>(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    sput-object v4, Lcom/google/common/cache/LocalCache$EntryFactory;->STRONG_WRITE:Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 67
    .line 68
    new-instance v7, Lcom/google/common/cache/LocalCache$EntryFactory$4;

    .line 69
    .line 70
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    const/4 v9, 0x4

    .line 73
    new-array v10, v9, [J

    .line 74
    .line 75
    fill-array-data v10, :array_3

    .line 76
    .line 77
    .line 78
    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    invoke-direct {v7, v8, v5}, Lcom/google/common/cache/LocalCache$EntryFactory$4;-><init>(Ljava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    sput-object v7, Lcom/google/common/cache/LocalCache$EntryFactory;->STRONG_ACCESS_WRITE:Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 89
    .line 90
    new-instance v8, Lcom/google/common/cache/LocalCache$EntryFactory$5;

    .line 91
    .line 92
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 93
    .line 94
    new-array v11, v2, [J

    .line 95
    .line 96
    fill-array-data v11, :array_4

    .line 97
    .line 98
    .line 99
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    invoke-direct {v8, v10, v9}, Lcom/google/common/cache/LocalCache$EntryFactory$5;-><init>(Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    sput-object v8, Lcom/google/common/cache/LocalCache$EntryFactory;->WEAK:Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 110
    .line 111
    new-instance v10, Lcom/google/common/cache/LocalCache$EntryFactory$6;

    .line 112
    .line 113
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 114
    .line 115
    new-array v12, v5, [J

    .line 116
    .line 117
    fill-array-data v12, :array_5

    .line 118
    .line 119
    .line 120
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v11

    .line 127
    const/4 v12, 0x5

    .line 128
    invoke-direct {v10, v11, v12}, Lcom/google/common/cache/LocalCache$EntryFactory$6;-><init>(Ljava/lang/String;I)V

    .line 129
    .line 130
    .line 131
    sput-object v10, Lcom/google/common/cache/LocalCache$EntryFactory;->WEAK_ACCESS:Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 132
    .line 133
    new-instance v11, Lcom/google/common/cache/LocalCache$EntryFactory$7;

    .line 134
    .line 135
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    .line 136
    .line 137
    new-array v14, v5, [J

    .line 138
    .line 139
    fill-array-data v14, :array_6

    .line 140
    .line 141
    .line 142
    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v13

    .line 149
    const/4 v14, 0x6

    .line 150
    invoke-direct {v11, v13, v14}, Lcom/google/common/cache/LocalCache$EntryFactory$7;-><init>(Ljava/lang/String;I)V

    .line 151
    .line 152
    .line 153
    sput-object v11, Lcom/google/common/cache/LocalCache$EntryFactory;->WEAK_WRITE:Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 154
    .line 155
    new-instance v13, Lcom/google/common/cache/LocalCache$EntryFactory$8;

    .line 156
    .line 157
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 158
    .line 159
    new-array v14, v9, [J

    .line 160
    .line 161
    fill-array-data v14, :array_7

    .line 162
    .line 163
    .line 164
    invoke-direct {v15, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v14

    .line 171
    const/4 v15, 0x7

    .line 172
    invoke-direct {v13, v14, v15}, Lcom/google/common/cache/LocalCache$EntryFactory$8;-><init>(Ljava/lang/String;I)V

    .line 173
    .line 174
    .line 175
    sput-object v13, Lcom/google/common/cache/LocalCache$EntryFactory;->WEAK_ACCESS_WRITE:Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 176
    .line 177
    invoke-static {}, Lcom/google/common/cache/LocalCache$EntryFactory;->$values()[Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 178
    .line 179
    .line 180
    move-result-object v14

    .line 181
    sput-object v14, Lcom/google/common/cache/LocalCache$EntryFactory;->$VALUES:[Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 182
    .line 183
    const/16 v14, 0x8

    .line 184
    .line 185
    new-array v14, v14, [Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 186
    .line 187
    aput-object v0, v14, v3

    .line 188
    .line 189
    aput-object v1, v14, v6

    .line 190
    .line 191
    aput-object v4, v14, v2

    .line 192
    .line 193
    aput-object v7, v14, v5

    .line 194
    .line 195
    aput-object v8, v14, v9

    .line 196
    .line 197
    aput-object v10, v14, v12

    .line 198
    .line 199
    const/4 v0, 0x6

    .line 200
    aput-object v11, v14, v0

    .line 201
    .line 202
    aput-object v13, v14, v15

    .line 203
    .line 204
    sput-object v14, Lcom/google/common/cache/LocalCache$EntryFactory;->factories:[Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 205
    .line 206
    return-void

    .line 207
    :array_0
    .array-data 8
        -0x699a9e1e70cb230L    # -6.186701290859906E276
        0x14a54f4d31f10a93L
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
    :array_1
    .array-data 8
        0x78816853c2ec94feL    # 2.9428166063036E272
        0x7b292bede39633a5L    # 1.8715296401670042E285
        -0x132286b85b213c29L    # -2.5401086384655353E216
    .end array-data

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
    .line 232
    .line 233
    .line 234
    .line 235
    :array_2
    .array-data 8
        0x366817ab2594abd9L    # 1.31877814584819E-46
        -0x5e9c594613b5b4a3L    # -7.684274295920086E-148
        -0x6726d71cea9b642bL    # -5.646878576614208E-189
    .end array-data

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
    :array_3
    .array-data 8
        -0x551aa1b789a3594cL
        -0x35349be8342f27cdL    # -2.049637066599244E52
        0x4a05175f44d85096L    # 3.853120717464415E48
        -0x1a5f5b9f9adf37b4L    # -3.452831795869982E181
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
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    :array_4
    .array-data 8
        -0x722add05aa3a5c4aL    # -4.952896895516561E-242
        -0x10435ac68bc6c85fL    # -1.7372075808684795E230
    .end array-data

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
    :array_5
    .array-data 8
        0x28992793debe1563L    # 4.085818362543361E-113
        -0x2510603892344a5bL    # -1.0960410711209877E130
        0x8f4e595ef37daa4L
    .end array-data

    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    :array_6
    .array-data 8
        0x657ae404faf2acf8L    # 6.973961401739327E180
        0x6920d81ddacf0a33L    # 2.518243329925328E198
        -0x6e2b065b67a596bbL    # -9.066687778991961E-223
    .end array-data

    :array_7
    .array-data 8
        -0x752d23d8d44f8262L
        -0x1313942d735096caL    # -4.898792311149451E216
        0x680a66fcc4428ccbL    # 1.5057362553450228E193
        0x4447620f58702fc7L    # 8.626821545490969E20
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/cache/LocalCache$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/cache/LocalCache$EntryFactory;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getFactory(Lcom/google/common/cache/LocalCache$Strength;ZZ)Lcom/google/common/cache/LocalCache$EntryFactory;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/common/cache/LocalCache$Strength;->WEAK:Lcom/google/common/cache/LocalCache$Strength;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x4

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    or-int/2addr p0, p1

    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    :cond_1
    or-int/2addr p0, v1

    .line 14
    sget-object p1, Lcom/google/common/cache/LocalCache$EntryFactory;->factories:[Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 15
    .line 16
    aget-object p0, p1, p0

    .line 17
    .line 18
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/cache/LocalCache$EntryFactory;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/common/cache/LocalCache$EntryFactory;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/cache/LocalCache$EntryFactory;->$VALUES:[Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/common/cache/LocalCache$EntryFactory;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public copyAccessEntry(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getAccessTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-interface {p2, v0, v1}, Lcom/google/common/cache/ReferenceEntry;->setAccessTime(J)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getPreviousInAccessQueue()Lcom/google/common/cache/ReferenceEntry;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0, p2}, Lcom/google/common/cache/LocalCache;->connectAccessOrder(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getNextInAccessQueue()Lcom/google/common/cache/ReferenceEntry;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {p2, v0}, Lcom/google/common/cache/LocalCache;->connectAccessOrder(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/google/common/cache/LocalCache;->nullifyAccessOrder(Lcom/google/common/cache/ReferenceEntry;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public copyEntry(Lcom/google/common/cache/LocalCache$Segment;Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/LocalCache$Segment<",
            "TK;TV;>;",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p2}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/common/cache/LocalCache$EntryFactory;->newEntry(Lcom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public copyWriteEntry(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getWriteTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-interface {p2, v0, v1}, Lcom/google/common/cache/ReferenceEntry;->setWriteTime(J)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getPreviousInWriteQueue()Lcom/google/common/cache/ReferenceEntry;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0, p2}, Lcom/google/common/cache/LocalCache;->connectWriteOrder(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getNextInWriteQueue()Lcom/google/common/cache/ReferenceEntry;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {p2, v0}, Lcom/google/common/cache/LocalCache;->connectWriteOrder(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/google/common/cache/LocalCache;->nullifyWriteOrder(Lcom/google/common/cache/ReferenceEntry;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public abstract newEntry(Lcom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;
    .param p4    # Lcom/google/common/cache/ReferenceEntry;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/LocalCache$Segment<",
            "TK;TV;>;TK;I",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end method
