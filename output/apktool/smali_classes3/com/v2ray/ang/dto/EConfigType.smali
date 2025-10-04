.class public final enum Lcom/v2ray/ang/dto/EConfigType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/v2ray/ang/dto/EConfigType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/v2ray/ang/dto/EConfigType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0011\u0008\u0086\u0081\u0002\u0018\u0000 \u00152\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0015B\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/v2ray/ang/dto/EConfigType;",
        "",
        "value",
        "",
        "protocolScheme",
        "",
        "<init>",
        "(Ljava/lang/String;IILjava/lang/String;)V",
        "getValue",
        "()I",
        "getProtocolScheme",
        "()Ljava/lang/String;",
        "VMESS",
        "CUSTOM",
        "SHADOWSOCKS",
        "SOCKS",
        "VLESS",
        "TROJAN",
        "WIREGUARD",
        "HYSTERIA2",
        "HTTP",
        "Companion",
        "com.fbd.tunnel-404_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/v2ray/ang/dto/EConfigType;

.field public static final enum CUSTOM:Lcom/v2ray/ang/dto/EConfigType;

.field public static final Companion:Lcom/v2ray/ang/dto/EConfigType$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum HTTP:Lcom/v2ray/ang/dto/EConfigType;

.field public static final enum HYSTERIA2:Lcom/v2ray/ang/dto/EConfigType;

.field public static final enum SHADOWSOCKS:Lcom/v2ray/ang/dto/EConfigType;

.field public static final enum SOCKS:Lcom/v2ray/ang/dto/EConfigType;

.field public static final enum TROJAN:Lcom/v2ray/ang/dto/EConfigType;

.field public static final enum VLESS:Lcom/v2ray/ang/dto/EConfigType;

.field public static final enum VMESS:Lcom/v2ray/ang/dto/EConfigType;

.field public static final enum WIREGUARD:Lcom/v2ray/ang/dto/EConfigType;


