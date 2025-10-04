.class public final Lcom/google/android/gms/internal/ads/zzawq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static final zza:Landroid/os/Handler;


# instance fields
.field private final zzb:Landroid/content/Context;

.field private zzc:Landroid/app/Application;

.field private final zzd:Landroid/os/PowerManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zze:Landroid/app/KeyguardManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzf:Landroid/content/BroadcastReceiver;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzawc;

.field private zzh:Ljava/lang/ref/WeakReference;

.field private zzi:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzj:Lcom/google/android/gms/internal/ads/zzavy;

.field private zzk:B

.field private zzl:I

.field private zzm:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/google/android/gms/internal/ads/zzawq;->zza:Landroid/os/Handler;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawc;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzk:B

    .line 6
    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzl:I

    .line 8
    .line 9
    const-wide/16 v0, -0x3

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzm:J

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzb:Landroid/content/Context;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzg:Lcom/google/android/gms/internal/ads/zzawc;

    .line 20
    .line 21
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    new-array v1, v0, [J

    .line 25
    .line 26
    fill-array-data v1, :array_0

    .line 27
    .line 28
    .line 29
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    check-cast p2, Landroid/os/PowerManager;

    .line 41
    .line 42
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzd:Landroid/os/PowerManager;

    .line 43
    .line 44
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array v0, v0, [J

    .line 47
    .line 48
    fill-array-data v0, :array_1

    .line 49
    .line 50
    .line 51
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    check-cast p2, Landroid/app/KeyguardManager;

    .line 63
    .line 64
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzawq;->zze:Landroid/app/KeyguardManager;

    .line 65
    .line 66
    instance-of p2, p1, Landroid/app/Application;

    .line 67
    .line 68
    if-eqz p2, :cond_0

    .line 69
    .line 70
    check-cast p1, Landroid/app/Application;

    .line 71
    .line 72
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzc:Landroid/app/Application;

    .line 73
    .line 74
    new-instance p2, Lcom/google/android/gms/internal/ads/zzavy;

    .line 75
    .line 76
    invoke-direct {p2, p1, p0}, Lcom/google/android/gms/internal/ads/zzavy;-><init>(Landroid/app/Application;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 77
    .line 78
    .line 79
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzj:Lcom/google/android/gms/internal/ads/zzavy;

    .line 80
    .line 81
    :cond_0
    const/4 p1, 0x0

    .line 82
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzawq;->zzd(Landroid/view/View;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    nop

    .line 87
    :array_0
    .array-data 8
        0x750a292a24448857L    # 6.137582526752212E255
        -0x116109bacc2b85dfL    # -7.162847369645249E224
    .end array-data

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    :array_1
    .array-data 8
        -0x7c2a8cab18cf2854L    # -3.439235360200034E-290
        0x320bd21556fb20a4L
    .end array-data
.end method

.method public static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzawq;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawq;->zzf()V

    return-void
.end method

.method private final zze(Landroid/app/Activity;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzi:Ljava/lang/ref/WeakReference;

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
    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzawq;->zzb()Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-ne v0, p1, :cond_1

    .line 33
    .line 34
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzl:I

    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method private final zzf()V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzi:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    goto/16 :goto_6

    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzawq;->zzb()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, -0x1

    .line 13
    const-wide/16 v3, -0x3

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzm:J

    .line 18
    .line 19
    iput-byte v2, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzk:B

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    const/4 v6, 0x0

    .line 27
    if-eqz v5, :cond_2

    .line 28
    .line 29
    const/4 v5, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/4 v5, 0x0

    .line 32
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    if-nez v7, :cond_3

    .line 37
    .line 38
    or-int/lit8 v5, v5, 0x2

    .line 39
    .line 40
    :cond_3
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzd:Landroid/os/PowerManager;

    .line 41
    .line 42
    if-eqz v7, :cond_4

    .line 43
    .line 44
    invoke-virtual {v7}, Landroid/os/PowerManager;->isScreenOn()Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-nez v7, :cond_4

    .line 49
    .line 50
    or-int/lit8 v5, v5, 0x4

    .line 51
    .line 52
    :cond_4
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzg:Lcom/google/android/gms/internal/ads/zzawc;

    .line 53
    .line 54
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzawc;->zza()Z

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    if-nez v7, :cond_b

    .line 59
    .line 60
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzawq;->zze:Landroid/app/KeyguardManager;

    .line 61
    .line 62
    if-eqz v7, :cond_a

    .line 63
    .line 64
    invoke-virtual {v7}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-eqz v7, :cond_a

    .line 69
    .line 70
    sget v7, Lcom/google/android/gms/internal/ads/zzawm;->zza:I

    .line 71
    .line 72
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    if-nez v7, :cond_5

    .line 77
    .line 78
    move-object v7, v1

    .line 79
    :cond_5
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    :goto_1
    instance-of v8, v7, Landroid/content/ContextWrapper;

    .line 84
    .line 85
    const/4 v9, 0x0

    .line 86
    if-eqz v8, :cond_7

    .line 87
    .line 88
    const/16 v8, 0xa

    .line 89
    .line 90
    if-ge v6, v8, :cond_7

    .line 91
    .line 92
    instance-of v8, v7, Landroid/app/Activity;

    .line 93
    .line 94
    if-eqz v8, :cond_6

    .line 95
    .line 96
    check-cast v7, Landroid/app/Activity;

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_6
    check-cast v7, Landroid/content/ContextWrapper;

    .line 100
    .line 101
    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    add-int/2addr v6, v0

    .line 106
    goto :goto_1

    .line 107
    :cond_7
    move-object v7, v9

    .line 108
    :goto_2
    if-nez v7, :cond_8

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_8
    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    if-nez v0, :cond_9

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_9
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    :goto_3
    if-eqz v9, :cond_a

    .line 123
    .line 124
    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 125
    .line 126
    const/high16 v6, 0x80000

    .line 127
    .line 128
    and-int/2addr v0, v6

    .line 129
    if-nez v0, :cond_b

    .line 130
    .line 131
    :cond_a
    :goto_4
    or-int/lit8 v5, v5, 0x8

    .line 132
    .line 133
    :cond_b
    new-instance v0, Landroid/graphics/Rect;

    .line 134
    .line 135
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-nez v0, :cond_c

    .line 143
    .line 144
    or-int/lit8 v5, v5, 0x10

    .line 145
    .line 146
    :cond_c
    new-instance v0, Landroid/graphics/Rect;

    .line 147
    .line 148
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-nez v0, :cond_d

    .line 156
    .line 157
    or-int/lit8 v5, v5, 0x20

    .line 158
    .line 159
    :cond_d
    invoke-virtual {v1}, Landroid/view/View;->getWindowVisibility()I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzl:I

    .line 164
    .line 165
    if-eq v1, v2, :cond_e

    .line 166
    .line 167
    move v0, v1

    .line 168
    :cond_e
    if-eqz v0, :cond_f

    .line 169
    .line 170
    or-int/lit8 v5, v5, 0x40

    .line 171
    .line 172
    :cond_f
    iget-byte v0, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzk:B

    .line 173
    .line 174
    if-eq v0, v5, :cond_11

    .line 175
    .line 176
    int-to-byte v0, v5

    .line 177
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzk:B

    .line 178
    .line 179
    if-nez v5, :cond_10

    .line 180
    .line 181
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 182
    .line 183
    .line 184
    move-result-wide v0

    .line 185
    goto :goto_5

    .line 186
    :cond_10
    int-to-long v0, v5

    .line 187
    sub-long v0, v3, v0

    .line 188
    .line 189
    :goto_5
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzm:J

    .line 190
    .line 191
    :cond_11
    :goto_6
    return-void
.end method

.method private final zzg()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzawq;->zza:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzawo;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzawo;-><init>(Lcom/google/android/gms/internal/ads/zzawq;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private final zzh(Landroid/view/View;)V
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
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzh:Ljava/lang/ref/WeakReference;

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
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzf:Landroid/content/BroadcastReceiver;

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
    new-instance v0, Lcom/google/android/gms/internal/ads/zzawp;

    .line 87
    .line 88
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzawp;-><init>(Lcom/google/android/gms/internal/ads/zzawq;)V

    .line 89
    .line 90
    .line 91
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzf:Landroid/content/BroadcastReceiver;

    .line 92
    .line 93
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzb:Landroid/content/Context;

    .line 94
    .line 95
    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzc:Landroid/app/Application;

    .line 99
    .line 100
    if-eqz p1, :cond_2

    .line 101
    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzj:Lcom/google/android/gms/internal/ads/zzavy;

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    :catch_0
    :cond_2
    return-void

    .line 108
    nop

    .line 109
    :array_0
    .array-data 8
        0x2a0315a6d678c634L
        -0x7fec2abc2744060dL    # -2.758127363705502E-308
        -0x5ad04dd71fe77a72L
        0x72dae6a58515b695L    # 1.8368103467725094E245
        -0x1725c64c3d20e90bL    # -1.2252347030620353E197
    .end array-data

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
    :array_1
    .array-data 8
        0x5d0f9e10fe65294eL    # 1.8825858826508574E140
        -0x70f6f9ab5790676L    # -3.584284546385805E274
        -0x66494d23bf470e5cL
        0x7be4b5898530e7eeL    # 6.306780352278504E288
        0x727b14eac757fe46L    # 2.8892994570660916E243
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
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    :array_2
    .array-data 8
        -0x1db318628bb9fe8dL    # -3.3290230247238405E165
        -0x37edc80617a9514L
        -0xbb38ed39b82719dL
        0x7f269087eba33396L    # 3.09480131056511E304
        0x53b8a195e04821c1L    # 2.0551527073068583E95
        -0x166552ed58c7ad43L    # -5.104802105877602E200
    .end array-data
.end method

.method private final zzi(Landroid/view/View;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzh:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    if-eqz v1, :cond_1

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroid/view/ViewTreeObserver;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzh:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    :catch_0
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_1
    nop

    .line 46
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzf:Landroid/content/BroadcastReceiver;

    .line 47
    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzb:Landroid/content/Context;

    .line 51
    .line 52
    invoke-virtual {v1, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 53
    .line 54
    .line 55
    :catch_2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzf:Landroid/content/BroadcastReceiver;

    .line 56
    .line 57
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzc:Landroid/app/Application;

    .line 58
    .line 59
    if-eqz p1, :cond_4

    .line 60
    .line 61
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzj:Lcom/google/android/gms/internal/ads/zzavy;

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 64
    .line 65
    .line 66
    :catch_3
    :cond_4
    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzawq;->zze(Landroid/app/Activity;I)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawq;->zzf()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawq;->zzf()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzawq;->zze(Landroid/app/Activity;I)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawq;->zzf()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzawq;->zze(Landroid/app/Activity;I)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawq;->zzf()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawq;->zzg()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawq;->zzf()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzawq;->zze(Landroid/app/Activity;I)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawq;->zzf()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawq;->zzf()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onGlobalLayout()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawq;->zzf()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onScrollChanged()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawq;->zzf()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzl:I

    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzawq;->zzh(Landroid/view/View;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawq;->zzf()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzl:I

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawq;->zzf()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawq;->zzg()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzawq;->zzi(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final zza()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzm:J

    .line 2
    .line 3
    const-wide/16 v2, -0x2

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-gtz v4, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzawq;->zzb()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-wide/16 v0, -0x3

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzm:J

    .line 18
    .line 19
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzm:J

    .line 20
    .line 21
    return-wide v0
.end method

.method public final zzb()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzi:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/View;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public final zzd(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzawq;->zzb()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzawq;->zzi(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzi:Ljava/lang/ref/WeakReference;

    .line 19
    .line 20
    if-eqz p1, :cond_3

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/16 v1, 0x8

    .line 33
    .line 34
    if-eq v0, v1, :cond_2

    .line 35
    .line 36
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzawq;->zzh(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 40
    .line 41
    .line 42
    const-wide/16 v0, -0x2

    .line 43
    .line 44
    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzm:J

    .line 45
    .line 46
    return-void

    .line 47
    :cond_3
    const-wide/16 v0, -0x3

    .line 48
    .line 49
    goto :goto_0
.end method
