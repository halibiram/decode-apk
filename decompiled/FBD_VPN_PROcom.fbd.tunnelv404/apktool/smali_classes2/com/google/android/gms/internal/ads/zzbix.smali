.class public final Lcom/google/android/gms/internal/ads/zzbix;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static final zza:[F


# instance fields
.field private zzb:Landroid/graphics/drawable/AnimationDrawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbix;->zza:[F

    return-void

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbiw;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 6

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 3
    .line 4
    .line 5
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    .line 9
    .line 10
    new-instance v2, Landroid/graphics/drawable/shapes/RoundRectShape;

    .line 11
    .line 12
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbix;->zza:[F

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-direct {v2, v3, v4, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbiw;->zzd()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 36
    .line 37
    .line 38
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 39
    .line 40
    const/4 v1, -0x2

    .line 41
    invoke-direct {p3, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbiw;->zzg()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    const/4 v3, 0x0

    .line 53
    const/4 v4, 0x1

    .line 54
    if-nez v2, :cond_0

    .line 55
    .line 56
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 57
    .line 58
    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 59
    .line 60
    .line 61
    new-instance v1, Landroid/widget/TextView;

    .line 62
    .line 63
    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    .line 68
    .line 69
    const v2, 0x47470001

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 73
    .line 74
    .line 75
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbiw;->zzg()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbiw;->zze()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbiw;->zzf()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    int-to-float v2, v2

    .line 99
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 100
    .line 101
    .line 102
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 103
    .line 104
    .line 105
    const/4 v2, 0x4

    .line 106
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzcdv;->zzx(Landroid/content/Context;I)I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 111
    .line 112
    .line 113
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzcdv;->zzx(Landroid/content/Context;I)I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    invoke-virtual {v1, v5, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    invoke-virtual {p3, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 128
    .line 129
    .line 130
    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    .line 131
    .line 132
    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    .line 137
    .line 138
    const p1, 0x47470002

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, p1}, Landroid/view/View;->setId(I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbiw;->zzi()Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    if-eqz p1, :cond_2

    .line 149
    .line 150
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 151
    .line 152
    .line 153
    move-result p3

    .line 154
    if-le p3, v4, :cond_2

    .line 155
    .line 156
    new-instance p3, Landroid/graphics/drawable/AnimationDrawable;

    .line 157
    .line 158
    invoke-direct {p3}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 159
    .line 160
    .line 161
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbix;->zzb:Landroid/graphics/drawable/AnimationDrawable;

    .line 162
    .line 163
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 168
    .line 169
    .line 170
    move-result p3

    .line 171
    if-eqz p3, :cond_1

    .line 172
    .line 173
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object p3

    .line 177
    check-cast p3, Lcom/google/android/gms/internal/ads/zzbiz;

    .line 178
    .line 179
    :try_start_0
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbiz;->zzf()Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 180
    .line 181
    .line 182
    move-result-object p3

    .line 183
    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p3

    .line 187
    check-cast p3, Landroid/graphics/drawable/Drawable;

    .line 188
    .line 189
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbix;->zzb:Landroid/graphics/drawable/AnimationDrawable;

    .line 190
    .line 191
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbiw;->zzb()I

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    invoke-virtual {v2, p3, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .line 197
    .line 198
    goto :goto_0

    .line 199
    :catch_0
    move-exception p3

    .line 200
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 201
    .line 202
    new-array v3, v0, [J

    .line 203
    .line 204
    fill-array-data v3, :array_0

    .line 205
    .line 206
    .line 207
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-static {v2, p3}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    .line 216
    .line 217
    goto :goto_0

    .line 218
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbix;->zzb:Landroid/graphics/drawable/AnimationDrawable;

    .line 219
    .line 220
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 221
    .line 222
    .line 223
    goto :goto_1

    .line 224
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 225
    .line 226
    .line 227
    move-result p2

    .line 228
    if-ne p2, v4, :cond_3

    .line 229
    .line 230
    :try_start_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbiz;

    .line 235
    .line 236
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbiz;->zzf()Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 245
    .line 246
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 247
    .line 248
    .line 249
    goto :goto_1

    .line 250
    :catch_1
    move-exception p1

    .line 251
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 252
    .line 253
    new-array p3, v0, [J

    .line 254
    .line 255
    fill-array-data p3, :array_1

    .line 256
    .line 257
    .line 258
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p2

    .line 265
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 266
    .line 267
    .line 268
    :cond_3
    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 269
    .line 270
    .line 271
    return-void

    .line 272
    nop

    .line 273
    :array_0
    .array-data 8
        0x2a3d83d471366164L
        -0x5189a024dfa8b8d0L    # -7.198356550237887E-85
        -0x15947e149c640e67L    # -4.312192732251761E204
        0x67cae0a2258815f4L    # 9.580224985211904E191
        -0x186a2e8668655970L    # -9.721144817262423E190
    .end array-data

    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    :array_1
    .array-data 8
        0x6985ce5e9e415005L    # 2.0864393065291E200
        -0x3ad82c35ce17e638L    # -1.4402721508738752E25
        0x769193b07d008bb7L    # 1.383689992204629E263
        -0x1a829d9c8dfe9993L    # -7.620670904060902E180
        0x1f7ef61b3231633L
    .end array-data
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbix;->zzb:Landroid/graphics/drawable/AnimationDrawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
