.class public Lcom/airbnb/lottie/utils/LottieValueAnimator;
.super Lcom/airbnb/lottie/utils/BaseLottieAnimator;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field private composition:Lcom/airbnb/lottie/LottieComposition;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private frame:F

.field private frameRaw:F

.field private lastFrameTimeNs:J

.field private maxFrame:F

.field private minFrame:F

.field private repeatCount:I

.field protected running:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private speed:F

.field private speedReversedForRepeatMode:Z

.field private useCompositionFrameRate:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speed:F

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speedReversedForRepeatMode:Z

    .line 10
    .line 11
    const-wide/16 v1, 0x0

    .line 12
    .line 13
    iput-wide v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frameRaw:F

    .line 17
    .line 18
    iput v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 19
    .line 20
    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->repeatCount:I

    .line 21
    .line 22
    const/high16 v1, -0x31000000

    .line 23
    .line 24
    iput v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    .line 25
    .line 26
    const/high16 v1, 0x4f000000

    .line 27
    .line 28
    iput v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->useCompositionFrameRate:Z

    .line 33
    .line 34
    return-void
.end method

.method private checkNotifyUpdate(F)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->useCompositionFrameRate:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frameRaw:F

    .line 6
    .line 7
    cmpl-float p1, v0, p1

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->notifyUpdate()V

    .line 12
    .line 13
    .line 14
    :cond_1
    return-void
.end method

.method private getFrameDurationNs()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 6
    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    const v1, 0x4e6e6b28    # 1.0E9f

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getFrameRate()F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    div-float/2addr v1, v0

    .line 17
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speed:F

    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    div-float/2addr v1, v0

    .line 24
    return v1
.end method

