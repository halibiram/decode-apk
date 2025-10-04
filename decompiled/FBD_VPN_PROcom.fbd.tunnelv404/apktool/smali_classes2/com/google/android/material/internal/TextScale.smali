.class public Lcom/google/android/material/internal/TextScale;
.super Landroidx/transition/Transition;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final PROPNAME_SCALE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/internal/TextScale;->PROPNAME_SCALE:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        0x17077defd49697c2L    # 9.820910532008323E-198
        -0x3469910857fac7eaL    # -1.3751674911546209E56
        0x17a77cccd1571c5eL
        -0x2f6d2dcab1a7430bL    # -1.3947759923822084E80
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .locals 3
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 2
    .line 3
    instance-of v1, v0, Landroid/widget/TextView;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    .line 9
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v2, 0x4

    .line 14
    new-array v2, v2, [J

    .line 15
    .line 16
    fill-array-data v2, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        -0x10c6ec3090a8abbbL    # -5.940718429401677E227
        -0x64d0ad4aa8602f82L    # -9.6622222946048E-178
        -0x3736b37457e985b4L    # -4.4077084872663724E42
        -0x1345c9756652e203L    # -5.647737564153874E215
    .end array-data
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/TextScale;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/TextScale;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x4

    .line 2
    const/4 v0, 0x0

    .line 3
    if-eqz p2, :cond_4

    .line 4
    .line 5
    if-eqz p3, :cond_4

    .line 6
    .line 7
    iget-object v1, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 8
    .line 9
    instance-of v1, v1, Landroid/widget/TextView;

    .line 10
    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    iget-object v1, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 14
    .line 15
    instance-of v2, v1, Landroid/widget/TextView;

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_0
    check-cast v1, Landroid/widget/TextView;

    .line 22
    .line 23
    iget-object p2, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 24
    .line 25
    iget-object p3, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 26
    .line 27
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    new-array v3, p1, [J

    .line 30
    .line 31
    fill-array-data v3, :array_0

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const/high16 v3, 0x3f800000    # 1.0f

    .line 46
    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    new-array v4, p1, [J

    .line 52
    .line 53
    fill-array-data v4, :array_1

    .line 54
    .line 55
    .line 56
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    check-cast p2, Ljava/lang/Float;

    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    .line 75
    .line 76
    :goto_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    new-array v4, p1, [J

    .line 79
    .line 80
    fill-array-data v4, :array_2

    .line 81
    .line 82
    .line 83
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    if-eqz v2, :cond_2

    .line 95
    .line 96
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 97
    .line 98
    new-array p1, p1, [J

    .line 99
    .line 100
    fill-array-data p1, :array_3

    .line 101
    .line 102
    .line 103
    invoke-direct {v2, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Ljava/lang/Float;

    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    :cond_2
    cmpl-float p1, p2, v3

    .line 121
    .line 122
    if-nez p1, :cond_3

    .line 123
    .line 124
    return-object v0

    .line 125
    :cond_3
    const/4 p1, 0x2

    .line 126
    new-array p1, p1, [F

    .line 127
    .line 128
    const/4 p3, 0x0

    .line 129
    aput p2, p1, p3

    .line 130
    .line 131
    const/4 p2, 0x1

    .line 132
    aput v3, p1, p2

    .line 133
    .line 134
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    new-instance p2, Lcom/google/android/material/internal/TextScale$1;

    .line 139
    .line 140
    invoke-direct {p2, p0, v1}, Lcom/google/android/material/internal/TextScale$1;-><init>(Lcom/google/android/material/internal/TextScale;Landroid/widget/TextView;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 144
    .line 145
    .line 146
    return-object p1

    .line 147
    :cond_4
    :goto_1
    return-object v0

    .line 148
    nop

    .line 149
    :array_0
    .array-data 8
        -0x522782be57e5b79cL    # -7.694091493875157E-88
        -0x10121320fd61081aL    # -1.4518604782617173E231
        -0x70223c303ff67cdL
        -0x8ba8322865267ebL
    .end array-data

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
    :array_1
    .array-data 8
        0x5aaf03751cea69c4L    # 6.717984961448254E128
        0x182616c7eac973baL
        0x16f689fbf3b960e4L
        -0x731f42c573c77229L    # -1.197037069379447E-246
    .end array-data

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
    :array_2
    .array-data 8
        0x6ade2790b32c2328L    # 6.050759886423688E206
        0x743ff485a716f3b2L    # 9.151608823282022E251
        0x231b49273f7324d6L    # 1.432049393976414E-139
        0x69775cd6dec3c20L
    .end array-data

    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    :array_3
    .array-data 8
        -0x24645d8d1aae9fd6L    # -1.961510982256855E133
        0x629978a7e8bdaca9L    # 9.387478001891278E166
        -0x69fac96d3efe4fe9L
        -0x5189e10712547f0eL    # -7.116815536104901E-85
    .end array-data
.end method
