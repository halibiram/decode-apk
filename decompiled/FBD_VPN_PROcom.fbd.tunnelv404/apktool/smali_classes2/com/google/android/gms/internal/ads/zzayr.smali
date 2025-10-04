.class public final Lcom/google/android/gms/internal/ads/zzayr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static final zzc:J


# instance fields
.field zza:Landroid/content/BroadcastReceiver;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final zzb:Ljava/lang/ref/WeakReference;

.field private final zzd:Landroid/content/Context;

.field private zze:Landroid/app/Application;

.field private final zzf:Landroid/view/WindowManager;

.field private final zzg:Landroid/os/PowerManager;

.field private final zzh:Landroid/app/KeyguardManager;

.field private zzi:Ljava/lang/ref/WeakReference;

.field private zzj:Lcom/google/android/gms/internal/ads/zzazd;

.field private final zzk:Lcom/google/android/gms/ads/internal/util/zzcb;

.field private zzl:Z

.field private zzm:I

.field private final zzn:Ljava/util/HashSet;

.field private final zzo:Landroid/util/DisplayMetrics;

.field private final zzp:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzbm:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Long;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    sput-wide v0, Lcom/google/android/gms/internal/ads/zzayr;->zzc:J

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzcb;

    .line 5
    .line 6
    sget-wide v1, Lcom/google/android/gms/internal/ads/zzayr;->zzc:J

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzcb;-><init>(J)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayr;->zzk:Lcom/google/android/gms/ads/internal/util/zzcb;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzayr;->zzl:Z

    .line 15
    .line 16
    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzayr;->zzm:I

    .line 18
    .line 19
    new-instance v0, Ljava/util/HashSet;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayr;->zzn:Ljava/util/HashSet;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayr;->zzd:Landroid/content/Context;

    .line 31
    .line 32
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    const/4 v2, 0x2

    .line 35
    new-array v3, v2, [J

    .line 36
    .line 37
    fill-array-data v3, :array_0

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroid/view/WindowManager;

    .line 52
    .line 53
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzayr;->zzf:Landroid/view/WindowManager;

    .line 54
    .line 55
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    new-array v4, v2, [J

    .line 58
    .line 59
    fill-array-data v4, :array_1

    .line 60
    .line 61
    .line 62
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Landroid/os/PowerManager;

    .line 74
    .line 75
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzayr;->zzg:Landroid/os/PowerManager;

    .line 76
    .line 77
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 78
    .line 79
    new-array v2, v2, [J

    .line 80
    .line 81
    fill-array-data v2, :array_2

    .line 82
    .line 83
    .line 84
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Landroid/app/KeyguardManager;

    .line 96
    .line 97
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzayr;->zzh:Landroid/app/KeyguardManager;

    .line 98
    .line 99
    instance-of v2, v0, Landroid/app/Application;

    .line 100
    .line 101
    if-eqz v2, :cond_0

    .line 102
    .line 103
    check-cast v0, Landroid/app/Application;

    .line 104
    .line 105
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayr;->zze:Landroid/app/Application;

    .line 106
    .line 107
    new-instance v2, Lcom/google/android/gms/internal/ads/zzazd;

    .line 108
    .line 109
    invoke-direct {v2, v0, p0}, Lcom/google/android/gms/internal/ads/zzazd;-><init>(Landroid/app/Application;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 110
    .line 111
    .line 112
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzayr;->zzj:Lcom/google/android/gms/internal/ads/zzazd;

    .line 113
    .line 114
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayr;->zzo:Landroid/util/DisplayMetrics;

    .line 123
    .line 124
    new-instance p1, Landroid/graphics/Rect;

    .line 125
    .line 126
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 127
    .line 128
    .line 129
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayr;->zzp:Landroid/graphics/Rect;

    .line 130
    .line 131
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 140
    .line 141
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 150
    .line 151
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayr;->zzb:Ljava/lang/ref/WeakReference;

    .line 152
    .line 153
    if-eqz p1, :cond_1

    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    check-cast p1, Landroid/view/View;

    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_1
    const/4 p1, 0x0

    .line 163
    :goto_0
    if-eqz p1, :cond_2

    .line 164
    .line 165
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 166
    .line 167
    .line 168
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzayr;->zzm(Landroid/view/View;)V

    .line 169
    .line 170
    .line 171
    :cond_2
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 172
    .line 173
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayr;->zzb:Ljava/lang/ref/WeakReference;

    .line 177
    .line 178
    if-eqz p2, :cond_4

    .line 179
    .line 180
    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    if-eqz p1, :cond_3

    .line 185
    .line 186
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzayr;->zzl(Landroid/view/View;)V

    .line 187
    .line 188
    .line 189
    :cond_3
    invoke-virtual {p2, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 190
    .line 191
    .line 192
    :cond_4
    return-void

    .line 193
    :array_0
    .array-data 8
        -0x7e0ab45c2bac909L
        -0x4d4dd23f02e58e33L    # -1.7261732448900645E-64
    .end array-data

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
    :array_1
    .array-data 8
        -0x1685a4cdeffaad1bL    # -1.260899494465739E200
        -0x14ae9099f144769aL    # -8.956178110692227E208
    .end array-data

    .line 206
    .line 207
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
    :array_2
    .array-data 8
        -0x2da660e44fc84a4dL    # -5.0968701514189626E88
        0x7ba2741684714dc2L    # 3.512399335648646E287
    .end array-data
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzayr;I)V
    .locals 0

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzayr;->zzj(I)V

    return-void
.end method

.method private final zzh(I)I
    .locals 1

    .line 1
    int-to-float p1, p1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayr;->zzo:Landroid/util/DisplayMetrics;

    .line 3
    .line 4
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 5
    .line 6
    div-float/2addr p1, v0

    .line 7
    float-to-int p1, p1

    .line 8
    return p1
.end method

.method private final zzi(Landroid/app/Activity;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayr;->zzb:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayr;->zzb:Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/view/View;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-ne v0, p1, :cond_1

    .line 37
    .line 38
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzayr;->zzm:I

    .line 39
    .line 40
    :cond_1
    :goto_0
    return-void
.end method

.method private final zzj(I)V
    .locals 34

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzayr;->zzn:Ljava/util/HashSet;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_15

    .line 14
    .line 15
    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzayr;->zzb:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    if-eqz v0, :cond_18

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    move-object v3, v0

    .line 24
    check-cast v3, Landroid/view/View;

    .line 25
    .line 26
    new-instance v4, Landroid/graphics/Rect;

    .line 27
    .line 28
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v5, Landroid/graphics/Rect;

    .line 32
    .line 33
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v6, Landroid/graphics/Rect;

    .line 37
    .line 38
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v7, Landroid/graphics/Rect;

    .line 42
    .line 43
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x2

    .line 47
    new-array v8, v0, [I

    .line 48
    .line 49
    new-array v9, v0, [I

    .line 50
    .line 51
    const/4 v11, 0x1

    .line 52
    const/4 v12, 0x0

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    invoke-virtual {v3, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 56
    .line 57
    .line 58
    move-result v13

    .line 59
    invoke-virtual {v3, v6}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 60
    .line 61
    .line 62
    move-result v14

    .line 63
    invoke-virtual {v3, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 64
    .line 65
    .line 66
    :try_start_0
    invoke-virtual {v3, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v9}, Landroid/view/View;->getLocationInWindow([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    const/4 v10, 0x5

    .line 77
    new-array v10, v10, [J

    .line 78
    .line 79
    fill-array-data v10, :array_0

    .line 80
    .line 81
    .line 82
    invoke-direct {v15, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    invoke-static {v10, v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzeM:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 93
    .line 94
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Ljava/lang/Boolean;

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_1

    .line 109
    .line 110
    aget v0, v9, v12

    .line 111
    .line 112
    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 113
    .line 114
    aget v0, v9, v11

    .line 115
    .line 116
    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_1
    aget v0, v8, v12

    .line 120
    .line 121
    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 122
    .line 123
    aget v0, v8, v11

    .line 124
    .line 125
    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 126
    .line 127
    :goto_1
    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 128
    .line 129
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    add-int/2addr v8, v0

    .line 134
    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 135
    .line 136
    iget v0, v4, Landroid/graphics/Rect;->top:I

    .line 137
    .line 138
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    add-int/2addr v8, v0

    .line 143
    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 144
    .line 145
    move-object v8, v3

    .line 146
    goto :goto_2

    .line 147
    :cond_2
    const/4 v8, 0x0

    .line 148
    const/4 v13, 0x0

    .line 149
    const/4 v14, 0x0

    .line 150
    :goto_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzbp:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 151
    .line 152
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 153
    .line 154
    .line 155
    move-result-object v9

    .line 156
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    check-cast v0, Ljava/lang/Boolean;

    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_5

    .line 167
    .line 168
    if-eqz v8, :cond_5

    .line 169
    .line 170
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 176
    .line 177
    .line 178
    move-result-object v9

    .line 179
    :goto_3
    instance-of v10, v9, Landroid/view/View;

    .line 180
    .line 181
    if-eqz v10, :cond_4

    .line 182
    .line 183
    move-object v10, v9

    .line 184
    check-cast v10, Landroid/view/View;

    .line 185
    .line 186
    new-instance v15, Landroid/graphics/Rect;

    .line 187
    .line 188
    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v10}, Landroid/view/View;->isScrollContainer()Z

    .line 192
    .line 193
    .line 194
    move-result v16

    .line 195
    if-eqz v16, :cond_3

    .line 196
    .line 197
    invoke-virtual {v10, v15}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 198
    .line 199
    .line 200
    move-result v10

    .line 201
    if-eqz v10, :cond_3

    .line 202
    .line 203
    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/ads/zzayr;->zza(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 204
    .line 205
    .line 206
    move-result-object v10

    .line 207
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    goto :goto_4

    .line 211
    :catch_1
    move-exception v0

    .line 212
    goto :goto_6

    .line 213
    :cond_3
    :goto_4
    invoke-interface {v9}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 214
    .line 215
    .line 216
    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 217
    goto :goto_3

    .line 218
    :cond_4
    :goto_5
    move-object/from16 v33, v0

    .line 219
    .line 220
    goto :goto_7

    .line 221
    :goto_6
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 222
    .line 223
    const/4 v10, 0x6

    .line 224
    new-array v10, v10, [J

    .line 225
    .line 226
    fill-array-data v10, :array_1

    .line 227
    .line 228
    .line 229
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v9

    .line 236
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 237
    .line 238
    .line 239
    move-result-object v10

    .line 240
    invoke-virtual {v10, v0, v9}, Lcom/google/android/gms/internal/ads/zzcdl;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    goto :goto_5

    .line 248
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    goto :goto_5

    .line 253
    :goto_7
    if-eqz v8, :cond_6

    .line 254
    .line 255
    invoke-virtual {v8}, Landroid/view/View;->getWindowVisibility()I

    .line 256
    .line 257
    .line 258
    move-result v9

    .line 259
    goto :goto_8

    .line 260
    :cond_6
    const/16 v9, 0x8

    .line 261
    .line 262
    :goto_8
    iget v10, v1, Lcom/google/android/gms/internal/ads/zzayr;->zzm:I

    .line 263
    .line 264
    const/4 v15, -0x1

    .line 265
    if-eq v10, v15, :cond_7

    .line 266
    .line 267
    move v9, v10

    .line 268
    :cond_7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    .line 269
    .line 270
    .line 271
    invoke-static {v8}, Lcom/google/android/gms/ads/internal/util/zzt;->zzv(Landroid/view/View;)J

    .line 272
    .line 273
    .line 274
    move-result-wide v28

    .line 275
    sget-object v10, Lcom/google/android/gms/internal/ads/zzbgc;->zzkc:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 276
    .line 277
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 278
    .line 279
    .line 280
    move-result-object v15

    .line 281
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v10

    .line 285
    check-cast v10, Ljava/lang/Boolean;

    .line 286
    .line 287
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 288
    .line 289
    .line 290
    move-result v10

    .line 291
    if-eqz v10, :cond_c

    .line 292
    .line 293
    if-eqz v3, :cond_b

    .line 294
    .line 295
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzayr;->zzg:Landroid/os/PowerManager;

    .line 296
    .line 297
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzayr;->zzh:Landroid/app/KeyguardManager;

    .line 298
    .line 299
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    .line 300
    .line 301
    .line 302
    invoke-static {v8, v3, v10}, Lcom/google/android/gms/ads/internal/util/zzt;->zzR(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z

    .line 303
    .line 304
    .line 305
    move-result v3

    .line 306
    if-eqz v3, :cond_b

    .line 307
    .line 308
    if-eqz v13, :cond_a

    .line 309
    .line 310
    if-eqz v14, :cond_9

    .line 311
    .line 312
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbgc;->zzkf:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 313
    .line 314
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 315
    .line 316
    .line 317
    move-result-object v10

    .line 318
    invoke-virtual {v10, v3}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    check-cast v3, Ljava/lang/Integer;

    .line 323
    .line 324
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 325
    .line 326
    .line 327
    move-result v3

    .line 328
    int-to-long v13, v3

    .line 329
    cmp-long v3, v28, v13

    .line 330
    .line 331
    if-ltz v3, :cond_8

    .line 332
    .line 333
    if-nez v9, :cond_8

    .line 334
    .line 335
    :goto_9
    const/4 v3, 0x1

    .line 336
    const/4 v9, 0x0

    .line 337
    :goto_a
    const/4 v13, 0x1

    .line 338
    const/4 v14, 0x1

    .line 339
    goto :goto_b

    .line 340
    :cond_8
    const/4 v3, 0x0

    .line 341
    goto :goto_a

    .line 342
    :cond_9
    const/4 v3, 0x0

    .line 343
    const/4 v13, 0x1

    .line 344
    const/4 v14, 0x0

    .line 345
    goto :goto_b

    .line 346
    :cond_a
    const/4 v3, 0x0

    .line 347
    const/4 v13, 0x0

    .line 348
    goto :goto_b

    .line 349
    :cond_b
    const/4 v3, 0x0

    .line 350
    goto :goto_b

    .line 351
    :cond_c
    if-eqz v3, :cond_b

    .line 352
    .line 353
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzayr;->zzg:Landroid/os/PowerManager;

    .line 354
    .line 355
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzayr;->zzh:Landroid/app/KeyguardManager;

    .line 356
    .line 357
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    .line 358
    .line 359
    .line 360
    invoke-static {v8, v3, v10}, Lcom/google/android/gms/ads/internal/util/zzt;->zzR(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z

    .line 361
    .line 362
    .line 363
    move-result v3

    .line 364
    if-eqz v3, :cond_b

    .line 365
    .line 366
    if-eqz v13, :cond_a

    .line 367
    .line 368
    if-eqz v14, :cond_9

    .line 369
    .line 370
    if-nez v9, :cond_8

    .line 371
    .line 372
    goto :goto_9

    .line 373
    :goto_b
    sget-object v10, Lcom/google/android/gms/internal/ads/zzbgc;->zzkh:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 374
    .line 375
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 376
    .line 377
    .line 378
    move-result-object v15

    .line 379
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v10

    .line 383
    check-cast v10, Ljava/lang/Boolean;

    .line 384
    .line 385
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 386
    .line 387
    .line 388
    move-result v10

    .line 389
    if-eqz v10, :cond_12

    .line 390
    .line 391
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzayr;->zzg:Landroid/os/PowerManager;

    .line 392
    .line 393
    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzayr;->zzh:Landroid/app/KeyguardManager;

    .line 394
    .line 395
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    .line 396
    .line 397
    .line 398
    invoke-static {v8, v10, v15}, Lcom/google/android/gms/ads/internal/util/zzt;->zzR(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z

    .line 399
    .line 400
    .line 401
    move-result v10

    .line 402
    if-eq v11, v10, :cond_d

    .line 403
    .line 404
    const/4 v10, 0x0

    .line 405
    goto :goto_c

    .line 406
    :cond_d
    const/16 v10, 0x40

    .line 407
    .line 408
    :goto_c
    if-eq v11, v13, :cond_e

    .line 409
    .line 410
    const/4 v15, 0x0

    .line 411
    goto :goto_d

    .line 412
    :cond_e
    const/16 v15, 0x8

    .line 413
    .line 414
    :goto_d
    if-eq v11, v14, :cond_f

    .line 415
    .line 416
    const/16 v16, 0x0

    .line 417
    .line 418
    goto :goto_e

    .line 419
    :cond_f
    const/16 v16, 0x10

    .line 420
    .line 421
    :goto_e
    if-nez v9, :cond_10

    .line 422
    .line 423
    const/16 v9, 0x80

    .line 424
    .line 425
    goto :goto_f

    .line 426
    :cond_10
    const/4 v9, 0x0

    .line 427
    :goto_f
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzkf:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 428
    .line 429
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 430
    .line 431
    .line 432
    move-result-object v12

    .line 433
    invoke-virtual {v12, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    check-cast v0, Ljava/lang/Integer;

    .line 438
    .line 439
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 440
    .line 441
    .line 442
    move-result v0

    .line 443
    int-to-long v11, v0

    .line 444
    cmp-long v0, v28, v11

    .line 445
    .line 446
    if-ltz v0, :cond_11

    .line 447
    .line 448
    const/16 v0, 0x20

    .line 449
    .line 450
    goto :goto_10

    .line 451
    :cond_11
    const/4 v0, 0x0

    .line 452
    :goto_10
    or-int/2addr v10, v15

    .line 453
    or-int v10, v10, v16

    .line 454
    .line 455
    or-int/2addr v9, v10

    .line 456
    or-int/2addr v0, v9

    .line 457
    or-int/2addr v0, v3

    .line 458
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    .line 459
    .line 460
    .line 461
    const/4 v9, 0x0

    .line 462
    invoke-static {v8, v0, v9}, Lcom/google/android/gms/ads/internal/util/zzt;->zzI(Landroid/view/View;ILandroid/view/MotionEvent;)V

    .line 463
    .line 464
    .line 465
    :cond_12
    const/4 v9, 0x1

    .line 466
    if-ne v2, v9, :cond_13

    .line 467
    .line 468
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzayr;->zzk:Lcom/google/android/gms/ads/internal/util/zzcb;

    .line 469
    .line 470
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzcb;->zzb()Z

    .line 471
    .line 472
    .line 473
    move-result v0

    .line 474
    if-nez v0, :cond_13

    .line 475
    .line 476
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzayr;->zzl:Z

    .line 477
    .line 478
    if-eq v3, v0, :cond_18

    .line 479
    .line 480
    :cond_13
    if-nez v3, :cond_14

    .line 481
    .line 482
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzayr;->zzl:Z

    .line 483
    .line 484
    if-nez v0, :cond_14

    .line 485
    .line 486
    const/4 v9, 0x1

    .line 487
    if-eq v2, v9, :cond_18

    .line 488
    .line 489
    goto :goto_11

    .line 490
    :cond_14
    const/4 v9, 0x1

    .line 491
    :goto_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzayp;

    .line 492
    .line 493
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 494
    .line 495
    .line 496
    move-result-object v2

    .line 497
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 498
    .line 499
    .line 500
    move-result-wide v10

    .line 501
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzayr;->zzg:Landroid/os/PowerManager;

    .line 502
    .line 503
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    .line 504
    .line 505
    .line 506
    move-result v19

    .line 507
    if-eqz v8, :cond_15

    .line 508
    .line 509
    invoke-virtual {v8}, Landroid/view/View;->isAttachedToWindow()Z

    .line 510
    .line 511
    .line 512
    move-result v2

    .line 513
    if-eqz v2, :cond_15

    .line 514
    .line 515
    const/16 v20, 0x1

    .line 516
    .line 517
    goto :goto_12

    .line 518
    :cond_15
    const/16 v20, 0x0

    .line 519
    .line 520
    :goto_12
    if-eqz v8, :cond_16

    .line 521
    .line 522
    invoke-virtual {v8}, Landroid/view/View;->getWindowVisibility()I

    .line 523
    .line 524
    .line 525
    move-result v2

    .line 526
    move/from16 v21, v2

    .line 527
    .line 528
    goto :goto_13

    .line 529
    :cond_16
    const/16 v21, 0x8

    .line 530
    .line 531
    :goto_13
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzayr;->zzp:Landroid/graphics/Rect;

    .line 532
    .line 533
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzayr;->zza(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 534
    .line 535
    .line 536
    move-result-object v22

    .line 537
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzayr;->zza(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 538
    .line 539
    .line 540
    move-result-object v23

    .line 541
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzayr;->zza(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 542
    .line 543
    .line 544
    move-result-object v24

    .line 545
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzayr;->zza(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 546
    .line 547
    .line 548
    move-result-object v26

    .line 549
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzayr;->zza(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 550
    .line 551
    .line 552
    move-result-object v30

    .line 553
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzayr;->zzo:Landroid/util/DisplayMetrics;

    .line 554
    .line 555
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 556
    .line 557
    move/from16 v31, v2

    .line 558
    .line 559
    move-object/from16 v16, v0

    .line 560
    .line 561
    move-wide/from16 v17, v10

    .line 562
    .line 563
    move/from16 v25, v13

    .line 564
    .line 565
    move/from16 v27, v14

    .line 566
    .line 567
    move/from16 v32, v3

    .line 568
    .line 569
    invoke-direct/range {v16 .. v33}, Lcom/google/android/gms/internal/ads/zzayp;-><init>(JZZILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/graphics/Rect;ZJLandroid/graphics/Rect;FZLjava/util/List;)V

    .line 570
    .line 571
    .line 572
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzayr;->zzn:Ljava/util/HashSet;

    .line 573
    .line 574
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 575
    .line 576
    .line 577
    move-result-object v2

    .line 578
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 579
    .line 580
    .line 581
    move-result v4

    .line 582
    if-eqz v4, :cond_17

    .line 583
    .line 584
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 585
    .line 586
    .line 587
    move-result-object v4

    .line 588
    check-cast v4, Lcom/google/android/gms/internal/ads/zzayq;

    .line 589
    .line 590
    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/ads/zzayq;->zzby(Lcom/google/android/gms/internal/ads/zzayp;)V

    .line 591
    .line 592
    .line 593
    goto :goto_14

    .line 594
    :cond_17
    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzayr;->zzl:Z

    .line 595
    .line 596
    :cond_18
    :goto_15
    return-void

    .line 597
    :array_0
    .array-data 8
        -0x5224620500bc0a2dL    # -8.676798715975464E-88
        -0x1e8517e551e9a5bcL    # -3.78283533795016E161
        -0x6697aa094bd3c5f9L
        0x78714821415bb4b7L    # 1.46077727067035E272
        0x193da70820e34184L
    .end array-data

    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    :array_1
    .array-data 8
        -0x331f939bdfe88a0eL    # -2.1113112609759818E62
        0x22b5f9260a184b91L
        -0x66effafe8fa0983eL    # -5.752718374573185E-188
        -0x386a9163a78e4827L    # -7.12202790727315E36
        0xc764d81ef1d29c7L
        0x79443d994866063dL    # 1.401554067433773E276
    .end array-data
.end method

.method private final zzk()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzt;->zza:Lcom/google/android/gms/internal/ads/zzftt;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzayn;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzayn;-><init>(Lcom/google/android/gms/internal/ads/zzayr;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private final zzl(Landroid/view/View;)V
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzayr;->zzi:Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayr;->zza:Landroid/content/BroadcastReceiver;

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    new-instance p1, Landroid/content/IntentFilter;

    .line 30
    .line 31
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    new-array v2, v0, [J

    .line 37
    .line 38
    fill-array-data v2, :array_0

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    new-array v0, v0, [J

    .line 54
    .line 55
    fill-array-data v0, :array_1

    .line 56
    .line 57
    .line 58
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    const/4 v1, 0x6

    .line 71
    new-array v1, v1, [J

    .line 72
    .line 73
    fill-array-data v1, :array_2

    .line 74
    .line 75
    .line 76
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    new-instance v0, Lcom/google/android/gms/internal/ads/zzayo;

    .line 87
    .line 88
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzayo;-><init>(Lcom/google/android/gms/internal/ads/zzayr;)V

    .line 89
    .line 90
    .line 91
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayr;->zza:Landroid/content/BroadcastReceiver;

    .line 92
    .line 93
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayr;->zzd:Landroid/content/Context;

    .line 94
    .line 95
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzv()Lcom/google/android/gms/ads/internal/util/zzcm;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayr;->zza:Landroid/content/BroadcastReceiver;

    .line 100
    .line 101
    invoke-virtual {v1, v0, v2, p1}, Lcom/google/android/gms/ads/internal/util/zzcm;->zzc(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 102
    .line 103
    .line 104
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayr;->zze:Landroid/app/Application;

    .line 105
    .line 106
    if-eqz p1, :cond_2

    .line 107
    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayr;->zzj:Lcom/google/android/gms/internal/ads/zzazd;

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :catch_0
    move-exception p1

    .line 115
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 116
    .line 117
    const/4 v1, 0x7

    .line 118
    new-array v1, v1, [J

    .line 119
    .line 120
    fill-array-data v1, :array_3

    .line 121
    .line 122
    .line 123
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    .line 132
    .line 133
    :cond_2
    return-void

    .line 134
    nop

    .line 135
    :array_0
    .array-data 8
        0x674020c0ed648efbL    # 2.2455684216807354E189
        -0x26386bc38b0d2ae9L    # -3.11741401739116E124
        0x5a0b73c17f465c02L
        -0x51375b1270b0118aL    # -2.5371539096245505E-83
        -0x605352c2e4b9537fL
    .end array-data

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
    :array_1
    .array-data 8
        0x32028246c26c43e4L    # 8.581662100566711E-68
        -0x59a895a783d2358L
        0x3bace23440675620L    # 3.0581711415837288E-21
        -0x4a64662dd918320bL    # -1.8442653091592785E-50
        -0x74a68e3e96be6161L    # -5.422694731217776E-254
    .end array-data

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
    :array_2
    .array-data 8
        -0x3e13e1b14767bcb3L    # -3.7739862447582154E9
        0x56e50ceba162fa19L    # 3.955034096288154E110
        -0x4731ade34ee65dddL    # -4.562159448677508E-35
        0xf70ba1e3c4252d7L    # 2.630401589970331E-234
        -0x1287528b24df046aL    # -2.1778058167691583E219
        -0x51aad6bd0c5cae9L    # -9.908446093401721E283
    .end array-data

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
    .line 210
    .line 211
    :array_3
    .array-data 8
        -0x4dcc262ba552f821L    # -7.36310674611737E-67
        0x1484cc98c1724281L    # 7.90823897158804E-210
        -0x3d660f383a55a1e6L    # -7.130483616407525E12
        0x8c254b36557891eL
        -0x1696cc741d7bef8cL    # -6.028246519068238E199
        0x19f5a78ef0bb6bd8L
        -0x6e96c5c59f012d5dL    # -8.519353878514707E-225
    .end array-data
.end method

.method private final zzm(Landroid/view/View;)V
    .locals 5

    .line 1
    const/4 v0, 0x7

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayr;->zzi:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    if-eqz v2, :cond_1

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Landroid/view/ViewTreeObserver;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v2

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzayr;->zzi:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :goto_1
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    const/16 v4, 0xa

    .line 36
    .line 37
    new-array v4, v4, [J

    .line 38
    .line 39
    fill-array-data v4, :array_0

    .line 40
    .line 41
    .line 42
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_2
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    .line 67
    .line 68
    goto :goto_3

    .line 69
    :catch_1
    move-exception p1

    .line 70
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    const/16 v3, 0x9

    .line 73
    .line 74
    new-array v3, v3, [J

    .line 75
    .line 76
    fill-array-data v3, :array_1

    .line 77
    .line 78
    .line 79
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayr;->zza:Landroid/content/BroadcastReceiver;

    .line 90
    .line 91
    if-eqz p1, :cond_3

    .line 92
    .line 93
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzv()Lcom/google/android/gms/ads/internal/util/zzcm;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayr;->zzd:Landroid/content/Context;

    .line 98
    .line 99
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzayr;->zza:Landroid/content/BroadcastReceiver;

    .line 100
    .line 101
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/ads/internal/util/zzcm;->zzd(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 102
    .line 103
    .line 104
    goto :goto_6

    .line 105
    :catch_2
    move-exception p1

    .line 106
    goto :goto_4

    .line 107
    :catch_3
    move-exception p1

    .line 108
    goto :goto_5

    .line 109
    :goto_4
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 110
    .line 111
    new-array v3, v0, [J

    .line 112
    .line 113
    fill-array-data v3, :array_2

    .line 114
    .line 115
    .line 116
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v3, p1, v2}, Lcom/google/android/gms/internal/ads/zzcdl;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto :goto_6

    .line 131
    :goto_5
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 132
    .line 133
    const/4 v3, 0x6

    .line 134
    new-array v3, v3, [J

    .line 135
    .line 136
    fill-array-data v3, :array_3

    .line 137
    .line 138
    .line 139
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    .line 148
    .line 149
    :goto_6
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzayr;->zza:Landroid/content/BroadcastReceiver;

    .line 150
    .line 151
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayr;->zze:Landroid/app/Application;

    .line 152
    .line 153
    if-eqz p1, :cond_4

    .line 154
    .line 155
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayr;->zzj:Lcom/google/android/gms/internal/ads/zzazd;

    .line 156
    .line 157
    invoke-virtual {p1, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :catch_4
    move-exception p1

    .line 162
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 163
    .line 164
    new-array v0, v0, [J

    .line 165
    .line 166
    fill-array-data v0, :array_4

    .line 167
    .line 168
    .line 169
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    .line 178
    .line 179
    :cond_4
    return-void

    .line 180
    nop

    .line 181
    :array_0
    .array-data 8
        0x48c23317cf742e70L    # 3.1708143937808875E42
        -0xefbbd1f4f74bf34L    # -2.576870867919506E236
        0x29a696de8dbf5d41L    # 4.809223721483961E-108
        0x6007f83a322aedb5L    # 4.017253780676985E154
        0x7d42b9052aef7ca0L    # 2.3915257231045243E295
        0x6917562070ffa76cL    # 1.7444222989705695E198
        0x7b9afb6b30075d30L    # 2.56786210080773E287
        -0x7e02fb79a61f77a2L
        0x6f58f93809b3ede5L    # 2.3664445894401563E228
        -0x4e83eac76dd95c8dL    # -2.5430967977511327E-70
    .end array-data

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
    :array_1
    .array-data 8
        0x27ab3018699f4e79L
        -0x75b590223125e315L
        -0x23177b003c392ed5L    # -3.649892803588371E139
        -0x6f62bf2777541ba8L
        0x6ba3b28b815756acL    # 3.2378505476527785E210
        -0x353c314e029d45a4L    # -1.4821658886646135E52
        0x36849a9798a6b7d6L    # 4.5112780224590976E-46
        0x5e8e2f8c7a8b3af7L    # 3.015433011474667E147
        0x2484f53e87e304daL    # 9.227019835396543E-133
    .end array-data

    .line 226
    .line 227
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
    :array_2
    .array-data 8
        -0x579e1ff19f42be63L    # -3.629301371115084E-114
        0x15c033901840ed7aL
        -0x1388ac6b8fa3595aL    # -3.141132150275221E214
        0x48f9b0e6659229a6L    # 3.580804951516218E43
        0x2def48c9af798971L    # 1.9657944009888186E-87
        -0x280454fe08b0adb0L    # -6.81359161358602E115
        0x52453271868a8c11L    # 2.1083565807164013E88
    .end array-data

    :array_3
    .array-data 8
        -0xda779cd92abc90L
        -0x29604c05fb126d9dL    # -1.8613981185962476E109
        -0xf6b0c04b2e2a958L    # -2.0819196378229916E234
        -0x303381e81b2b46acL    # -2.5775094799859594E76
        -0x28283c01bab86b4dL    # -1.4631441621304777E115
        0x58292d352533a9c7L    # 4.960041206036842E116
    .end array-data

    :array_4
    .array-data 8
        -0xf7f38e3c8fdf1f0L    # -8.335295395266354E233
        0xbf2d8a6afc19d65L
        -0x2bd18f80902d23fdL    # -3.2509129449874494E97
        -0x3cb83a073ea0248fL    # -1.3383193302382306E16
        0x6425c933995272a9L    # 2.6941630869152805E174
        -0x16077273dcba3e74L    # -3.007047199311168E202
        0x5ca89e852c40c2b6L
    .end array-data
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzayr;->zzi(Landroid/app/Activity;I)V

    .line 3
    .line 4
    .line 5
    const/4 p1, 0x3

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzayr;->zzj(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayr;->zzk()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 1
    const/4 p1, 0x3

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzayr;->zzj(I)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayr;->zzk()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzayr;->zzi(Landroid/app/Activity;I)V

    .line 3
    .line 4
    .line 5
    const/4 p1, 0x3

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzayr;->zzj(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayr;->zzk()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzayr;->zzi(Landroid/app/Activity;I)V

    .line 3
    .line 4
    .line 5
    const/4 p1, 0x3

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzayr;->zzj(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayr;->zzk()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const/4 p1, 0x3

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzayr;->zzj(I)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayr;->zzk()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzayr;->zzi(Landroid/app/Activity;I)V

    .line 3
    .line 4
    .line 5
    const/4 p1, 0x3

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzayr;->zzj(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayr;->zzk()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 1
    const/4 p1, 0x3

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzayr;->zzj(I)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayr;->zzk()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onGlobalLayout()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzayr;->zzj(I)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayr;->zzk()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onScrollChanged()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzayr;->zzj(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzayr;->zzm:I

    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzayr;->zzl(Landroid/view/View;)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x3

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzayr;->zzj(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzayr;->zzm:I

    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzayr;->zzj(I)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayr;->zzk()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzayr;->zzm(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final zza(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 4
    .line 5
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzayr;->zzh(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 10
    .line 11
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzayr;->zzh(I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 16
    .line 17
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzayr;->zzh(I)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 22
    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzayr;->zzh(I)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzayq;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayr;->zzn:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x3

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzayr;->zzj(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final synthetic zzd()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzayr;->zzj(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzayq;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayr;->zzn:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzf()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayr;->zzk:Lcom/google/android/gms/ads/internal/util/zzcb;

    .line 2
    .line 3
    sget-wide v1, Lcom/google/android/gms/internal/ads/zzayr;->zzc:J

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzcb;->zza(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final zzg(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayr;->zzk:Lcom/google/android/gms/ads/internal/util/zzcb;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/util/zzcb;->zza(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