# instance fields
.field private final protocolScheme:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/v2ray/ang/dto/EConfigType;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/v2ray/ang/dto/EConfigType;

    sget-object v1, Lcom/v2ray/ang/dto/EConfigType;->VMESS:Lcom/v2ray/ang/dto/EConfigType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/v2ray/ang/dto/EConfigType;->CUSTOM:Lcom/v2ray/ang/dto/EConfigType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/v2ray/ang/dto/EConfigType;->SHADOWSOCKS:Lcom/v2ray/ang/dto/EConfigType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/v2ray/ang/dto/EConfigType;->SOCKS:Lcom/v2ray/ang/dto/EConfigType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/v2ray/ang/dto/EConfigType;->VLESS:Lcom/v2ray/ang/dto/EConfigType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/v2ray/ang/dto/EConfigType;->TROJAN:Lcom/v2ray/ang/dto/EConfigType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/v2ray/ang/dto/EConfigType;->WIREGUARD:Lcom/v2ray/ang/dto/EConfigType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/v2ray/ang/dto/EConfigType;->HYSTERIA2:Lcom/v2ray/ang/dto/EConfigType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/v2ray/ang/dto/EConfigType;->HTTP:Lcom/v2ray/ang/dto/EConfigType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/v2ray/ang/dto/EConfigType;

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
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    new-array v4, v2, [J

    .line 21
    .line 22
    fill-array-data v4, :array_1

    .line 23
    .line 24
    .line 25
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x1

    .line 34
    invoke-direct {v0, v1, v4, v5, v3}, Lcom/v2ray/ang/dto/EConfigType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lcom/v2ray/ang/dto/EConfigType;->VMESS:Lcom/v2ray/ang/dto/EConfigType;

    .line 38
    .line 39
    new-instance v0, Lcom/v2ray/ang/dto/EConfigType;

    .line 40
    .line 41
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    new-array v3, v2, [J

    .line 44
    .line 45
    fill-array-data v3, :array_2

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    new-array v6, v5, [J

    .line 58
    .line 59
    const-wide v7, 0x6912311b9bb8460L

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    aput-wide v7, v6, v4

    .line 65
    .line 66
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-direct {v0, v1, v5, v2, v3}, Lcom/v2ray/ang/dto/EConfigType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    sput-object v0, Lcom/v2ray/ang/dto/EConfigType;->CUSTOM:Lcom/v2ray/ang/dto/EConfigType;

    .line 77
    .line 78
    new-instance v0, Lcom/v2ray/ang/dto/EConfigType;

    .line 79
    .line 80
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 81
    .line 82
    const/4 v3, 0x3

    .line 83
    new-array v4, v3, [J

    .line 84
    .line 85
    fill-array-data v4, :array_3

    .line 86
    .line 87
    .line 88
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 96
    .line 97
    new-array v5, v2, [J

    .line 98
    .line 99
    fill-array-data v5, :array_4

    .line 100
    .line 101
    .line 102
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/v2ray/ang/dto/EConfigType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    sput-object v0, Lcom/v2ray/ang/dto/EConfigType;->SHADOWSOCKS:Lcom/v2ray/ang/dto/EConfigType;

    .line 113
    .line 114
    new-instance v0, Lcom/v2ray/ang/dto/EConfigType;

    .line 115
    .line 116
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 117
    .line 118
    new-array v4, v2, [J

    .line 119
    .line 120
    fill-array-data v4, :array_5

    .line 121
    .line 122
    .line 123
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 131
    .line 132
    new-array v5, v2, [J

    .line 133
    .line 134
    fill-array-data v5, :array_6

    .line 135
    .line 136
    .line 137
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    const/4 v5, 0x4

    .line 145
    invoke-direct {v0, v1, v3, v5, v4}, Lcom/v2ray/ang/dto/EConfigType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 146
    .line 147
    .line 148
    sput-object v0, Lcom/v2ray/ang/dto/EConfigType;->SOCKS:Lcom/v2ray/ang/dto/EConfigType;

    .line 149
    .line 150
    new-instance v0, Lcom/v2ray/ang/dto/EConfigType;

    .line 151
    .line 152
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 153
    .line 154
    new-array v4, v2, [J

    .line 155
    .line 156
    fill-array-data v4, :array_7

    .line 157
    .line 158
    .line 159
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 167
    .line 168
    new-array v6, v2, [J

    .line 169
    .line 170
    fill-array-data v6, :array_8

    .line 171
    .line 172
    .line 173
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    const/4 v6, 0x5

    .line 181
    invoke-direct {v0, v1, v5, v6, v4}, Lcom/v2ray/ang/dto/EConfigType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 182
    .line 183
    .line 184
    sput-object v0, Lcom/v2ray/ang/dto/EConfigType;->VLESS:Lcom/v2ray/ang/dto/EConfigType;

    .line 185
    .line 186
    new-instance v0, Lcom/v2ray/ang/dto/EConfigType;

    .line 187
    .line 188
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 189
    .line 190
    new-array v4, v2, [J

    .line 191
    .line 192
    fill-array-data v4, :array_9

    .line 193
    .line 194
    .line 195
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 203
    .line 204
    new-array v5, v3, [J

    .line 205
    .line 206
    fill-array-data v5, :array_a

    .line 207
    .line 208
    .line 209
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    const/4 v5, 0x6

    .line 217
    invoke-direct {v0, v1, v6, v5, v4}, Lcom/v2ray/ang/dto/EConfigType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 218
    .line 219
    .line 220
    sput-object v0, Lcom/v2ray/ang/dto/EConfigType;->TROJAN:Lcom/v2ray/ang/dto/EConfigType;

    .line 221
    .line 222
    new-instance v0, Lcom/v2ray/ang/dto/EConfigType;

    .line 223
    .line 224
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 225
    .line 226
    new-array v4, v3, [J

    .line 227
    .line 228
    fill-array-data v4, :array_b

    .line 229
    .line 230
    .line 231
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 239
    .line 240
    new-array v6, v3, [J

    .line 241
    .line 242
    fill-array-data v6, :array_c

    .line 243
    .line 244
    .line 245
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    const/4 v6, 0x7

    .line 253
    invoke-direct {v0, v1, v5, v6, v4}, Lcom/v2ray/ang/dto/EConfigType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 254
    .line 255
    .line 256
    sput-object v0, Lcom/v2ray/ang/dto/EConfigType;->WIREGUARD:Lcom/v2ray/ang/dto/EConfigType;

    .line 257
    .line 258
    new-instance v0, Lcom/v2ray/ang/dto/EConfigType;

    .line 259
    .line 260
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 261
    .line 262
    new-array v4, v3, [J

    .line 263
    .line 264
    fill-array-data v4, :array_d

    .line 265
    .line 266
    .line 267
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 275
    .line 276
    new-array v3, v3, [J

    .line 277
    .line 278
    fill-array-data v3, :array_e

    .line 279
    .line 280
    .line 281
    invoke-direct {v4, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    const/16 v4, 0x9

    .line 289
    .line 290
    invoke-direct {v0, v1, v6, v4, v3}, Lcom/v2ray/ang/dto/EConfigType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 291
    .line 292
    .line 293
    sput-object v0, Lcom/v2ray/ang/dto/EConfigType;->HYSTERIA2:Lcom/v2ray/ang/dto/EConfigType;

    .line 294
    .line 295
    new-instance v0, Lcom/v2ray/ang/dto/EConfigType;

    .line 296
    .line 297
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 298
    .line 299
    new-array v3, v2, [J

    .line 300
    .line 301
    fill-array-data v3, :array_f

    .line 302
    .line 303
    .line 304
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 312
    .line 313
    new-array v2, v2, [J

    .line 314
    .line 315
    fill-array-data v2, :array_10

    .line 316
    .line 317
    .line 318
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    const/16 v3, 0x8

    .line 326
    .line 327
    const/16 v4, 0xa

    .line 328
    .line 329
    invoke-direct {v0, v1, v3, v4, v2}, Lcom/v2ray/ang/dto/EConfigType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 330
    .line 331
    .line 332
    sput-object v0, Lcom/v2ray/ang/dto/EConfigType;->HTTP:Lcom/v2ray/ang/dto/EConfigType;

    .line 333
    .line 334
    invoke-static {}, Lcom/v2ray/ang/dto/EConfigType;->$values()[Lcom/v2ray/ang/dto/EConfigType;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    sput-object v0, Lcom/v2ray/ang/dto/EConfigType;->$VALUES:[Lcom/v2ray/ang/dto/EConfigType;

    .line 339
    .line 340
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    sput-object v0, Lcom/v2ray/ang/dto/EConfigType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 345
    .line 346
    new-instance v0, Lcom/v2ray/ang/dto/EConfigType$Companion;

    .line 347
    .line 348
    const/4 v1, 0x0

    .line 349
    invoke-direct {v0, v1}, Lcom/v2ray/ang/dto/EConfigType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 350
    .line 351
    .line 352
    sput-object v0, Lcom/v2ray/ang/dto/EConfigType;->Companion:Lcom/v2ray/ang/dto/EConfigType$Companion;

    .line 353
    .line 354
    return-void

    .line 355
    :array_0
    .array-data 8
        -0x689e5c4bbc4e0e18L    # -4.719525618906229E-196
        -0x782e57f30fe8aa8fL    # -5.222124678864199E-271
    .end array-data

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
    :array_1
    .array-data 8
        0xeca34768593b4c5L
        0x7687062b9b645ed7L    # 9.062519402132836E262
    .end array-data

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
    :array_2
    .array-data 8
        -0x5d14c02858e24928L
        -0x77d6a5adb0992794L    # -2.399496583744216E-269
    .end array-data

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
    :array_3
    .array-data 8
        0x1daa56126b6ee76fL    # 8.932351720644962E-166
        0x45bee8550887ab19L    # 9.565422643291877E27
        0x6365b611a29f915dL    # 6.554982230216293E170
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
    :array_4
    .array-data 8
        -0x8003dbda69644efL    # -1.048625844686792E270
        0x65a63c39791aed7bL    # 4.613276211252547E181
    .end array-data

    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    :array_5
    .array-data 8
        -0x52d03d7fe7407962L    # -4.872239535328157E-91
        0xad374ceeaee2a19L    # 1.61973349154179E-256
    .end array-data

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
    :array_6
    .array-data 8
        0x743eda596087db2dL    # 8.835939915057934E251
        0x27e459c30c61b9fdL
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
    :array_7
    .array-data 8
        0x3f7cd687c77e724fL    # 0.007040529620920013
        -0x3361607bbd468c7dL    # -1.2302360881302036E61
    .end array-data

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
    :array_8
    .array-data 8
        -0x37094aad26cea3acL    # -3.1650744373386256E43
        -0x42f16cce07edf34dL    # -1.357801924975742E-14
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
    :array_9
    .array-data 8
        -0xfafbe1887a6601fL    # -1.0095986778280844E233
        0x1db735c939f15d88L    # 1.574415792088455E-165
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
    :array_a
    .array-data 8
        -0x73002429e854a2bbL
        0x650230ee9d164c9dL    # 3.6857628226631414E178
        -0x50c5992013f9cd0dL    # -3.479169673350779E-81
    .end array-data

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
    :array_b
    .array-data 8
        0x28692e5fb0e32980L    # 5.112663046192393E-114
        0x65a613414936bafeL    # 4.5800724029943255E181
        -0x414ba710c300770eL    # -1.2127995780921572E-6
    .end array-data

    .line 496
    .line 497
    .line 498
    .line 499
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
    :array_c
    .array-data 8
        -0x5c79f92c5d2d4ab5L
        -0x5fde0adc252449b6L
        -0x342fce7b9c000cd1L    # -1.5882466370751037E57
    .end array-data

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
    :array_d
    .array-data 8
        -0x2ccaa24dfb3aa867L    # -6.963728924651291E92
        -0x6b78532b91dc5d0dL    # -9.001712834499368E-210
        0x178f978e84426bb1L
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
    :array_e
    .array-data 8
        -0x4deb55a31bf0c50fL    # -1.9163131289850333E-67
        -0x7bc7fe93a4bb8a57L
        -0x7fc4c9984f3a9f5aL
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
    :array_f
    .array-data 8
        0x794ca094aba4874dL    # 1.9822843535732878E276
        -0x2a1ebf6c4246c520L    # -4.946002684418102E105
    .end array-data

    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    :array_10
    .array-data 8
        0x626879fea4d5118fL    # 1.1276068001698986E166
        -0x56634f7f0af85df5L    # -3.053965035629714E-108
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/v2ray/ang/dto/EConfigType;->value:I

    .line 5
    .line 6
    iput-object p4, p0, Lcom/v2ray/ang/dto/EConfigType;->protocolScheme:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/v2ray/ang/dto/EConfigType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/v2ray/ang/dto/EConfigType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/v2ray/ang/dto/EConfigType;
    .locals 1

    .line 1
    const-class v0, Lcom/v2ray/ang/dto/EConfigType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/v2ray/ang/dto/EConfigType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/v2ray/ang/dto/EConfigType;
    .locals 1

    .line 1
    sget-object v0, Lcom/v2ray/ang/dto/EConfigType;->$VALUES:[Lcom/v2ray/ang/dto/EConfigType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/v2ray/ang/dto/EConfigType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getProtocolScheme()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/EConfigType;->protocolScheme:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/v2ray/ang/dto/EConfigType;->value:I

    .line 2
    .line 3
    return v0
.end method
