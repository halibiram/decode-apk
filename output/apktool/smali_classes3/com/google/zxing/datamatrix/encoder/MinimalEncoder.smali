.class public final Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;,
        Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;,
        Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;,
        Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    }
.end annotation


# static fields
.field static final C40_SHIFT2_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x1b

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->C40_SHIFT2_CHARS:[C

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 2
        0x21s
        0x22s
        0x23s
        0x24s
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x2ds
        0x2es
        0x2fs
        0x3as
        0x3bs
        0x3cs
        0x3ds
        0x3es
        0x3fs
        0x40s
        0x5bs
        0x5cs
        0x5ds
        0x5es
        0x5fs
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

.method public static synthetic access$600(C)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isInC40Shift1Set(C)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$700(C)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isInTextShift1Set(C)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$800(CI)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isInC40Shift2Set(CI)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$900(CI)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isInTextShift2Set(CI)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->access$100(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->access$200(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v0, v1

    .line 10
    aget-object v1, p0, v0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getEndMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    aget-object v1, v1, v2

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    aget-object v1, p0, v0

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getEndMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    aget-object v1, v1, v2

    .line 35
    .line 36
    invoke-static {v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->access$300(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->access$300(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-le v1, v2, :cond_1

    .line 45
    .line 46
    :cond_0
    aget-object p0, p0, v0

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getEndMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    aput-object p1, p0, v0

    .line 57
    .line 58
    :cond_1
    return-void
.end method

.method public static addEdges(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;[[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;ILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V
    .locals 17

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move/from16 v9, p2

    .line 6
    .line 7
    const/4 v10, 0x0

    .line 8
    const/4 v11, 0x3

    .line 9
    const/4 v12, 0x2

    .line 10
    const/4 v13, 0x1

    .line 11
    invoke-virtual {v7, v9}, Lcom/google/zxing/common/MinimalECIInput;->isECI(I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v10, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    .line 18
    .line 19
    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    const/4 v6, 0x0

    .line 23
    move-object v0, v10

    .line 24
    move-object/from16 v1, p0

    .line 25
    .line 26
    move/from16 v3, p2

    .line 27
    .line 28
    move-object/from16 v5, p3

    .line 29
    .line 30
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v8, v10}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    invoke-virtual {v7, v9}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz p3, :cond_1

    .line 42
    .line 43
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getEndMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->EDF:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 48
    .line 49
    if-eq v1, v2, :cond_7

    .line 50
    .line 51
    :cond_1
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    invoke-virtual {v7, v9, v12}, Lcom/google/zxing/common/MinimalECIInput;->haveNCharacters(II)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    add-int/lit8 v0, v9, 0x1

    .line 64
    .line 65
    invoke-virtual {v7, v0}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    new-instance v14, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    .line 76
    .line 77
    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 78
    .line 79
    const/4 v4, 0x2

    .line 80
    const/4 v6, 0x0

    .line 81
    move-object v0, v14

    .line 82
    move-object/from16 v1, p0

    .line 83
    .line 84
    move/from16 v3, p2

    .line 85
    .line 86
    move-object/from16 v5, p3

    .line 87
    .line 88
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v8, v14}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    new-instance v14, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    .line 96
    .line 97
    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 98
    .line 99
    const/4 v4, 0x1

    .line 100
    const/4 v6, 0x0

    .line 101
    move-object v0, v14

    .line 102
    move-object/from16 v1, p0

    .line 103
    .line 104
    move/from16 v3, p2

    .line 105
    .line 106
    move-object/from16 v5, p3

    .line 107
    .line 108
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;)V

    .line 109
    .line 110
    .line 111
    invoke-static {v8, v14}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    .line 112
    .line 113
    .line 114
    :goto_0
    new-array v14, v12, [Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 115
    .line 116
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->C40:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 117
    .line 118
    aput-object v0, v14, v10

    .line 119
    .line 120
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->TEXT:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 121
    .line 122
    aput-object v0, v14, v13

    .line 123
    .line 124
    const/4 v15, 0x0

    .line 125
    :goto_1
    if-ge v15, v12, :cond_5

    .line 126
    .line 127
    aget-object v2, v14, v15

    .line 128
    .line 129
    new-array v0, v13, [I

    .line 130
    .line 131
    sget-object v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->C40:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 132
    .line 133
    if-ne v2, v1, :cond_3

    .line 134
    .line 135
    const/4 v1, 0x1

    .line 136
    goto :goto_2

    .line 137
    :cond_3
    const/4 v1, 0x0

    .line 138
    :goto_2
    invoke-static {v7, v9, v1, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->getNumberOfC40Words(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;IZ[I)I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-lez v1, :cond_4

    .line 143
    .line 144
    new-instance v6, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    .line 145
    .line 146
    aget v4, v0, v10

    .line 147
    .line 148
    const/16 v16, 0x0

    .line 149
    .line 150
    move-object v0, v6

    .line 151
    move-object/from16 v1, p0

    .line 152
    .line 153
    move/from16 v3, p2

    .line 154
    .line 155
    move-object/from16 v5, p3

    .line 156
    .line 157
    move-object v10, v6

    .line 158
    move-object/from16 v6, v16

    .line 159
    .line 160
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;)V

    .line 161
    .line 162
    .line 163
    invoke-static {v8, v10}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    .line 164
    .line 165
    .line 166
    :cond_4
    add-int/2addr v15, v13

    .line 167
    const/4 v10, 0x0

    .line 168
    goto :goto_1

    .line 169
    :cond_5
    invoke-virtual {v7, v9, v11}, Lcom/google/zxing/common/MinimalECIInput;->haveNCharacters(II)Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-eqz v0, :cond_6

    .line 174
    .line 175
    invoke-virtual {v7, v9}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_6

    .line 184
    .line 185
    add-int/lit8 v0, v9, 0x1

    .line 186
    .line 187
    invoke-virtual {v7, v0}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-eqz v0, :cond_6

    .line 196
    .line 197
    add-int/lit8 v0, v9, 0x2

    .line 198
    .line 199
    invoke-virtual {v7, v0}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_6

    .line 208
    .line 209
    new-instance v10, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    .line 210
    .line 211
    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->X12:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 212
    .line 213
    const/4 v4, 0x3

    .line 214
    const/4 v6, 0x0

    .line 215
    move-object v0, v10

    .line 216
    move-object/from16 v1, p0

    .line 217
    .line 218
    move/from16 v3, p2

    .line 219
    .line 220
    move-object/from16 v5, p3

    .line 221
    .line 222
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;)V

    .line 223
    .line 224
    .line 225
    invoke-static {v8, v10}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    .line 226
    .line 227
    .line 228
    :cond_6
    new-instance v10, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    .line 229
    .line 230
    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->B256:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 231
    .line 232
    const/4 v4, 0x1

    .line 233
    const/4 v6, 0x0

    .line 234
    move-object v0, v10

    .line 235
    move-object/from16 v1, p0

    .line 236
    .line 237
    move/from16 v3, p2

    .line 238
    .line 239
    move-object/from16 v5, p3

    .line 240
    .line 241
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;)V

    .line 242
    .line 243
    .line 244
    invoke-static {v8, v10}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    .line 245
    .line 246
    .line 247
    :cond_7
    const/4 v10, 0x0

    .line 248
    :goto_3
    if-ge v10, v11, :cond_8

    .line 249
    .line 250
    add-int v0, v9, v10

    .line 251
    .line 252
    invoke-virtual {v7, v0, v13}, Lcom/google/zxing/common/MinimalECIInput;->haveNCharacters(II)Z

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-eqz v1, :cond_8

    .line 257
    .line 258
    invoke-virtual {v7, v0}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeEDIFACT(C)Z

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    if-eqz v0, :cond_8

    .line 267
    .line 268
    new-instance v12, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    .line 269
    .line 270
    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->EDF:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 271
    .line 272
    add-int/2addr v10, v13

    .line 273
    const/4 v6, 0x0

    .line 274
    move-object v0, v12

    .line 275
    move-object/from16 v1, p0

    .line 276
    .line 277
    move/from16 v3, p2

    .line 278
    .line 279
    move v4, v10

    .line 280
    move-object/from16 v5, p3

    .line 281
    .line 282
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;)V

    .line 283
    .line 284
    .line 285
    invoke-static {v8, v12}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    .line 286
    .line 287
    .line 288
    goto :goto_3

    .line 289
    :cond_8
    if-ne v10, v11, :cond_9

    .line 290
    .line 291
    const/4 v0, 0x4

    .line 292
    invoke-virtual {v7, v9, v0}, Lcom/google/zxing/common/MinimalECIInput;->haveNCharacters(II)Z

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-eqz v0, :cond_9

    .line 297
    .line 298
    add-int/lit8 v0, v9, 0x3

    .line 299
    .line 300
    invoke-virtual {v7, v0}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeEDIFACT(C)Z

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    if-eqz v0, :cond_9

    .line 309
    .line 310
    new-instance v10, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    .line 311
    .line 312
    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->EDF:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 313
    .line 314
    const/4 v4, 0x4

    .line 315
    const/4 v6, 0x0

    .line 316
    move-object v0, v10

    .line 317
    move-object/from16 v1, p0

    .line 318
    .line 319
    move/from16 v3, p2

    .line 320
    .line 321
    move-object/from16 v5, p3

    .line 322
    .line 323
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;)V

    .line 324
    .line 325
    .line 326
    invoke-static {v8, v10}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    .line 327
    .line 328
    .line 329
    :cond_9
    return-void
.end method

.method public static encode(Ljava/lang/String;Ljava/nio/charset/Charset;ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;I)[B
    .locals 8

    .line 1
    new-instance v7, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    move-object v0, v7

    .line 5
    move-object v1, p0

    .line 6
    move-object v2, p1

    .line 7
    move v3, p2

    .line 8
    move-object v4, p3

    .line 9
    move v5, p4

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;ILcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v7}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->encodeMinimally(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;)Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;->getBytes()[B

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static encodeHighLevel(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, -0x1

    .line 1
    sget-object v1, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->encodeHighLevel(Ljava/lang/String;Ljava/nio/charset/Charset;ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeHighLevel(Ljava/lang/String;Ljava/nio/charset/Charset;ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)Ljava/lang/String;
    .locals 3

    .line 2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_1

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_2

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x5

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_3

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_4

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_5

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    :goto_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;I)[B

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    :array_0
    .array-data 8
        -0x5d28a31a3a8f8c6dL    # -7.663522474708825E-141
        0x1081cfa58910f5d8L
    .end array-data

    :array_1
    .array-data 8
        0x2d303ee0c4b470cbL    # 4.984453325201394E-91
        -0x553b5be6fedaf548L    # -1.15197315509074E-102
    .end array-data

    :array_2
    .array-data 8
        0x100feb5f083a2bddL
        0x2b9b81b0ea2dd10aL    # 1.2575881421988415E-98
    .end array-data

    :array_3
    .array-data 8
        -0x7ab1ae07ab835a7dL
        -0x211c5613a7850be6L    # -1.2571714024291434E149
    .end array-data

    :array_4
    .array-data 8
        -0x45e9965989a986f0L    # -7.072199944821007E-29
        -0x7bef10038a483e36L    # -4.3450231469089E-289
    .end array-data

    :array_5
    .array-data 8
        -0x492b81794b612ea2L    # -1.4359275582146832E-44
        0x30a23b0d796a6b15L    # 2.0152726600957014E-74
    .end array-data
.end method

.method public static encodeMinimally(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;)Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/common/MinimalECIInput;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    add-int/lit8 v2, v0, 0x1

    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    new-array v4, v3, [I

    .line 10
    .line 11
    const/4 v5, 0x6

    .line 12
    aput v5, v4, v1

    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    aput v2, v4, v6

    .line 16
    .line 17
    const-class v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    .line 18
    .line 19
    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, [[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-static {p0, v2, v6, v4}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdges(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;[[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;ILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    .line 27
    .line 28
    .line 29
    const/4 v7, 0x1

    .line 30
    :goto_0
    if-gt v7, v0, :cond_3

    .line 31
    .line 32
    const/4 v8, 0x0

    .line 33
    :goto_1
    if-ge v8, v5, :cond_1

    .line 34
    .line 35
    aget-object v9, v2, v7

    .line 36
    .line 37
    aget-object v9, v9, v8

    .line 38
    .line 39
    if-eqz v9, :cond_0

    .line 40
    .line 41
    if-ge v7, v0, :cond_0

    .line 42
    .line 43
    invoke-static {p0, v2, v7, v9}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdges(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;[[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;ILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    add-int/2addr v8, v1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const/4 v8, 0x0

    .line 49
    :goto_2
    if-ge v8, v5, :cond_2

    .line 50
    .line 51
    add-int/lit8 v9, v7, -0x1

    .line 52
    .line 53
    aget-object v9, v2, v9

    .line 54
    .line 55
    aput-object v4, v9, v8

    .line 56
    .line 57
    add-int/2addr v8, v1

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    add-int/2addr v7, v1

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    const/4 v4, -0x1

    .line 62
    const v7, 0x7fffffff

    .line 63
    .line 64
    .line 65
    :goto_3
    if-ge v6, v5, :cond_6

    .line 66
    .line 67
    aget-object v8, v2, v0

    .line 68
    .line 69
    aget-object v8, v8, v6

    .line 70
    .line 71
    if-eqz v8, :cond_5

    .line 72
    .line 73
    if-lt v6, v1, :cond_4

    .line 74
    .line 75
    const/4 v9, 0x3

    .line 76
    if-gt v6, v9, :cond_4

    .line 77
    .line 78
    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->access$300(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)I

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    add-int/2addr v8, v1

    .line 83
    goto :goto_4

    .line 84
    :cond_4
    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->access$300(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)I

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    :goto_4
    if-ge v8, v7, :cond_5

    .line 89
    .line 90
    move v4, v6

    .line 91
    move v7, v8

    .line 92
    :cond_5
    add-int/2addr v6, v1

    .line 93
    goto :goto_3

    .line 94
    :cond_6
    if-ltz v4, :cond_7

    .line 95
    .line 96
    new-instance p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;

    .line 97
    .line 98
    aget-object v0, v2, v0

    .line 99
    .line 100
    aget-object v0, v0, v4

    .line 101
    .line 102
    invoke-direct {p0, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    .line 103
    .line 104
    .line 105
    return-object p0

    .line 106
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 107
    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 114
    .line 115
    const/4 v4, 0x4

    .line 116
    new-array v4, v4, [J

    .line 117
    .line 118
    fill-array-data v4, :array_0

    .line 119
    .line 120
    .line 121
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 135
    .line 136
    new-array v2, v3, [J

    .line 137
    .line 138
    fill-array-data v2, :array_1

    .line 139
    .line 140
    .line 141
    invoke-direct {p0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 142
    .line 143
    .line 144
    invoke-static {p0, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw v0

    .line 152
    nop

    .line 153
    :array_0
    .array-data 8
        0x50a8000096bc5923L    # 3.5571343130053093E80
        0x5a34324d93a19b43L    # 3.417859681030115E126
        -0x22edc674634a8418L    # -2.170303384038978E140
        -0x544fc7bdc8ac1e24L    # -2.9662370562429315E-98
    .end array-data

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
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
        0x7cb5e66a9fb2766aL    # 5.463628926422291E292
        0x264fa31cfb0b0415L    # 3.738946952522387E-124
    .end array-data
.end method

.method public static getNumberOfC40Words(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;IZ[I)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, p1

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/common/MinimalECIInput;->length()I

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    if-ge v1, v3, :cond_a

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/MinimalECIInput;->isECI(I)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    aput v0, p3, v0

    .line 17
    .line 18
    return v0

    .line 19
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeC40(C)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_2

    .line 30
    .line 31
    :cond_1
    if-nez p2, :cond_3

    .line 32
    .line 33
    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeText(C)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_3

    .line 38
    .line 39
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_3
    invoke-virtual {p0}, Lcom/google/zxing/common/MinimalECIInput;->getFNC1Character()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    invoke-static {v3, v4}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isExtendedASCII(CI)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_4

    .line 51
    .line 52
    add-int/lit8 v2, v2, 0x2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_4
    and-int/lit16 v3, v3, 0xff

    .line 56
    .line 57
    const/16 v4, 0x80

    .line 58
    .line 59
    if-lt v3, v4, :cond_7

    .line 60
    .line 61
    if-eqz p2, :cond_5

    .line 62
    .line 63
    add-int/lit8 v4, v3, -0x80

    .line 64
    .line 65
    int-to-char v4, v4

    .line 66
    invoke-static {v4}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeC40(C)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-nez v4, :cond_6

    .line 71
    .line 72
    :cond_5
    if-nez p2, :cond_7

    .line 73
    .line 74
    add-int/lit8 v3, v3, -0x80

    .line 75
    .line 76
    int-to-char v3, v3

    .line 77
    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeText(C)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_7

    .line 82
    .line 83
    :cond_6
    add-int/lit8 v2, v2, 0x3

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_7
    add-int/lit8 v2, v2, 0x4

    .line 87
    .line 88
    :goto_1
    rem-int/lit8 v3, v2, 0x3

    .line 89
    .line 90
    if-eqz v3, :cond_9

    .line 91
    .line 92
    add-int/lit8 v3, v2, -0x2

    .line 93
    .line 94
    rem-int/lit8 v3, v3, 0x3

    .line 95
    .line 96
    if-nez v3, :cond_8

    .line 97
    .line 98
    add-int/lit8 v3, v1, 0x1

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/google/zxing/common/MinimalECIInput;->length()I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-ne v3, v4, :cond_8

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_9
    :goto_2
    sub-int/2addr v1, p1

    .line 111
    add-int/lit8 v1, v1, 0x1

    .line 112
    .line 113
    aput v1, p3, v0

    .line 114
    .line 115
    int-to-double p0, v2

    .line 116
    const-wide/high16 p2, 0x4008000000000000L    # 3.0

    .line 117
    .line 118
    div-double/2addr p0, p2

    .line 119
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    .line 120
    .line 121
    .line 122
    move-result-wide p0

    .line 123
    double-to-int p0, p0

    .line 124
    return p0

    .line 125
    :cond_a
    aput v0, p3, v0

    .line 126
    .line 127
    return v0
.end method

.method public static isExtendedASCII(CI)Z
    .locals 0

    if-eq p0, p1, :cond_0

    const/16 p1, 0x80

    if-lt p0, p1, :cond_0

    const/16 p1, 0xff

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isInC40Shift1Set(C)Z
    .locals 1

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isInC40Shift2Set(CI)Z
    .locals 6

    .line 1
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->C40_SHIFT2_CHARS:[C

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    const/4 v4, 0x1

    .line 7
    if-ge v3, v1, :cond_1

    .line 8
    .line 9
    aget-char v5, v0, v3

    .line 10
    .line 11
    if-ne v5, p0, :cond_0

    .line 12
    .line 13
    return v4

    .line 14
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    if-ne p0, p1, :cond_2

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    :cond_2
    return v2
.end method

.method private static isInTextShift1Set(C)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isInC40Shift1Set(C)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static isInTextShift2Set(CI)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isInC40Shift2Set(CI)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method
