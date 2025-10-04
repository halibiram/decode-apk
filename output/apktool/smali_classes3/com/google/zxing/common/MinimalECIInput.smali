.class public Lcom/google/zxing/common/MinimalECIInput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/common/ECIInput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/common/MinimalECIInput$InputEdge;
    }
.end annotation


# static fields
.field private static final COST_PER_ECI:I = 0x3


# instance fields
.field private final bytes:[I

.field private final fnc1:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/google/zxing/common/MinimalECIInput;->fnc1:I

    .line 5
    .line 6
    new-instance v0, Lcom/google/zxing/common/ECIEncoderSet;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2, p3}, Lcom/google/zxing/common/ECIEncoderSet;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/zxing/common/ECIEncoderSet;->length()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne p2, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    new-array p2, p2, [I

    .line 23
    .line 24
    iput-object p2, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    :goto_0
    iget-object v0, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    .line 28
    .line 29
    array-length v0, v0

    .line 30
    if-ge p2, v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-object v1, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    .line 37
    .line 38
    if-ne v0, p3, :cond_0

    .line 39
    .line 40
    const/16 v0, 0x3e8

    .line 41
    .line 42
    :cond_0
    aput v0, v1, p2

    .line 43
    .line 44
    add-int/lit8 p2, p2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-static {p1, v0, p3}, Lcom/google/zxing/common/MinimalECIInput;->encodeMinimally(Ljava/lang/String;Lcom/google/zxing/common/ECIEncoderSet;I)[I

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    .line 52
    .line 53
    :cond_2
    return-void
.end method

.method public static addEdge([[Lcom/google/zxing/common/MinimalECIInput$InputEdge;ILcom/google/zxing/common/MinimalECIInput$InputEdge;)V
    .locals 2

    .line 1
    aget-object v0, p0, p1

    .line 2
    .line 3
    invoke-static {p2}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$000(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget-object v0, v0, v1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    aget-object v0, p0, p1

    .line 12
    .line 13
    invoke-static {p2}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$000(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    aget-object v0, v0, v1

    .line 18
    .line 19
    invoke-static {v0}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$100(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {p2}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$100(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-le v0, v1, :cond_1

    .line 28
    .line 29
    :cond_0
    aget-object p0, p0, p1

    .line 30
    .line 31
    invoke-static {p2}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$000(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    aput-object p2, p0, p1

    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public static addEdges(Ljava/lang/String;Lcom/google/zxing/common/ECIEncoderSet;[[Lcom/google/zxing/common/MinimalECIInput$InputEdge;ILcom/google/zxing/common/MinimalECIInput$InputEdge;I)V
    .locals 15

    .line 1
    move-object/from16 v7, p1

    .line 2
    .line 3
    move/from16 v8, p3

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    move/from16 v9, p5

    .line 7
    .line 8
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    .line 9
    .line 10
    .line 11
    move-result v10

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/ECIEncoderSet;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/ECIEncoderSet;->getPriorityEncoderIndex()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-ltz v1, :cond_1

    .line 21
    .line 22
    if-eq v10, v9, :cond_0

    .line 23
    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/ECIEncoderSet;->getPriorityEncoderIndex()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {v7, v10, v1}, Lcom/google/zxing/common/ECIEncoderSet;->canEncode(CI)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/ECIEncoderSet;->getPriorityEncoderIndex()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    add-int/lit8 v1, v0, 0x1

    .line 39
    .line 40
    move v11, v1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v1, 0x0

    .line 43
    move v11, v0

    .line 44
    const/4 v0, 0x0

    .line 45
    :goto_0
    move v12, v0

    .line 46
    :goto_1
    if-ge v12, v11, :cond_4

    .line 47
    .line 48
    if-eq v10, v9, :cond_3

    .line 49
    .line 50
    invoke-virtual {v7, v10, v12}, Lcom/google/zxing/common/ECIEncoderSet;->canEncode(CI)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    move-object/from16 v0, p2

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_3
    :goto_2
    add-int/lit8 v13, v8, 0x1

    .line 61
    .line 62
    new-instance v14, Lcom/google/zxing/common/MinimalECIInput$InputEdge;

    .line 63
    .line 64
    const/4 v6, 0x0

    .line 65
    move-object v0, v14

    .line 66
    move v1, v10

    .line 67
    move-object/from16 v2, p1

    .line 68
    .line 69
    move v3, v12

    .line 70
    move-object/from16 v4, p4

    .line 71
    .line 72
    move/from16 v5, p5

    .line 73
    .line 74
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;-><init>(CLcom/google/zxing/common/ECIEncoderSet;ILcom/google/zxing/common/MinimalECIInput$InputEdge;ILcom/google/zxing/common/MinimalECIInput$1;)V

    .line 75
    .line 76
    .line 77
    move-object/from16 v0, p2

    .line 78
    .line 79
    invoke-static {v0, v13, v14}, Lcom/google/zxing/common/MinimalECIInput;->addEdge([[Lcom/google/zxing/common/MinimalECIInput$InputEdge;ILcom/google/zxing/common/MinimalECIInput$InputEdge;)V

    .line 80
    .line 81
    .line 82
    :goto_3
    add-int/lit8 v12, v12, 0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    return-void
.end method

.method public static encodeMinimally(Ljava/lang/String;Lcom/google/zxing/common/ECIEncoderSet;I)[I
    .locals 15

    .line 1
    move-object/from16 v6, p1

    .line 2
    .line 3
    const/4 v7, -0x1

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v8

    .line 8
    const/4 v9, 0x1

    .line 9
    add-int/lit8 v0, v8, 0x1

    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/ECIEncoderSet;->length()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v10, 0x2

    .line 16
    new-array v2, v10, [I

    .line 17
    .line 18
    aput v1, v2, v9

    .line 19
    .line 20
    const/4 v11, 0x0

    .line 21
    aput v0, v2, v11

    .line 22
    .line 23
    const-class v0, Lcom/google/zxing/common/MinimalECIInput$InputEdge;

    .line 24
    .line 25
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    move-object v12, v0

    .line 30
    check-cast v12, [[Lcom/google/zxing/common/MinimalECIInput$InputEdge;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x0

    .line 34
    move-object v0, p0

    .line 35
    move-object/from16 v1, p1

    .line 36
    .line 37
    move-object v2, v12

    .line 38
    move/from16 v5, p2

    .line 39
    .line 40
    invoke-static/range {v0 .. v5}, Lcom/google/zxing/common/MinimalECIInput;->addEdges(Ljava/lang/String;Lcom/google/zxing/common/ECIEncoderSet;[[Lcom/google/zxing/common/MinimalECIInput$InputEdge;ILcom/google/zxing/common/MinimalECIInput$InputEdge;I)V

    .line 41
    .line 42
    .line 43
    const/4 v13, 0x1

    .line 44
    :goto_0
    if-gt v13, v8, :cond_3

    .line 45
    .line 46
    const/4 v14, 0x0

    .line 47
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/ECIEncoderSet;->length()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-ge v14, v0, :cond_1

    .line 52
    .line 53
    aget-object v0, v12, v13

    .line 54
    .line 55
    aget-object v4, v0, v14

    .line 56
    .line 57
    if-eqz v4, :cond_0

    .line 58
    .line 59
    if-ge v13, v8, :cond_0

    .line 60
    .line 61
    move-object v0, p0

    .line 62
    move-object/from16 v1, p1

    .line 63
    .line 64
    move-object v2, v12

    .line 65
    move v3, v13

    .line 66
    move/from16 v5, p2

    .line 67
    .line 68
    invoke-static/range {v0 .. v5}, Lcom/google/zxing/common/MinimalECIInput;->addEdges(Ljava/lang/String;Lcom/google/zxing/common/ECIEncoderSet;[[Lcom/google/zxing/common/MinimalECIInput$InputEdge;ILcom/google/zxing/common/MinimalECIInput$InputEdge;I)V

    .line 69
    .line 70
    .line 71
    :cond_0
    add-int/2addr v14, v9

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    const/4 v0, 0x0

    .line 74
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/ECIEncoderSet;->length()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-ge v0, v1, :cond_2

    .line 79
    .line 80
    add-int/lit8 v1, v13, -0x1

    .line 81
    .line 82
    aget-object v1, v12, v1

    .line 83
    .line 84
    const/4 v2, 0x0

    .line 85
    aput-object v2, v1, v0

    .line 86
    .line 87
    add-int/2addr v0, v9

    .line 88
    goto :goto_2

    .line 89
    :cond_2
    add-int/2addr v13, v9

    .line 90
    goto :goto_0

    .line 91
    :cond_3
    const v0, 0x7fffffff

    .line 92
    .line 93
    .line 94
    const/4 v1, 0x0

    .line 95
    const/4 v2, -0x1

    .line 96
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/ECIEncoderSet;->length()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-ge v1, v3, :cond_5

    .line 101
    .line 102
    aget-object v3, v12, v8

    .line 103
    .line 104
    aget-object v3, v3, v1

    .line 105
    .line 106
    if-eqz v3, :cond_4

    .line 107
    .line 108
    invoke-static {v3}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$100(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-ge v4, v0, :cond_4

    .line 113
    .line 114
    invoke-static {v3}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$100(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    move v2, v1

    .line 119
    :cond_4
    add-int/2addr v1, v9

    .line 120
    goto :goto_3

    .line 121
    :cond_5
    if-ltz v2, :cond_c

    .line 122
    .line 123
    new-instance v0, Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .line 127
    .line 128
    aget-object v1, v12, v8

    .line 129
    .line 130
    aget-object v1, v1, v2

    .line 131
    .line 132
    :goto_4
    if-eqz v1, :cond_a

    .line 133
    .line 134
    invoke-virtual {v1}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->isFNC1()Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_6

    .line 139
    .line 140
    const/16 v2, 0x3e8

    .line 141
    .line 142
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v0, v11, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    goto :goto_6

    .line 150
    :cond_6
    invoke-static {v1}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$300(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)C

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    invoke-static {v1}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$000(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    invoke-virtual {v6, v2, v3}, Lcom/google/zxing/common/ECIEncoderSet;->encode(CI)[B

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    array-length v3, v2

    .line 163
    sub-int/2addr v3, v9

    .line 164
    :goto_5
    if-ltz v3, :cond_7

    .line 165
    .line 166
    aget-byte v4, v2, v3

    .line 167
    .line 168
    and-int/lit16 v4, v4, 0xff

    .line 169
    .line 170
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    invoke-virtual {v0, v11, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    add-int/2addr v3, v7

    .line 178
    goto :goto_5

    .line 179
    :cond_7
    :goto_6
    invoke-static {v1}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$400(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)Lcom/google/zxing/common/MinimalECIInput$InputEdge;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    if-nez v2, :cond_8

    .line 184
    .line 185
    const/4 v2, 0x0

    .line 186
    goto :goto_7

    .line 187
    :cond_8
    invoke-static {v1}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$400(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)Lcom/google/zxing/common/MinimalECIInput$InputEdge;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-static {v2}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$000(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    :goto_7
    invoke-static {v1}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$000(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)I

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    if-eq v2, v3, :cond_9

    .line 200
    .line 201
    invoke-static {v1}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$000(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    invoke-virtual {v6, v2}, Lcom/google/zxing/common/ECIEncoderSet;->getECIValue(I)I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    add-int/lit16 v2, v2, 0x100

    .line 210
    .line 211
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-virtual {v0, v11, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    :cond_9
    invoke-static {v1}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$400(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)Lcom/google/zxing/common/MinimalECIInput$InputEdge;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    goto :goto_4

    .line 223
    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    new-array v2, v1, [I

    .line 228
    .line 229
    :goto_8
    if-ge v11, v1, :cond_b

    .line 230
    .line 231
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    check-cast v3, Ljava/lang/Integer;

    .line 236
    .line 237
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    aput v3, v2, v11

    .line 242
    .line 243
    add-int/2addr v11, v9

    .line 244
    goto :goto_8

    .line 245
    :cond_b
    return-object v2

    .line 246
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 247
    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .line 252
    .line 253
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 254
    .line 255
    const/4 v3, 0x4

    .line 256
    new-array v3, v3, [J

    .line 257
    .line 258
    fill-array-data v3, :array_0

    .line 259
    .line 260
    .line 261
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    move-object v2, p0

    .line 272
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 276
    .line 277
    new-array v3, v10, [J

    .line 278
    .line 279
    fill-array-data v3, :array_1

    .line 280
    .line 281
    .line 282
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 283
    .line 284
    .line 285
    invoke-static {v2, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    throw v0

    .line 293
    :array_0
    .array-data 8
        0x48714036a4e79607L    # 9.392247292927778E40
        0x418aaff0cedfa445L    # 5.596725785920004E7
        -0xf4496042aeebae7L    # -1.0895546696618812E235
        -0x3714152fa47facc9L    # -1.945547798833524E43
    .end array-data

    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
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
    :array_1
    .array-data 8
        -0x6474f7bf2d3ad68bL    # -5.336721823044933E-176
        0x11ed77fc7756bc48L
    .end array-data
.end method


# virtual methods
.method public charAt(I)C
    .locals 7

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/zxing/common/MinimalECIInput;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ge p1, v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/MinimalECIInput;->isECI(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/MinimalECIInput;->isFNC1(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget p1, p0, Lcom/google/zxing/common/MinimalECIInput;->fnc1:I

    .line 22
    .line 23
    :goto_0
    int-to-char p1, p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    .line 26
    .line 27
    aget p1, v0, p1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :goto_1
    return p1

    .line 31
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    const/4 v3, 0x3

    .line 41
    new-array v3, v3, [J

    .line 42
    .line 43
    fill-array-data v3, :array_0

    .line 44
    .line 45
    .line 46
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    const/4 v2, 0x5

    .line 62
    new-array v2, v2, [J

    .line 63
    .line 64
    fill-array-data v2, :array_1

    .line 65
    .line 66
    .line 67
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 68
    .line 69
    .line 70
    invoke-static {p1, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v0

    .line 78
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 79
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 86
    .line 87
    const/4 v3, 0x1

    .line 88
    new-array v3, v3, [J

    .line 89
    .line 90
    const-wide v4, 0x2967d48fd42433ffL

    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    const/4 v6, 0x0

    .line 96
    aput-wide v4, v3, v6

    .line 97
    .line 98
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 99
    .line 100
    .line 101
    invoke-static {v2, v1, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v0

    .line 109
    :array_0
    .array-data 8
        0x14587a6f9029a272L
        -0x2e0fac5e493e71eaL    # -5.074775296635303E86
        -0x2e7765db6b75fea7L    # -5.974221813555276E84
    .end array-data

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    :array_1
    .array-data 8
        0xd7aaa951912210dL
        -0x38728b8b12a045a9L    # -4.894036234945936E36
        0x252b07b4a6c60c4dL
        0xa93c92ba6b5c3d3L
        0x4a2d777c3b62d546L    # 2.1532843924992435E49
    .end array-data
.end method

.method public getECIValue(I)I
    .locals 7

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/zxing/common/MinimalECIInput;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ge p1, v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/MinimalECIInput;->isECI(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    .line 16
    .line 17
    aget p1, v0, p1

    .line 18
    .line 19
    add-int/lit16 p1, p1, -0x100

    .line 20
    .line 21
    return p1

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    const/4 v3, 0x3

    .line 32
    new-array v3, v3, [J

    .line 33
    .line 34
    fill-array-data v3, :array_0

    .line 35
    .line 36
    .line 37
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    const/4 v2, 0x5

    .line 53
    new-array v2, v2, [J

    .line 54
    .line 55
    fill-array-data v2, :array_1

    .line 56
    .line 57
    .line 58
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-static {p1, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 70
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    const/4 v3, 0x1

    .line 79
    new-array v3, v3, [J

    .line 80
    .line 81
    const-wide v4, -0x5c3526f08e89e06fL    # -2.885772983963267E-136

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    const/4 v6, 0x0

    .line 87
    aput-wide v4, v3, v6

    .line 88
    .line 89
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-static {v2, v1, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw v0

    .line 100
    nop

    .line 101
    :array_0
    .array-data 8
        0x111b2f1cb9e9a09fL    # 2.868779331874051E-226
        -0x44e2018ec15d5255L    # -6.202596344184656E-24
        0x3dc3a4ce482bf02aL    # 3.5731814227458825E-11
    .end array-data

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    :array_1
    .array-data 8
        0x72b1852b3576261L
        0x63183be78b7cb49fL    # 2.2864553090912298E169
        0x234c3631977ff728L    # 1.184516665577821E-138
        0x54bff82fe3cbcf2eL    # 1.74813174803092E100
        -0x6cbfea1b5438f40cL    # -5.832681150061561E-216
    .end array-data
.end method

.method public getFNC1Character()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/common/MinimalECIInput;->fnc1:I

    .line 2
    .line 3
    return v0
.end method

.method public haveNCharacters(II)Z
    .locals 4

    .line 1
    add-int v0, p1, p2

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sub-int/2addr v0, v1

    .line 5
    iget-object v2, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    .line 6
    .line 7
    array-length v2, v2

    .line 8
    const/4 v3, 0x0

    .line 9
    if-lt v0, v2, :cond_0

    .line 10
    .line 11
    return v3

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-ge v0, p2, :cond_2

    .line 14
    .line 15
    add-int v2, p1, v0

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/MinimalECIInput;->isECI(I)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    return v3

    .line 24
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    return v1
.end method

.method public isECI(I)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ltz p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/zxing/common/MinimalECIInput;->length()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge p1, v2, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    .line 12
    .line 13
    aget p1, v2, p1

    .line 14
    .line 15
    const/16 v2, 0xff

    .line 16
    .line 17
    if-le p1, v2, :cond_0

    .line 18
    .line 19
    const/16 v2, 0x3e7

    .line 20
    .line 21
    if-gt p1, v2, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    :cond_0
    return v0

    .line 25
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    .line 26
    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    new-array v1, v1, [J

    .line 35
    .line 36
    const-wide v5, 0xc0dea661fe965adL

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    aput-wide v5, v1, v0

    .line 42
    .line 43
    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-static {v4, v3, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {v2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v2
.end method

.method public isFNC1(I)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ltz p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/zxing/common/MinimalECIInput;->length()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge p1, v2, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    .line 12
    .line 13
    aget p1, v2, p1

    .line 14
    .line 15
    const/16 v2, 0x3e8

    .line 16
    .line 17
    if-ne p1, v2, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    :cond_0
    return v0

    .line 21
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    .line 22
    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    new-array v1, v1, [J

    .line 31
    .line 32
    const-wide v5, 0x224148c794b0c349L

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    aput-wide v5, v1, v0

    .line 38
    .line 39
    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-static {v4, v3, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {v2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v2
.end method

.method public length()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ltz p1, :cond_2

    .line 3
    .line 4
    if-gt p1, p2, :cond_2

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/zxing/common/MinimalECIInput;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-gt p2, v1, :cond_2

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    :goto_0
    if-ge p1, p2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/MinimalECIInput;->isECI(I)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    add-int/2addr p1, v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    const/4 v2, 0x3

    .line 44
    new-array v2, v2, [J

    .line 45
    .line 46
    fill-array-data v2, :array_0

    .line 47
    .line 48
    .line 49
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 63
    .line 64
    const/4 v1, 0x5

    .line 65
    new-array v1, v1, [J

    .line 66
    .line 67
    fill-array-data v1, :array_1

    .line 68
    .line 69
    .line 70
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 71
    .line 72
    .line 73
    invoke-static {p1, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p2

    .line 81
    :cond_1
    return-object v1

    .line 82
    :cond_2
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 83
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 90
    .line 91
    new-array v0, v0, [J

    .line 92
    .line 93
    const-wide v3, -0x7bf2b8bdb8a9aa3cL    # -3.755440184874973E-289

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    const/4 v5, 0x0

    .line 99
    aput-wide v3, v0, v5

    .line 100
    .line 101
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 102
    .line 103
    .line 104
    invoke-static {v2, v1, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p2

    .line 112
    nop

    .line 113
    :array_0
    .array-data 8
        -0x1a5568d0113e8d90L    # -5.516900277282993E181
        0x6d27075303206cfeL    # 6.35089035781546E217
        -0x4a4783f008cb7f62L    # -6.544162457800001E-50
    .end array-data

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    :array_1
    .array-data 8
        0x1d4fbca3fa029a55L
        -0x3f1c80550a106907L    # -39933.34252147185
        0x27cc4857e07be932L    # 5.607778960933489E-117
        -0x7555a5bff941fed5L
        -0xb8407646ac730aL
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/common/MinimalECIInput;->length()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-ge v2, v3, :cond_3

    .line 13
    .line 14
    if-lez v2, :cond_0

    .line 15
    .line 16
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    new-array v4, v0, [J

    .line 19
    .line 20
    fill-array-data v4, :array_0

    .line 21
    .line 22
    .line 23
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/MinimalECIInput;->isECI(I)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    new-array v4, v0, [J

    .line 42
    .line 43
    fill-array-data v4, :array_1

    .line 44
    .line 45
    .line 46
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/MinimalECIInput;->getECIValue(I)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const/16 v3, 0x29

    .line 64
    .line 65
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    const/16 v4, 0x80

    .line 74
    .line 75
    if-ge v3, v4, :cond_2

    .line 76
    .line 77
    const/16 v3, 0x27

    .line 78
    .line 79
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    return-object v0

    .line 108
    nop

    .line 109
    :array_0
    .array-data 8
        -0x7d313eb4ec7df652L
        0x601e4568d1281107L    # 1.0146737632986465E155
    .end array-data

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    :array_1
    .array-data 8
        0x39bf6c2f7133f5c0L    # 1.5492537388087905E-30
        0x5f46772382f73114L    # 9.192247783861947E150
    .end array-data
.end method
