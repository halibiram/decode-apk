.class public final Lokio/internal/_Utf8Kt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u001a\n\u0010\u0006\u001a\u00020\u0002*\u00020\u0001\u00a8\u0006\u0007"
    }
    d2 = {
        "commonToUtf8String",
        "",
        "",
        "beginIndex",
        "",
        "endIndex",
        "commonAsUtf8ToByteArray",
        "okio"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\n-Utf8.kt\nKotlin\n*S Kotlin\n*F\n+ 1 -Utf8.kt\nokio/internal/_Utf8Kt\n+ 2 Utf8.kt\nokio/Utf8\n+ 3 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,60:1\n260#2,16:61\n277#2:78\n397#2,9:79\n127#2:88\n406#2,20:90\n279#2,3:110\n440#2,4:113\n127#2:117\n446#2,10:118\n127#2:128\n456#2,5:129\n127#2:134\n461#2,24:135\n283#2,3:159\n500#2,3:162\n286#2,12:165\n503#2:177\n127#2:178\n506#2,2:179\n127#2:181\n510#2,10:182\n127#2:192\n520#2,5:193\n127#2:198\n525#2,5:199\n127#2:204\n530#2,28:205\n302#2,6:233\n138#2,67:239\n67#3:77\n73#3:89\n*S KotlinDebug\n*F\n+ 1 -Utf8.kt\nokio/internal/_Utf8Kt\n*L\n34#1:61,16\n34#1:78\n34#1:79,9\n34#1:88\n34#1:90,20\n34#1:110,3\n34#1:113,4\n34#1:117\n34#1:118,10\n34#1:128\n34#1:129,5\n34#1:134\n34#1:135,24\n34#1:159,3\n34#1:162,3\n34#1:165,12\n34#1:177\n34#1:178\n34#1:179,2\n34#1:181\n34#1:182,10\n34#1:192\n34#1:193,5\n34#1:198\n34#1:199,5\n34#1:204\n34#1:205,28\n34#1:233,6\n50#1:239,67\n34#1:77\n34#1:89\n*E\n"
    }
.end annotation


