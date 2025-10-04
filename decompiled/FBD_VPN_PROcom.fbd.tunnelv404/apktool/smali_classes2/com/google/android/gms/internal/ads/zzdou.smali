.class public final Lcom/google/android/gms/internal/ads/zzdou;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdtk;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdrz;

.field private zzc:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdtk;Lcom/google/android/gms/internal/ads/zzdrz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdou;->zza:Lcom/google/android/gms/internal/ads/zzdtk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdou;->zzb:Lcom/google/android/gms/internal/ads/zzdrz;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdou;->zzc:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-void
.end method

.method private static final zzf(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :catch_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/zzcdv;->zzx(Landroid/content/Context;I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method


# virtual methods
.method public final zza(Landroid/view/View;Landroid/view/WindowManager;)Landroid/view/View;
    .locals 11
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/WindowManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdou;->zza:Lcom/google/android/gms/internal/ads/zzdtk;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzq;->zzc()Lcom/google/android/gms/ads/internal/client/zzq;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzdtk;->zza(Lcom/google/android/gms/ads/internal/client/zzq;Lcom/google/android/gms/internal/ads/zzfgm;Lcom/google/android/gms/internal/ads/zzfgp;)Lcom/google/android/gms/internal/ads/zzcjk;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    move-object v1, v0

    .line 13
    check-cast v1, Landroid/view/View;

    .line 14
    .line 15
    const/4 v2, 0x4

    .line 16
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 v4, 0x3

    .line 22
    new-array v4, v4, [J

    .line 23
    .line 24
    fill-array-data v4, :array_0

    .line 25
    .line 26
    .line 27
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdoo;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdoo;-><init>(Lcom/google/android/gms/internal/ads/zzdou;)V

    .line 40
    .line 41
    .line 42
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    new-array v4, v2, [J

    .line 45
    .line 46
    fill-array-data v4, :array_1

    .line 47
    .line 48
    .line 49
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-interface {v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzcjk;->zzae(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbng;)V

    .line 57
    .line 58
    .line 59
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdop;

    .line 60
    .line 61
    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzdop;-><init>(Lcom/google/android/gms/internal/ads/zzdou;Landroid/view/WindowManager;Landroid/view/View;)V

    .line 62
    .line 63
    .line 64
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 65
    .line 66
    new-array v4, v2, [J

    .line 67
    .line 68
    fill-array-data v4, :array_2

    .line 69
    .line 70
    .line 71
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-interface {v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzcjk;->zzae(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbng;)V

    .line 79
    .line 80
    .line 81
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbnr;

    .line 82
    .line 83
    const/4 v9, 0x0

    .line 84
    const/4 v10, 0x0

    .line 85
    const/4 v5, 0x0

    .line 86
    const/4 v6, 0x0

    .line 87
    const/4 v7, 0x0

    .line 88
    const/4 v8, 0x0

    .line 89
    move-object v4, v1

    .line 90
    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzbnr;-><init>(Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbvq;Lcom/google/android/gms/internal/ads/zzehh;Lcom/google/android/gms/internal/ads/zzdwf;Lcom/google/android/gms/internal/ads/zzflw;Lcom/google/android/gms/internal/ads/zzcse;)V

    .line 91
    .line 92
    .line 93
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 94
    .line 95
    const/4 v4, 0x2

    .line 96
    new-array v4, v4, [J

    .line 97
    .line 98
    fill-array-data v4, :array_3

    .line 99
    .line 100
    .line 101
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-interface {v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzcjk;->zzae(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbng;)V

    .line 109
    .line 110
    .line 111
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 112
    .line 113
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdoq;

    .line 117
    .line 118
    invoke-direct {v3, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdoq;-><init>(Lcom/google/android/gms/internal/ads/zzdou;Landroid/view/View;Landroid/view/WindowManager;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdou;->zzb:Lcom/google/android/gms/internal/ads/zzdrz;

    .line 122
    .line 123
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 124
    .line 125
    const/4 v4, 0x5

    .line 126
    new-array v4, v4, [J

    .line 127
    .line 128
    fill-array-data v4, :array_4

    .line 129
    .line 130
    .line 131
    invoke-direct {p2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-virtual {p1, v1, p2, v3}, Lcom/google/android/gms/internal/ads/zzdrz;->zzj(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbng;)V

    .line 139
    .line 140
    .line 141
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 142
    .line 143
    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdou;->zzb:Lcom/google/android/gms/internal/ads/zzdrz;

    .line 147
    .line 148
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 149
    .line 150
    new-array v2, v2, [J

    .line 151
    .line 152
    fill-array-data v2, :array_5

    .line 153
    .line 154
    .line 155
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    sget-object v2, Lcom/google/android/gms/internal/ads/zzdor;->zza:Lcom/google/android/gms/internal/ads/zzdor;

    .line 163
    .line 164
    invoke-virtual {p2, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzdrz;->zzj(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbng;)V

    .line 165
    .line 166
    .line 167
    check-cast v0, Landroid/view/View;

    .line 168
    .line 169
    return-object v0

    .line 170
    nop

    .line 171
    :array_0
    .array-data 8
        0x3398d319adcb6ef5L    # 3.862098272454408E-60
        -0x7d0ce305fdae336L    # -8.239961518993202E270
        -0x32031a5b643f74acL    # -4.8691421090199024E67
    .end array-data

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
    :array_1
    .array-data 8
        0x316fd92e1f69a8fbL    # 1.442042637941004E-70
        0x2212fdc114a46a03L
        -0x69a0973f1a8c9f1dL
        -0x2a133db8e0f1ba90L    # -8.244811516236801E105
    .end array-data

    .line 188
    .line 189
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
    :array_2
    .array-data 8
        -0x2020ea7a5029b7c7L    # -6.512019619612058E153
        0x56352a6fd106d7a1L    # 1.941746447375238E107
        0x104751e4049ea5a2L
        -0x30742f9c227b10b3L    # -1.5725800432822884E75
    .end array-data

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    :array_3
    .array-data 8
        0xc393ddb66f33a0bL    # 8.81375527951882E-250
        0x1dbea7f5f005d934L
    .end array-data

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    :array_4
    .array-data 8
        -0x5476b7377b36abe0L    # -5.779929430589041E-99
        -0x4ed3d4a224b194acL    # -7.97165794669153E-72
        -0x2b2112e24cc0543bL    # -6.764342869137819E100
        -0x49c1cd1832086c2L
        -0x2c5b921ca39873dfL    # -8.522776216342936E94
    .end array-data

    .line 240
    .line 241
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
    :array_5
    .array-data 8
        -0x6fbacf47470d5db4L    # -2.729799896828563E-230
        -0x319ab10b06dae972L    # -4.5957921191894905E69
        -0x166337b7c645182eL    # -5.507866570928753E200
        0x538f5b6aa85f75d7L    # 3.270427295146068E94
    .end array-data
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzcjk;Ljava/util/Map;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdou;->zzb:Lcom/google/android/gms/internal/ads/zzdrz;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    new-array v1, v1, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzdrz;->zzg(Ljava/lang/String;Ljava/util/Map;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        -0x7d6e74497611d765L    # -2.682849514876485E-296
        0x3f15d5a61de991d9L    # 8.329225918541436E-5
        0x466bfd341f885568L    # 1.7740184867366638E31
        0x41c9dea53514b022L    # 8.680433701616251E8
    .end array-data
.end method

.method public final synthetic zzc(Landroid/view/WindowManager;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcjk;Ljava/util/Map;)V
    .locals 1

    .line 1
    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v0, 0x6

    .line 4
    new-array v0, v0, [J

    .line 5
    .line 6
    fill-array-data v0, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p4

    .line 16
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzcec;->zze(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcjk;->zzF()Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p4

    .line 23
    const/16 v0, 0x8

    .line 24
    .line 25
    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcjk;->zzF()Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p4

    .line 32
    invoke-virtual {p4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 33
    .line 34
    .line 35
    move-result-object p4

    .line 36
    if-eqz p4, :cond_0

    .line 37
    .line 38
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcjk;->zzF()Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p4

    .line 42
    invoke-interface {p1, p4}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcjk;->destroy()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdou;->zzc:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 53
    .line 54
    if-eqz p2, :cond_1

    .line 55
    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-eqz p2, :cond_1

    .line 63
    .line 64
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdou;->zzc:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    return-void

    .line 70
    nop

    .line 71
    :array_0
    .array-data 8
        0x65c843dac349a7afL    # 2.013764619931425E182
        0x32ab9d68a9052b0fL    # 1.311094735520587E-64
        -0x3894078f7982b3ecL    # -1.161847743510511E36
        -0x20bd5d97bc7c10cdL    # -7.624710149831602E150
        0x574486638454d0a5L    # 2.4680311395118593E112
        0x2680f18e29db7807L    # 3.203884446415259E-123
    .end array-data
.end method

.method public final synthetic zzd(Ljava/util/Map;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p2, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 p4, 0x3

    .line 9
    new-array p4, p4, [J

    .line 10
    .line 11
    fill-array-data p4, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/4 p5, 0x4

    .line 24
    new-array v0, p5, [J

    .line 25
    .line 26
    fill-array-data v0, :array_1

    .line 27
    .line 28
    .line 29
    invoke-direct {p4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p4

    .line 36
    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    const/4 p4, 0x2

    .line 42
    new-array v0, p4, [J

    .line 43
    .line 44
    fill-array-data v0, :array_2

    .line 45
    .line 46
    .line 47
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Ljava/lang/String;

    .line 59
    .line 60
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 61
    .line 62
    new-array p4, p4, [J

    .line 63
    .line 64
    fill-array-data p4, :array_3

    .line 65
    .line 66
    .line 67
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdou;->zzb:Lcom/google/android/gms/internal/ads/zzdrz;

    .line 78
    .line 79
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 80
    .line 81
    new-array p4, p5, [J

    .line 82
    .line 83
    fill-array-data p4, :array_4

    .line 84
    .line 85
    .line 86
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzdrz;->zzg(Ljava/lang/String;Ljava/util/Map;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :array_0
    .array-data 8
        -0x297d32da1b913b25L    # -5.519474157607585E108
        -0x697330fe923a3fbcL
        0x70030dffb7c042ebL    # 3.697842550145187E231
    .end array-data

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
    :array_1
    .array-data 8
        0x5c69f40792234d1fL    # 1.5091056185890112E137
        0x5a2250efdbb2c5bbL    # 1.549824877743807E126
        -0x46e7cd4b0f61a44cL    # -1.1650948550948655E-33
        0x5a409aa029e164dbL    # 5.619802899566964E126
    .end array-data

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
    :array_2
    .array-data 8
        0x789dcdb77dc83791L    # 1.007684410006045E273
        -0x7e67585b4227476eL    # -5.752370382699474E-301
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
    :array_3
    .array-data 8
        0x5884ff5d5c72608bL    # 2.647501911214729E118
        -0x3c5825467e4b3d2fL    # -8.5944508726492582E17
    .end array-data

    .line 146
    .line 147
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
    :array_4
    .array-data 8
        0x71db6f10f48bee91L    # 2.8582706905892288E240
        -0x6142eaf26b9a17c7L    # -1.2928559998080713E-160
        -0x3c02670a509a8e0L    # -3.103867278620533E290
        -0x57c13e9e160e13cfL    # -7.805541713650763E-115
    .end array-data
.end method

.method public final synthetic zze(Landroid/view/View;Landroid/view/WindowManager;Lcom/google/android/gms/internal/ads/zzcjk;Ljava/util/Map;)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v8, p3

    .line 3
    .line 4
    move-object/from16 v9, p4

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    const/4 v10, 0x3

    .line 8
    invoke-interface/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzcjk;->zzN()Lcom/google/android/gms/internal/ads/zzcky;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdot;

    .line 13
    .line 14
    invoke-direct {v3, p0, v9}, Lcom/google/android/gms/internal/ads/zzdot;-><init>(Lcom/google/android/gms/internal/ads/zzdou;Ljava/util/Map;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzcky;->zzB(Lcom/google/android/gms/internal/ads/zzckw;)V

    .line 18
    .line 19
    .line 20
    if-nez v9, :cond_0

    .line 21
    .line 22
    goto/16 :goto_5

    .line 23
    .line 24
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    new-array v4, v10, [J

    .line 31
    .line 32
    fill-array-data v4, :array_0

    .line 33
    .line 34
    .line 35
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Ljava/lang/String;

    .line 47
    .line 48
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbgc;->zzhV:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 49
    .line 50
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Ljava/lang/Integer;

    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdou;->zzf(Landroid/content/Context;Ljava/lang/String;I)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    new-array v5, v10, [J

    .line 71
    .line 72
    fill-array-data v5, :array_1

    .line 73
    .line 74
    .line 75
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    check-cast v4, Ljava/lang/String;

    .line 87
    .line 88
    sget-object v5, Lcom/google/android/gms/internal/ads/zzbgc;->zzhW:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 89
    .line 90
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    check-cast v5, Ljava/lang/Integer;

    .line 99
    .line 100
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzdou;->zzf(Landroid/content/Context;Ljava/lang/String;I)I

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 109
    .line 110
    new-array v6, v10, [J

    .line 111
    .line 112
    fill-array-data v6, :array_2

    .line 113
    .line 114
    .line 115
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    check-cast v5, Ljava/lang/String;

    .line 127
    .line 128
    const/4 v6, 0x0

    .line 129
    invoke-static {v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzdou;->zzf(Landroid/content/Context;Ljava/lang/String;I)I

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 134
    .line 135
    new-array v11, v10, [J

    .line 136
    .line 137
    fill-array-data v11, :array_3

    .line 138
    .line 139
    .line 140
    invoke-direct {v7, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    check-cast v7, Ljava/lang/String;

    .line 152
    .line 153
    invoke-static {v2, v7, v6}, Lcom/google/android/gms/internal/ads/zzdou;->zzf(Landroid/content/Context;Ljava/lang/String;I)I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzcla;->zzb(II)Lcom/google/android/gms/internal/ads/zzcla;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-interface {v8, v3}, Lcom/google/android/gms/internal/ads/zzcjk;->zzah(Lcom/google/android/gms/internal/ads/zzcla;)V

    .line 162
    .line 163
    .line 164
    :try_start_0
    invoke-interface/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzcjk;->zzG()Landroid/webkit/WebView;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbgc;->zzhX:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 173
    .line 174
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    check-cast v4, Ljava/lang/Boolean;

    .line 183
    .line 184
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 185
    .line 186
    .line 187
    move-result v4

    .line 188
    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 189
    .line 190
    .line 191
    invoke-interface/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzcjk;->zzG()Landroid/webkit/WebView;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbgc;->zzhY:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 200
    .line 201
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    check-cast v4, Ljava/lang/Boolean;

    .line 210
    .line 211
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 212
    .line 213
    .line 214
    move-result v4

    .line 215
    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .line 217
    .line 218
    goto :goto_0

    .line 219
    :catch_0
    nop

    .line 220
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzb()Landroid/view/WindowManager$LayoutParams;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    iput v5, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 225
    .line 226
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 227
    .line 228
    invoke-interface/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzcjk;->zzF()Landroid/view/View;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    move-object/from16 v7, p2

    .line 233
    .line 234
    invoke-interface {v7, v3, v6}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    .line 236
    .line 237
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 238
    .line 239
    new-array v4, v10, [J

    .line 240
    .line 241
    fill-array-data v4, :array_4

    .line 242
    .line 243
    .line 244
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    move-object v4, v3

    .line 256
    check-cast v4, Ljava/lang/String;

    .line 257
    .line 258
    new-instance v3, Landroid/graphics/Rect;

    .line 259
    .line 260
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 261
    .line 262
    .line 263
    move-object v11, p1

    .line 264
    invoke-virtual {p1, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 265
    .line 266
    .line 267
    move-result v5

    .line 268
    if-nez v5, :cond_1

    .line 269
    .line 270
    goto :goto_4

    .line 271
    :cond_1
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 272
    .line 273
    new-array v12, v1, [J

    .line 274
    .line 275
    fill-array-data v12, :array_5

    .line 276
    .line 277
    .line 278
    invoke-direct {v5, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v5

    .line 289
    if-nez v5, :cond_3

    .line 290
    .line 291
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 292
    .line 293
    new-array v1, v1, [J

    .line 294
    .line 295
    fill-array-data v1, :array_6

    .line 296
    .line 297
    .line 298
    invoke-direct {v5, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    if-eqz v1, :cond_2

    .line 310
    .line 311
    goto :goto_2

    .line 312
    :cond_2
    iget v1, v3, Landroid/graphics/Rect;->top:I

    .line 313
    .line 314
    :goto_1
    sub-int/2addr v1, v2

    .line 315
    move v12, v1

    .line 316
    goto :goto_3

    .line 317
    :cond_3
    :goto_2
    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    .line 318
    .line 319
    goto :goto_1

    .line 320
    :goto_3
    new-instance v13, Lcom/google/android/gms/internal/ads/zzdos;

    .line 321
    .line 322
    move-object v1, v13

    .line 323
    move-object v2, p1

    .line 324
    move-object/from16 v3, p3

    .line 325
    .line 326
    move-object v5, v6

    .line 327
    move v6, v12

    .line 328
    move-object/from16 v7, p2

    .line 329
    .line 330
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzdos;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcjk;Ljava/lang/String;Landroid/view/WindowManager$LayoutParams;ILandroid/view/WindowManager;)V

    .line 331
    .line 332
    .line 333
    iput-object v13, v0, Lcom/google/android/gms/internal/ads/zzdou;->zzc:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 334
    .line 335
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    if-eqz v1, :cond_4

    .line 340
    .line 341
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 342
    .line 343
    .line 344
    move-result v2

    .line 345
    if-eqz v2, :cond_4

    .line 346
    .line 347
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzdou;->zzc:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 348
    .line 349
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 350
    .line 351
    .line 352
    :cond_4
    :goto_4
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 353
    .line 354
    new-array v2, v10, [J

    .line 355
    .line 356
    fill-array-data v2, :array_7

    .line 357
    .line 358
    .line 359
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    check-cast v1, Ljava/lang/String;

    .line 371
    .line 372
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 373
    .line 374
    .line 375
    move-result v2

    .line 376
    if-nez v2, :cond_5

    .line 377
    .line 378
    invoke-interface {v8, v1}, Lcom/google/android/gms/internal/ads/zzcjk;->loadUrl(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    :cond_5
    :goto_5
    return-void

    .line 382
    nop

    .line 383
    :array_0
    .array-data 8
        0x3c7f8912992b6afeL    # 2.7352634079435072E-17
        0x2f5688a239ca82d2L
        0x1e8694a6ad8b9c01L
    .end array-data

    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    :array_1
    .array-data 8
        -0x4e3a27fb52f4bd04L
        0x58a28a43127fb588L    # 9.350612238695595E118
        0x42787cd76ed69356L    # 1.6827793360412085E12
    .end array-data

    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    :array_2
    .array-data 8
        -0x1a485e72fff5b0L
        0x2ba2273e8aeddd03L    # 1.6599192648612005E-98
        -0x5404acee5149472bL    # -7.995275750639343E-97
    .end array-data

    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    :array_3
    .array-data 8
        -0x45e921d5a68cbf09L    # -7.215815997459068E-29
        0x67cb31c40222539dL    # 9.693189210948327E191
        0x23c5a7c11a8db3d8L
    .end array-data

    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    :array_4
    .array-data 8
        -0x122e2d0c8d04650aL    # -1.006706034480926E221
        -0x6ffe23469867475fL
        0x76c3495de0db7f5cL    # 1.2146233731509797E264
    .end array-data

    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    :array_5
    .array-data 8
        -0x573e19fb26e279e9L
        0x6223faeb40963982L    # 5.752894860330101E164
    .end array-data

    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    :array_6
    .array-data 8
        0x4e8a3cf14a2cb590L    # 2.2636051574069386E70
        0x3fdbf494e02e7d0aL    # 0.4368030728600877
    .end array-data

    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    :array_7
    .array-data 8
        -0x75ecb7c61b70186cL
        -0x367411eb127abfaeL    # -1.9931518904906856E46
        -0x5e3ad752cf6aa56L
    .end array-data
.end method
