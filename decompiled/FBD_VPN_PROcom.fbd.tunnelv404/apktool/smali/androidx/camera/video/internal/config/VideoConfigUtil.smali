.class public final Landroidx/camera/video/internal/config/VideoConfigUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_TIME_BASE:Landroidx/camera/core/impl/Timebase;

.field private static final MIME_TO_DATA_SPACE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "VideoConfigUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/camera/video/internal/config/VideoConfigUtil;->MIME_TO_DATA_SPACE_MAP:Ljava/util/Map;

    .line 7
    .line 8
    sget-object v1, Landroidx/camera/core/impl/Timebase;->UPTIME:Landroidx/camera/core/impl/Timebase;

    .line 9
    .line 10
    sput-object v1, Landroidx/camera/video/internal/config/VideoConfigUtil;->DEFAULT_TIME_BASE:Landroidx/camera/core/impl/Timebase;

    .line 11
    .line 12
    new-instance v1, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    sget-object v3, Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;->ENCODER_DATA_SPACE_UNSPECIFIED:Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

    .line 23
    .line 24
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const/4 v4, 0x2

    .line 28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    sget-object v5, Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;->ENCODER_DATA_SPACE_BT2020_HLG:Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

    .line 33
    .line 34
    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    const/16 v6, 0x1000

    .line 38
    .line 39
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    sget-object v7, Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;->ENCODER_DATA_SPACE_BT2020_PQ:Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

    .line 44
    .line 45
    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    const/16 v8, 0x2000

    .line 49
    .line 50
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    invoke-virtual {v1, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    new-instance v9, Ljava/util/HashMap;

    .line 58
    .line 59
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v9, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v9, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v9, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v9, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    new-instance v10, Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    const/4 v2, 0x4

    .line 83
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v10, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v10, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    const/16 v2, 0x4000

    .line 94
    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v10, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v10, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    const/16 v2, 0x8

    .line 106
    .line 107
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v10, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v10, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    const v2, 0x8000

    .line 118
    .line 119
    .line 120
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v10, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    new-instance v2, Ljava/util/HashMap;

    .line 128
    .line 129
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 130
    .line 131
    .line 132
    const/16 v3, 0x100

    .line 133
    .line 134
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    const/16 v3, 0x200

    .line 142
    .line 143
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    sget-object v4, Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;->ENCODER_DATA_SPACE_BT709:Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

    .line 148
    .line 149
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    const-string v3, "video/hevc"

    .line 153
    .line 154
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    const-string v1, "video/av01"

    .line 158
    .line 159
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    const-string v1, "video/x-vnd.on2.vp9"

    .line 163
    .line 164
    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    const-string v1, "video/dolby-vision"

    .line 168
    .line 169
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    return-void
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

.method private static getDynamicRangeDefaultMime(Landroidx/camera/core/DynamicRange;)Ljava/lang/String;
    .locals 3
    .param p0    # Landroidx/camera/core/DynamicRange;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/DynamicRange;->getEncoding()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x5

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x6

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    const-string p0, "video/dolby-vision"

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "Unsupported dynamic range: "

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p0, "\nNo supported default mime type available."

    .line 36
    .line 37
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :cond_1
    const-string p0, "video/hevc"

    .line 49
    .line 50
    return-object p0

    .line 51
    :cond_2
    const-string p0, "video/avc"

    .line 52
    .line 53
    return-object p0
.end method

.method public static mimeAndProfileToEncoderDataSpace(Ljava/lang/String;I)Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/camera/video/internal/config/VideoConfigUtil;->MIME_TO_DATA_SPACE_MAP:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/Map;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 v0, 0x2

    .line 29
    new-array v0, v0, [Ljava/lang/Object;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    aput-object p0, v0, v1

    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    aput-object p1, v0, p0

    .line 36
    .line 37
    const-string p0, "Unsupported mime type %s or profile level %d. Data space is unspecified."

    .line 38
    .line 39
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string p1, "VideoConfigUtil"

    .line 44
    .line 45
    invoke-static {p1, p0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    sget-object p0, Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;->ENCODER_DATA_SPACE_UNSPECIFIED:Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

    .line 49
    .line 50
    return-object p0
.end method

.method public static resolveVideoEncoderConfig(Landroidx/camera/video/internal/config/VideoMimeInfo;Landroidx/camera/core/impl/Timebase;Landroidx/camera/video/VideoSpec;Landroid/util/Size;Landroidx/camera/core/DynamicRange;Landroid/util/Range;)Landroidx/camera/video/internal/encoder/VideoEncoderConfig;
    .locals 16
    .param p0    # Landroidx/camera/video/internal/config/VideoMimeInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/camera/core/impl/Timebase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/video/VideoSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/camera/core/DynamicRange;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/util/Range;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/video/internal/config/VideoMimeInfo;",
            "Landroidx/camera/core/impl/Timebase;",
            "Landroidx/camera/video/VideoSpec;",
            "Landroid/util/Size;",
            "Landroidx/camera/core/DynamicRange;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/camera/video/internal/encoder/VideoEncoderConfig;"
        }
    .end annotation

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroidx/camera/video/internal/config/VideoMimeInfo;->getCompatibleVideoProfile()Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    .line 2
    .line 3
    .line 4
    move-result-object v5

    .line 5
    if-eqz v5, :cond_0

    .line 6
    .line 7
    new-instance v8, Landroidx/camera/video/internal/config/VideoEncoderConfigVideoProfileResolver;

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Landroidx/camera/video/internal/config/MimeInfo;->getMimeType()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    move-object v0, v8

    .line 14
    move-object/from16 v2, p1

    .line 15
    .line 16
    move-object/from16 v3, p2

    .line 17
    .line 18
    move-object/from16 v4, p3

    .line 19
    .line 20
    move-object/from16 v6, p4

    .line 21
    .line 22
    move-object/from16 v7, p5

    .line 23
    .line 24
    invoke-direct/range {v0 .. v7}, Landroidx/camera/video/internal/config/VideoEncoderConfigVideoProfileResolver;-><init>(Ljava/lang/String;Landroidx/camera/core/impl/Timebase;Landroidx/camera/video/VideoSpec;Landroid/util/Size;Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroidx/camera/core/DynamicRange;Landroid/util/Range;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v8, Landroidx/camera/video/internal/config/VideoEncoderConfigDefaultResolver;

    .line 29
    .line 30
    invoke-virtual/range {p0 .. p0}, Landroidx/camera/video/internal/config/MimeInfo;->getMimeType()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v10

    .line 34
    move-object v9, v8

    .line 35
    move-object/from16 v11, p1

    .line 36
    .line 37
    move-object/from16 v12, p2

    .line 38
    .line 39
    move-object/from16 v13, p3

    .line 40
    .line 41
    move-object/from16 v14, p4

    .line 42
    .line 43
    move-object/from16 v15, p5

    .line 44
    .line 45
    invoke-direct/range {v9 .. v15}, Landroidx/camera/video/internal/config/VideoEncoderConfigDefaultResolver;-><init>(Ljava/lang/String;Landroidx/camera/core/impl/Timebase;Landroidx/camera/video/VideoSpec;Landroid/util/Size;Landroidx/camera/core/DynamicRange;Landroid/util/Range;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-interface {v8}, Landroidx/core/util/Supplier;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;

    .line 53
    .line 54
    return-object v0
.end method

.method public static resolveVideoMimeInfo(Landroidx/camera/video/MediaSpec;Landroidx/camera/core/DynamicRange;Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;)Landroidx/camera/video/internal/config/VideoMimeInfo;
    .locals 11
    .param p0    # Landroidx/camera/video/MediaSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/camera/core/DynamicRange;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/camera/core/DynamicRange;->isFullySpecified()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "Dynamic range must be a fully specified dynamic range [provided dynamic range: "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, "]"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/camera/video/MediaSpec;->getOutputFormat()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static {v0}, Landroidx/camera/video/MediaSpec;->outputFormatToVideoMime(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v1, -0x1

    .line 36
    const-string v3, ", dynamic range: "

    .line 37
    .line 38
    const-string v4, "VideoConfigUtil"

    .line 39
    .line 40
    if-eqz p2, :cond_3

    .line 41
    .line 42
    invoke-static {p1}, Landroidx/camera/video/internal/utils/DynamicRangeUtil;->dynamicRangeToVideoProfileHdrFormats(Landroidx/camera/core/DynamicRange;)Ljava/util/Set;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-static {p1}, Landroidx/camera/video/internal/utils/DynamicRangeUtil;->dynamicRangeToVideoProfileBitDepth(Landroidx/camera/core/DynamicRange;)Ljava/util/Set;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-interface {p2}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getVideoProfiles()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    if-eqz v8, :cond_3

    .line 63
    .line 64
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    check-cast v8, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    .line 69
    .line 70
    invoke-virtual {v8}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getHdrFormat()I

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    invoke-interface {v5, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v9

    .line 82
    if-eqz v9, :cond_0

    .line 83
    .line 84
    invoke-virtual {v8}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getBitDepth()I

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    invoke-interface {v6, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    if-nez v9, :cond_1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {v8}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getMediaType()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    invoke-static {v0, v9}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v10

    .line 107
    if-eqz v10, :cond_2

    .line 108
    .line 109
    new-instance v5, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v6, "MediaSpec video mime matches EncoderProfiles. Using EncoderProfiles to derive VIDEO settings [mime type: "

    .line 112
    .line 113
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-static {v4, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_2
    invoke-virtual {p0}, Landroidx/camera/video/MediaSpec;->getOutputFormat()I

    .line 131
    .line 132
    .line 133
    move-result v10

    .line 134
    if-ne v10, v1, :cond_0

    .line 135
    .line 136
    new-instance v5, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v6, "MediaSpec contains OUTPUT_FORMAT_AUTO. Using CamcorderProfile to derive VIDEO settings [mime type: "

    .line 139
    .line 140
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-static {v4, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :goto_1
    move-object v0, v9

    .line 163
    goto :goto_2

    .line 164
    :cond_3
    const/4 v8, 0x0

    .line 165
    :goto_2
    if-nez v8, :cond_6

    .line 166
    .line 167
    invoke-virtual {p0}, Landroidx/camera/video/MediaSpec;->getOutputFormat()I

    .line 168
    .line 169
    .line 170
    move-result p0

    .line 171
    if-ne p0, v1, :cond_4

    .line 172
    .line 173
    invoke-static {p1}, Landroidx/camera/video/internal/config/VideoConfigUtil;->getDynamicRangeDefaultMime(Landroidx/camera/core/DynamicRange;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    :cond_4
    if-nez p2, :cond_5

    .line 178
    .line 179
    new-instance p0, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string p2, "No EncoderProfiles present. May rely on fallback defaults to derive VIDEO settings [chosen mime type: "

    .line 182
    .line 183
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    invoke-static {v4, p0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    const-string p2, "No video EncoderProfile is compatible with requested output format and dynamic range. May rely on fallback defaults to derive VIDEO settings [chosen mime type: "

    .line 209
    .line 210
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    invoke-static {v4, p0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    :cond_6
    :goto_3
    invoke-static {v0}, Landroidx/camera/video/internal/config/VideoMimeInfo;->builder(Ljava/lang/String;)Landroidx/camera/video/internal/config/VideoMimeInfo$Builder;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    if-eqz v8, :cond_7

    .line 237
    .line 238
    invoke-virtual {p0, v8}, Landroidx/camera/video/internal/config/VideoMimeInfo$Builder;->setCompatibleVideoProfile(Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;)Landroidx/camera/video/internal/config/VideoMimeInfo$Builder;

    .line 239
    .line 240
    .line 241
    :cond_7
    invoke-virtual {p0}, Landroidx/camera/video/internal/config/VideoMimeInfo$Builder;->build()Landroidx/camera/video/internal/config/VideoMimeInfo;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    return-object p0
.end method

.method public static scaleAndClampBitrate(IIIIIIIIILandroid/util/Range;)I
    .locals 18
    .param p9    # Landroid/util/Range;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIIII",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p9

    .line 2
    .line 3
    new-instance v4, Landroid/util/Rational;

    .line 4
    .line 5
    move/from16 v5, p1

    .line 6
    .line 7
    move/from16 v6, p2

    .line 8
    .line 9
    invoke-direct {v4, v5, v6}, Landroid/util/Rational;-><init>(II)V

    .line 10
    .line 11
    .line 12
    new-instance v7, Landroid/util/Rational;

    .line 13
    .line 14
    move/from16 v8, p3

    .line 15
    .line 16
    move/from16 v9, p4

    .line 17
    .line 18
    invoke-direct {v7, v8, v9}, Landroid/util/Rational;-><init>(II)V

    .line 19
    .line 20
    .line 21
    new-instance v10, Landroid/util/Rational;

    .line 22
    .line 23
    move/from16 v11, p5

    .line 24
    .line 25
    move/from16 v12, p6

    .line 26
    .line 27
    invoke-direct {v10, v11, v12}, Landroid/util/Rational;-><init>(II)V

    .line 28
    .line 29
    .line 30
    new-instance v13, Landroid/util/Rational;

    .line 31
    .line 32
    move/from16 v14, p7

    .line 33
    .line 34
    move/from16 v15, p8

    .line 35
    .line 36
    invoke-direct {v13, v14, v15}, Landroid/util/Rational;-><init>(II)V

    .line 37
    .line 38
    .line 39
    move/from16 v1, p0

    .line 40
    .line 41
    int-to-double v2, v1

    .line 42
    invoke-virtual {v4}, Landroid/util/Rational;->doubleValue()D

    .line 43
    .line 44
    .line 45
    move-result-wide v16

    .line 46
    mul-double v16, v16, v2

    .line 47
    .line 48
    invoke-virtual {v7}, Landroid/util/Rational;->doubleValue()D

    .line 49
    .line 50
    .line 51
    move-result-wide v2

    .line 52
    mul-double v2, v2, v16

    .line 53
    .line 54
    invoke-virtual {v10}, Landroid/util/Rational;->doubleValue()D

    .line 55
    .line 56
    .line 57
    move-result-wide v16

    .line 58
    mul-double v16, v16, v2

    .line 59
    .line 60
    invoke-virtual {v13}, Landroid/util/Rational;->doubleValue()D

    .line 61
    .line 62
    .line 63
    move-result-wide v2

    .line 64
    mul-double v2, v2, v16

    .line 65
    .line 66
    double-to-int v2, v2

    .line 67
    const-string v3, "VideoConfigUtil"

    .line 68
    .line 69
    invoke-static {v3}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_0

    .line 74
    .line 75
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v10

    .line 107
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v11

    .line 111
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v12

    .line 115
    const/16 v13, 0xa

    .line 116
    .line 117
    new-array v13, v13, [Ljava/lang/Object;

    .line 118
    .line 119
    const/4 v14, 0x0

    .line 120
    aput-object v1, v13, v14

    .line 121
    .line 122
    const/4 v1, 0x1

    .line 123
    aput-object v4, v13, v1

    .line 124
    .line 125
    const/4 v1, 0x2

    .line 126
    aput-object v5, v13, v1

    .line 127
    .line 128
    const/4 v1, 0x3

    .line 129
    aput-object v6, v13, v1

    .line 130
    .line 131
    const/4 v1, 0x4

    .line 132
    aput-object v7, v13, v1

    .line 133
    .line 134
    const/4 v1, 0x5

    .line 135
    aput-object v8, v13, v1

    .line 136
    .line 137
    const/4 v1, 0x6

    .line 138
    aput-object v9, v13, v1

    .line 139
    .line 140
    const/4 v1, 0x7

    .line 141
    aput-object v10, v13, v1

    .line 142
    .line 143
    const/16 v1, 0x8

    .line 144
    .line 145
    aput-object v11, v13, v1

    .line 146
    .line 147
    const/16 v1, 0x9

    .line 148
    .line 149
    aput-object v12, v13, v1

    .line 150
    .line 151
    const-string v1, "Base Bitrate(%dbps) * Bit Depth Ratio (%d / %d) * Frame Rate Ratio(%d / %d) * Width Ratio(%d / %d) * Height Ratio(%d / %d) = %d"

    .line 152
    .line 153
    invoke-static {v1, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    goto :goto_0

    .line 158
    :cond_0
    const-string v1, ""

    .line 159
    .line 160
    :goto_0
    sget-object v4, Landroidx/camera/video/VideoSpec;->BITRATE_RANGE_AUTO:Landroid/util/Range;

    .line 161
    .line 162
    invoke-virtual {v4, v0}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    if-nez v4, :cond_2

    .line 167
    .line 168
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v0, v2}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    check-cast v2, Ljava/lang/Integer;

    .line 177
    .line 178
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    invoke-static {v3}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    .line 183
    .line 184
    .line 185
    move-result v5

    .line 186
    if-eqz v5, :cond_1

    .line 187
    .line 188
    const/4 v5, 0x2

    .line 189
    new-array v5, v5, [Ljava/lang/Object;

    .line 190
    .line 191
    const/4 v6, 0x0

    .line 192
    aput-object v0, v5, v6

    .line 193
    .line 194
    const/4 v0, 0x1

    .line 195
    aput-object v2, v5, v0

    .line 196
    .line 197
    const-string v0, "\nClamped to range %s -> %dbps"

    .line 198
    .line 199
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    :cond_1
    move v2, v4

    .line 208
    :cond_2
    invoke-static {v3, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    return v2
.end method

.method public static toVideoEncoderConfig(Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;)Landroidx/camera/video/internal/encoder/VideoEncoderConfig;
    .locals 4
    .param p0    # Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->builder()Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getMediaType()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;->setMimeType(Ljava/lang/String;)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getProfile()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;->setProfile(I)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Landroid/util/Size;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;->setResolution(Landroid/util/Size;)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getFrameRate()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0, v1}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;->setFrameRate(I)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getBitrate()I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    invoke-virtual {v0, p0}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;->setBitrate(I)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    sget-object v0, Landroidx/camera/video/internal/config/VideoConfigUtil;->DEFAULT_TIME_BASE:Landroidx/camera/core/impl/Timebase;

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;->setInputTimebase(Landroidx/camera/core/impl/Timebase;)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;->build()Landroidx/camera/video/internal/encoder/VideoEncoderConfig;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0
.end method