.method private isReversed()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getSpeed()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    cmpg-float v0, v0, v1

    .line 7
    .line 8
    if-gez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method private verifyFrame()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 7
    .line 8
    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    .line 9
    .line 10
    cmpg-float v1, v0, v1

    .line 11
    .line 12
    if-ltz v1, :cond_1

    .line 13
    .line 14
    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    .line 15
    .line 16
    cmpl-float v0, v0, v1

    .line 17
    .line 18
    if-gtz v0, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/4 v2, 0x5

    .line 26
    new-array v2, v2, [J

    .line 27
    .line 28
    fill-array-data v2, :array_0

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget v2, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    .line 39
    .line 40
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iget v3, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    .line 45
    .line 46
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iget v4, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 51
    .line 52
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    const/4 v5, 0x3

    .line 57
    new-array v5, v5, [Ljava/lang/Object;

    .line 58
    .line 59
    const/4 v6, 0x0

    .line 60
    aput-object v2, v5, v6

    .line 61
    .line 62
    const/4 v2, 0x1

    .line 63
    aput-object v3, v5, v2

    .line 64
    .line 65
    const/4 v2, 0x2

    .line 66
    aput-object v4, v5, v2

    .line 67
    .line 68
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v0

    .line 76
    nop

    .line 77
    :array_0
    .array-data 8
        -0x4de2ecd93f716e4aL    # -2.69611160773334E-67
        0x450ef1ba30ba319L
        -0x4b94ea4d85fe2e2L    # -6.748914616010565E285
        -0x6f9f03a886c7a649L    # -8.752598671367025E-230
        0x48f13e46e0d8f10L
    .end array-data
.end method


# virtual methods
.method public cancel()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->notifyCancel()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public clearComposition()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 3
    .line 4
    const/high16 v0, -0x31000000

    .line 5
    .line 6
    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    .line 7
    .line 8
    const/high16 v0, 0x4f000000

    .line 9
    .line 10
    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    .line 11
    .line 12
    return-void
.end method

.method public doFrame(J)V
    .locals 6

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->postFrameCallback()V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 6
    .line 7
    if-eqz v1, :cond_a

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isRunning()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_5

    .line 16
    .line 17
    :cond_0
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    new-array v2, v0, [J

    .line 26
    .line 27
    fill-array-data v2, :array_0

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-wide v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 41
    .line 42
    const-wide/16 v3, 0x0

    .line 43
    .line 44
    cmp-long v5, v1, v3

    .line 45
    .line 46
    if-nez v5, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    sub-long v3, p1, v1

    .line 50
    .line 51
    :goto_0
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getFrameDurationNs()F

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    long-to-float v2, v3

    .line 56
    div-float/2addr v2, v1

    .line 57
    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frameRaw:F

    .line 58
    .line 59
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_3

    .line 64
    .line 65
    neg-float v2, v2

    .line 66
    :cond_3
    add-float/2addr v1, v2

    .line 67
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    invoke-static {v1, v2, v3}, Lcom/airbnb/lottie/utils/MiscUtils;->contains(FFF)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    iget v3, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frameRaw:F

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    invoke-static {v1, v4, v5}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    iput v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frameRaw:F

    .line 94
    .line 95
    iget-boolean v4, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->useCompositionFrameRate:Z

    .line 96
    .line 97
    if-eqz v4, :cond_4

    .line 98
    .line 99
    float-to-double v4, v1

    .line 100
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    .line 101
    .line 102
    .line 103
    move-result-wide v4

    .line 104
    double-to-float v1, v4

    .line 105
    :cond_4
    iput v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 106
    .line 107
    iput-wide p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 108
    .line 109
    if-nez v2, :cond_9

    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    const/4 v2, -0x1

    .line 116
    if-eq v1, v2, :cond_6

    .line 117
    .line 118
    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->repeatCount:I

    .line 119
    .line 120
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-lt v1, v2, :cond_6

    .line 125
    .line 126
    iget p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speed:F

    .line 127
    .line 128
    const/4 p2, 0x0

    .line 129
    cmpg-float p1, p1, p2

    .line 130
    .line 131
    if-gez p1, :cond_5

    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    goto :goto_1

    .line 138
    :cond_5
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    :goto_1
    iput p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frameRaw:F

    .line 143
    .line 144
    iput p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback()V

    .line 147
    .line 148
    .line 149
    invoke-direct {p0, v3}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->checkNotifyUpdate(F)V

    .line 150
    .line 151
    .line 152
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->notifyEnd(Z)V

    .line 157
    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_6
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    const/4 v2, 0x2

    .line 165
    if-ne v1, v2, :cond_7

    .line 166
    .line 167
    iget-boolean v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speedReversedForRepeatMode:Z

    .line 168
    .line 169
    xor-int/lit8 v1, v1, 0x1

    .line 170
    .line 171
    iput-boolean v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speedReversedForRepeatMode:Z

    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->reverseAnimationSpeed()V

    .line 174
    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_7
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-eqz v1, :cond_8

    .line 182
    .line 183
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    goto :goto_2

    .line 188
    :cond_8
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    :goto_2
    iput v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frameRaw:F

    .line 193
    .line 194
    iput v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 195
    .line 196
    :goto_3
    iput-wide p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 197
    .line 198
    invoke-direct {p0, v3}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->checkNotifyUpdate(F)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->notifyRepeat()V

    .line 202
    .line 203
    .line 204
    iget p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->repeatCount:I

    .line 205
    .line 206
    add-int/lit8 p1, p1, 0x1

    .line 207
    .line 208
    iput p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->repeatCount:I

    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_9
    invoke-direct {p0, v3}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->checkNotifyUpdate(F)V

    .line 212
    .line 213
    .line 214
    :goto_4
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->verifyFrame()V

    .line 215
    .line 216
    .line 217
    invoke-static {}, Lcom/airbnb/lottie/L;->isTraceEnabled()Z

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    if-eqz p1, :cond_a

    .line 222
    .line 223
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 224
    .line 225
    new-array p2, v0, [J

    .line 226
    .line 227
    fill-array-data p2, :array_1

    .line 228
    .line 229
    .line 230
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-static {p1}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 238
    .line 239
    .line 240
    :cond_a
    :goto_5
    return-void

    .line 241
    :array_0
    .array-data 8
        -0x214626f7d6fe6c4eL    # -2.0656709665374747E148
        -0x5e856903a8fc1a7fL    # -2.079490814914341E-147
        -0x459c3db738ec7e09L    # -1.995141361015043E-27
        0x35dd87f400746bafL    # 3.1571837407809518E-49
        0x469cd64d87a62dc6L    # 1.4622157250394961E32
    .end array-data

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
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
    :array_1
    .array-data 8
        0x7988b9e2dd0eaa69L    # 2.7394410533240763E277
        0x6221e63c30833b3bL    # 5.153770192452725E164
        0x642028c6ea82e9ddL    # 1.998341250268144E174
        0x5c7a771b62a70e4aL    # 3.0777563187489456E137
        0x37055fca4093a7f0L
    .end array-data
.end method

.method public endAnimation()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->notifyEnd(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getAnimatedFraction()F
    .locals 3
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 18
    .line 19
    sub-float/2addr v0, v1

    .line 20
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    :goto_0
    sub-float/2addr v1, v2

    .line 29
    div-float/2addr v0, v1

    .line 30
    return v0

    .line 31
    :cond_1
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    sub-float/2addr v0, v1

    .line 38
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    goto :goto_0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getAnimatedValueAbsolute()F
    .locals 3
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    sub-float/2addr v1, v0

    .line 14
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v2, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    sub-float/2addr v0, v2

    .line 27
    div-float/2addr v1, v0

    .line 28
    return v1
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getDuration()F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    float-to-long v0, v0

    .line 13
    :goto_0
    return-wide v0
.end method

.method public getFrame()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 2
    .line 3
    return v0
.end method

.method public getMaxFrame()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    .line 8
    .line 9
    const/high16 v2, 0x4f000000

    .line 10
    .line 11
    cmpl-float v2, v1, v2

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    :cond_1
    return v1
.end method

.method public getMinFrame()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    .line 8
    .line 9
    const/high16 v2, -0x31000000

    .line 10
    .line 11
    cmpl-float v2, v1, v2

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    :cond_1
    return v1
.end method

.method public getSpeed()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speed:F

    .line 2
    .line 3
    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    .line 2
    .line 3
    return v0
.end method

.method public notifyCancel()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->notifyCancel()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->notifyEnd(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public pauseAnimation()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->notifyPause()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public playAnimation()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->notifyStart(Z)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    :goto_0
    float-to-int v0, v0

    .line 27
    int-to-float v0, v0

    .line 28
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFrame(F)V

    .line 29
    .line 30
    .line 31
    const-wide/16 v0, 0x0

    .line 32
    .line 33
    iput-wide v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->repeatCount:I

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->postFrameCallback()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public postFrameCallback()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isRunning()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback(Z)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public removeFrameCallback()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeFrameCallback(Z)V

    return-void
.end method

.method public removeFrameCallback(Z)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 2
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    :cond_0
    return-void
.end method

.method public resumeAnimation()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->running:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->postFrameCallback()V

    .line 5
    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getFrame()F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    cmpl-float v0, v0, v1

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFrame(F)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getFrame()F

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    cmpl-float v0, v0, v1

    .line 52
    .line 53
    if-nez v0, :cond_1

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFrame(F)V

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->notifyResume()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public reverseAnimationSpeed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getSpeed()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    neg-float v0, v0

    .line 6
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setSpeed(F)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setComposition(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    iput-object p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-virtual {p0, v0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    float-to-int v0, v0

    .line 41
    int-to-float v0, v0

    .line 42
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    float-to-int p1, p1

    .line 47
    int-to-float p1, p1

    .line 48
    invoke-virtual {p0, v0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    .line 49
    .line 50
    .line 51
    :goto_1
    iget p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 55
    .line 56
    iput v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frameRaw:F

    .line 57
    .line 58
    float-to-int p1, p1

    .line 59
    int-to-float p1, p1

    .line 60
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFrame(F)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->notifyUpdate()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public setFrame(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frameRaw:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinFrame()F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxFrame()F

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {p1, v0, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frameRaw:F

    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->useCompositionFrameRate:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    float-to-double v0, p1

    .line 27
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    double-to-float p1, v0

    .line 32
    :cond_1
    iput p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 33
    .line 34
    const-wide/16 v0, 0x0

    .line 35
    .line 36
    iput-wide v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->lastFrameTimeNs:J

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/BaseLottieAnimator;->notifyUpdate()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public setMaxFrame(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMinAndMaxFrames(FF)V
    .locals 4

    .line 1
    cmpl-float v0, p1, p2

    .line 2
    .line 3
    if-gtz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const v0, -0x800001

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    :goto_1
    invoke-static {p1, v0, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-static {p2, v0, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    .line 38
    .line 39
    cmpl-float v0, p1, v0

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    .line 44
    .line 45
    cmpl-float v0, p2, v0

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    :cond_2
    iput p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minFrame:F

    .line 50
    .line 51
    iput p2, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    .line 52
    .line 53
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 54
    .line 55
    invoke-static {v0, p1, p2}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    float-to-int p1, p1

    .line 60
    int-to-float p1, p1

    .line 61
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFrame(F)V

    .line 62
    .line 63
    .line 64
    :cond_3
    return-void

    .line 65
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    const/4 v2, 0x6

    .line 70
    new-array v2, v2, [J

    .line 71
    .line 72
    fill-array-data v2, :array_0

    .line 73
    .line 74
    .line 75
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    const/4 v2, 0x2

    .line 91
    new-array v2, v2, [Ljava/lang/Object;

    .line 92
    .line 93
    const/4 v3, 0x0

    .line 94
    aput-object p1, v2, v3

    .line 95
    .line 96
    const/4 p1, 0x1

    .line 97
    aput-object p2, v2, p1

    .line 98
    .line 99
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v0

    .line 107
    :array_0
    .array-data 8
        0x7b2ca201c64ca9f2L
        -0x6a5c52d0104f0e39L    # -1.961196380365952E-204
        -0x77492604d6fdfb96L
        0x222a8258ebe8a2eeL    # 4.245884783386955E-144
        -0x7d495cc29d7ad76dL
        0x67297a8e682e08a1L    # 8.868806269655153E188
    .end array-data
.end method

.method public setMinFrame(I)V
    .locals 1

    .line 1
    int-to-float p1, p1

    .line 2
    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxFrame:F

    .line 3
    .line 4
    float-to-int v0, v0

    .line 5
    int-to-float v0, v0

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speedReversedForRepeatMode:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speedReversedForRepeatMode:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->reverseAnimationSpeed()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->speed:F

    .line 2
    .line 3
    return-void
.end method

.method public setUseCompositionFrameRate(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->useCompositionFrameRate:Z

    .line 2
    .line 3
    return-void
.end method
