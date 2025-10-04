.class public final Lcom/google/android/gms/ads/internal/overlay/zzs;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final zza:Landroid/widget/ImageButton;

.field private final zzb:Lcom/google/android/gms/ads/internal/overlay/zzae;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzr;Lcom/google/android/gms/ads/internal/overlay/zzae;)V
    .locals 4
    .param p3    # Lcom/google/android/gms/ads/internal/overlay/zzae;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzb:Lcom/google/android/gms/ads/internal/overlay/zzae;

    .line 5
    .line 6
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    new-instance p3, Landroid/widget/ImageButton;

    .line 10
    .line 11
    invoke-direct {p3, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zza:Landroid/widget/ImageButton;

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzc()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 27
    .line 28
    .line 29
    iget v1, p2, Lcom/google/android/gms/ads/internal/overlay/zzr;->zza:I

    .line 30
    .line 31
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzcdv;->zzx(Landroid/content/Context;I)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzcdv;->zzx(Landroid/content/Context;I)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 43
    .line 44
    .line 45
    iget v2, p2, Lcom/google/android/gms/ads/internal/overlay/zzr;->zzb:I

    .line 46
    .line 47
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzcdv;->zzx(Landroid/content/Context;I)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 52
    .line 53
    .line 54
    iget v3, p2, Lcom/google/android/gms/ads/internal/overlay/zzr;->zzc:I

    .line 55
    .line 56
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/zzcdv;->zzx(Landroid/content/Context;I)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-virtual {p3, v1, v0, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 61
    .line 62
    .line 63
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 64
    .line 65
    const/4 v1, 0x5

    .line 66
    new-array v1, v1, [J

    .line 67
    .line 68
    fill-array-data v1, :array_0

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p3, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 82
    .line 83
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 84
    .line 85
    .line 86
    iget v1, p2, Lcom/google/android/gms/ads/internal/overlay/zzr;->zzd:I

    .line 87
    .line 88
    iget v2, p2, Lcom/google/android/gms/ads/internal/overlay/zzr;->zza:I

    .line 89
    .line 90
    add-int/2addr v1, v2

    .line 91
    iget v2, p2, Lcom/google/android/gms/ads/internal/overlay/zzr;->zzb:I

    .line 92
    .line 93
    add-int/2addr v1, v2

    .line 94
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzcdv;->zzx(Landroid/content/Context;I)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 99
    .line 100
    .line 101
    iget v2, p2, Lcom/google/android/gms/ads/internal/overlay/zzr;->zzd:I

    .line 102
    .line 103
    iget p2, p2, Lcom/google/android/gms/ads/internal/overlay/zzr;->zzc:I

    .line 104
    .line 105
    add-int/2addr v2, p2

    .line 106
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzcdv;->zzx(Landroid/content/Context;I)I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    const/16 p2, 0x11

    .line 111
    .line 112
    invoke-direct {v0, v1, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    .line 117
    .line 118
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgc;->zzbc:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 119
    .line 120
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    check-cast p1, Ljava/lang/Long;

    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 131
    .line 132
    .line 133
    move-result-wide p1

    .line 134
    const-wide/16 v0, 0x0

    .line 135
    .line 136
    cmp-long v2, p1, v0

    .line 137
    .line 138
    if-gtz v2, :cond_0

    .line 139
    .line 140
    return-void

    .line 141
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzbd:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 142
    .line 143
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Ljava/lang/Boolean;

    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_1

    .line 158
    .line 159
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzq;

    .line 160
    .line 161
    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/overlay/zzq;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzs;)V

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_1
    const/4 v0, 0x0

    .line 166
    :goto_0
    const/4 v1, 0x0

    .line 167
    invoke-virtual {p3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 171
    .line 172
    .line 173
    move-result-object p3

    .line 174
    const/high16 v1, 0x3f800000    # 1.0f

    .line 175
    .line 176
    invoke-virtual {p3, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 177
    .line 178
    .line 179
    move-result-object p3

    .line 180
    invoke-virtual {p3, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    nop

    .line 189
    :array_0
    .array-data 8
        -0x1469330dd4c5ae3L
        0x2fdc25140ff5b7abL    # 3.7978681178753924E-78
        0x3504668a46825e2aL    # 2.662395664008613E-53
        -0x768d746808f5c373L    # -3.680928401472589E-263
        0x7f5825d961cb469bL    # 2.6495618283645328E305
    .end array-data
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/ads/internal/overlay/zzs;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zza:Landroid/widget/ImageButton;

    return-object p0
.end method

.method private final zzc()V
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgc;->zzbb:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 3
    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastLollipop()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const v3, 0x1080017

    .line 19
    .line 20
    .line 21
    if-eqz v2, :cond_5

    .line 22
    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_5

    .line 28
    .line 29
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    new-array v4, v0, [J

    .line 32
    .line 33
    fill-array-data v4, :array_0

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcdl;->zze()Landroid/content/res/Resources;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-eqz v2, :cond_4

    .line 59
    .line 60
    const/4 v4, 0x0

    .line 61
    :try_start_0
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    new-array v6, v0, [J

    .line 64
    .line 65
    fill-array-data v6, :array_1

    .line 66
    .line 67
    .line 68
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_1

    .line 80
    .line 81
    sget v0, Lcom/google/android/gms/ads/impl/R$drawable;->admob_close_button_white_circle_black_cross:I

    .line 82
    .line 83
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    goto :goto_0

    .line 88
    :cond_1
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 89
    .line 90
    new-array v0, v0, [J

    .line 91
    .line 92
    fill-array-data v0, :array_2

    .line 93
    .line 94
    .line 95
    invoke-direct {v5, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_2

    .line 107
    .line 108
    sget v0, Lcom/google/android/gms/ads/impl/R$drawable;->admob_close_button_black_circle_white_cross:I

    .line 109
    .line 110
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 111
    .line 112
    .line 113
    move-result-object v4
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    goto :goto_0

    .line 115
    :catch_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 116
    .line 117
    const/16 v1, 0x9

    .line 118
    .line 119
    new-array v1, v1, [J

    .line 120
    .line 121
    fill-array-data v1, :array_3

    .line 122
    .line 123
    .line 124
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcec;->zze(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :cond_2
    :goto_0
    if-nez v4, :cond_3

    .line 135
    .line 136
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zza:Landroid/widget/ImageButton;

    .line 137
    .line 138
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zza:Landroid/widget/ImageButton;

    .line 143
    .line 144
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zza:Landroid/widget/ImageButton;

    .line 148
    .line 149
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zza:Landroid/widget/ImageButton;

    .line 156
    .line 157
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zza:Landroid/widget/ImageButton;

    .line 162
    .line 163
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :array_0
    .array-data 8
        0x7e2f4d3d16078e61L    # 6.55079204557402E299
        0x4b5f32b0e635c628L    # 1.1952703479762976E55
    .end array-data

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
    :array_1
    .array-data 8
        0x4a5ee96a41e2dbc9L    # 1.8071045435205853E50
        -0x23c9703bcffb5b66L    # -1.6398635356481044E136
    .end array-data

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
    :array_2
    .array-data 8
        0x5fdaf6d158ad2d27L    # 5.648904705365107E153
        -0x2b80254b0118e947L    # -1.0886467790449342E99
    .end array-data

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
    :array_3
    .array-data 8
        0x76cb30cdfa34fc3bL    # 1.7124018641241768E264
        0xd6c9296c779165bL
        -0x17c8d741e3131328L    # -1.056622507084971E194
        -0xc566c0bc915b7deL
        -0x40f0d7e2c7a9aab5L    # -5.942668125695024E-5
        -0x1140492a5341da7cL    # -2.934745910825141E225
        -0x7e68a3740ce022abL    # -5.450611947106444E-301
        -0x2ac1b1d1d0896ea3L    # -4.2422714321386047E102
        -0x1cd82a46b0e973deL    # -4.497593083152999E169
    .end array-data
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zzb:Lcom/google/android/gms/ads/internal/overlay/zzae;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/overlay/zzae;->zzj()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final zzb(Z)V
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zza:Landroid/widget/ImageButton;

    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgc;->zzbc:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 11
    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Ljava/lang/Long;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    const-wide/16 v2, 0x0

    .line 27
    .line 28
    cmp-long p1, v0, v2

    .line 29
    .line 30
    if-lez p1, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zza:Landroid/widget/ImageButton;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zza:Landroid/widget/ImageButton;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void

    .line 47
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzs;->zza:Landroid/widget/ImageButton;

    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    return-void
.end method
