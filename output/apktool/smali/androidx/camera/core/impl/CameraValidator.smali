.class public final Landroidx/camera/core/impl/CameraValidator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/OptIn;
    markerClass = {
        Landroidx/camera/core/ExperimentalLensFacing;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/CameraValidator$Api34Impl;,
        Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException;
    }
.end annotation


# static fields
.field private static final EXTERNAL_LENS_FACING:Landroidx/camera/core/CameraSelector;

.field private static final TAG:Ljava/lang/String; = "CameraValidator"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/camera/core/CameraSelector$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/camera/core/CameraSelector$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-virtual {v0, v1}, Landroidx/camera/core/CameraSelector$Builder;->requireLensFacing(I)Landroidx/camera/core/CameraSelector$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroidx/camera/core/CameraSelector$Builder;->build()Landroidx/camera/core/CameraSelector;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Landroidx/camera/core/impl/CameraValidator;->EXTERNAL_LENS_FACING:Landroidx/camera/core/CameraSelector;

    .line 16
    .line 17
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

.method public static validateCameras(Landroid/content/Context;Landroidx/camera/core/impl/CameraRepository;Landroidx/camera/core/CameraSelector;)V
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/camera/core/impl/CameraRepository;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/CameraSelector;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const-string v4, "CameraValidator"

    .line 8
    .line 9
    if-lt v0, v1, :cond_1

    .line 10
    .line 11
    invoke-static {p0}, Landroidx/camera/core/impl/CameraValidator$Api34Impl;->getDeviceId(Landroid/content/Context;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/camera/core/impl/CameraRepository;->getCameras()Ljava/util/LinkedHashSet;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-nez p2, :cond_0

    .line 26
    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v0, "Virtual device with ID: "

    .line 30
    .line 31
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p0}, Landroidx/camera/core/impl/CameraValidator$Api34Impl;->getDeviceId(Landroid/content/Context;)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p0, " has "

    .line 42
    .line 43
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p0, " cameras. Skipping validation."

    .line 54
    .line 55
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {v4, p0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_0
    new-instance p0, Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException;

    .line 67
    .line 68
    const-string p1, "No cameras available"

    .line 69
    .line 70
    invoke-direct {p0, p1, v2, v3}, Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    throw p0

    .line 74
    :cond_1
    if-eqz p2, :cond_2

    .line 75
    .line 76
    :try_start_0
    invoke-virtual {p2}, Landroidx/camera/core/CameraSelector;->getLensFacing()Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    if-nez v0, :cond_3

    .line 81
    .line 82
    const-string p0, "No lens facing info in the availableCamerasSelector, don\'t verify the camera lens facing."

    .line 83
    .line 84
    invoke-static {v4, p0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :catch_0
    move-exception p0

    .line 89
    const-string p1, "Cannot get lens facing from the availableCamerasSelector don\'t verify the camera lens facing."

    .line 90
    .line 91
    invoke-static {v4, p1, p0}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_2
    move-object v0, v3

    .line 96
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v5, "Verifying camera lens facing on "

    .line 99
    .line 100
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v5, ", lensFacingInteger: "

    .line 109
    .line 110
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-static {v4, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    :try_start_1
    const-string v1, "android.hardware.camera"

    .line 128
    .line 129
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_5

    .line 134
    .line 135
    const/4 v1, 0x1

    .line 136
    if-eqz p2, :cond_4

    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    if-ne v5, v1, :cond_5

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :catch_1
    move-exception v1

    .line 146
    move-object v3, v1

    .line 147
    goto :goto_1

    .line 148
    :cond_4
    :goto_0
    sget-object v5, Landroidx/camera/core/CameraSelector;->DEFAULT_BACK_CAMERA:Landroidx/camera/core/CameraSelector;

    .line 149
    .line 150
    invoke-virtual {p1}, Landroidx/camera/core/impl/CameraRepository;->getCameras()Ljava/util/LinkedHashSet;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-virtual {v5, v6}, Landroidx/camera/core/CameraSelector;->select(Ljava/util/LinkedHashSet;)Landroidx/camera/core/impl/CameraInternal;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    .line 156
    .line 157
    const/4 v2, 0x1

    .line 158
    goto :goto_2

    .line 159
    :goto_1
    const-string v1, "Camera LENS_FACING_BACK verification failed"

    .line 160
    .line 161
    invoke-static {v4, v1, v3}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    .line 163
    .line 164
    :cond_5
    :goto_2
    :try_start_2
    const-string v1, "android.hardware.camera.front"

    .line 165
    .line 166
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 167
    .line 168
    .line 169
    move-result p0

    .line 170
    if-eqz p0, :cond_7

    .line 171
    .line 172
    if-eqz p2, :cond_6

    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 175
    .line 176
    .line 177
    move-result p0

    .line 178
    if-nez p0, :cond_7

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :catch_2
    move-exception p0

    .line 182
    move-object v3, p0

    .line 183
    goto :goto_4

    .line 184
    :cond_6
    :goto_3
    sget-object p0, Landroidx/camera/core/CameraSelector;->DEFAULT_FRONT_CAMERA:Landroidx/camera/core/CameraSelector;

    .line 185
    .line 186
    invoke-virtual {p1}, Landroidx/camera/core/impl/CameraRepository;->getCameras()Ljava/util/LinkedHashSet;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    invoke-virtual {p0, p2}, Landroidx/camera/core/CameraSelector;->select(Ljava/util/LinkedHashSet;)Landroidx/camera/core/impl/CameraInternal;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 191
    .line 192
    .line 193
    add-int/lit8 v2, v2, 0x1

    .line 194
    .line 195
    goto :goto_5

    .line 196
    :goto_4
    const-string p0, "Camera LENS_FACING_FRONT verification failed"

    .line 197
    .line 198
    invoke-static {v4, p0, v3}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    .line 200
    .line 201
    :cond_7
    :goto_5
    :try_start_3
    sget-object p0, Landroidx/camera/core/impl/CameraValidator;->EXTERNAL_LENS_FACING:Landroidx/camera/core/CameraSelector;

    .line 202
    .line 203
    invoke-virtual {p1}, Landroidx/camera/core/impl/CameraRepository;->getCameras()Ljava/util/LinkedHashSet;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    invoke-virtual {p0, p2}, Landroidx/camera/core/CameraSelector;->select(Ljava/util/LinkedHashSet;)Landroidx/camera/core/impl/CameraInternal;

    .line 208
    .line 209
    .line 210
    const-string p0, "Found a LENS_FACING_EXTERNAL camera"

    .line 211
    .line 212
    invoke-static {v4, p0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 213
    .line 214
    .line 215
    add-int/lit8 v2, v2, 0x1

    .line 216
    .line 217
    goto :goto_6

    .line 218
    :catch_3
    nop

    .line 219
    :goto_6
    if-nez v3, :cond_8

    .line 220
    .line 221
    return-void

    .line 222
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    const-string p2, "Camera LensFacing verification failed, existing cameras: "

    .line 225
    .line 226
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1}, Landroidx/camera/core/impl/CameraRepository;->getCameras()Ljava/util/LinkedHashSet;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    invoke-static {v4, p0}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    new-instance p0, Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException;

    .line 244
    .line 245
    const-string p1, "Expected camera missing from device."

    .line 246
    .line 247
    invoke-direct {p0, p1, v2, v3}, Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 248
    .line 249
    .line 250
    throw p0
.end method
