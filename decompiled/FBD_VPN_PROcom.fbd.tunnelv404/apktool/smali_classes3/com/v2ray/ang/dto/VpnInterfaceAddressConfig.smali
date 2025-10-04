.class public final enum Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0015\u0008\u0086\u0081\u0002\u0018\u0000 \u00172\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0017B1\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000bj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;",
        "",
        "displayName",
        "",
        "ipv4Client",
        "ipv4Router",
        "ipv6Client",
        "ipv6Router",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getDisplayName",
        "()Ljava/lang/String;",
        "getIpv4Client",
        "getIpv4Router",
        "getIpv6Client",
        "getIpv6Router",
        "OPTION_1",
        "OPTION_2",
        "OPTION_3",
        "OPTION_4",
        "OPTION_5",
        "OPTION_6",
        "OPTION_7",
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

.field private static final synthetic $VALUES:[Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

.field public static final Companion:Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum OPTION_1:Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

.field public static final enum OPTION_2:Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

.field public static final enum OPTION_3:Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

.field public static final enum OPTION_4:Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

.field public static final enum OPTION_5:Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

.field public static final enum OPTION_6:Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

.field public static final enum OPTION_7:Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;


# instance fields
.field private final displayName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ipv4Client:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ipv4Router:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ipv6Client:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ipv6Router:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

    sget-object v1, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;->OPTION_1:Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;->OPTION_2:Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;->OPTION_3:Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;->OPTION_4:Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;->OPTION_5:Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;->OPTION_6:Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;->OPTION_7:Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v8, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v9, 0x2

    .line 6
    new-array v1, v9, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v10, 0x3

    .line 21
    new-array v2, v10, [J

    .line 22
    .line 23
    fill-array-data v2, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    new-array v2, v10, [J

    .line 36
    .line 37
    fill-array-data v2, :array_2

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    new-array v2, v10, [J

    .line 50
    .line 51
    fill-array-data v2, :array_3

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    new-array v2, v10, [J

    .line 64
    .line 65
    fill-array-data v2, :array_4

    .line 66
    .line 67
    .line 68
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 76
    .line 77
    new-array v2, v10, [J

    .line 78
    .line 79
    fill-array-data v2, :array_5

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    const/4 v2, 0x0

    .line 90
    move-object v0, v8

    .line 91
    invoke-direct/range {v0 .. v7}, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    sput-object v8, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;->OPTION_1:Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

    .line 95
    .line 96
    new-instance v0, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

    .line 97
    .line 98
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 99
    .line 100
    new-array v2, v9, [J

    .line 101
    .line 102
    fill-array-data v2, :array_6

    .line 103
    .line 104
    .line 105
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v12

    .line 112
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 113
    .line 114
    new-array v2, v9, [J

    .line 115
    .line 116
    fill-array-data v2, :array_7

    .line 117
    .line 118
    .line 119
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v14

    .line 126
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 127
    .line 128
    new-array v2, v9, [J

    .line 129
    .line 130
    fill-array-data v2, :array_8

    .line 131
    .line 132
    .line 133
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v15

    .line 140
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 141
    .line 142
    new-array v2, v9, [J

    .line 143
    .line 144
    fill-array-data v2, :array_9

    .line 145
    .line 146
    .line 147
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v16

    .line 154
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 155
    .line 156
    new-array v2, v10, [J

    .line 157
    .line 158
    fill-array-data v2, :array_a

    .line 159
    .line 160
    .line 161
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v17

    .line 168
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 169
    .line 170
    new-array v2, v10, [J

    .line 171
    .line 172
    fill-array-data v2, :array_b

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
    move-result-object v18

    .line 182
    const/4 v13, 0x1

    .line 183
    move-object v11, v0

    .line 184
    invoke-direct/range {v11 .. v18}, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    sput-object v0, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;->OPTION_2:Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

    .line 188
    .line 189
    new-instance v0, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

    .line 190
    .line 191
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 192
    .line 193
    new-array v2, v9, [J

    .line 194
    .line 195
    fill-array-data v2, :array_c

    .line 196
    .line 197
    .line 198
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 206
    .line 207
    new-array v3, v9, [J

    .line 208
    .line 209
    fill-array-data v3, :array_d

    .line 210
    .line 211
    .line 212
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 220
    .line 221
    new-array v3, v9, [J

    .line 222
    .line 223
    fill-array-data v3, :array_e

    .line 224
    .line 225
    .line 226
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 234
    .line 235
    new-array v3, v9, [J

    .line 236
    .line 237
    fill-array-data v3, :array_f

    .line 238
    .line 239
    .line 240
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 248
    .line 249
    new-array v3, v10, [J

    .line 250
    .line 251
    fill-array-data v3, :array_10

    .line 252
    .line 253
    .line 254
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v7

    .line 261
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 262
    .line 263
    new-array v3, v10, [J

    .line 264
    .line 265
    fill-array-data v3, :array_11

    .line 266
    .line 267
    .line 268
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v8

    .line 275
    const/4 v3, 0x2

    .line 276
    move-object v1, v0

    .line 277
    invoke-direct/range {v1 .. v8}, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    sput-object v0, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;->OPTION_3:Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

    .line 281
    .line 282
    new-instance v0, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

    .line 283
    .line 284
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 285
    .line 286
    new-array v2, v9, [J

    .line 287
    .line 288
    fill-array-data v2, :array_12

    .line 289
    .line 290
    .line 291
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v12

    .line 298
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 299
    .line 300
    new-array v2, v10, [J

    .line 301
    .line 302
    fill-array-data v2, :array_13

    .line 303
    .line 304
    .line 305
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v14

    .line 312
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 313
    .line 314
    new-array v2, v10, [J

    .line 315
    .line 316
    fill-array-data v2, :array_14

    .line 317
    .line 318
    .line 319
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v15

    .line 326
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 327
    .line 328
    new-array v2, v10, [J

    .line 329
    .line 330
    fill-array-data v2, :array_15

    .line 331
    .line 332
    .line 333
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v16

    .line 340
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 341
    .line 342
    new-array v2, v10, [J

    .line 343
    .line 344
    fill-array-data v2, :array_16

    .line 345
    .line 346
    .line 347
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v17

    .line 354
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 355
    .line 356
    new-array v2, v10, [J

    .line 357
    .line 358
    fill-array-data v2, :array_17

    .line 359
    .line 360
    .line 361
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v18

    .line 368
    const/4 v13, 0x3

    .line 369
    move-object v11, v0

    .line 370
    invoke-direct/range {v11 .. v18}, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    sput-object v0, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;->OPTION_4:Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

    .line 374
    .line 375
    new-instance v0, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

    .line 376
    .line 377
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 378
    .line 379
    new-array v2, v9, [J

    .line 380
    .line 381
    fill-array-data v2, :array_18

    .line 382
    .line 383
    .line 384
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 392
    .line 393
    new-array v3, v10, [J

    .line 394
    .line 395
    fill-array-data v3, :array_19

    .line 396
    .line 397
    .line 398
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v4

    .line 405
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 406
    .line 407
    new-array v3, v10, [J

    .line 408
    .line 409
    fill-array-data v3, :array_1a

    .line 410
    .line 411
    .line 412
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v5

    .line 419
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 420
    .line 421
    new-array v3, v10, [J

    .line 422
    .line 423
    fill-array-data v3, :array_1b

    .line 424
    .line 425
    .line 426
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v6

    .line 433
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 434
    .line 435
    new-array v3, v10, [J

    .line 436
    .line 437
    fill-array-data v3, :array_1c

    .line 438
    .line 439
    .line 440
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v7

    .line 447
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 448
    .line 449
    new-array v3, v10, [J

    .line 450
    .line 451
    fill-array-data v3, :array_1d

    .line 452
    .line 453
    .line 454
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v8

    .line 461
    const/4 v3, 0x4

    .line 462
    move-object v1, v0

    .line 463
    invoke-direct/range {v1 .. v8}, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    sput-object v0, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;->OPTION_5:Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

    .line 467
    .line 468
    new-instance v0, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

    .line 469
    .line 470
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 471
    .line 472
    new-array v2, v9, [J

    .line 473
    .line 474
    fill-array-data v2, :array_1e

    .line 475
    .line 476
    .line 477
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v12

    .line 484
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 485
    .line 486
    new-array v2, v10, [J

    .line 487
    .line 488
    fill-array-data v2, :array_1f

    .line 489
    .line 490
    .line 491
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v14

    .line 498
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 499
    .line 500
    new-array v2, v10, [J

    .line 501
    .line 502
    fill-array-data v2, :array_20

    .line 503
    .line 504
    .line 505
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v15

    .line 512
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 513
    .line 514
    new-array v2, v10, [J

    .line 515
    .line 516
    fill-array-data v2, :array_21

    .line 517
    .line 518
    .line 519
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v16

    .line 526
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 527
    .line 528
    new-array v2, v10, [J

    .line 529
    .line 530
    fill-array-data v2, :array_22

    .line 531
    .line 532
    .line 533
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v17

    .line 540
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 541
    .line 542
    new-array v2, v10, [J

    .line 543
    .line 544
    fill-array-data v2, :array_23

    .line 545
    .line 546
    .line 547
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v18

    .line 554
    const/4 v13, 0x5

    .line 555
    move-object v11, v0

    .line 556
    invoke-direct/range {v11 .. v18}, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    sput-object v0, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;->OPTION_6:Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

    .line 560
    .line 561
    new-instance v0, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

    .line 562
    .line 563
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 564
    .line 565
    new-array v2, v9, [J

    .line 566
    .line 567
    fill-array-data v2, :array_24

    .line 568
    .line 569
    .line 570
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 571
    .line 572
    .line 573
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v2

    .line 577
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 578
    .line 579
    new-array v3, v10, [J

    .line 580
    .line 581
    fill-array-data v3, :array_25

    .line 582
    .line 583
    .line 584
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v4

    .line 591
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 592
    .line 593
    new-array v3, v10, [J

    .line 594
    .line 595
    fill-array-data v3, :array_26

    .line 596
    .line 597
    .line 598
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v5

    .line 605
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 606
    .line 607
    new-array v3, v10, [J

    .line 608
    .line 609
    fill-array-data v3, :array_27

    .line 610
    .line 611
    .line 612
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v6

    .line 619
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 620
    .line 621
    const/4 v3, 0x4

    .line 622
    new-array v7, v3, [J

    .line 623
    .line 624
    fill-array-data v7, :array_28

    .line 625
    .line 626
    .line 627
    invoke-direct {v1, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 628
    .line 629
    .line 630
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v7

    .line 634
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 635
    .line 636
    new-array v3, v3, [J

    .line 637
    .line 638
    fill-array-data v3, :array_29

    .line 639
    .line 640
    .line 641
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 642
    .line 643
    .line 644
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v8

    .line 648
    const/4 v3, 0x6

    .line 649
    move-object v1, v0

    .line 650
    invoke-direct/range {v1 .. v8}, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    sput-object v0, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;->OPTION_7:Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

    .line 654
    .line 655
    invoke-static {}, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;->$values()[Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

    .line 656
    .line 657
    .line 658
    move-result-object v0

    .line 659
    sput-object v0, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;->$VALUES:[Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

    .line 660
    .line 661
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    sput-object v0, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 666
    .line 667
    new-instance v0, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig$Companion;

    .line 668
    .line 669
    const/4 v1, 0x0

    .line 670
    invoke-direct {v0, v1}, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 671
    .line 672
    .line 673
    sput-object v0, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;->Companion:Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig$Companion;

    .line 674
    .line 675
    return-void

    .line 676
    nop

    .line 677
    :array_0
    .array-data 8
        0x13cfc6d0bf79ab93L    # 2.949720190339129E-213
        0x629d9484897d16f9L    # 1.0901793421767287E167
    .end array-data

    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    :array_1
    .array-data 8
        0x11fc88e7c52a35fL
        0xd3f4d75830ced9dL
        0x1030afc303a77882L
    .end array-data

    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    :array_2
    .array-data 8
        -0x17532dbb957812abL    # -1.6831453095752898E196
        -0x275c3487c796984cL    # -9.98342345018951E118
        0x1df5a0c3868e2c84L
    .end array-data

    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    :array_3
    .array-data 8
        0x356f5d24af261874L    # 2.6196302316880278E-51
        -0x52bc110c2082c474L    # -1.2231870802918289E-90
        0x60cb9558d39f93f8L    # 1.8935436804533762E158
    .end array-data

    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    :array_4
    .array-data 8
        -0x68f9b3ee494ce757L    # -9.321420955844179E-198
        0x1b86be4898641e67L    # 4.4899957914835526E-176
        -0x32f38d2c46e8299bL    # -1.462881480653764E63
    .end array-data

    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    :array_5
    .array-data 8
        0x9aaeb73c2f7c4bcL
        0x4de595bae4a34e6dL    # 1.818522796367683E67
        -0x194f68801bfd48adL    # -4.512016795297146E186
    .end array-data

    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    :array_6
    .array-data 8
        -0x6941a36cfd5fefa2L
        -0x543b934916bf8fcdL    # -7.470443427841062E-98
    .end array-data

    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    :array_7
    .array-data 8
        -0x735fd85df358df1dL    # -7.220306016843061E-248
        0x661afda0b33d2872L    # 7.16790196535597E183
    .end array-data

    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    :array_8
    .array-data 8
        -0x33a7d422e3fa12acL    # -6.069039066430417E59
        0x583913f44003d9a2L    # 9.881213722631874E116
    .end array-data

    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    :array_9
    .array-data 8
        -0x29ea547fa1ce60a9L    # -4.9699948705521696E106
        0x122d68013bb63b1L
    .end array-data

    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    :array_a
    .array-data 8
        0x19aa72aeebeec47aL    # 4.862786577635948E-185
        0x364ee18719003f64L
        0x2132f1ea06ac61b9L    # 9.260111962784897E-149
    .end array-data

    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
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
    :array_b
    .array-data 8
        0x62325ddeb3771efdL    # 1.0576653734942313E165
        0x733ceb4028fb75baL    # 1.2637435397117999E247
        -0x552d8e46b5c48bd9L    # -2.058742811538958E-102
    .end array-data

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
    :array_c
    .array-data 8
        0x7d3d6e6ae15c2d66L    # 1.879686769725275E295
        -0x3a7c1d668965d410L    # -7.692696414669224E26
    .end array-data

    .line 850
    .line 851
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
    :array_d
    .array-data 8
        -0x6027590fed11d871L
        0x54273f9ae88ac993L    # 2.482920187424582E97
    .end array-data

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
    .line 872
    .line 873
    :array_e
    .array-data 8
        -0x4ff908b109f22d2cL    # -2.4792333345889305E-77
        -0x1a7d0a1d0a833236L    # -9.834608321983975E180
    .end array-data

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
    :array_f
    .array-data 8
        -0xd7eb93037bcfe12L    # -3.686421489098372E243
        -0x633876790ff461b1L    # -4.872451639114102E-170
    .end array-data

    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    :array_10
    .array-data 8
        0x2acb8987cfb6ddacL
        -0x1e732cc02d8ec87dL    # -8.105128537826111E161
        0x7323b05e3cfa2321L    # 4.3019836617509474E246
    .end array-data

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
    :array_11
    .array-data 8
        -0x107ea9dcdeb93ea1L    # -1.314218204549028E229
        -0x74effd0504166da7L    # -2.132748094680379E-255
        0x193efda81736bd0eL    # 4.4516000555367156E-187
    .end array-data

    .line 914
    .line 915
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
    :array_12
    .array-data 8
        0x6587ceda1b93ca96L    # 1.2348966403668665E181
        0x6f8234bc4224b776L    # 1.380133821011169E229
    .end array-data

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
    .line 940
    .line 941
    :array_13
    .array-data 8
        0x4febdf74237c079eL    # 1.0085804293143993E77
        0x6cb71680e04ee3bfL    # 4.974408199970551E215
        -0x70db3cc5e11d5ed2L
    .end array-data

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
    :array_14
    .array-data 8
        0x66dc5443d9365835L    # 3.0815627944644893E187
        0x436199750e17ae64L    # 3.9630421045900064E16
        -0x107e3cde4a5b0be0L    # -1.34649356804826E229
    .end array-data

    .line 958
    .line 959
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
    :array_15
    .array-data 8
        0x4a6246d6229b796fL    # 2.1369147360087447E50
        0x26478915dcae105L
        -0x55e9e54d19b413c2L    # -6.02362808753442E-106
    .end array-data

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
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    :array_16
    .array-data 8
        -0x47269bca195a5979L    # -7.640960781438656E-35
        -0x61b04efc6d58fa1cL
        0x57abb0d58cd277c2L
    .end array-data

    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    :array_17
    .array-data 8
        -0x17a34065ca88b4f8L    # -5.2465232531913374E194
        -0x13515be8d437c935L    # -3.300878569294019E215
        -0x7fe8bed6cf945b03L
    .end array-data

    :array_18
    .array-data 8
        -0x5a97b155cdf06c7L
        0x69a6e3329323a5efL    # 8.759620705901518E200
    .end array-data

    :array_19
    .array-data 8
        -0xf39ee675ecf584dL    # -1.7542200659086674E235
        0x1a5ea0aeb9b35c66L
        -0x5c0c29de059bb630L    # -1.70571332586317E-135
    .end array-data

    :array_1a
    .array-data 8
        -0x57a29d836da2796dL    # -2.983067731874669E-114
        0x630a82e06b44dac9L    # 1.250655146931718E169
        0x6b7cabe602792d1cL    # 5.891245038350123E209
    .end array-data

    :array_1b
    .array-data 8
        -0x36ea543e9e8d1c0dL    # -1.2081941352298766E44
        -0x7e5e0f31e9a943b9L    # -8.37167546845706E-301
        0x739aa981003408aeL    # 7.456777597621604E248
    .end array-data

    :array_1c
    .array-data 8
        -0x9f4aacfe5ba8507L
        0x30acf5698d1fc63aL    # 3.2011739137201967E-74
        -0x2d925226dd5cec5fL    # -1.1808082653123499E89
    .end array-data

    :array_1d
    .array-data 8
        0x294fb9bce8fc6c80L
        0x57f8406dfde74022L    # 5.972279876859752E115
        0x9d4ae9a3aa20015L
    .end array-data

    :array_1e
    .array-data 8
        -0x52f6ea1a870d2932L    # -9.620876934223955E-92
        0x5d48449e2392edd9L    # 2.3119724265669745E141
    .end array-data

    :array_1f
    .array-data 8
        0x2cfcc70d10035431L    # 5.51842377444978E-92
        -0x9ca62d24c73ab3cL
        -0x5b02f412a6d7177fL    # -1.636880786488495E-130
    .end array-data

    :array_20
    .array-data 8
        0x153c9a5eb1a152d7L
        0x54c22ddd99a2e6edL    # 1.9881193286204505E100
        0x3c6be5e0d6b402d8L    # 1.2098812410290436E-17
    .end array-data

    :array_21
    .array-data 8
        -0x72c101fc88e118f6L    # -7.092127097800754E-245
        -0x7b08af8e10f167d1L    # -9.79908094821965E-285
        0x2f20de81a086983eL    # 1.1114880083169955E-81
    .end array-data

    :array_22
    .array-data 8
        -0x2e2365e312b04b76L    # -2.2225689285708983E86
        0x2b264dc34e34c561L    # 7.966536884423442E-101
        0x56fa9a7ff0862427L    # 9.996717940865105E110
    .end array-data

    :array_23
    .array-data 8
        -0x2b330dba7ef759beL
        -0x5a4016e962306c78L    # -7.365724416096314E-127
        -0x2809d96d1c84a320L    # -5.454882406212034E115
    .end array-data

    :array_24
    .array-data 8
        -0x3511efaad46f04b7L    # -8.998562269340696E52
        0x735537957c00af6L
    .end array-data

    :array_25
    .array-data 8
        -0x4d76f68395542feaL    # -2.971763112982214E-65
        0x4a2d9696d7ab0e95L    # 2.1621629998674342E49
        -0x413bbfabc662ac16L    # -2.414141317889301E-6
    .end array-data

    :array_26
    .array-data 8
        -0x537b4bf65fe92d50L
        -0x25fff40c3a386371L    # -3.394482931911248E125
        -0x1451a8146514333L
    .end array-data

    :array_27
    .array-data 8
        0x65fe36533dded374L    # 2.0058564173687274E183
        0x16d74f103b3f0e09L    # 1.2180456291020008E-198
        0x280aef5d24bfdb2bL    # 8.544937684633913E-116
    .end array-data

    :array_28
    .array-data 8
        0xa35f5d99bd9d2e9L
        -0x4aece34104621015L    # -4.988540235924347E-53
        -0x3155458f158ce8b8L    # -9.223592326013609E70
        -0x70d303df3ad808c2L
    .end array-data

    :array_29
    .array-data 8
        -0x3184841244452de8L    # -1.1855516315254844E70
        -0x6f3af754692eeedL
        0x72f5dc515eda923L    # 4.52977981291305E-274
        -0x1dcc6ea3c769931aL    # -1.1268339939317984E165
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;->displayName:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;->ipv4Client:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;->ipv4Router:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p6, p0, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;->ipv6Client:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p7, p0, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;->ipv6Router:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;
    .locals 1

    .line 1
    const-class v0, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;
    .locals 1

    .line 1
    sget-object v0, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;->$VALUES:[Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDisplayName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;->displayName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getIpv4Client()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;->ipv4Client:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getIpv4Router()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;->ipv4Router:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getIpv6Client()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;->ipv6Client:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getIpv6Router()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;->ipv6Router:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
