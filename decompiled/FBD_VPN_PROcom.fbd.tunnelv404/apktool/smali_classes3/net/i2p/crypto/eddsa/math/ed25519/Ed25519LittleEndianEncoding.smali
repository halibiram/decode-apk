.class public Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;
.super Lnet/i2p/crypto/eddsa/math/Encoding;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/i2p/crypto/eddsa/math/Encoding;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static load_3([BI)I
    .locals 2

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    aget-byte v1, p0, p1

    .line 4
    .line 5
    and-int/lit16 v1, v1, 0xff

    .line 6
    .line 7
    add-int/lit8 p1, p1, 0x2

    .line 8
    .line 9
    aget-byte v0, p0, v0

    .line 10
    .line 11
    and-int/lit16 v0, v0, 0xff

    .line 12
    .line 13
    shl-int/lit8 v0, v0, 0x8

    .line 14
    .line 15
    or-int/2addr v0, v1

    .line 16
    aget-byte p0, p0, p1

    .line 17
    .line 18
    and-int/lit16 p0, p0, 0xff

    .line 19
    .line 20
    shl-int/lit8 p0, p0, 0x10

    .line 21
    .line 22
    or-int/2addr p0, v0

    .line 23
    return p0
.end method

.method public static load_4([BI)J
    .locals 3

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    aget-byte v1, p0, p1

    .line 4
    .line 5
    and-int/lit16 v1, v1, 0xff

    .line 6
    .line 7
    add-int/lit8 v2, p1, 0x2

    .line 8
    .line 9
    aget-byte v0, p0, v0

    .line 10
    .line 11
    and-int/lit16 v0, v0, 0xff

    .line 12
    .line 13
    shl-int/lit8 v0, v0, 0x8

    .line 14
    .line 15
    or-int/2addr v0, v1

    .line 16
    add-int/lit8 p1, p1, 0x3

    .line 17
    .line 18
    aget-byte v1, p0, v2

    .line 19
    .line 20
    and-int/lit16 v1, v1, 0xff

    .line 21
    .line 22
    shl-int/lit8 v1, v1, 0x10

    .line 23
    .line 24
    or-int/2addr v0, v1

    .line 25
    aget-byte p0, p0, p1

    .line 26
    .line 27
    shl-int/lit8 p0, p0, 0x18

    .line 28
    .line 29
    or-int/2addr p0, v0

    .line 30
    int-to-long p0, p0

    .line 31
    const-wide v0, 0xffffffffL

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    and-long/2addr p0, v0

    .line 37
    return-wide p0
.end method


# virtual methods
.method public decode([B)Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 37

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    const/4 v3, 0x4

    .line 9
    invoke-static {v0, v3}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    shl-int/lit8 v4, v4, 0x6

    .line 14
    .line 15
    int-to-long v4, v4

    .line 16
    const/4 v6, 0x7

    .line 17
    invoke-static {v0, v6}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    .line 18
    .line 19
    .line 20
    move-result v7

    .line 21
    shl-int/lit8 v7, v7, 0x5

    .line 22
    .line 23
    int-to-long v7, v7

    .line 24
    const/16 v9, 0xa

    .line 25
    .line 26
    invoke-static {v0, v9}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    .line 27
    .line 28
    .line 29
    move-result v9

    .line 30
    shl-int/lit8 v9, v9, 0x3

    .line 31
    .line 32
    int-to-long v9, v9

    .line 33
    const/16 v11, 0xd

    .line 34
    .line 35
    invoke-static {v0, v11}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    .line 36
    .line 37
    .line 38
    move-result v11

    .line 39
    shl-int/lit8 v11, v11, 0x2

    .line 40
    .line 41
    int-to-long v11, v11

    .line 42
    const/16 v13, 0x10

    .line 43
    .line 44
    invoke-static {v0, v13}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    .line 45
    .line 46
    .line 47
    move-result-wide v13

    .line 48
    const/16 v15, 0x14

    .line 49
    .line 50
    invoke-static {v0, v15}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    .line 51
    .line 52
    .line 53
    move-result v15

    .line 54
    shl-int/lit8 v6, v15, 0x7

    .line 55
    .line 56
    move-wide/from16 v16, v4

    .line 57
    .line 58
    int-to-long v3, v6

    .line 59
    const/16 v5, 0x17

    .line 60
    .line 61
    invoke-static {v0, v5}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    shl-int/lit8 v5, v5, 0x5

    .line 66
    .line 67
    int-to-long v5, v5

    .line 68
    const/16 v15, 0x1a

    .line 69
    .line 70
    invoke-static {v0, v15}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    .line 71
    .line 72
    .line 73
    move-result v19

    .line 74
    const/16 v18, 0x4

    .line 75
    .line 76
    shl-int/lit8 v15, v19, 0x4

    .line 77
    .line 78
    move-wide/from16 v18, v5

    .line 79
    .line 80
    int-to-long v5, v15

    .line 81
    const/16 v15, 0x1d

    .line 82
    .line 83
    invoke-static {v0, v15}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    const v15, 0x7fffff

    .line 88
    .line 89
    .line 90
    and-int/2addr v0, v15

    .line 91
    shl-int/lit8 v0, v0, 0x2

    .line 92
    .line 93
    move-wide/from16 v21, v5

    .line 94
    .line 95
    int-to-long v5, v0

    .line 96
    const-wide/32 v23, 0x1000000

    .line 97
    .line 98
    .line 99
    add-long v25, v5, v23

    .line 100
    .line 101
    const/16 v0, 0x19

    .line 102
    .line 103
    shr-long v25, v25, v0

    .line 104
    .line 105
    const-wide/16 v27, 0x13

    .line 106
    .line 107
    mul-long v27, v27, v25

    .line 108
    .line 109
    add-long v27, v27, v1

    .line 110
    .line 111
    shl-long v1, v25, v0

    .line 112
    .line 113
    sub-long/2addr v5, v1

    .line 114
    add-long v1, v16, v23

    .line 115
    .line 116
    shr-long/2addr v1, v0

    .line 117
    add-long/2addr v7, v1

    .line 118
    shl-long/2addr v1, v0

    .line 119
    sub-long v1, v16, v1

    .line 120
    .line 121
    add-long v15, v9, v23

    .line 122
    .line 123
    shr-long/2addr v15, v0

    .line 124
    add-long/2addr v11, v15

    .line 125
    shl-long/2addr v15, v0

    .line 126
    sub-long/2addr v9, v15

    .line 127
    add-long v15, v13, v23

    .line 128
    .line 129
    shr-long/2addr v15, v0

    .line 130
    add-long/2addr v3, v15

    .line 131
    shl-long/2addr v15, v0

    .line 132
    sub-long/2addr v13, v15

    .line 133
    add-long v15, v18, v23

    .line 134
    .line 135
    shr-long/2addr v15, v0

    .line 136
    add-long v21, v21, v15

    .line 137
    .line 138
    shl-long/2addr v15, v0

    .line 139
    sub-long v15, v18, v15

    .line 140
    .line 141
    const-wide/32 v17, 0x2000000

    .line 142
    .line 143
    .line 144
    add-long v23, v27, v17

    .line 145
    .line 146
    const/16 v0, 0x1a

    .line 147
    .line 148
    shr-long v19, v23, v0

    .line 149
    .line 150
    add-long v1, v1, v19

    .line 151
    .line 152
    shl-long v19, v19, v0

    .line 153
    .line 154
    move-wide/from16 v23, v1

    .line 155
    .line 156
    sub-long v1, v27, v19

    .line 157
    .line 158
    add-long v19, v7, v17

    .line 159
    .line 160
    shr-long v19, v19, v0

    .line 161
    .line 162
    add-long v9, v9, v19

    .line 163
    .line 164
    shl-long v19, v19, v0

    .line 165
    .line 166
    sub-long v7, v7, v19

    .line 167
    .line 168
    add-long v19, v11, v17

    .line 169
    .line 170
    shr-long v19, v19, v0

    .line 171
    .line 172
    add-long v13, v13, v19

    .line 173
    .line 174
    shl-long v19, v19, v0

    .line 175
    .line 176
    sub-long v11, v11, v19

    .line 177
    .line 178
    add-long v19, v3, v17

    .line 179
    .line 180
    shr-long v19, v19, v0

    .line 181
    .line 182
    move-wide/from16 v25, v13

    .line 183
    .line 184
    add-long v13, v15, v19

    .line 185
    .line 186
    shl-long v15, v19, v0

    .line 187
    .line 188
    sub-long/2addr v3, v15

    .line 189
    add-long v17, v21, v17

    .line 190
    .line 191
    shr-long v15, v17, v0

    .line 192
    .line 193
    add-long/2addr v5, v15

    .line 194
    shl-long/2addr v15, v0

    .line 195
    move-wide/from16 v17, v5

    .line 196
    .line 197
    sub-long v5, v21, v15

    .line 198
    .line 199
    long-to-int v0, v1

    .line 200
    move-wide/from16 v1, v23

    .line 201
    .line 202
    long-to-int v2, v1

    .line 203
    long-to-int v1, v7

    .line 204
    long-to-int v7, v9

    .line 205
    long-to-int v8, v11

    .line 206
    move-wide/from16 v9, v25

    .line 207
    .line 208
    long-to-int v10, v9

    .line 209
    long-to-int v4, v3

    .line 210
    long-to-int v3, v13

    .line 211
    long-to-int v6, v5

    .line 212
    move-wide/from16 v11, v17

    .line 213
    .line 214
    long-to-int v5, v11

    .line 215
    move/from16 v27, v0

    .line 216
    .line 217
    move/from16 v28, v2

    .line 218
    .line 219
    move/from16 v29, v1

    .line 220
    .line 221
    move/from16 v30, v7

    .line 222
    .line 223
    move/from16 v31, v8

    .line 224
    .line 225
    move/from16 v32, v10

    .line 226
    .line 227
    move/from16 v33, v4

    .line 228
    .line 229
    move/from16 v34, v3

    .line 230
    .line 231
    move/from16 v35, v6

    .line 232
    .line 233
    move/from16 v36, v5

    .line 234
    .line 235
    filled-new-array/range {v27 .. v36}, [I

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    new-instance v1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    .line 240
    .line 241
    move-object/from16 v2, p0

    .line 242
    .line 243
    iget-object v3, v2, Lnet/i2p/crypto/eddsa/math/Encoding;->f:Lnet/i2p/crypto/eddsa/math/Field;

    .line 244
    .line 245
    invoke-direct {v1, v3, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;[I)V

    .line 246
    .line 247
    .line 248
    return-object v1
.end method

.method public encode(Lnet/i2p/crypto/eddsa/math/FieldElement;)[B
    .locals 55

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    check-cast v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    .line 4
    .line 5
    iget-object v0, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    aget v2, v0, v1

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    aget v4, v0, v3

    .line 12
    .line 13
    const/4 v5, 0x2

    .line 14
    aget v6, v0, v5

    .line 15
    .line 16
    const/4 v7, 0x3

    .line 17
    aget v8, v0, v7

    .line 18
    .line 19
    const/4 v9, 0x4

    .line 20
    aget v10, v0, v9

    .line 21
    .line 22
    const/4 v11, 0x5

    .line 23
    aget v12, v0, v11

    .line 24
    .line 25
    const/4 v13, 0x6

    .line 26
    aget v14, v0, v13

    .line 27
    .line 28
    const/4 v15, 0x7

    .line 29
    aget v16, v0, v15

    .line 30
    .line 31
    const/16 v17, 0x8

    .line 32
    .line 33
    aget v18, v0, v17

    .line 34
    .line 35
    const/16 v19, 0x9

    .line 36
    .line 37
    aget v0, v0, v19

    .line 38
    .line 39
    const/16 v20, 0x13

    .line 40
    .line 41
    mul-int/lit8 v21, v0, 0x13

    .line 42
    .line 43
    const/high16 v22, 0x1000000

    .line 44
    .line 45
    add-int v21, v21, v22

    .line 46
    .line 47
    const/16 v22, 0x19

    .line 48
    .line 49
    shr-int/lit8 v21, v21, 0x19

    .line 50
    .line 51
    add-int v21, v2, v21

    .line 52
    .line 53
    const/16 v23, 0x1a

    .line 54
    .line 55
    shr-int/lit8 v21, v21, 0x1a

    .line 56
    .line 57
    add-int v21, v4, v21

    .line 58
    .line 59
    shr-int/lit8 v21, v21, 0x19

    .line 60
    .line 61
    add-int v21, v6, v21

    .line 62
    .line 63
    shr-int/lit8 v21, v21, 0x1a

    .line 64
    .line 65
    add-int v21, v8, v21

    .line 66
    .line 67
    shr-int/lit8 v21, v21, 0x19

    .line 68
    .line 69
    add-int v21, v10, v21

    .line 70
    .line 71
    shr-int/lit8 v21, v21, 0x1a

    .line 72
    .line 73
    add-int v21, v12, v21

    .line 74
    .line 75
    shr-int/lit8 v21, v21, 0x19

    .line 76
    .line 77
    add-int v21, v14, v21

    .line 78
    .line 79
    shr-int/lit8 v21, v21, 0x1a

    .line 80
    .line 81
    add-int v21, v16, v21

    .line 82
    .line 83
    shr-int/lit8 v21, v21, 0x19

    .line 84
    .line 85
    add-int v21, v18, v21

    .line 86
    .line 87
    shr-int/lit8 v21, v21, 0x1a

    .line 88
    .line 89
    add-int v21, v0, v21

    .line 90
    .line 91
    shr-int/lit8 v21, v21, 0x19

    .line 92
    .line 93
    mul-int/lit8 v21, v21, 0x13

    .line 94
    .line 95
    add-int v21, v21, v2

    .line 96
    .line 97
    shr-int/lit8 v2, v21, 0x1a

    .line 98
    .line 99
    add-int/2addr v4, v2

    .line 100
    shl-int/lit8 v2, v2, 0x1a

    .line 101
    .line 102
    sub-int v2, v21, v2

    .line 103
    .line 104
    shr-int/lit8 v21, v4, 0x19

    .line 105
    .line 106
    add-int v6, v6, v21

    .line 107
    .line 108
    shl-int/lit8 v21, v21, 0x19

    .line 109
    .line 110
    sub-int v4, v4, v21

    .line 111
    .line 112
    shr-int/lit8 v21, v6, 0x1a

    .line 113
    .line 114
    add-int v8, v8, v21

    .line 115
    .line 116
    shl-int/lit8 v21, v21, 0x1a

    .line 117
    .line 118
    sub-int v6, v6, v21

    .line 119
    .line 120
    shr-int/lit8 v21, v8, 0x19

    .line 121
    .line 122
    add-int v10, v10, v21

    .line 123
    .line 124
    shl-int/lit8 v21, v21, 0x19

    .line 125
    .line 126
    sub-int v8, v8, v21

    .line 127
    .line 128
    shr-int/lit8 v21, v10, 0x1a

    .line 129
    .line 130
    add-int v12, v12, v21

    .line 131
    .line 132
    shl-int/lit8 v21, v21, 0x1a

    .line 133
    .line 134
    sub-int v10, v10, v21

    .line 135
    .line 136
    shr-int/lit8 v21, v12, 0x19

    .line 137
    .line 138
    add-int v14, v14, v21

    .line 139
    .line 140
    shl-int/lit8 v21, v21, 0x19

    .line 141
    .line 142
    sub-int v12, v12, v21

    .line 143
    .line 144
    shr-int/lit8 v21, v14, 0x1a

    .line 145
    .line 146
    add-int v16, v16, v21

    .line 147
    .line 148
    shl-int/lit8 v21, v21, 0x1a

    .line 149
    .line 150
    sub-int v14, v14, v21

    .line 151
    .line 152
    shr-int/lit8 v21, v16, 0x19

    .line 153
    .line 154
    add-int v18, v18, v21

    .line 155
    .line 156
    shl-int/lit8 v21, v21, 0x19

    .line 157
    .line 158
    sub-int v16, v16, v21

    .line 159
    .line 160
    shr-int/lit8 v21, v18, 0x1a

    .line 161
    .line 162
    add-int v0, v0, v21

    .line 163
    .line 164
    shl-int/lit8 v21, v21, 0x1a

    .line 165
    .line 166
    sub-int v18, v18, v21

    .line 167
    .line 168
    shr-int/lit8 v21, v0, 0x19

    .line 169
    .line 170
    shl-int/lit8 v21, v21, 0x19

    .line 171
    .line 172
    sub-int v0, v0, v21

    .line 173
    .line 174
    int-to-byte v1, v2

    .line 175
    shr-int/lit8 v9, v2, 0x8

    .line 176
    .line 177
    int-to-byte v9, v9

    .line 178
    const/16 v24, 0x10

    .line 179
    .line 180
    shr-int/lit8 v15, v2, 0x10

    .line 181
    .line 182
    int-to-byte v15, v15

    .line 183
    const/16 v26, 0x18

    .line 184
    .line 185
    shr-int/lit8 v2, v2, 0x18

    .line 186
    .line 187
    shl-int/lit8 v27, v4, 0x2

    .line 188
    .line 189
    or-int v2, v2, v27

    .line 190
    .line 191
    int-to-byte v2, v2

    .line 192
    shr-int/lit8 v3, v4, 0x6

    .line 193
    .line 194
    int-to-byte v3, v3

    .line 195
    const/16 v28, 0xe

    .line 196
    .line 197
    shr-int/lit8 v5, v4, 0xe

    .line 198
    .line 199
    int-to-byte v5, v5

    .line 200
    const/16 v30, 0x16

    .line 201
    .line 202
    shr-int/lit8 v4, v4, 0x16

    .line 203
    .line 204
    shl-int/lit8 v31, v6, 0x3

    .line 205
    .line 206
    or-int v4, v4, v31

    .line 207
    .line 208
    int-to-byte v4, v4

    .line 209
    shr-int/lit8 v13, v6, 0x5

    .line 210
    .line 211
    int-to-byte v13, v13

    .line 212
    const/16 v32, 0xd

    .line 213
    .line 214
    shr-int/lit8 v7, v6, 0xd

    .line 215
    .line 216
    int-to-byte v7, v7

    .line 217
    const/16 v34, 0x15

    .line 218
    .line 219
    shr-int/lit8 v6, v6, 0x15

    .line 220
    .line 221
    shl-int/lit8 v35, v8, 0x5

    .line 222
    .line 223
    or-int v6, v6, v35

    .line 224
    .line 225
    int-to-byte v6, v6

    .line 226
    const/16 v33, 0x3

    .line 227
    .line 228
    shr-int/lit8 v11, v8, 0x3

    .line 229
    .line 230
    int-to-byte v11, v11

    .line 231
    const/16 v36, 0xb

    .line 232
    .line 233
    move/from16 v37, v11

    .line 234
    .line 235
    shr-int/lit8 v11, v8, 0xb

    .line 236
    .line 237
    int-to-byte v11, v11

    .line 238
    shr-int/lit8 v8, v8, 0x13

    .line 239
    .line 240
    const/16 v31, 0x6

    .line 241
    .line 242
    shl-int/lit8 v38, v10, 0x6

    .line 243
    .line 244
    or-int v8, v8, v38

    .line 245
    .line 246
    int-to-byte v8, v8

    .line 247
    move/from16 v38, v8

    .line 248
    .line 249
    const/16 v29, 0x2

    .line 250
    .line 251
    shr-int/lit8 v8, v10, 0x2

    .line 252
    .line 253
    int-to-byte v8, v8

    .line 254
    const/16 v39, 0xa

    .line 255
    .line 256
    move/from16 v40, v8

    .line 257
    .line 258
    shr-int/lit8 v8, v10, 0xa

    .line 259
    .line 260
    int-to-byte v8, v8

    .line 261
    const/16 v41, 0x12

    .line 262
    .line 263
    shr-int/lit8 v10, v10, 0x12

    .line 264
    .line 265
    int-to-byte v10, v10

    .line 266
    move/from16 v42, v10

    .line 267
    .line 268
    int-to-byte v10, v12

    .line 269
    move/from16 v43, v10

    .line 270
    .line 271
    shr-int/lit8 v10, v12, 0x8

    .line 272
    .line 273
    int-to-byte v10, v10

    .line 274
    move/from16 v44, v10

    .line 275
    .line 276
    shr-int/lit8 v10, v12, 0x10

    .line 277
    .line 278
    int-to-byte v10, v10

    .line 279
    shr-int/lit8 v12, v12, 0x18

    .line 280
    .line 281
    const/16 v27, 0x1

    .line 282
    .line 283
    shl-int/lit8 v45, v14, 0x1

    .line 284
    .line 285
    or-int v12, v12, v45

    .line 286
    .line 287
    int-to-byte v12, v12

    .line 288
    move/from16 v45, v12

    .line 289
    .line 290
    const/16 v25, 0x7

    .line 291
    .line 292
    shr-int/lit8 v12, v14, 0x7

    .line 293
    .line 294
    int-to-byte v12, v12

    .line 295
    move/from16 v46, v12

    .line 296
    .line 297
    shr-int/lit8 v12, v14, 0xf

    .line 298
    .line 299
    int-to-byte v12, v12

    .line 300
    shr-int/lit8 v14, v14, 0x17

    .line 301
    .line 302
    const/16 v33, 0x3

    .line 303
    .line 304
    shl-int/lit8 v47, v16, 0x3

    .line 305
    .line 306
    or-int v14, v14, v47

    .line 307
    .line 308
    int-to-byte v14, v14

    .line 309
    move/from16 v47, v14

    .line 310
    .line 311
    const/16 v35, 0x5

    .line 312
    .line 313
    shr-int/lit8 v14, v16, 0x5

    .line 314
    .line 315
    int-to-byte v14, v14

    .line 316
    move/from16 v48, v14

    .line 317
    .line 318
    shr-int/lit8 v14, v16, 0xd

    .line 319
    .line 320
    int-to-byte v14, v14

    .line 321
    shr-int/lit8 v16, v16, 0x15

    .line 322
    .line 323
    const/16 v21, 0x4

    .line 324
    .line 325
    shl-int/lit8 v49, v18, 0x4

    .line 326
    .line 327
    move/from16 v50, v14

    .line 328
    .line 329
    or-int v14, v16, v49

    .line 330
    .line 331
    int-to-byte v14, v14

    .line 332
    move/from16 v16, v14

    .line 333
    .line 334
    shr-int/lit8 v14, v18, 0x4

    .line 335
    .line 336
    int-to-byte v14, v14

    .line 337
    move/from16 v49, v14

    .line 338
    .line 339
    shr-int/lit8 v14, v18, 0xc

    .line 340
    .line 341
    int-to-byte v14, v14

    .line 342
    shr-int/lit8 v18, v18, 0x14

    .line 343
    .line 344
    const/16 v31, 0x6

    .line 345
    .line 346
    shl-int/lit8 v51, v0, 0x6

    .line 347
    .line 348
    move/from16 v52, v14

    .line 349
    .line 350
    or-int v14, v18, v51

    .line 351
    .line 352
    int-to-byte v14, v14

    .line 353
    move/from16 v29, v14

    .line 354
    .line 355
    const/16 v18, 0x2

    .line 356
    .line 357
    shr-int/lit8 v14, v0, 0x2

    .line 358
    .line 359
    int-to-byte v14, v14

    .line 360
    move/from16 v51, v14

    .line 361
    .line 362
    shr-int/lit8 v14, v0, 0xa

    .line 363
    .line 364
    int-to-byte v14, v14

    .line 365
    shr-int/lit8 v0, v0, 0x12

    .line 366
    .line 367
    int-to-byte v0, v0

    .line 368
    move/from16 v53, v0

    .line 369
    .line 370
    const/16 v0, 0x20

    .line 371
    .line 372
    new-array v0, v0, [B

    .line 373
    .line 374
    const/16 v54, 0x0

    .line 375
    .line 376
    aput-byte v1, v0, v54

    .line 377
    .line 378
    const/4 v1, 0x1

    .line 379
    aput-byte v9, v0, v1

    .line 380
    .line 381
    aput-byte v15, v0, v18

    .line 382
    .line 383
    const/4 v1, 0x3

    .line 384
    aput-byte v2, v0, v1

    .line 385
    .line 386
    const/4 v1, 0x4

    .line 387
    aput-byte v3, v0, v1

    .line 388
    .line 389
    const/4 v1, 0x5

    .line 390
    aput-byte v5, v0, v1

    .line 391
    .line 392
    const/4 v1, 0x6

    .line 393
    aput-byte v4, v0, v1

    .line 394
    .line 395
    const/4 v1, 0x7

    .line 396
    aput-byte v13, v0, v1

    .line 397
    .line 398
    aput-byte v7, v0, v17

    .line 399
    .line 400
    aput-byte v6, v0, v19

    .line 401
    .line 402
    aput-byte v37, v0, v39

    .line 403
    .line 404
    aput-byte v11, v0, v36

    .line 405
    .line 406
    const/16 v1, 0xc

    .line 407
    .line 408
    aput-byte v38, v0, v1

    .line 409
    .line 410
    aput-byte v40, v0, v32

    .line 411
    .line 412
    aput-byte v8, v0, v28

    .line 413
    .line 414
    const/16 v1, 0xf

    .line 415
    .line 416
    aput-byte v42, v0, v1

    .line 417
    .line 418
    aput-byte v43, v0, v24

    .line 419
    .line 420
    const/16 v1, 0x11

    .line 421
    .line 422
    aput-byte v44, v0, v1

    .line 423
    .line 424
    aput-byte v10, v0, v41

    .line 425
    .line 426
    aput-byte v45, v0, v20

    .line 427
    .line 428
    const/16 v1, 0x14

    .line 429
    .line 430
    aput-byte v46, v0, v1

    .line 431
    .line 432
    aput-byte v12, v0, v34

    .line 433
    .line 434
    aput-byte v47, v0, v30

    .line 435
    .line 436
    const/16 v1, 0x17

    .line 437
    .line 438
    aput-byte v48, v0, v1

    .line 439
    .line 440
    aput-byte v50, v0, v26

    .line 441
    .line 442
    aput-byte v16, v0, v22

    .line 443
    .line 444
    aput-byte v49, v0, v23

    .line 445
    .line 446
    const/16 v1, 0x1b

    .line 447
    .line 448
    aput-byte v52, v0, v1

    .line 449
    .line 450
    const/16 v1, 0x1c

    .line 451
    .line 452
    aput-byte v29, v0, v1

    .line 453
    .line 454
    const/16 v1, 0x1d

    .line 455
    .line 456
    aput-byte v51, v0, v1

    .line 457
    .line 458
    const/16 v1, 0x1e

    .line 459
    .line 460
    aput-byte v14, v0, v1

    .line 461
    .line 462
    const/16 v1, 0x1f

    .line 463
    .line 464
    aput-byte v53, v0, v1

    .line 465
    .line 466
    return-object v0
.end method

.method public isNegative(Lnet/i2p/crypto/eddsa/math/FieldElement;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->encode(Lnet/i2p/crypto/eddsa/math/FieldElement;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    aget-byte p1, p1, v0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    and-int/2addr p1, v1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    :cond_0
    return v0
.end method
