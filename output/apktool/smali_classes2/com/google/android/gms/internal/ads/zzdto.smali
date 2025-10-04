.class public final Lcom/google/android/gms/internal/ads/zzdto;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Landroid/content/Context;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzb:Landroid/widget/PopupWindow;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastKitKat()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastLollipop()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_3

    .line 14
    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    move-object v0, p1

    .line 20
    check-cast v0, Landroid/app/Activity;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move-object v0, v1

    .line 28
    :goto_0
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-nez v2, :cond_3

    .line 35
    .line 36
    :cond_2
    :goto_1
    move-object p2, v1

    .line 37
    goto :goto_2

    .line 38
    :cond_3
    move-object v2, p1

    .line 39
    check-cast v2, Landroid/app/Activity;

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_4

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_4
    new-instance v2, Landroid/widget/FrameLayout;

    .line 49
    .line 50
    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 54
    .line 55
    const/4 v4, -0x1

    .line 56
    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, p2, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 63
    .line 64
    .line 65
    new-instance p2, Landroid/widget/PopupWindow;

    .line 66
    .line 67
    const/4 v3, 0x1

    .line 68
    const/4 v5, 0x0

    .line 69
    invoke-direct {p2, v2, v3, v3, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 76
    .line 77
    .line 78
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 79
    .line 80
    const/4 v3, 0x6

    .line 81
    new-array v3, v3, [J

    .line 82
    .line 83
    fill-array-data v3, :array_0

    .line 84
    .line 85
    .line 86
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcec;->zze(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :try_start_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p2, v0, v5, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :catch_0
    nop

    .line 105
    goto :goto_1

    .line 106
    :goto_2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzb:Landroid/widget/PopupWindow;

    .line 107
    .line 108
    if-nez p2, :cond_5

    .line 109
    .line 110
    move-object p1, v1

    .line 111
    :cond_5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdto;->zza:Landroid/content/Context;

    .line 112
    .line 113
    :cond_6
    :goto_3
    return-void

    .line 114
    nop

    .line 115
    :array_0
    .array-data 8
        0x50d867b4db1e3dc1L    # 2.893739939705935E81
        -0x4f3fac006924766L    # -5.208371039859687E284
        0x780a6c829dcdca94L
        -0x17fa9308a987f17fL    # -1.2219156449752313E193
        -0x8c48d77dbee3ebL
        0x2a08b9aabb03b1c2L
    .end array-data
.end method

.method public final zzb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdto;->zza:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzb:Landroid/widget/PopupWindow;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    instance-of v1, v0, Landroid/app/Activity;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    check-cast v0, Landroid/app/Activity;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzb:Landroid/widget/PopupWindow;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzb:Landroid/widget/PopupWindow;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 33
    .line 34
    .line 35
    :cond_2
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdto;->zza:Landroid/content/Context;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdto;->zzb:Landroid/widget/PopupWindow;

    .line 39
    .line 40
    :cond_3
    :goto_0
    return-void
.end method
