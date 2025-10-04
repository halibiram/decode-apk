.class public final Landroidx/camera/video/internal/config/AudioConfigUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final AUDIO_CHANNEL_COUNT_DEFAULT:I = 0x1

.field static final AUDIO_SAMPLE_RATE_DEFAULT:I = 0xac44

.field static final AUDIO_SOURCE_DEFAULT:I = 0x5

.field static final AUDIO_SOURCE_FORMAT_DEFAULT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AudioConfigUtil"


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

.method private static synthetic lambda$selectSampleRateOrNearestSupported$0(ILjava/lang/Integer;Ljava/lang/Integer;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-int/2addr v0, p0

    .line 6
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int/2addr v1, p0

    .line 15
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    sub-int/2addr v0, p0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    sub-int/2addr p0, p1

    .line 31
    int-to-float p0, p0

    .line 32
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    :goto_0
    float-to-int p0, p0

    .line 37
    return p0

    .line 38
    :cond_0
    int-to-float p0, v0

    .line 39
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    goto :goto_0
.end method

.method public static resolveAudioEncoderConfig(Landroidx/camera/video/internal/config/AudioMimeInfo;Landroidx/camera/core/impl/Timebase;Landroidx/camera/video/internal/audio/AudioSettings;Landroidx/camera/video/AudioSpec;)Landroidx/camera/video/internal/encoder/AudioEncoderConfig;
    .locals 14
    .param p0    # Landroidx/camera/video/internal/config/AudioMimeInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/camera/core/impl/Timebase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/video/internal/audio/AudioSettings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/video/AudioSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/video/internal/config/AudioMimeInfo;->getCompatibleAudioProfile()Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    .line 2
    .line 3
    .line 4
    move-result-object v6

    .line 5
    if-eqz v6, :cond_0

    .line 6
    .line 7
    new-instance v7, Landroidx/camera/video/internal/config/AudioEncoderConfigAudioProfileResolver;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/camera/video/internal/config/MimeInfo;->getMimeType()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0}, Landroidx/camera/video/internal/config/MimeInfo;->getProfile()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    move-object v0, v7

    .line 18
    move-object v3, p1

    .line 19
    move-object/from16 v4, p3

    .line 20
    .line 21
    move-object/from16 v5, p2

    .line 22
    .line 23
    invoke-direct/range {v0 .. v6}, Landroidx/camera/video/internal/config/AudioEncoderConfigAudioProfileResolver;-><init>(Ljava/lang/String;ILandroidx/camera/core/impl/Timebase;Landroidx/camera/video/AudioSpec;Landroidx/camera/video/internal/audio/AudioSettings;Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v7, Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/camera/video/internal/config/MimeInfo;->getMimeType()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v9

    .line 33
    invoke-virtual {p0}, Landroidx/camera/video/internal/config/MimeInfo;->getProfile()I

    .line 34
    .line 35
    .line 36
    move-result v10

    .line 37
    move-object v8, v7

    .line 38
    move-object v11, p1

    .line 39
    move-object/from16 v12, p3

    .line 40
    .line 41
    move-object/from16 v13, p2

    .line 42
    .line 43
    invoke-direct/range {v8 .. v13}, Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver;-><init>(Ljava/lang/String;ILandroidx/camera/core/impl/Timebase;Landroidx/camera/video/AudioSpec;Landroidx/camera/video/internal/audio/AudioSettings;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-interface {v7}, Landroidx/core/util/Supplier;->get()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroidx/camera/video/internal/encoder/AudioEncoderConfig;

    .line 51
    .line 52
    return-object v0
.end method

.method public static resolveAudioMimeInfo(Landroidx/camera/video/MediaSpec;Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;)Landroidx/camera/video/internal/config/AudioMimeInfo;
    .locals 8
    .param p0    # Landroidx/camera/video/MediaSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/video/MediaSpec;->getOutputFormat()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroidx/camera/video/MediaSpec;->outputFormatToAudioMime(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroidx/camera/video/MediaSpec;->getOutputFormat()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Landroidx/camera/video/MediaSpec;->outputFormatToAudioProfile(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz p1, :cond_3

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;->getDefaultAudioProfile()Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_3

    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;->getDefaultAudioProfile()Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;->getMediaType()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;->getProfile()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const-string v4, "audio/none"

    .line 38
    .line 39
    invoke-static {v2, v4}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    const-string v5, ")]"

    .line 44
    .line 45
    const-string v6, "AudioConfigUtil"

    .line 46
    .line 47
    const-string v7, "(profile: "

    .line 48
    .line 49
    if-eqz v4, :cond_0

    .line 50
    .line 51
    new-instance p0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string p1, "EncoderProfiles contains undefined AUDIO mime type so cannot be used. May rely on fallback defaults to derive settings [chosen mime type: "

    .line 54
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {v6, p0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_0

    .line 78
    .line 79
    :cond_0
    invoke-virtual {p0}, Landroidx/camera/video/MediaSpec;->getOutputFormat()I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    const/4 v4, -0x1

    .line 84
    if-ne p0, v4, :cond_1

    .line 85
    .line 86
    new-instance p0, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v0, "MediaSpec contains OUTPUT_FORMAT_AUTO. Using EncoderProfiles to derive AUDIO settings [mime type: "

    .line 89
    .line 90
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-static {v6, p0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    move-object v0, v2

    .line 113
    move v1, v3

    .line 114
    goto :goto_1

    .line 115
    :cond_1
    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    if-eqz p0, :cond_2

    .line 120
    .line 121
    if-ne v1, v3, :cond_2

    .line 122
    .line 123
    new-instance p0, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const-string v0, "MediaSpec audio mime/profile matches EncoderProfiles. Using EncoderProfiles to derive AUDIO settings [mime type: "

    .line 126
    .line 127
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-static {v6, p0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    move-object v0, v2

    .line 150
    goto :goto_1

    .line 151
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string p1, "MediaSpec audio mime or profile does not match EncoderProfiles, so EncoderProfiles settings cannot be used. May rely on fallback defaults to derive AUDIO settings [EncoderProfiles mime type: "

    .line 154
    .line 155
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string p1, "), chosen mime type: "

    .line 168
    .line 169
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    invoke-static {v6, p0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 192
    :goto_1
    invoke-static {v0}, Landroidx/camera/video/internal/config/AudioMimeInfo;->builder(Ljava/lang/String;)Landroidx/camera/video/internal/config/AudioMimeInfo$Builder;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-virtual {p0, v1}, Landroidx/camera/video/internal/config/MimeInfo$Builder;->setProfile(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    check-cast p0, Landroidx/camera/video/internal/config/AudioMimeInfo$Builder;

    .line 201
    .line 202
    if-eqz p1, :cond_4

    .line 203
    .line 204
    invoke-virtual {p0, p1}, Landroidx/camera/video/internal/config/AudioMimeInfo$Builder;->setCompatibleAudioProfile(Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;)Landroidx/camera/video/internal/config/AudioMimeInfo$Builder;

    .line 205
    .line 206
    .line 207
    :cond_4
    invoke-virtual {p0}, Landroidx/camera/video/internal/config/AudioMimeInfo$Builder;->build()Landroidx/camera/video/internal/config/AudioMimeInfo;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    return-object p0
.end method

.method public static resolveAudioSettings(Landroidx/camera/video/internal/config/AudioMimeInfo;Landroidx/camera/video/AudioSpec;)Landroidx/camera/video/internal/audio/AudioSettings;
    .locals 1
    .param p0    # Landroidx/camera/video/internal/config/AudioMimeInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/camera/video/AudioSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/video/internal/config/AudioMimeInfo;->getCompatibleAudioProfile()Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/camera/video/internal/config/AudioSettingsAudioProfileResolver;

    .line 8
    .line 9
    invoke-direct {v0, p1, p0}, Landroidx/camera/video/internal/config/AudioSettingsAudioProfileResolver;-><init>(Landroidx/camera/video/AudioSpec;Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Landroidx/camera/video/internal/config/AudioSettingsDefaultResolver;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Landroidx/camera/video/internal/config/AudioSettingsDefaultResolver;-><init>(Landroidx/camera/video/AudioSpec;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-interface {v0}, Landroidx/core/util/Supplier;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Landroidx/camera/video/internal/audio/AudioSettings;

    .line 23
    .line 24
    return-object p0
.end method

.method public static resolveAudioSource(Landroidx/camera/video/AudioSpec;)I
    .locals 3
    .param p0    # Landroidx/camera/video/AudioSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/camera/video/AudioSpec;->getSource()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, -0x1

    .line 6
    const-string v1, "AudioConfigUtil"

    .line 7
    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    const-string p0, "Using default AUDIO source: 5"

    .line 11
    .line 12
    invoke-static {v1, p0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x5

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "Using provided AUDIO source: "

    .line 20
    .line 21
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return p0
.end method

.method public static resolveAudioSourceFormat(Landroidx/camera/video/AudioSpec;)I
    .locals 3
    .param p0    # Landroidx/camera/video/AudioSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/camera/video/AudioSpec;->getSourceFormat()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, -0x1

    .line 6
    const-string v1, "AudioConfigUtil"

    .line 7
    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    const-string p0, "Using default AUDIO source format: 2"

    .line 11
    .line 12
    invoke-static {v1, p0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "Using provided AUDIO source format: "

    .line 20
    .line 21
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return p0
.end method

.method public static scaleAndClampBitrate(IIIIILandroid/util/Range;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    new-instance v3, Landroid/util/Rational;

    .line 5
    .line 6
    invoke-direct {v3, p1, p2}, Landroid/util/Rational;-><init>(II)V

    .line 7
    .line 8
    .line 9
    new-instance v4, Landroid/util/Rational;

    .line 10
    .line 11
    invoke-direct {v4, p3, p4}, Landroid/util/Rational;-><init>(II)V

    .line 12
    .line 13
    .line 14
    int-to-double v5, p0

    .line 15
    invoke-virtual {v3}, Landroid/util/Rational;->doubleValue()D

    .line 16
    .line 17
    .line 18
    move-result-wide v7

    .line 19
    mul-double v7, v7, v5

    .line 20
    .line 21
    invoke-virtual {v4}, Landroid/util/Rational;->doubleValue()D

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    mul-double v3, v3, v7

    .line 26
    .line 27
    double-to-int v3, v3

    .line 28
    const-string v4, "AudioConfigUtil"

    .line 29
    .line 30
    invoke-static {v4}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_0

    .line 35
    .line 36
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object p4

    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    const/4 v6, 0x6

    .line 61
    new-array v6, v6, [Ljava/lang/Object;

    .line 62
    .line 63
    aput-object p0, v6, v2

    .line 64
    .line 65
    aput-object p1, v6, v1

    .line 66
    .line 67
    aput-object p2, v6, v0

    .line 68
    .line 69
    const/4 p0, 0x3

    .line 70
    aput-object p3, v6, p0

    .line 71
    .line 72
    const/4 p0, 0x4

    .line 73
    aput-object p4, v6, p0

    .line 74
    .line 75
    const/4 p0, 0x5

    .line 76
    aput-object v5, v6, p0

    .line 77
    .line 78
    const-string p0, "Base Bitrate(%dbps) * Channel Count Ratio(%d / %d) * Sample Rate Ratio(%d / %d) = %d"

    .line 79
    .line 80
    invoke-static {p0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    goto :goto_0

    .line 85
    :cond_0
    const-string p0, ""

    .line 86
    .line 87
    :goto_0
    sget-object p1, Landroidx/camera/video/AudioSpec;->BITRATE_RANGE_AUTO:Landroid/util/Range;

    .line 88
    .line 89
    invoke-virtual {p1, p5}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-nez p1, :cond_1

    .line 94
    .line 95
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p5, p1}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Ljava/lang/Integer;

    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    invoke-static {v4}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    if-eqz p2, :cond_1

    .line 114
    .line 115
    new-array p2, v0, [Ljava/lang/Object;

    .line 116
    .line 117
    aput-object p5, p2, v2

    .line 118
    .line 119
    aput-object p1, p2, v1

    .line 120
    .line 121
    const-string p1, "\nClamped to range %s -> %dbps"

    .line 122
    .line 123
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    :cond_1
    invoke-static {v4, p0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return v3
.end method

.method public static selectSampleRateOrNearestSupported(Landroid/util/Range;III)I
    .locals 8
    .param p0    # Landroid/util/Range;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;III)I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, p3

    .line 4
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    invoke-virtual {p0, v3}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const-string v4, "Sample rate "

    .line 13
    .line 14
    const-string v5, "AudioConfigUtil"

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    invoke-static {v2, p1, p2}, Landroidx/camera/video/internal/audio/AudioSource;->isSettingsSupported(III)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    return v2

    .line 25
    :cond_0
    const-string v3, "Hz is not supported by audio source with channel count "

    .line 26
    .line 27
    const-string v6, " and source format "

    .line 28
    .line 29
    invoke-static {v2, p1, v4, v3, v6}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v5, v2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, "Hz is not in target range "

    .line 53
    .line 54
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v5, v2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :goto_1
    if-nez v0, :cond_2

    .line 68
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v2, "Trying common sample rates in proximity order to target "

    .line 72
    .line 73
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v2, "Hz"

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v5, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    new-instance v0, Ljava/util/ArrayList;

    .line 92
    .line 93
    sget-object v2, Landroidx/camera/video/internal/audio/AudioSettings;->COMMON_SAMPLE_RATES:Ljava/util/List;

    .line 94
    .line 95
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 96
    .line 97
    .line 98
    new-instance v2, L돛땝돸땁땦딠듐됐뒛됫땳땥둔뒷둔땫돼뎻따됫됐뒐땃뎸딽땪뎸뎹돨돴땜땋땰듐돝된땭땰땥뎹드돝뎻땍뒉둑듬둔땮돸뎡딃딄뒹돶뒘뎰듰되뒹듐따둥땸뎸뎽딨듟딠듟되뎰둣땧딅땄땫뒤뎸득뒵딸뒛뒼뎠딞둔땲땄뒐땬둠뒉돸됨땨딐듼딁뎡들됫땠둑땀득둘땲돛딤돸땫듌땲딎따둬됐됫땔뎠뒾둔딀딝돷뎡듐돳땄;

    .line 99
    .line 100
    invoke-direct {v2, p3}, L돛땝돸땁땦딠듐됐뒛됫땳땥둔뒷둔땫돼뎻따됫됐뒐땃뎸딽땪뎸뎹돨돴땜땋땰듐돝된땭땰땥뎹드돝뎻땍뒉둑듬둔땮돸뎡딃딄뒹돶뒘뎰듰되뒹듐따둥땸뎸뎽딨듟딠듟되뎰둣땧딅땄땫뒤뎸득뒵딸뒛뒼뎠딞둔땲땄뒐땬둠뒉돸됨땨딐듼딁뎡들됫땠둑땀득둘땲돛딤돸땫듌땲딎따둬됐됫땔뎠뒾둔딀딝돷뎡듐돳땄;-><init>(I)V

    .line 101
    .line 102
    .line 103
    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 104
    .line 105
    .line 106
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-ge v1, v2, :cond_3

    .line 111
    .line 112
    add-int/lit8 v2, v1, 0x1

    .line 113
    .line 114
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    check-cast v1, Ljava/lang/Integer;

    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    move v7, v2

    .line 125
    move v2, v1

    .line 126
    move v1, v7

    .line 127
    goto :goto_0

    .line 128
    :cond_3
    const-string p0, "No sample rate found in target range or supported by audio source. Falling back to default sample rate of 44100Hz"

    .line 129
    .line 130
    invoke-static {v5, p0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const p0, 0xac44

    .line 134
    .line 135
    .line 136
    return p0
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(ILjava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/camera/video/internal/config/AudioConfigUtil;->lambda$selectSampleRateOrNearestSupported$0(ILjava/lang/Integer;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method
