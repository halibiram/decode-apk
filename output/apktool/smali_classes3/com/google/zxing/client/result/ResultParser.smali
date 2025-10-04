.class public abstract Lcom/google/zxing/client/result/ResultParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AMPERSAND:Ljava/util/regex/Pattern;

.field private static final BYTE_ORDER_MARK:Ljava/lang/String;

.field private static final DIGITS:Ljava/util/regex/Pattern;

.field static final EMPTY_STR_ARRAY:[Ljava/lang/String;

.field private static final EQUALS:Ljava/util/regex/Pattern;

.field private static final PARSERS:[Lcom/google/zxing/client/result/ResultParser;


# direct methods
.method static constructor <clinit>()V
    .locals 22

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
    sput-object v0, Lcom/google/zxing/client/result/ResultParser;->BYTE_ORDER_MARK:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v2, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;

    .line 24
    .line 25
    invoke-direct {v2}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v3, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;

    .line 29
    .line 30
    invoke-direct {v3}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v4, Lcom/google/zxing/client/result/AddressBookAUResultParser;

    .line 34
    .line 35
    invoke-direct {v4}, Lcom/google/zxing/client/result/AddressBookAUResultParser;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance v5, Lcom/google/zxing/client/result/VCardResultParser;

    .line 39
    .line 40
    invoke-direct {v5}, Lcom/google/zxing/client/result/VCardResultParser;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance v6, Lcom/google/zxing/client/result/BizcardResultParser;

    .line 44
    .line 45
    invoke-direct {v6}, Lcom/google/zxing/client/result/BizcardResultParser;-><init>()V

    .line 46
    .line 47
    .line 48
    new-instance v7, Lcom/google/zxing/client/result/VEventResultParser;

    .line 49
    .line 50
    invoke-direct {v7}, Lcom/google/zxing/client/result/VEventResultParser;-><init>()V

    .line 51
    .line 52
    .line 53
    new-instance v8, Lcom/google/zxing/client/result/EmailAddressResultParser;

    .line 54
    .line 55
    invoke-direct {v8}, Lcom/google/zxing/client/result/EmailAddressResultParser;-><init>()V

    .line 56
    .line 57
    .line 58
    new-instance v9, Lcom/google/zxing/client/result/SMTPResultParser;

    .line 59
    .line 60
    invoke-direct {v9}, Lcom/google/zxing/client/result/SMTPResultParser;-><init>()V

    .line 61
    .line 62
    .line 63
    new-instance v10, Lcom/google/zxing/client/result/TelResultParser;

    .line 64
    .line 65
    invoke-direct {v10}, Lcom/google/zxing/client/result/TelResultParser;-><init>()V

    .line 66
    .line 67
    .line 68
    new-instance v11, Lcom/google/zxing/client/result/SMSMMSResultParser;

    .line 69
    .line 70
    invoke-direct {v11}, Lcom/google/zxing/client/result/SMSMMSResultParser;-><init>()V

    .line 71
    .line 72
    .line 73
    new-instance v12, Lcom/google/zxing/client/result/SMSTOMMSTOResultParser;

    .line 74
    .line 75
    invoke-direct {v12}, Lcom/google/zxing/client/result/SMSTOMMSTOResultParser;-><init>()V

    .line 76
    .line 77
    .line 78
    new-instance v13, Lcom/google/zxing/client/result/GeoResultParser;

    .line 79
    .line 80
    invoke-direct {v13}, Lcom/google/zxing/client/result/GeoResultParser;-><init>()V

    .line 81
    .line 82
    .line 83
    new-instance v14, Lcom/google/zxing/client/result/WifiResultParser;

    .line 84
    .line 85
    invoke-direct {v14}, Lcom/google/zxing/client/result/WifiResultParser;-><init>()V

    .line 86
    .line 87
    .line 88
    new-instance v15, Lcom/google/zxing/client/result/URLTOResultParser;

    .line 89
    .line 90
    invoke-direct {v15}, Lcom/google/zxing/client/result/URLTOResultParser;-><init>()V

    .line 91
    .line 92
    .line 93
    new-instance v16, Lcom/google/zxing/client/result/URIResultParser;

    .line 94
    .line 95
    invoke-direct/range {v16 .. v16}, Lcom/google/zxing/client/result/URIResultParser;-><init>()V

    .line 96
    .line 97
    .line 98
    new-instance v17, Lcom/google/zxing/client/result/ISBNResultParser;

    .line 99
    .line 100
    invoke-direct/range {v17 .. v17}, Lcom/google/zxing/client/result/ISBNResultParser;-><init>()V

    .line 101
    .line 102
    .line 103
    new-instance v18, Lcom/google/zxing/client/result/ProductResultParser;

    .line 104
    .line 105
    invoke-direct/range {v18 .. v18}, Lcom/google/zxing/client/result/ProductResultParser;-><init>()V

    .line 106
    .line 107
    .line 108
    new-instance v19, Lcom/google/zxing/client/result/ExpandedProductResultParser;

    .line 109
    .line 110
    invoke-direct/range {v19 .. v19}, Lcom/google/zxing/client/result/ExpandedProductResultParser;-><init>()V

    .line 111
    .line 112
    .line 113
    new-instance v20, Lcom/google/zxing/client/result/VINResultParser;

    .line 114
    .line 115
    invoke-direct/range {v20 .. v20}, Lcom/google/zxing/client/result/VINResultParser;-><init>()V

    .line 116
    .line 117
    .line 118
    const/16 v1, 0x14

    .line 119
    .line 120
    new-array v1, v1, [Lcom/google/zxing/client/result/ResultParser;

    .line 121
    .line 122
    move-object/from16 v21, v15

    .line 123
    .line 124
    const/4 v15, 0x0

    .line 125
    aput-object v0, v1, v15

    .line 126
    .line 127
    const/4 v0, 0x1

    .line 128
    aput-object v2, v1, v0

    .line 129
    .line 130
    const/4 v0, 0x2

    .line 131
    aput-object v3, v1, v0

    .line 132
    .line 133
    const/4 v0, 0x3

    .line 134
    aput-object v4, v1, v0

    .line 135
    .line 136
    const/4 v0, 0x4

    .line 137
    aput-object v5, v1, v0

    .line 138
    .line 139
    const/4 v0, 0x5

    .line 140
    aput-object v6, v1, v0

    .line 141
    .line 142
    const/4 v0, 0x6

    .line 143
    aput-object v7, v1, v0

    .line 144
    .line 145
    const/4 v0, 0x7

    .line 146
    aput-object v8, v1, v0

    .line 147
    .line 148
    const/16 v0, 0x8

    .line 149
    .line 150
    aput-object v9, v1, v0

    .line 151
    .line 152
    const/16 v0, 0x9

    .line 153
    .line 154
    aput-object v10, v1, v0

    .line 155
    .line 156
    const/16 v0, 0xa

    .line 157
    .line 158
    aput-object v11, v1, v0

    .line 159
    .line 160
    const/16 v0, 0xb

    .line 161
    .line 162
    aput-object v12, v1, v0

    .line 163
    .line 164
    const/16 v0, 0xc

    .line 165
    .line 166
    aput-object v13, v1, v0

    .line 167
    .line 168
    const/16 v0, 0xd

    .line 169
    .line 170
    aput-object v14, v1, v0

    .line 171
    .line 172
    const/16 v0, 0xe

    .line 173
    .line 174
    aput-object v21, v1, v0

    .line 175
    .line 176
    const/16 v0, 0xf

    .line 177
    .line 178
    aput-object v16, v1, v0

    .line 179
    .line 180
    const/16 v0, 0x10

    .line 181
    .line 182
    aput-object v17, v1, v0

    .line 183
    .line 184
    const/16 v0, 0x11

    .line 185
    .line 186
    aput-object v18, v1, v0

    .line 187
    .line 188
    const/16 v0, 0x12

    .line 189
    .line 190
    aput-object v19, v1, v0

    .line 191
    .line 192
    const/16 v0, 0x13

    .line 193
    .line 194
    aput-object v20, v1, v0

    .line 195
    .line 196
    sput-object v1, Lcom/google/zxing/client/result/ResultParser;->PARSERS:[Lcom/google/zxing/client/result/ResultParser;

    .line 197
    .line 198
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 199
    .line 200
    const/4 v1, 0x2

    .line 201
    new-array v2, v1, [J

    .line 202
    .line 203
    fill-array-data v2, :array_1

    .line 204
    .line 205
    .line 206
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    sput-object v0, Lcom/google/zxing/client/result/ResultParser;->DIGITS:Ljava/util/regex/Pattern;

    .line 218
    .line 219
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 220
    .line 221
    new-array v2, v1, [J

    .line 222
    .line 223
    fill-array-data v2, :array_2

    .line 224
    .line 225
    .line 226
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    sput-object v0, Lcom/google/zxing/client/result/ResultParser;->AMPERSAND:Ljava/util/regex/Pattern;

    .line 238
    .line 239
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 240
    .line 241
    new-array v1, v1, [J

    .line 242
    .line 243
    fill-array-data v1, :array_3

    .line 244
    .line 245
    .line 246
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    sput-object v0, Lcom/google/zxing/client/result/ResultParser;->EQUALS:Ljava/util/regex/Pattern;

    .line 258
    .line 259
    new-array v0, v15, [Ljava/lang/String;

    .line 260
    .line 261
    sput-object v0, Lcom/google/zxing/client/result/ResultParser;->EMPTY_STR_ARRAY:[Ljava/lang/String;

    .line 262
    .line 263
    return-void

    .line 264
    nop

    .line 265
    :array_0
    .array-data 8
        -0x10f10517996fd3edL    # -9.17380889590142E226
        -0x55ee64c884a2e296L    # -4.797886952519847E-106
    .end array-data

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
    :array_1
    .array-data 8
        0x7a8cc007df1c6927L    # 2.087495836147395E282
        -0x3eeec79f54881293L    # -282136.1674496744
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
    :array_2
    .array-data 8
        0xbdfce8400d0fa63L
        0x26f9a1b41c37710bL
    .end array-data

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
        -0x245de505e294ef6bL    # -2.57025205848357E133
        0x44ed2566046e13aaL    # 1.1011080692437558E24
    .end array-data
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

.method private static appendKeyValue(Ljava/lang/CharSequence;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/zxing/client/result/ResultParser;->EQUALS:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, p0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    array-length v0, p0

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    aget-object v0, p0, v0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    aget-object p0, p0, v1

    .line 16
    .line 17
    :try_start_0
    invoke-static {p0}, Lcom/google/zxing/client/result/ResultParser;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    :catch_0
    :cond_0
    return-void
.end method

.method private static countPrecedingBackslashes(Ljava/lang/CharSequence;I)I
    .locals 3

    .line 1
    add-int/lit8 p1, p1, -0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :goto_0
    if-ltz p1, :cond_0

    .line 5
    .line 6
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/16 v2, 0x5c

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    add-int/lit8 p1, p1, -0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return v0
.end method

.method public static getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v1, 0x2

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
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    :cond_0
    return-object p0

    .line 32
    nop

    .line 33
    :array_0
    .array-data 8
        0x6a5185dde1ddaf09L    # 1.3734836028823818E204
        -0x4c1e6fe4144005d3L    # -8.743548565218376E-59
    .end array-data
.end method

.method public static isStringOfDigits(Ljava/lang/CharSequence;I)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    if-lez p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    sget-object p1, Lcom/google/zxing/client/result/ResultParser;->DIGITS:Ljava/util/regex/Pattern;

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    return p0
.end method

.method public static isSubstringOfDigits(Ljava/lang/CharSequence;II)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    if-gtz p2, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    add-int/2addr p2, p1

    .line 8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-lt v1, p2, :cond_1

    .line 13
    .line 14
    sget-object v1, Lcom/google/zxing/client/result/ResultParser;->DIGITS:Ljava/util/regex/Pattern;

    .line 15
    .line 16
    invoke-interface {p0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    :cond_1
    :goto_0
    return v0
.end method

.method public static matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    move-object v4, v1

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v0, :cond_7

    .line 10
    .line 11
    invoke-virtual {p1, p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-gez v3, :cond_0

    .line 16
    .line 17
    goto :goto_3

    .line 18
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    add-int/2addr v5, v3

    .line 23
    const/4 v3, 0x1

    .line 24
    move-object v6, v4

    .line 25
    move v4, v5

    .line 26
    :goto_1
    if-eqz v3, :cond_6

    .line 27
    .line 28
    invoke-virtual {p1, p2, v4}, Ljava/lang/String;->indexOf(II)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-gez v4, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    :goto_2
    const/4 v3, 0x0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-static {p1, v4}, Lcom/google/zxing/client/result/ResultParser;->countPrecedingBackslashes(Ljava/lang/CharSequence;I)I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    rem-int/lit8 v7, v7, 0x2

    .line 45
    .line 46
    if-eqz v7, :cond_2

    .line 47
    .line 48
    add-int/lit8 v4, v4, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    if-nez v6, :cond_3

    .line 52
    .line 53
    new-instance v3, Ljava/util/ArrayList;

    .line 54
    .line 55
    const/4 v6, 0x3

    .line 56
    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    .line 58
    .line 59
    move-object v6, v3

    .line 60
    :cond_3
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-static {v3}, Lcom/google/zxing/client/result/ResultParser;->unescapeBackslash(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    if-eqz p3, :cond_4

    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-nez v7, :cond_5

    .line 79
    .line 80
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_6
    move v3, v4

    .line 87
    move-object v4, v6

    .line 88
    goto :goto_0

    .line 89
    :cond_7
    :goto_3
    if-eqz v4, :cond_9

    .line 90
    .line 91
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    if-eqz p0, :cond_8

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_8
    sget-object p0, Lcom/google/zxing/client/result/ResultParser;->EMPTY_STR_ARRAY:[Ljava/lang/String;

    .line 99
    .line 100
    invoke-interface {v4, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    check-cast p0, [Ljava/lang/String;

    .line 105
    .line 106
    return-object p0

    .line 107
    :cond_9
    :goto_4
    return-object v1
.end method

.method public static matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    aget-object p0, p0, p1

    .line 11
    .line 12
    :goto_0
    return-object p0
.end method

.method public static maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1

    if-eqz p0, :cond_0

    const/16 v0, 0xa

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public static maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 4

    if-eqz p0, :cond_0

    .line 3
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    const/16 v3, 0xa

    .line 4
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static maybeWrap(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x1

    .line 6
    new-array v0, v0, [Ljava/lang/String;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    aput-object p0, v0, v1

    .line 10
    .line 11
    move-object p0, v0

    .line 12
    :goto_0
    return-object p0
.end method

.method public static parseHexDigit(C)I
    .locals 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 p0, p0, -0x57

    return p0

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    add-int/lit8 p0, p0, -0x37

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static parseNameValuePairs(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const/16 v0, 0x3f

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 15
    .line 16
    .line 17
    sget-object v2, Lcom/google/zxing/client/result/ResultParser;->AMPERSAND:Ljava/util/regex/Pattern;

    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    array-length v0, p0

    .line 30
    const/4 v2, 0x0

    .line 31
    :goto_0
    if-ge v2, v0, :cond_1

    .line 32
    .line 33
    aget-object v3, p0, v2

    .line 34
    .line 35
    invoke-static {v3, v1}, Lcom/google/zxing/client/result/ResultParser;->appendKeyValue(Ljava/lang/CharSequence;Ljava/util/Map;)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-object v1
.end method

.method public static parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/zxing/client/result/ResultParser;->PARSERS:[Lcom/google/zxing/client/result/ResultParser;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-virtual {v3, p0}, Lcom/google/zxing/client/result/ResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    return-object v3

    .line 16
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    new-instance v0, Lcom/google/zxing/client/result/TextParsedResult;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-direct {v0, p0, v1}, Lcom/google/zxing/client/result/TextParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public static unescapeBackslash(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const/16 v0, 0x5c

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-gez v1, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    add-int/lit8 v4, v2, -0x1

    .line 17
    .line 18
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    const/4 v5, 0x0

    .line 26
    invoke-virtual {v3, v4, v5, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    :goto_0
    if-ge v1, v2, :cond_3

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-nez v4, :cond_2

    .line 37
    .line 38
    if-eq v6, v0, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/4 v4, 0x1

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    :goto_1
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method public static urlDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return-object p0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    nop

    .line 29
    :array_0
    .array-data 8
        -0x46c444b10d54d99L
        -0x5eed79ee062fe225L
    .end array-data
.end method


# virtual methods
.method public abstract parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
.end method