# direct methods
.method public static final commonAsUtf8ToByteArray(Ljava/lang/String;)[B
    .locals 12
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    mul-int/lit8 v0, v0, 0x4

    .line 11
    .line 12
    new-array v0, v0, [B

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    const-string v3, "copyOf(...)"

    .line 20
    .line 21
    if-ge v2, v1, :cond_7

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const/16 v5, 0x80

    .line 28
    .line 29
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-ltz v6, :cond_6

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    move v4, v2

    .line 40
    :cond_0
    :goto_1
    if-ge v2, v1, :cond_5

    .line 41
    .line 42
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-gez v7, :cond_1

    .line 51
    .line 52
    int-to-byte v6, v6

    .line 53
    add-int/lit8 v7, v4, 0x1

    .line 54
    .line 55
    aput-byte v6, v0, v4

    .line 56
    .line 57
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    :goto_2
    move v4, v7

    .line 60
    if-ge v2, v1, :cond_0

    .line 61
    .line 62
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-gez v6, :cond_0

    .line 71
    .line 72
    add-int/lit8 v6, v2, 0x1

    .line 73
    .line 74
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    int-to-byte v2, v2

    .line 79
    add-int/lit8 v7, v4, 0x1

    .line 80
    .line 81
    aput-byte v2, v0, v4

    .line 82
    .line 83
    move v2, v6

    .line 84
    goto :goto_2

    .line 85
    :cond_1
    const/16 v7, 0x800

    .line 86
    .line 87
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-gez v7, :cond_2

    .line 92
    .line 93
    shr-int/lit8 v7, v6, 0x6

    .line 94
    .line 95
    or-int/lit16 v7, v7, 0xc0

    .line 96
    .line 97
    int-to-byte v7, v7

    .line 98
    add-int/lit8 v8, v4, 0x1

    .line 99
    .line 100
    aput-byte v7, v0, v4

    .line 101
    .line 102
    and-int/lit8 v6, v6, 0x3f

    .line 103
    .line 104
    or-int/2addr v6, v5

    .line 105
    int-to-byte v6, v6

    .line 106
    add-int/lit8 v4, v4, 0x2

    .line 107
    .line 108
    aput-byte v6, v0, v8

    .line 109
    .line 110
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    const v7, 0xd800

    .line 114
    .line 115
    .line 116
    const/16 v8, 0x3f

    .line 117
    .line 118
    if-gt v7, v6, :cond_4

    .line 119
    .line 120
    const v7, 0xe000

    .line 121
    .line 122
    .line 123
    if-ge v6, v7, :cond_4

    .line 124
    .line 125
    const v9, 0xdbff

    .line 126
    .line 127
    .line 128
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 129
    .line 130
    .line 131
    move-result v9

    .line 132
    if-gtz v9, :cond_3

    .line 133
    .line 134
    add-int/lit8 v9, v2, 0x1

    .line 135
    .line 136
    if-le v1, v9, :cond_3

    .line 137
    .line 138
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    .line 139
    .line 140
    .line 141
    move-result v10

    .line 142
    const v11, 0xdc00

    .line 143
    .line 144
    .line 145
    if-gt v11, v10, :cond_3

    .line 146
    .line 147
    if-ge v10, v7, :cond_3

    .line 148
    .line 149
    shl-int/lit8 v6, v6, 0xa

    .line 150
    .line 151
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    add-int/2addr v7, v6

    .line 156
    const v6, -0x35fdc00

    .line 157
    .line 158
    .line 159
    add-int/2addr v7, v6

    .line 160
    shr-int/lit8 v6, v7, 0x12

    .line 161
    .line 162
    or-int/lit16 v6, v6, 0xf0

    .line 163
    .line 164
    int-to-byte v6, v6

    .line 165
    add-int/lit8 v9, v4, 0x1

    .line 166
    .line 167
    aput-byte v6, v0, v4

    .line 168
    .line 169
    shr-int/lit8 v6, v7, 0xc

    .line 170
    .line 171
    and-int/2addr v6, v8

    .line 172
    or-int/2addr v6, v5

    .line 173
    int-to-byte v6, v6

    .line 174
    add-int/lit8 v10, v4, 0x2

    .line 175
    .line 176
    aput-byte v6, v0, v9

    .line 177
    .line 178
    shr-int/lit8 v6, v7, 0x6

    .line 179
    .line 180
    and-int/2addr v6, v8

    .line 181
    or-int/2addr v6, v5

    .line 182
    int-to-byte v6, v6

    .line 183
    add-int/lit8 v9, v4, 0x3

    .line 184
    .line 185
    aput-byte v6, v0, v10

    .line 186
    .line 187
    and-int/lit8 v6, v7, 0x3f

    .line 188
    .line 189
    or-int/2addr v6, v5

    .line 190
    int-to-byte v6, v6

    .line 191
    add-int/lit8 v4, v4, 0x4

    .line 192
    .line 193
    aput-byte v6, v0, v9

    .line 194
    .line 195
    add-int/lit8 v2, v2, 0x2

    .line 196
    .line 197
    goto/16 :goto_1

    .line 198
    .line 199
    :cond_3
    add-int/lit8 v6, v4, 0x1

    .line 200
    .line 201
    aput-byte v8, v0, v4

    .line 202
    .line 203
    add-int/lit8 v2, v2, 0x1

    .line 204
    .line 205
    move v4, v6

    .line 206
    goto/16 :goto_1

    .line 207
    .line 208
    :cond_4
    shr-int/lit8 v7, v6, 0xc

    .line 209
    .line 210
    or-int/lit16 v7, v7, 0xe0

    .line 211
    .line 212
    int-to-byte v7, v7

    .line 213
    add-int/lit8 v9, v4, 0x1

    .line 214
    .line 215
    aput-byte v7, v0, v4

    .line 216
    .line 217
    shr-int/lit8 v7, v6, 0x6

    .line 218
    .line 219
    and-int/2addr v7, v8

    .line 220
    or-int/2addr v7, v5

    .line 221
    int-to-byte v7, v7

    .line 222
    add-int/lit8 v8, v4, 0x2

    .line 223
    .line 224
    aput-byte v7, v0, v9

    .line 225
    .line 226
    and-int/lit8 v6, v6, 0x3f

    .line 227
    .line 228
    or-int/2addr v6, v5

    .line 229
    int-to-byte v6, v6

    .line 230
    add-int/lit8 v4, v4, 0x3

    .line 231
    .line 232
    aput-byte v6, v0, v8

    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_5
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    return-object p0

    .line 243
    :cond_6
    int-to-byte v3, v4

    .line 244
    aput-byte v3, v0, v2

    .line 245
    .line 246
    add-int/lit8 v2, v2, 0x1

    .line 247
    .line 248
    goto/16 :goto_0

    .line 249
    .line 250
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 251
    .line 252
    .line 253
    move-result p0

    .line 254
    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    return-object p0
.end method

.method public static final commonToUtf8String([BII)Ljava/lang/String;
    .locals 16
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    const/4 v4, 0x3

    .line 9
    const/4 v5, 0x2

    .line 10
    const/4 v6, 0x1

    .line 11
    const-string v7, "<this>"

    .line 12
    .line 13
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    if-ltz v1, :cond_19

    .line 17
    .line 18
    array-length v7, v0

    .line 19
    if-gt v2, v7, :cond_19

    .line 20
    .line 21
    if-gt v1, v2, :cond_19

    .line 22
    .line 23
    sub-int v7, v2, v1

    .line 24
    .line 25
    new-array v7, v7, [C

    .line 26
    .line 27
    const/4 v9, 0x0

    .line 28
    :goto_0
    if-ge v1, v2, :cond_18

    .line 29
    .line 30
    aget-byte v10, v0, v1

    .line 31
    .line 32
    if-ltz v10, :cond_1

    .line 33
    .line 34
    int-to-char v10, v10

    .line 35
    add-int/lit8 v11, v9, 0x1

    .line 36
    .line 37
    aput-char v10, v7, v9

    .line 38
    .line 39
    add-int/2addr v1, v6

    .line 40
    :goto_1
    if-ge v1, v2, :cond_0

    .line 41
    .line 42
    aget-byte v9, v0, v1

    .line 43
    .line 44
    if-ltz v9, :cond_0

    .line 45
    .line 46
    add-int/2addr v1, v6

    .line 47
    int-to-char v9, v9

    .line 48
    add-int/lit8 v10, v11, 0x1

    .line 49
    .line 50
    aput-char v9, v7, v11

    .line 51
    .line 52
    move v11, v10

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    :goto_2
    move v9, v11

    .line 55
    goto/16 :goto_11

    .line 56
    .line 57
    :cond_1
    shr-int/lit8 v11, v10, 0x5

    .line 58
    .line 59
    const/4 v12, -0x2

    .line 60
    const/16 v13, 0x80

    .line 61
    .line 62
    const v14, 0xfffd

    .line 63
    .line 64
    .line 65
    if-ne v11, v12, :cond_5

    .line 66
    .line 67
    add-int/lit8 v11, v1, 0x1

    .line 68
    .line 69
    if-gt v2, v11, :cond_2

    .line 70
    .line 71
    int-to-char v10, v14

    .line 72
    add-int/lit8 v11, v9, 0x1

    .line 73
    .line 74
    aput-char v10, v7, v9

    .line 75
    .line 76
    :goto_3
    const/4 v9, 0x1

    .line 77
    goto :goto_5

    .line 78
    :cond_2
    aget-byte v11, v0, v11

    .line 79
    .line 80
    and-int/lit16 v12, v11, 0xc0

    .line 81
    .line 82
    if-ne v12, v13, :cond_4

    .line 83
    .line 84
    xor-int/lit16 v11, v11, 0xf80

    .line 85
    .line 86
    shl-int/lit8 v10, v10, 0x6

    .line 87
    .line 88
    xor-int/2addr v10, v11

    .line 89
    if-ge v10, v13, :cond_3

    .line 90
    .line 91
    int-to-char v10, v14

    .line 92
    add-int/lit8 v11, v9, 0x1

    .line 93
    .line 94
    aput-char v10, v7, v9

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_3
    int-to-char v10, v10

    .line 98
    add-int/lit8 v11, v9, 0x1

    .line 99
    .line 100
    aput-char v10, v7, v9

    .line 101
    .line 102
    :goto_4
    const/4 v9, 0x2

    .line 103
    goto :goto_5

    .line 104
    :cond_4
    int-to-char v10, v14

    .line 105
    add-int/lit8 v11, v9, 0x1

    .line 106
    .line 107
    aput-char v10, v7, v9

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :goto_5
    add-int/2addr v1, v9

    .line 111
    goto :goto_2

    .line 112
    :cond_5
    shr-int/lit8 v11, v10, 0x4

    .line 113
    .line 114
    const v15, 0xe000

    .line 115
    .line 116
    .line 117
    const v3, 0xd800

    .line 118
    .line 119
    .line 120
    if-ne v11, v12, :cond_c

    .line 121
    .line 122
    add-int/lit8 v11, v1, 0x2

    .line 123
    .line 124
    if-gt v2, v11, :cond_7

    .line 125
    .line 126
    int-to-char v3, v14

    .line 127
    add-int/lit8 v10, v9, 0x1

    .line 128
    .line 129
    aput-char v3, v7, v9

    .line 130
    .line 131
    add-int/lit8 v3, v1, 0x1

    .line 132
    .line 133
    if-le v2, v3, :cond_6

    .line 134
    .line 135
    aget-byte v3, v0, v3

    .line 136
    .line 137
    and-int/lit16 v3, v3, 0xc0

    .line 138
    .line 139
    if-ne v3, v13, :cond_6

    .line 140
    .line 141
    :goto_6
    const/4 v3, 0x2

    .line 142
    goto :goto_a

    .line 143
    :cond_6
    :goto_7
    const/4 v3, 0x1

    .line 144
    goto :goto_a

    .line 145
    :cond_7
    add-int/lit8 v12, v1, 0x1

    .line 146
    .line 147
    aget-byte v12, v0, v12

    .line 148
    .line 149
    and-int/lit16 v8, v12, 0xc0

    .line 150
    .line 151
    if-ne v8, v13, :cond_b

    .line 152
    .line 153
    aget-byte v8, v0, v11

    .line 154
    .line 155
    and-int/lit16 v11, v8, 0xc0

    .line 156
    .line 157
    if-ne v11, v13, :cond_a

    .line 158
    .line 159
    const v11, -0x1e080

    .line 160
    .line 161
    .line 162
    xor-int/2addr v8, v11

    .line 163
    shl-int/lit8 v11, v12, 0x6

    .line 164
    .line 165
    xor-int/2addr v8, v11

    .line 166
    shl-int/lit8 v10, v10, 0xc

    .line 167
    .line 168
    xor-int/2addr v8, v10

    .line 169
    const/16 v10, 0x800

    .line 170
    .line 171
    if-ge v8, v10, :cond_8

    .line 172
    .line 173
    int-to-char v3, v14

    .line 174
    add-int/lit8 v8, v9, 0x1

    .line 175
    .line 176
    aput-char v3, v7, v9

    .line 177
    .line 178
    :goto_8
    move v10, v8

    .line 179
    goto :goto_9

    .line 180
    :cond_8
    if-gt v3, v8, :cond_9

    .line 181
    .line 182
    if-ge v8, v15, :cond_9

    .line 183
    .line 184
    int-to-char v3, v14

    .line 185
    add-int/lit8 v8, v9, 0x1

    .line 186
    .line 187
    aput-char v3, v7, v9

    .line 188
    .line 189
    goto :goto_8

    .line 190
    :cond_9
    int-to-char v3, v8

    .line 191
    add-int/lit8 v8, v9, 0x1

    .line 192
    .line 193
    aput-char v3, v7, v9

    .line 194
    .line 195
    goto :goto_8

    .line 196
    :goto_9
    const/4 v3, 0x3

    .line 197
    goto :goto_a

    .line 198
    :cond_a
    int-to-char v3, v14

    .line 199
    add-int/lit8 v10, v9, 0x1

    .line 200
    .line 201
    aput-char v3, v7, v9

    .line 202
    .line 203
    goto :goto_6

    .line 204
    :cond_b
    int-to-char v3, v14

    .line 205
    add-int/lit8 v10, v9, 0x1

    .line 206
    .line 207
    aput-char v3, v7, v9

    .line 208
    .line 209
    goto :goto_7

    .line 210
    :goto_a
    add-int/2addr v1, v3

    .line 211
    move v9, v10

    .line 212
    goto/16 :goto_11

    .line 213
    .line 214
    :cond_c
    shr-int/lit8 v8, v10, 0x3

    .line 215
    .line 216
    if-ne v8, v12, :cond_17

    .line 217
    .line 218
    add-int/lit8 v8, v1, 0x3

    .line 219
    .line 220
    if-gt v2, v8, :cond_f

    .line 221
    .line 222
    add-int/lit8 v3, v9, 0x1

    .line 223
    .line 224
    aput-char v14, v7, v9

    .line 225
    .line 226
    add-int/lit8 v8, v1, 0x1

    .line 227
    .line 228
    if-le v2, v8, :cond_e

    .line 229
    .line 230
    aget-byte v8, v0, v8

    .line 231
    .line 232
    and-int/lit16 v8, v8, 0xc0

    .line 233
    .line 234
    if-ne v8, v13, :cond_e

    .line 235
    .line 236
    add-int/lit8 v8, v1, 0x2

    .line 237
    .line 238
    if-le v2, v8, :cond_d

    .line 239
    .line 240
    aget-byte v8, v0, v8

    .line 241
    .line 242
    and-int/lit16 v8, v8, 0xc0

    .line 243
    .line 244
    if-ne v8, v13, :cond_d

    .line 245
    .line 246
    goto/16 :goto_f

    .line 247
    .line 248
    :cond_d
    :goto_b
    const/4 v4, 0x2

    .line 249
    goto/16 :goto_f

    .line 250
    .line 251
    :cond_e
    :goto_c
    const/4 v4, 0x1

    .line 252
    goto/16 :goto_f

    .line 253
    .line 254
    :cond_f
    add-int/lit8 v11, v1, 0x1

    .line 255
    .line 256
    aget-byte v11, v0, v11

    .line 257
    .line 258
    and-int/lit16 v12, v11, 0xc0

    .line 259
    .line 260
    if-ne v12, v13, :cond_16

    .line 261
    .line 262
    add-int/lit8 v12, v1, 0x2

    .line 263
    .line 264
    aget-byte v12, v0, v12

    .line 265
    .line 266
    and-int/lit16 v4, v12, 0xc0

    .line 267
    .line 268
    if-ne v4, v13, :cond_15

    .line 269
    .line 270
    aget-byte v4, v0, v8

    .line 271
    .line 272
    and-int/lit16 v8, v4, 0xc0

    .line 273
    .line 274
    if-ne v8, v13, :cond_14

    .line 275
    .line 276
    const v8, 0x381f80

    .line 277
    .line 278
    .line 279
    xor-int/2addr v4, v8

    .line 280
    shl-int/lit8 v8, v12, 0x6

    .line 281
    .line 282
    xor-int/2addr v4, v8

    .line 283
    shl-int/lit8 v8, v11, 0xc

    .line 284
    .line 285
    xor-int/2addr v4, v8

    .line 286
    shl-int/lit8 v8, v10, 0x12

    .line 287
    .line 288
    xor-int/2addr v4, v8

    .line 289
    const v8, 0x10ffff

    .line 290
    .line 291
    .line 292
    if-le v4, v8, :cond_10

    .line 293
    .line 294
    add-int/lit8 v3, v9, 0x1

    .line 295
    .line 296
    aput-char v14, v7, v9

    .line 297
    .line 298
    goto :goto_e

    .line 299
    :cond_10
    if-gt v3, v4, :cond_11

    .line 300
    .line 301
    if-ge v4, v15, :cond_11

    .line 302
    .line 303
    add-int/lit8 v3, v9, 0x1

    .line 304
    .line 305
    aput-char v14, v7, v9

    .line 306
    .line 307
    goto :goto_e

    .line 308
    :cond_11
    const/high16 v3, 0x10000

    .line 309
    .line 310
    if-ge v4, v3, :cond_12

    .line 311
    .line 312
    add-int/lit8 v3, v9, 0x1

    .line 313
    .line 314
    aput-char v14, v7, v9

    .line 315
    .line 316
    goto :goto_e

    .line 317
    :cond_12
    if-eq v4, v14, :cond_13

    .line 318
    .line 319
    ushr-int/lit8 v3, v4, 0xa

    .line 320
    .line 321
    const v8, 0xd7c0

    .line 322
    .line 323
    .line 324
    add-int/2addr v3, v8

    .line 325
    int-to-char v3, v3

    .line 326
    add-int/lit8 v8, v9, 0x1

    .line 327
    .line 328
    aput-char v3, v7, v9

    .line 329
    .line 330
    and-int/lit16 v3, v4, 0x3ff

    .line 331
    .line 332
    const v4, 0xdc00

    .line 333
    .line 334
    .line 335
    add-int/2addr v3, v4

    .line 336
    int-to-char v3, v3

    .line 337
    add-int/2addr v9, v5

    .line 338
    aput-char v3, v7, v8

    .line 339
    .line 340
    goto :goto_d

    .line 341
    :cond_13
    add-int/lit8 v3, v9, 0x1

    .line 342
    .line 343
    aput-char v14, v7, v9

    .line 344
    .line 345
    move v9, v3

    .line 346
    :goto_d
    move v3, v9

    .line 347
    :goto_e
    const/4 v4, 0x4

    .line 348
    goto :goto_f

    .line 349
    :cond_14
    add-int/lit8 v3, v9, 0x1

    .line 350
    .line 351
    aput-char v14, v7, v9

    .line 352
    .line 353
    const/4 v4, 0x3

    .line 354
    goto :goto_f

    .line 355
    :cond_15
    add-int/lit8 v3, v9, 0x1

    .line 356
    .line 357
    aput-char v14, v7, v9

    .line 358
    .line 359
    goto :goto_b

    .line 360
    :cond_16
    add-int/lit8 v3, v9, 0x1

    .line 361
    .line 362
    aput-char v14, v7, v9

    .line 363
    .line 364
    goto :goto_c

    .line 365
    :goto_f
    add-int/2addr v1, v4

    .line 366
    :goto_10
    move v9, v3

    .line 367
    goto :goto_11

    .line 368
    :cond_17
    add-int/lit8 v3, v9, 0x1

    .line 369
    .line 370
    aput-char v14, v7, v9

    .line 371
    .line 372
    add-int/2addr v1, v6

    .line 373
    goto :goto_10

    .line 374
    :goto_11
    const/4 v3, 0x4

    .line 375
    const/4 v4, 0x3

    .line 376
    goto/16 :goto_0

    .line 377
    .line 378
    :cond_18
    const/4 v1, 0x0

    .line 379
    invoke-static {v7, v1, v9}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->concatToString([CII)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    return-object v0

    .line 384
    :cond_19
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 385
    .line 386
    new-instance v4, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    const-string v5, "size="

    .line 389
    .line 390
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    array-length v0, v0

    .line 394
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    const-string v0, " beginIndex="

    .line 398
    .line 399
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    const-string v0, " endIndex="

    .line 406
    .line 407
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-direct {v3, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    throw v3
.end method

.method public static synthetic commonToUtf8String$default([BIIILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 7
    .line 8
    if-eqz p3, :cond_1

    .line 9
    .line 10
    array-length p2, p0

    .line 11
    :cond_1
    invoke-static {p0, p1, p2}, Lokio/internal/_Utf8Kt;->commonToUtf8String([BII)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
