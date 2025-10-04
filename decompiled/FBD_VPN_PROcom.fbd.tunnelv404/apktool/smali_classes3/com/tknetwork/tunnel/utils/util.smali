.class public Lcom/tknetwork/tunnel/utils/util;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tknetwork/tunnel/config/SettingsConstants;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation


# static fields
.field private static mConfig:Lconfig/ConfigUtil;

.field private static mContext:Landroid/content/Context;

.field public static x:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    const/16 v1, 0x13

    .line 4
    .line 5
    new-array v1, v1, [B

    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/tknetwork/tunnel/utils/util;->x:Ljava/lang/String;

    .line 14
    .line 15
    return-void

    .line 16
    nop

    .line 17
    :array_0
    .array-data 1
        0x44t
        0x65t
        0x78t
        0x74t
        0x65t
        0x72t
        0x45t
        0x73t
        0x6bt
        0x61t
        0x6ct
        0x61t
        0x72t
        0x74t
        0x65t
        0x32t
        0x30t
        0x32t
        0x34t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sput-object p1, Lcom/tknetwork/tunnel/utils/util;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {p1}, Lconfig/ConfigUtil;->getInstance(Landroid/content/Context;)Lconfig/ConfigUtil;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sput-object p1, Lcom/tknetwork/tunnel/utils/util;->mConfig:Lconfig/ConfigUtil;

    .line 11
    .line 12
    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/16 v4, 0x40

    .line 17
    .line 18
    invoke-virtual {v3, p0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 23
    .line 24
    array-length v3, p0

    .line 25
    const/4 v4, 0x0

    .line 26
    :goto_0
    if-ge v4, v3, :cond_0

    .line 27
    .line 28
    aget-object v5, p0, v4

    .line 29
    .line 30
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    add-int/2addr v4, v0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    return-object p0

    .line 44
    :catch_0
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array v0, v0, [J

    .line 47
    .line 48
    const-wide v2, -0x578febbf39829b38L    # -6.529256734094516E-114

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    aput-wide v2, v0, v1

    .line 54
    .line 55
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method

.method public static getLocalIP()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/net/NetworkInterface;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/net/InetAddress;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    instance-of v3, v2, Ljava/net/Inet4Address;

    .line 40
    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    return-object v0

    .line 48
    :cond_2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    const/4 v1, 0x3

    .line 51
    new-array v1, v1, [J

    .line 52
    .line 53
    fill-array-data v1, :array_0

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return-object v0

    .line 64
    :catch_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 65
    .line 66
    const/4 v1, 0x4

    .line 67
    new-array v1, v1, [J

    .line 68
    .line 69
    fill-array-data v1, :array_1

    .line 70
    .line 71
    .line 72
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    return-object v0

    .line 80
    nop

    .line 81
    :array_0
    .array-data 8
        0x72f923b040fa34a2L    # 6.866122199468829E245
        0x700089a0e8b38628L    # 3.209367637257788E231
        -0xb1331713572768aL
    .end array-data

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
        0x7fea4befd98224f1L    # 1.4772896450467605E308
        0x2b727c837634ccf0L    # 2.1129700332872002E-99
        -0x6ee9b92260af9dadL
        0x43fa43c20044bfdaL    # 3.0281113197359243E19
    .end array-data
.end method

.method public static getNetworkType()Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {}, Lcom/tknetwork/tunnel/utils/util;->mContext()Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v3, 0x3

    .line 9
    new-array v4, v3, [J

    .line 10
    .line 11
    fill-array-data v4, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_a

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_0

    .line 38
    .line 39
    goto/16 :goto_3

    .line 40
    .line 41
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/4 v4, 0x1

    .line 46
    if-ne v2, v4, :cond_1

    .line 47
    .line 48
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    new-array v1, v3, [J

    .line 51
    .line 52
    fill-array-data v1, :array_1

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0

    .line 63
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-nez v2, :cond_9

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eq v1, v4, :cond_8

    .line 74
    .line 75
    const/4 v2, 0x2

    .line 76
    if-eq v1, v2, :cond_8

    .line 77
    .line 78
    if-eq v1, v0, :cond_8

    .line 79
    .line 80
    const/4 v2, 0x7

    .line 81
    if-eq v1, v2, :cond_8

    .line 82
    .line 83
    const/16 v2, 0xb

    .line 84
    .line 85
    if-eq v1, v2, :cond_8

    .line 86
    .line 87
    const/16 v2, 0x10

    .line 88
    .line 89
    if-ne v1, v2, :cond_2

    .line 90
    .line 91
    goto/16 :goto_2

    .line 92
    .line 93
    :cond_2
    if-eq v1, v3, :cond_7

    .line 94
    .line 95
    const/4 v2, 0x5

    .line 96
    if-eq v1, v2, :cond_7

    .line 97
    .line 98
    const/4 v2, 0x6

    .line 99
    if-eq v1, v2, :cond_7

    .line 100
    .line 101
    const/16 v2, 0x8

    .line 102
    .line 103
    if-eq v1, v2, :cond_7

    .line 104
    .line 105
    const/16 v2, 0x9

    .line 106
    .line 107
    if-eq v1, v2, :cond_7

    .line 108
    .line 109
    const/16 v2, 0xa

    .line 110
    .line 111
    if-eq v1, v2, :cond_7

    .line 112
    .line 113
    const/16 v2, 0xc

    .line 114
    .line 115
    if-eq v1, v2, :cond_7

    .line 116
    .line 117
    const/16 v2, 0xe

    .line 118
    .line 119
    if-eq v1, v2, :cond_7

    .line 120
    .line 121
    const/16 v2, 0xf

    .line 122
    .line 123
    if-eq v1, v2, :cond_7

    .line 124
    .line 125
    const/16 v2, 0x11

    .line 126
    .line 127
    if-ne v1, v2, :cond_3

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_3
    const/16 v2, 0xd

    .line 131
    .line 132
    if-eq v1, v2, :cond_6

    .line 133
    .line 134
    const/16 v2, 0x12

    .line 135
    .line 136
    if-eq v1, v2, :cond_6

    .line 137
    .line 138
    const/16 v2, 0x13

    .line 139
    .line 140
    if-ne v1, v2, :cond_4

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_4
    const/16 v0, 0x14

    .line 144
    .line 145
    if-ne v1, v0, :cond_5

    .line 146
    .line 147
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 148
    .line 149
    new-array v1, v3, [J

    .line 150
    .line 151
    fill-array-data v1, :array_2

    .line 152
    .line 153
    .line 154
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    return-object v0

    .line 162
    :cond_5
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 163
    .line 164
    new-array v1, v3, [J

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
    return-object v0

    .line 177
    :cond_6
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 178
    .line 179
    new-array v0, v0, [J

    .line 180
    .line 181
    fill-array-data v0, :array_4

    .line 182
    .line 183
    .line 184
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    return-object v0

    .line 192
    :cond_7
    :goto_1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 193
    .line 194
    new-array v1, v3, [J

    .line 195
    .line 196
    fill-array-data v1, :array_5

    .line 197
    .line 198
    .line 199
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    return-object v0

    .line 207
    :cond_8
    :goto_2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 208
    .line 209
    new-array v1, v3, [J

    .line 210
    .line 211
    fill-array-data v1, :array_6

    .line 212
    .line 213
    .line 214
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    return-object v0

    .line 222
    :cond_9
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 223
    .line 224
    new-array v1, v3, [J

    .line 225
    .line 226
    fill-array-data v1, :array_7

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
    return-object v0

    .line 237
    :cond_a
    :goto_3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 238
    .line 239
    new-array v1, v3, [J

    .line 240
    .line 241
    fill-array-data v1, :array_8

    .line 242
    .line 243
    .line 244
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    return-object v0

    .line 252
    nop

    .line 253
    :array_0
    .array-data 8
        -0x6699a1799ad09ff0L
        -0x769262d57db11d1dL    # -2.938934090185113E-263
        -0x384cad99d80825adL    # -2.5683172234697903E37
    .end array-data

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
    :array_1
    .array-data 8
        0x553c76c1346f7c88L    # 3.984489878196186E102
        -0x4538e492108894beL    # -1.493264326091998E-25
        -0x4a77937502b475c9L    # -8.159949260202555E-51
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
    :array_2
    .array-data 8
        -0x57a14412dfc3869L
        0x262f1da3b028d01bL    # 9.193322289915632E-125
        0x2dac32128bb56e58L    # 1.1073185083840333E-88
    .end array-data

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
    :array_3
    .array-data 8
        -0x60a0841a18d0e3fdL
        0x39349bb8c0a640c2L    # 3.969011867284369E-33
        0x6c345a9176fb5ebfL    # 1.713018560674944E213
    .end array-data

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
    :array_4
    .array-data 8
        -0x345bc5dd00d8875eL    # -2.479834816156165E56
        -0x7ba0a7a7de19ee35L
        0x376362c61453b2acL    # 6.954327231393875E-42
        -0x2c9c6d5d447b5dbfL    # -5.103422565916924E93
    .end array-data

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
    .line 334
    .line 335
    .line 336
    .line 337
    :array_5
    .array-data 8
        0x65b24ef0df96b906L    # 7.597083704491577E181
        0x526b361bcd459474L    # 1.082627398314384E89
        0x1dc58d3dd8c36dd0L
    .end array-data

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
    :array_6
    .array-data 8
        0x4957b96c303f3d86L    # 2.116278908362055E45
        0xa68eb00b519ec87L
        0x2a933d94345f83b7L
    .end array-data

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
    :array_7
    .array-data 8
        -0x1919483868c5fd26L    # -4.94237044903688E187
        -0x3c84843f928d234bL    # -1.23774252341906256E17
        -0xdfa8af74a59eb83L    # -1.7884585027960027E241
    .end array-data

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
    :array_8
    .array-data 8
        0x1f95f117f190f7aeL
        -0x3c64a21dfc2b3b54L    # -4.9299517948514586E17
        -0x1b6372c1d729c28dL    # -4.5194948970384003E176
    .end array-data
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    new-array v1, v1, [J

    .line 9
    .line 10
    fill-array-data v1, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    if-nez p0, :cond_0

    .line 28
    .line 29
    return v0

    .line 30
    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_1

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    :cond_1
    return v0

    .line 50
    nop

    .line 51
    :array_0
    .array-data 8
        0x6a39b6ce8e846f30L    # 5.0388129178479434E203
        -0x6396f33d3ca01bd8L    # -8.102472385477212E-172
        -0x2950c1fbe94bfa23L    # -3.6686877122252847E109
    .end array-data
.end method

.method private static mContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/utils/util;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/tknetwork/tunnel/activities/OpenVPNApplication;->getApp()Lcom/tknetwork/tunnel/activities/OpenVPNApplication;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public static pw_repl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public overrideFont(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tknetwork/tunnel/utils/util;->mContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const-class v0, Landroid/graphics/Typeface;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p1

    .line 29
    invoke-static {}, Lcom/tknetwork/tunnel/utils/util;->mContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method
