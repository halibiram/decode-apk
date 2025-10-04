.class public abstract Lcom/google/gson/internal/UnsafeAllocator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/google/gson/internal/UnsafeAllocator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/gson/internal/UnsafeAllocator;->create()Lcom/google/gson/internal/UnsafeAllocator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/google/gson/internal/UnsafeAllocator;->INSTANCE:Lcom/google/gson/internal/UnsafeAllocator;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$000(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/gson/internal/UnsafeAllocator;->assertInstantiable(Ljava/lang/Class;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static assertInstantiable(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/gson/internal/ConstructorConstructor;->checkInstantiable(Ljava/lang/Class;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/16 v3, 0x8

    .line 18
    .line 19
    new-array v3, v3, [J

    .line 20
    .line 21
    fill-array-data v3, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-static {v2, v1, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    throw v0

    .line 35
    :array_0
    .array-data 8
        0x5f1fac3166e4a3b9L    # 1.6199513388394954E150
        -0x72a29b2b854f3067L    # -2.6905449799951706E-244
        0x5ae76a9249e225c7L    # 8.115706328404604E129
        0xcd1594b703e3f1cL
        0x5a879ed492718bc8L    # 1.279133856461863E128
        0x354fcbba86a7b26bL    # 6.6392759392420085E-52
        -0x7fab19cd6820bf0bL    # -4.650228470352467E-307
        0x1e527f5ab842931L
    .end array-data
.end method

.method private static create()Lcom/google/gson/internal/UnsafeAllocator;
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x1

    .line 5
    const-class v4, Ljava/io/ObjectStreamClass;

    .line 6
    .line 7
    const-class v5, Ljava/lang/Class;

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    :try_start_0
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    new-array v8, v2, [J

    .line 13
    .line 14
    fill-array-data v8, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    new-array v9, v2, [J

    .line 31
    .line 32
    fill-array-data v9, :array_1

    .line 33
    .line 34
    .line 35
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    invoke-virtual {v8, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v8, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 54
    .line 55
    new-array v10, v2, [J

    .line 56
    .line 57
    fill-array-data v10, :array_2

    .line 58
    .line 59
    .line 60
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    new-array v10, v3, [Ljava/lang/Class;

    .line 68
    .line 69
    aput-object v5, v10, v1

    .line 70
    .line 71
    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    new-instance v9, Lcom/google/gson/internal/UnsafeAllocator$1;

    .line 76
    .line 77
    invoke-direct {v9, v7, v8}, Lcom/google/gson/internal/UnsafeAllocator$1;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    return-object v9

    .line 81
    :catch_0
    :try_start_1
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 82
    .line 83
    new-array v8, v2, [J

    .line 84
    .line 85
    fill-array-data v8, :array_3

    .line 86
    .line 87
    .line 88
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    new-array v8, v3, [Ljava/lang/Class;

    .line 96
    .line 97
    aput-object v5, v8, v1

    .line 98
    .line 99
    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    invoke-virtual {v7, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 104
    .line 105
    .line 106
    new-array v8, v3, [Ljava/lang/Object;

    .line 107
    .line 108
    const-class v9, Ljava/lang/Object;

    .line 109
    .line 110
    aput-object v9, v8, v1

    .line 111
    .line 112
    invoke-virtual {v7, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    check-cast v6, Ljava/lang/Integer;

    .line 117
    .line 118
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 123
    .line 124
    new-array v8, v2, [J

    .line 125
    .line 126
    fill-array-data v8, :array_4

    .line 127
    .line 128
    .line 129
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    new-array v8, v0, [Ljava/lang/Class;

    .line 137
    .line 138
    aput-object v5, v8, v1

    .line 139
    .line 140
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 141
    .line 142
    aput-object v9, v8, v3

    .line 143
    .line 144
    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {v4, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 149
    .line 150
    .line 151
    new-instance v7, Lcom/google/gson/internal/UnsafeAllocator$2;

    .line 152
    .line 153
    invoke-direct {v7, v4, v6}, Lcom/google/gson/internal/UnsafeAllocator$2;-><init>(Ljava/lang/reflect/Method;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 154
    .line 155
    .line 156
    return-object v7

    .line 157
    :catch_1
    :try_start_2
    const-class v4, Ljava/io/ObjectInputStream;

    .line 158
    .line 159
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 160
    .line 161
    new-array v2, v2, [J

    .line 162
    .line 163
    fill-array-data v2, :array_5

    .line 164
    .line 165
    .line 166
    invoke-direct {v6, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    new-array v0, v0, [Ljava/lang/Class;

    .line 174
    .line 175
    aput-object v5, v0, v1

    .line 176
    .line 177
    aput-object v5, v0, v3

    .line 178
    .line 179
    invoke-virtual {v4, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 184
    .line 185
    .line 186
    new-instance v1, Lcom/google/gson/internal/UnsafeAllocator$3;

    .line 187
    .line 188
    invoke-direct {v1, v0}, Lcom/google/gson/internal/UnsafeAllocator$3;-><init>(Ljava/lang/reflect/Method;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 189
    .line 190
    .line 191
    return-object v1

    .line 192
    :catch_2
    new-instance v0, Lcom/google/gson/internal/UnsafeAllocator$4;

    .line 193
    .line 194
    invoke-direct {v0}, Lcom/google/gson/internal/UnsafeAllocator$4;-><init>()V

    .line 195
    .line 196
    .line 197
    return-object v0

    .line 198
    nop

    .line 199
    :array_0
    .array-data 8
        0x1f5ae6e671286577L
        -0x7dbb5affde31402bL    # -9.86459741045185E-298
        -0x1187c63f70b70022L    # -1.4011067794179233E224
    .end array-data

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
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    :array_1
    .array-data 8
        -0x29a53dd5f5181620L    # -9.81927636144507E107
        0x602fa7c7eabe9c46L    # 2.1221472296423387E155
        0x67736c8a38a5dae7L    # 2.163593114389031E190
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
    .line 228
    .line 229
    .line 230
    .line 231
    :array_2
    .array-data 8
        -0x78c764d1714e5937L    # -7.107029796845815E-274
        0x57aaaf95847fd012L    # 2.0536660552109862E114
        0x72ee484361f9d36bL    # 4.1353762397379217E245
    .end array-data

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
    :array_3
    .array-data 8
        0x74502b0986a468b2L    # 1.852148265515796E252
        -0xf3a4f45b8c665beL    # -1.7241420274336262E235
        0x16fbf6db4d07019dL
    .end array-data

    .line 248
    .line 249
    .line 250
    .line 251
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
    :array_4
    .array-data 8
        0x3cfa06cf9453d2b0L    # 5.779067204856309E-15
        0x2c28dca7ad48ee5L
        0x35a0cb991dd6537fL    # 2.2444949414210306E-50
    .end array-data

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
    :array_5
    .array-data 8
        -0x281e5e768be49e4fL    # -2.170927856455496E115
        0x74b9452dd00d64edL    # 1.852701945487668E254
        0x3d9b73ed3ccd2401L    # 6.2420528381720774E-12
    .end array-data
.end method


# virtual methods
.method public abstract newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method
