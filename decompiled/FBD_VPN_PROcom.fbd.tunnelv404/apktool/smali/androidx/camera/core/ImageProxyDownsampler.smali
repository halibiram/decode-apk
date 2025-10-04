.class final Landroidx/camera/core/ImageProxyDownsampler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/ImageProxyDownsampler$ForwardingImageProxyImpl;,
        Landroidx/camera/core/ImageProxyDownsampler$DownsamplingMethod;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static createPlaneProxy(II[B)Landroidx/camera/core/ImageProxy$PlaneProxy;
    .locals 1

    .line 1
    new-instance v0, Landroidx/camera/core/ImageProxyDownsampler$1;

    .line 2
    .line 3
    invoke-direct {v0, p2, p0, p1}, Landroidx/camera/core/ImageProxyDownsampler$1;-><init>([BII)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static downsample(Landroidx/camera/core/ImageProxy;IILandroidx/camera/core/ImageProxyDownsampler$DownsamplingMethod;)Landroidx/camera/core/ForwardingImageProxy;
    .locals 20

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
    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getFormat()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/16 v4, 0x23

    .line 12
    .line 13
    if-ne v3, v4, :cond_5

    .line 14
    .line 15
    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-lt v3, v1, :cond_4

    .line 20
    .line 21
    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-lt v3, v2, :cond_4

    .line 26
    .line 27
    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-ne v3, v1, :cond_0

    .line 32
    .line 33
    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-ne v3, v2, :cond_0

    .line 38
    .line 39
    new-instance v3, Landroidx/camera/core/ImageProxyDownsampler$ForwardingImageProxyImpl;

    .line 40
    .line 41
    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-direct {v3, v0, v4, v1, v2}, Landroidx/camera/core/ImageProxyDownsampler$ForwardingImageProxyImpl;-><init>(Landroidx/camera/core/ImageProxy;[Landroidx/camera/core/ImageProxy$PlaneProxy;II)V

    .line 46
    .line 47
    .line 48
    return-object v3

    .line 49
    :cond_0
    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getWidth()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getWidth()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    div-int/lit8 v4, v4, 0x2

    .line 58
    .line 59
    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getWidth()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    div-int/lit8 v5, v5, 0x2

    .line 64
    .line 65
    filled-new-array {v3, v4, v5}, [I

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getHeight()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getHeight()I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    div-int/lit8 v5, v5, 0x2

    .line 78
    .line 79
    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getHeight()I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    div-int/lit8 v6, v6, 0x2

    .line 84
    .line 85
    filled-new-array {v4, v5, v6}, [I

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    div-int/lit8 v5, v1, 0x2

    .line 90
    .line 91
    filled-new-array {v1, v5, v5}, [I

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    div-int/lit8 v6, v2, 0x2

    .line 96
    .line 97
    filled-new-array {v2, v6, v6}, [I

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    const/4 v7, 0x3

    .line 102
    new-array v8, v7, [Landroidx/camera/core/ImageProxy$PlaneProxy;

    .line 103
    .line 104
    const/4 v9, 0x0

    .line 105
    :goto_0
    if-ge v9, v7, :cond_3

    .line 106
    .line 107
    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    aget-object v10, v10, v9

    .line 112
    .line 113
    invoke-interface {v10}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getBuffer()Ljava/nio/ByteBuffer;

    .line 114
    .line 115
    .line 116
    move-result-object v11

    .line 117
    aget v12, v5, v9

    .line 118
    .line 119
    aget v13, v6, v9

    .line 120
    .line 121
    mul-int v12, v12, v13

    .line 122
    .line 123
    new-array v15, v12, [B

    .line 124
    .line 125
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    .line 126
    .line 127
    .line 128
    move-result v12

    .line 129
    const/4 v14, 0x1

    .line 130
    if-eqz v12, :cond_2

    .line 131
    .line 132
    if-eq v12, v14, :cond_1

    .line 133
    .line 134
    move-object/from16 v19, v15

    .line 135
    .line 136
    const/4 v7, 0x1

    .line 137
    goto :goto_1

    .line 138
    :cond_1
    aget v12, v3, v9

    .line 139
    .line 140
    invoke-interface {v10}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getPixelStride()I

    .line 141
    .line 142
    .line 143
    move-result v13

    .line 144
    invoke-interface {v10}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getRowStride()I

    .line 145
    .line 146
    .line 147
    move-result v10

    .line 148
    aget v16, v4, v9

    .line 149
    .line 150
    aget v17, v5, v9

    .line 151
    .line 152
    aget v18, v6, v9

    .line 153
    .line 154
    const/4 v7, 0x1

    .line 155
    move v14, v10

    .line 156
    move-object v10, v15

    .line 157
    move/from16 v15, v16

    .line 158
    .line 159
    move-object/from16 v16, v10

    .line 160
    .line 161
    invoke-static/range {v11 .. v18}, Landroidx/camera/core/ImageProxyDownsampler;->resizeAveraging(Ljava/nio/ByteBuffer;IIII[BII)V

    .line 162
    .line 163
    .line 164
    move-object/from16 v19, v10

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_2
    const/4 v7, 0x1

    .line 168
    aget v12, v3, v9

    .line 169
    .line 170
    invoke-interface {v10}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getPixelStride()I

    .line 171
    .line 172
    .line 173
    move-result v13

    .line 174
    invoke-interface {v10}, Landroidx/camera/core/ImageProxy$PlaneProxy;->getRowStride()I

    .line 175
    .line 176
    .line 177
    move-result v14

    .line 178
    aget v10, v4, v9

    .line 179
    .line 180
    aget v17, v5, v9

    .line 181
    .line 182
    aget v18, v6, v9

    .line 183
    .line 184
    move-object/from16 v19, v15

    .line 185
    .line 186
    move v15, v10

    .line 187
    move-object/from16 v16, v19

    .line 188
    .line 189
    invoke-static/range {v11 .. v18}, Landroidx/camera/core/ImageProxyDownsampler;->resizeNearestNeighbor(Ljava/nio/ByteBuffer;IIII[BII)V

    .line 190
    .line 191
    .line 192
    :goto_1
    aget v10, v5, v9

    .line 193
    .line 194
    move-object/from16 v11, v19

    .line 195
    .line 196
    invoke-static {v10, v7, v11}, Landroidx/camera/core/ImageProxyDownsampler;->createPlaneProxy(II[B)Landroidx/camera/core/ImageProxy$PlaneProxy;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    aput-object v7, v8, v9

    .line 201
    .line 202
    add-int/lit8 v9, v9, 0x1

    .line 203
    .line 204
    const/4 v7, 0x3

    .line 205
    goto :goto_0

    .line 206
    :cond_3
    new-instance v3, Landroidx/camera/core/ImageProxyDownsampler$ForwardingImageProxyImpl;

    .line 207
    .line 208
    invoke-direct {v3, v0, v8, v1, v2}, Landroidx/camera/core/ImageProxyDownsampler$ForwardingImageProxyImpl;-><init>(Landroidx/camera/core/ImageProxy;[Landroidx/camera/core/ImageProxy$PlaneProxy;II)V

    .line 209
    .line 210
    .line 211
    return-object v3

    .line 212
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 213
    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    const-string v5, "Downsampled dimension "

    .line 217
    .line 218
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    new-instance v5, Landroid/util/Size;

    .line 222
    .line 223
    invoke-direct {v5, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    const-string v1, " is not <= original dimension "

    .line 230
    .line 231
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    new-instance v1, Landroid/util/Size;

    .line 235
    .line 236
    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getWidth()I

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getHeight()I

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    const-string v0, "."

    .line 251
    .line 252
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    throw v3

    .line 263
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 264
    .line 265
    const-string v1, "Only YUV_420_888 format is currently supported."

    .line 266
    .line 267
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    throw v0
.end method

.method private static resizeAveraging(Ljava/nio/ByteBuffer;IIII[BII)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p3

    .line 4
    .line 5
    move/from16 v2, p4

    .line 6
    .line 7
    move/from16 v3, p6

    .line 8
    .line 9
    move/from16 v4, p1

    .line 10
    .line 11
    move/from16 v5, p7

    .line 12
    .line 13
    int-to-float v4, v4

    .line 14
    int-to-float v6, v3

    .line 15
    div-float/2addr v4, v6

    .line 16
    int-to-float v6, v2

    .line 17
    int-to-float v7, v5

    .line 18
    div-float/2addr v6, v7

    .line 19
    new-array v7, v0, [B

    .line 20
    .line 21
    new-array v8, v0, [B

    .line 22
    .line 23
    new-array v9, v3, [I

    .line 24
    .line 25
    const/4 v10, 0x0

    .line 26
    const/4 v11, 0x0

    .line 27
    :goto_0
    if-ge v11, v3, :cond_0

    .line 28
    .line 29
    int-to-float v12, v11

    .line 30
    mul-float v12, v12, v4

    .line 31
    .line 32
    float-to-int v12, v12

    .line 33
    mul-int v12, v12, p2

    .line 34
    .line 35
    aput v12, v9, v11

    .line 36
    .line 37
    add-int/lit8 v11, v11, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    monitor-enter p0

    .line 41
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 42
    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    :goto_1
    if-ge v4, v5, :cond_2

    .line 46
    .line 47
    int-to-float v11, v4

    .line 48
    mul-float v11, v11, v6

    .line 49
    .line 50
    float-to-int v11, v11

    .line 51
    add-int/lit8 v12, v2, -0x1

    .line 52
    .line 53
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    .line 54
    .line 55
    .line 56
    move-result v13

    .line 57
    mul-int v13, v13, v0

    .line 58
    .line 59
    add-int/lit8 v11, v11, 0x1

    .line 60
    .line 61
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    .line 62
    .line 63
    .line 64
    move-result v11

    .line 65
    mul-int v11, v11, v0

    .line 66
    .line 67
    mul-int v12, v4, v3

    .line 68
    .line 69
    invoke-virtual {v1, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 70
    .line 71
    .line 72
    invoke-virtual/range {p0 .. p0}, Ljava/nio/Buffer;->remaining()I

    .line 73
    .line 74
    .line 75
    move-result v13

    .line 76
    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    .line 77
    .line 78
    .line 79
    move-result v13

    .line 80
    invoke-virtual {v1, v7, v10, v13}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 84
    .line 85
    .line 86
    invoke-virtual/range {p0 .. p0}, Ljava/nio/Buffer;->remaining()I

    .line 87
    .line 88
    .line 89
    move-result v11

    .line 90
    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    .line 91
    .line 92
    .line 93
    move-result v11

    .line 94
    invoke-virtual {v1, v8, v10, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 95
    .line 96
    .line 97
    const/4 v11, 0x0

    .line 98
    :goto_2
    if-ge v11, v3, :cond_1

    .line 99
    .line 100
    aget v13, v9, v11

    .line 101
    .line 102
    aget-byte v14, v7, v13

    .line 103
    .line 104
    and-int/lit16 v14, v14, 0xff

    .line 105
    .line 106
    add-int v15, v13, p2

    .line 107
    .line 108
    aget-byte v15, v7, v15

    .line 109
    .line 110
    and-int/lit16 v15, v15, 0xff

    .line 111
    .line 112
    aget-byte v10, v8, v13

    .line 113
    .line 114
    and-int/lit16 v10, v10, 0xff

    .line 115
    .line 116
    add-int v13, v13, p2

    .line 117
    .line 118
    aget-byte v13, v8, v13

    .line 119
    .line 120
    and-int/lit16 v13, v13, 0xff

    .line 121
    .line 122
    add-int/2addr v14, v15

    .line 123
    add-int/2addr v14, v10

    .line 124
    add-int/2addr v14, v13

    .line 125
    div-int/lit8 v14, v14, 0x4

    .line 126
    .line 127
    add-int v10, v12, v11

    .line 128
    .line 129
    and-int/lit16 v13, v14, 0xff

    .line 130
    .line 131
    int-to-byte v13, v13

    .line 132
    aput-byte v13, p5, v10

    .line 133
    .line 134
    add-int/lit8 v11, v11, 0x1

    .line 135
    .line 136
    const/4 v10, 0x0

    .line 137
    goto :goto_2

    .line 138
    :catchall_0
    move-exception v0

    .line 139
    goto :goto_3

    .line 140
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 141
    .line 142
    const/4 v10, 0x0

    .line 143
    goto :goto_1

    .line 144
    :cond_2
    monitor-exit p0

    .line 145
    return-void

    .line 146
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    throw v0
.end method

.method private static resizeNearestNeighbor(Ljava/nio/ByteBuffer;IIII[BII)V
    .locals 7

    .line 1
    int-to-float p1, p1

    .line 2
    int-to-float v0, p6

    .line 3
    div-float/2addr p1, v0

    .line 4
    int-to-float v0, p4

    .line 5
    int-to-float v1, p7

    .line 6
    div-float/2addr v0, v1

    .line 7
    new-array v1, p3, [B

    .line 8
    .line 9
    new-array v2, p6, [I

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    :goto_0
    if-ge v4, p6, :cond_0

    .line 14
    .line 15
    int-to-float v5, v4

    .line 16
    mul-float v5, v5, p1

    .line 17
    .line 18
    float-to-int v5, v5

    .line 19
    mul-int v5, v5, p2

    .line 20
    .line 21
    aput v5, v2, v4

    .line 22
    .line 23
    add-int/lit8 v4, v4, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    monitor-enter p0

    .line 27
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    :goto_1
    if-ge p1, p7, :cond_2

    .line 32
    .line 33
    int-to-float p2, p1

    .line 34
    mul-float p2, p2, v0

    .line 35
    .line 36
    float-to-int p2, p2

    .line 37
    add-int/lit8 v4, p4, -0x1

    .line 38
    .line 39
    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    mul-int p2, p2, p3

    .line 44
    .line 45
    mul-int v4, p1, p6

    .line 46
    .line 47
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    invoke-virtual {p0, v1, v3, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 59
    .line 60
    .line 61
    const/4 p2, 0x0

    .line 62
    :goto_2
    if-ge p2, p6, :cond_1

    .line 63
    .line 64
    add-int v5, v4, p2

    .line 65
    .line 66
    aget v6, v2, p2

    .line 67
    .line 68
    aget-byte v6, v1, v6

    .line 69
    .line 70
    aput-byte v6, p5, v5

    .line 71
    .line 72
    add-int/lit8 p2, p2, 0x1

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    goto :goto_3

    .line 77
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    monitor-exit p0

    .line 81
    return-void

    .line 82
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    throw p1
.end method
