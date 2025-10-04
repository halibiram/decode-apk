.class Lcom/google/android/material/appbar/ViewUtilsLollipop;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# static fields
.field private static final STATE_LIST_ANIM_ATTRS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const v0, 0x1010448

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/google/android/material/appbar/ViewUtilsLollipop;->STATE_LIST_ANIM_ATTRS:[I

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setBoundsViewOutlineProvider(Landroid/view/View;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Landroid/view/ViewOutlineProvider;->BOUNDS:Landroid/view/ViewOutlineProvider;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V
    .locals 12
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/google/android/material/R$integer;->app_bar_elevation_anim_duration:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    new-instance v1, Landroid/animation/StateListAnimator;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/animation/StateListAnimator;-><init>()V

    .line 14
    .line 15
    .line 16
    sget v2, Lcom/google/android/material/R$attr;->state_liftable:I

    .line 17
    .line 18
    sget v3, Lcom/google/android/material/R$attr;->state_lifted:I

    .line 19
    .line 20
    neg-int v3, v3

    .line 21
    const v4, 0x101009e

    .line 22
    .line 23
    .line 24
    filled-new-array {v4, v2, v3}, [I

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/4 v5, 0x3

    .line 31
    new-array v6, v5, [J

    .line 32
    .line 33
    fill-array-data v6, :array_0

    .line 34
    .line 35
    .line 36
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v7, 0x1

    .line 45
    new-array v8, v7, [F

    .line 46
    .line 47
    const/4 v9, 0x0

    .line 48
    aput v6, v8, v9

    .line 49
    .line 50
    invoke-static {p0, v3, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    int-to-long v10, v0

    .line 55
    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v1, v2, v0}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 60
    .line 61
    .line 62
    filled-new-array {v4}, [I

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 67
    .line 68
    new-array v3, v5, [J

    .line 69
    .line 70
    fill-array-data v3, :array_1

    .line 71
    .line 72
    .line 73
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    new-array v3, v7, [F

    .line 81
    .line 82
    aput p1, v3, v9

    .line 83
    .line 84
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {v1, v0, p1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 93
    .line 94
    .line 95
    new-array p1, v9, [I

    .line 96
    .line 97
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 98
    .line 99
    new-array v2, v5, [J

    .line 100
    .line 101
    fill-array-data v2, :array_2

    .line 102
    .line 103
    .line 104
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    new-array v2, v7, [F

    .line 112
    .line 113
    aput v6, v2, v9

    .line 114
    .line 115
    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const-wide/16 v2, 0x0

    .line 120
    .line 121
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v1, p1, v0}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v1}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    nop

    .line 133
    :array_0
    .array-data 8
        0x7ed20e52d4b2728L
        -0x69dffc33a1ec9cf3L    # -4.086348902075176E-202
        -0x3889786c6968d2edL    # -1.8716855892745745E36
    .end array-data

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
    .line 148
    .line 149
    :array_1
    .array-data 8
        0x79e390fb45942edcL    # 1.3873801063775053E279
        0x17874389702daa8aL
        0x79af3e44f45a5ec1L    # 1.3845928208041331E278
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
    :array_2
    .array-data 8
        -0x7452a189012a0989L
        0x486214da04d63b93L    # 4.922239346648523E40
        0x71479ffe17fb9f6eL    # 4.807484345001544E237
    .end array-data
.end method

.method public static setStateListAnimatorFromAttrs(Landroid/view/View;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v6

    .line 5
    sget-object v2, Lcom/google/android/material/appbar/ViewUtilsLollipop;->STATE_LIST_ANIM_ATTRS:[I

    .line 6
    .line 7
    const/4 v7, 0x0

    .line 8
    new-array v5, v7, [I

    .line 9
    .line 10
    move-object v0, v6

    .line 11
    move-object v1, p1

    .line 12
    move v3, p2

    .line 13
    move v4, p3

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :try_start_0
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    invoke-static {v6, p2}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p0, p2}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    .line 44
    .line 45
    throw p0
.end method
