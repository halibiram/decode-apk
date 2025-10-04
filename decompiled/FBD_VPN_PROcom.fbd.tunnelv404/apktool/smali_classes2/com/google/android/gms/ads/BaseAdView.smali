.class public abstract Lcom/google/android/gms/ads/BaseAdView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field protected final zza:Lcom/google/android/gms/ads/internal/client/zzea;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/google/android/gms/ads/internal/client/zzea;

    .line 2
    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/ads/internal/client/zzea;-><init>(Landroid/view/ViewGroup;I)V

    iput-object p1, p0, Lcom/google/android/gms/ads/BaseAdView;->zza:Lcom/google/android/gms/ads/internal/client/zzea;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/google/android/gms/ads/internal/client/zzea;

    const/4 v0, 0x0

    .line 4
    invoke-direct {p1, p0, p2, v0, p3}, Lcom/google/android/gms/ads/internal/client/zzea;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZI)V

    iput-object p1, p0, Lcom/google/android/gms/ads/BaseAdView;->zza:Lcom/google/android/gms/ads/internal/client/zzea;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/google/android/gms/ads/internal/client/zzea;

    const/4 p3, 0x0

    .line 6
    invoke-direct {p1, p0, p2, p3, p4}, Lcom/google/android/gms/ads/internal/client/zzea;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZI)V

    iput-object p1, p0, Lcom/google/android/gms/ads/BaseAdView;->zza:Lcom/google/android/gms/ads/internal/client/zzea;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZ)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/google/android/gms/ads/internal/client/zzea;

    .line 8
    invoke-direct {p1, p0, p2, p5, p4}, Lcom/google/android/gms/ads/internal/client/zzea;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZI)V

    iput-object p1, p0, Lcom/google/android/gms/ads/BaseAdView;->zza:Lcom/google/android/gms/ads/internal/client/zzea;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/google/android/gms/ads/internal/client/zzea;

    .line 10
    invoke-direct {p1, p0, p2, p3}, Lcom/google/android/gms/ads/internal/client/zzea;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V

    iput-object p1, p0, Lcom/google/android/gms/ads/BaseAdView;->zza:Lcom/google/android/gms/ads/internal/client/zzea;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbgc;->zza(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhy;->zze:Lcom/google/android/gms/internal/ads/zzbhm;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhm;->zze()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzkD:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 23
    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcdr;->zzb:Ljava/util/concurrent/ExecutorService;

    .line 41
    .line 42
    new-instance v1, Lcom/google/android/gms/ads/zzd;

    .line 43
    .line 44
    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/zzd;-><init>(Lcom/google/android/gms/ads/BaseAdView;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zza:Lcom/google/android/gms/ads/internal/client/zzea;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzea;->zzk()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public getAdListener()Lcom/google/android/gms/ads/AdListener;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zza:Lcom/google/android/gms/ads/internal/client/zzea;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzea;->zza()Lcom/google/android/gms/ads/AdListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getAdSize()Lcom/google/android/gms/ads/AdSize;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zza:Lcom/google/android/gms/ads/internal/client/zzea;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzea;->zzb()Lcom/google/android/gms/ads/AdSize;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zza:Lcom/google/android/gms/ads/internal/client/zzea;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzea;->zzj()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getOnPaidEventListener()Lcom/google/android/gms/ads/OnPaidEventListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zza:Lcom/google/android/gms/ads/internal/client/zzea;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzea;->zzc()Lcom/google/android/gms/ads/OnPaidEventListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zza:Lcom/google/android/gms/ads/internal/client/zzea;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzea;->zzd()Lcom/google/android/gms/ads/ResponseInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zza:Lcom/google/android/gms/ads/internal/client/zzea;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzea;->zzA()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/AdRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbgc;->zza(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhy;->zzf:Lcom/google/android/gms/internal/ads/zzbhm;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhm;->zze()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzkG:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 41
    .line 42
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcdr;->zzb:Ljava/util/concurrent/ExecutorService;

    .line 59
    .line 60
    new-instance v1, Lcom/google/android/gms/ads/zzf;

    .line 61
    .line 62
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/zzf;-><init>(Lcom/google/android/gms/ads/BaseAdView;Lcom/google/android/gms/ads/AdRequest;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zza:Lcom/google/android/gms/ads/internal/client/zzea;

    .line 70
    .line 71
    iget-object p1, p1, Lcom/google/android/gms/ads/AdRequest;->zza:Lcom/google/android/gms/ads/internal/client/zzdx;

    .line 72
    .line 73
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzea;->zzm(Lcom/google/android/gms/ads/internal/client/zzdx;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :array_0
    .array-data 8
        0x114dbc3b52653d2dL    # 2.510413671211288E-225
        -0x30d7e272b68f1c96L    # -2.130414464272754E73
        0x14dd6d028681403dL
        0x73aedb59327433a9L    # 1.7259878585363895E249
        0x3552d92a1e0d14a4L    # 7.871416901998014E-52
        0x68cfb5073a413c0dL    # 7.406691860603912E196
        0x4815344b7016460dL    # 1.803860314194872E39
    .end array-data
.end method

.method public onLayout(ZIIII)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    sub-int/2addr p4, p2

    .line 25
    sub-int/2addr p4, v0

    .line 26
    sub-int/2addr p5, p3

    .line 27
    sub-int/2addr p5, v1

    .line 28
    div-int/lit8 p4, p4, 0x2

    .line 29
    .line 30
    div-int/lit8 p5, p5, 0x2

    .line 31
    .line 32
    add-int/2addr v0, p4

    .line 33
    add-int/2addr v1, p5

    .line 34
    invoke-virtual {p1, p4, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/16 v3, 0x8

    .line 13
    .line 14
    if-eq v2, v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v1, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/BaseAdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    .line 29
    .line 30
    .line 31
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v1

    .line 34
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/4 v3, 0x5

    .line 37
    new-array v3, v3, [J

    .line 38
    .line 39
    fill-array-data v3, :array_0

    .line 40
    .line 41
    .line 42
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    :goto_0
    if-eqz v1, :cond_1

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    move v1, v0

    .line 68
    move v0, v2

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    const/4 v1, 0x0

    .line 71
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    invoke-static {v1, p2}, Landroid/view/View;->resolveSize(II)I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :array_0
    .array-data 8
        -0x451834e3a090e546L    # -6.150450181257856E-25
        0x5b7b27e3318ab984L    # 4.818821929509207E132
        -0x4dc202124f03b1c1L    # -1.1124617011469624E-66
        0x42a2ddbbbd13aa7eL    # 1.0371773401557246E13
        0x394fec8942461c1L    # 2.10390059640245E-291
    .end array-data
.end method

.method public pause()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbgc;->zza(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhy;->zzg:Lcom/google/android/gms/internal/ads/zzbhm;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhm;->zze()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzkE:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 23
    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcdr;->zzb:Ljava/util/concurrent/ExecutorService;

    .line 41
    .line 42
    new-instance v1, Lcom/google/android/gms/ads/zze;

    .line 43
    .line 44
    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/zze;-><init>(Lcom/google/android/gms/ads/BaseAdView;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zza:Lcom/google/android/gms/ads/internal/client/zzea;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzea;->zzn()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public resume()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbgc;->zza(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhy;->zzh:Lcom/google/android/gms/internal/ads/zzbhm;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhm;->zze()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzkC:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 23
    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcdr;->zzb:Ljava/util/concurrent/ExecutorService;

    .line 41
    .line 42
    new-instance v1, Lcom/google/android/gms/ads/zzc;

    .line 43
    .line 44
    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/zzc;-><init>(Lcom/google/android/gms/ads/BaseAdView;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zza:Lcom/google/android/gms/ads/internal/client/zzea;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzea;->zzp()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/AdListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zza:Lcom/google/android/gms/ads/internal/client/zzea;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzea;->zzr(Lcom/google/android/gms/ads/AdListener;)V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/gms/ads/BaseAdView;->zza:Lcom/google/android/gms/ads/internal/client/zzea;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/client/zzea;->zzq(Lcom/google/android/gms/ads/internal/client/zza;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/ads/internal/client/zza;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zza:Lcom/google/android/gms/ads/internal/client/zzea;

    .line 20
    .line 21
    move-object v1, p1

    .line 22
    check-cast v1, Lcom/google/android/gms/ads/internal/client/zza;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzea;->zzq(Lcom/google/android/gms/ads/internal/client/zza;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    instance-of v0, p1, Lcom/google/android/gms/ads/admanager/AppEventListener;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zza:Lcom/google/android/gms/ads/internal/client/zzea;

    .line 32
    .line 33
    check-cast p1, Lcom/google/android/gms/ads/admanager/AppEventListener;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzea;->zzv(Lcom/google/android/gms/ads/admanager/AppEventListener;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method public setAdSize(Lcom/google/android/gms/ads/AdSize;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/AdSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lcom/google/android/gms/ads/AdSize;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/gms/ads/BaseAdView;->zza:Lcom/google/android/gms/ads/internal/client/zzea;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/client/zzea;->zzs([Lcom/google/android/gms/ads/AdSize;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zza:Lcom/google/android/gms/ads/internal/client/zzea;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzea;->zzu(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/ads/OnPaidEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zza:Lcom/google/android/gms/ads/internal/client/zzea;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzea;->zzx(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
