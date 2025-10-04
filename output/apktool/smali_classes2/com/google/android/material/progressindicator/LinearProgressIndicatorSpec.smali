.class public final Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;
.super Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;
.source "SourceFile"


# instance fields
.field drawHorizontallyInverse:Z

.field public indeterminateAnimationType:I

.field public indicatorDirection:I

.field public trackStopIndicatorSize:I
    .annotation build Landroidx/annotation/Px;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget v0, Lcom/google/android/material/R$attr;->linearProgressIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 2
    sget v0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->DEF_STYLE_RES:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 4
    sget-object v2, Lcom/google/android/material/R$styleable;->LinearProgressIndicator:[I

    sget v3, Lcom/google/android/material/R$attr;->linearProgressIndicatorStyle:I

    sget v4, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->DEF_STYLE_RES:I

    const/4 p3, 0x0

    new-array v5, p3, [I

    move-object v0, p1

    move-object v1, p2

    .line 5
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 6
    sget p2, Lcom/google/android/material/R$styleable;->LinearProgressIndicator_indeterminateAnimationType:I

    const/4 p4, 0x1

    .line 7
    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indeterminateAnimationType:I

    .line 8
    sget p2, Lcom/google/android/material/R$styleable;->LinearProgressIndicator_indicatorDirectionLinear:I

    .line 9
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indicatorDirection:I

    .line 10
    sget p2, Lcom/google/android/material/R$styleable;->LinearProgressIndicator_trackStopIndicatorSize:I

    .line 11
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iget v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    .line 12
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackStopIndicatorSize:I

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->validateSpec()V

    .line 15
    iget p1, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indicatorDirection:I

    if-ne p1, p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    iput-boolean p3, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->drawHorizontallyInverse:Z

    return-void
.end method


# virtual methods
.method public validateSpec()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->validateSpec()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackStopIndicatorSize:I

    .line 5
    .line 6
    if-ltz v0, :cond_4

    .line 7
    .line 8
    iget v0, p0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indeterminateAnimationType:I

    .line 9
    .line 10
    if-nez v0, :cond_3

    .line 11
    .line 12
    iget v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackCornerRadius:I

    .line 13
    .line 14
    if-lez v0, :cond_1

    .line 15
    .line 16
    iget v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorTrackGapSize:I

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/16 v2, 0xc

    .line 26
    .line 27
    new-array v2, v2, [J

    .line 28
    .line 29
    fill-array-data v2, :array_0

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    .line 44
    .line 45
    array-length v0, v0

    .line 46
    const/4 v1, 0x3

    .line 47
    if-lt v0, v1, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    const/16 v2, 0xb

    .line 55
    .line 56
    new-array v2, v2, [J

    .line 57
    .line 58
    fill-array-data v2, :array_1

    .line 59
    .line 60
    .line 61
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v0

    .line 72
    :cond_3
    :goto_1
    return-void

    .line 73
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 74
    .line 75
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 76
    .line 77
    const/4 v2, 0x6

    .line 78
    new-array v2, v2, [J

    .line 79
    .line 80
    fill-array-data v2, :array_2

    .line 81
    .line 82
    .line 83
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v0

    .line 94
    nop

    .line 95
    :array_0
    .array-data 8
        -0x29d48da931bd6d61L    # -1.2589764817513004E107
        0x6136e7151caa505fL    # 2.012443740596241E160
        -0x1d73613ebde674c5L    # -5.273990200906812E166
        -0x7f9d1c6bfa046ecL
        -0x3be1e9eccd3b642dL    # -1.3874824828117194E20
        0x19ac1202b11767c7L    # 5.161079612438529E-185
        0x5ea659258c0d8d54L    # 8.929990658936983E147
        0x3f544b9315411e0cL    # 0.001238721500174014
        0x24fd9fcd7ef4ddb1L
        -0xd44b927617d8fbdL
        0x213bdaaf5af17342L    # 1.361486802902429E-148
        0x2691befbedee2eb2L    # 6.711244007934536E-123
    .end array-data

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
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
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    :array_1
    .array-data 8
        -0x7710e94c582b4e0dL
        -0x7e169dca69c1e24bL
        0x754b5a0adfe5995bL    # 1.0267178075451284E257
        -0x7943e9ef991585f2L    # -3.168814263169927E-276
        0x65f4ae1474e7ce3fL    # 1.3729916877884989E183
        -0x5b154a0e753f261cL    # -7.526229183877889E-131
        0x51fb96886f205a09L    # 8.575101908650733E86
        0x456ca37624afd3b0L    # 2.769747843622586E26
        -0x7ac5d2c68fba21cL    # -4.149445251741873E271
        0x7242a1862cbbf073L    # 2.48462934927504E242
        -0x3b4d53ca215283f8L    # -8.817931840300872E22
    .end array-data

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
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
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    :array_2
    .array-data 8
        -0x571c103e7874bf0bL
        0x6984fdce3627d160L    # 2.0084874074179134E200
        -0x3fe62d83aba7b810L    # -6.455552404297109
        0x7b8f324428d55457L    # 1.4844641183101297E287
        0x5196d192d7a1c547L    # 1.1082268866964287E85
        0x67830742a9e7bfa3L    # 4.239051119043098E190
    .end array-data
.end method
