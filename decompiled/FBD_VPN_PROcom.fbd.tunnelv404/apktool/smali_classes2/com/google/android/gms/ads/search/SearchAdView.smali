.class public final Lcom/google/android/gms/ads/search/SearchAdView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/ads/internal/client/zzea;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/google/android/gms/ads/internal/client/zzea;

    .line 2
    invoke-direct {p1, p0}, Lcom/google/android/gms/ads/internal/client/zzea;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/search/SearchAdView;->zza:Lcom/google/android/gms/ads/internal/client/zzea;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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
    invoke-direct {p1, p0, p2, v0}, Lcom/google/android/gms/ads/internal/client/zzea;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V

    iput-object p1, p0, Lcom/google/android/gms/ads/search/SearchAdView;->zza:Lcom/google/android/gms/ads/internal/client/zzea;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
    invoke-direct {p1, p0, p2, p3}, Lcom/google/android/gms/ads/internal/client/zzea;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V

    iput-object p1, p0, Lcom/google/android/gms/ads/search/SearchAdView;->zza:Lcom/google/android/gms/ads/internal/client/zzea;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->zza:Lcom/google/android/gms/ads/internal/client/zzea;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzea;->zzk()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getAdListener()Lcom/google/android/gms/ads/AdListener;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->zza:Lcom/google/android/gms/ads/internal/client/zzea;

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
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->zza:Lcom/google/android/gms/ads/internal/client/zzea;

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
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->zza:Lcom/google/android/gms/ads/internal/client/zzea;

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

.method public loadAd(Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->SEARCH:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/search/SearchAdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->zza:Lcom/google/android/gms/ads/internal/client/zzea;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/DynamicHeightSearchAdRequest;->zza()Lcom/google/android/gms/ads/internal/client/zzdx;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzea;->zzm(Lcom/google/android/gms/ads/internal/client/zzdx;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v1, 0x9

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 8
        0x584e1afe0de0eed4L    # 2.37242939274729E117
        -0x6c97ae1263076573L    # -3.527420624669684E-215
        0x3c6eef98084618baL    # 1.3416313884111573E-17
        0x14aa3e56bfceb7e7L    # 3.991305423230888E-209
        -0x45ea6103c3aaabf4L    # -6.822396110441411E-29
        -0x5ad587e1acbecb47L
        -0x7f47a13050558c0aL
        0x40f600e8ab56a65eL    # 90126.54183068263
        -0x5b0c7251e81fd97bL
    .end array-data
.end method

.method public loadAd(Lcom/google/android/gms/ads/search/SearchAdRequest;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/ads/search/SearchAdRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->zza:Lcom/google/android/gms/ads/internal/client/zzea;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->zza()Lcom/google/android/gms/ads/internal/client/zzdx;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzea;->zzm(Lcom/google/android/gms/ads/internal/client/zzdx;)V

    return-void
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
    invoke-virtual {p0}, Lcom/google/android/gms/ads/search/SearchAdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

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
        -0x152adf7d2bc56c65L    # -4.239306323606077E206
        0x72a3b7e884cf4aaL
        -0x6b60e457cf34bd81L
        -0x56d73b1ec239fa94L
        -0x3998b34212812e95L    # -1.4767985656757164E31
    .end array-data
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->zza:Lcom/google/android/gms/ads/internal/client/zzea;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzea;->zzn()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public resume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->zza:Lcom/google/android/gms/ads/internal/client/zzea;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzea;->zzp()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/ads/AdListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->zza:Lcom/google/android/gms/ads/internal/client/zzea;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzea;->zzr(Lcom/google/android/gms/ads/AdListener;)V

    .line 4
    .line 5
    .line 6
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
    iget-object p1, p0, Lcom/google/android/gms/ads/search/SearchAdView;->zza:Lcom/google/android/gms/ads/internal/client/zzea;

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
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdView;->zza:Lcom/google/android/gms/ads/internal/client/zzea;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzea;->zzu(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
