.class public final Lcom/google/android/gms/ads/nativead/NativeAdView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/widget/FrameLayout;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbjq;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

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
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->zzd(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdView;->zza:Landroid/widget/FrameLayout;

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->zze()Lcom/google/android/gms/internal/ads/zzbjq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdView;->zzb:Lcom/google/android/gms/internal/ads/zzbjq;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->zzd(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdView;->zza:Landroid/widget/FrameLayout;

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->zze()Lcom/google/android/gms/internal/ads/zzbjq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdView;->zzb:Lcom/google/android/gms/internal/ads/zzbjq;

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

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->zzd(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdView;->zza:Landroid/widget/FrameLayout;

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->zze()Lcom/google/android/gms/internal/ads/zzbjq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdView;->zzb:Lcom/google/android/gms/internal/ads/zzbjq;

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
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->zzd(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdView;->zza:Landroid/widget/FrameLayout;

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->zze()Lcom/google/android/gms/internal/ads/zzbjq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdView;->zzb:Lcom/google/android/gms/internal/ads/zzbjq;

    return-void
.end method

.method private final zzd(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method private final zze()Lcom/google/android/gms/internal/ads/zzbjq;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "overlayFrame"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdView;->zza:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zza()Lcom/google/android/gms/ads/internal/client/zzaw;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2, p0, v0}, Lcom/google/android/gms/ads/internal/client/zzaw;->zzh(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/ads/zzbjq;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method private final zzf(Ljava/lang/String;Landroid/view/View;)V
    .locals 1
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdView;->zzb:Lcom/google/android/gms/internal/ads/zzbjq;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbjq;->zzbE(Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catch_0
    move-exception p1

    .line 15
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/4 v0, 0x6

    .line 18
    new-array v0, v0, [J

    .line 19
    .line 20
    fill-array-data v0, :array_0

    .line 21
    .line 22
    .line 23
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :array_0
    .array-data 8
        0x28e27b2114e14fd7L    # 9.605864638005853E-112
        -0x61438b55fa6cfb84L    # -1.265003982112679E-160
        0x7c84f54156c2b2ceL    # 6.535762121091978E291
        0x657640506bca4a11L    # 5.770738337125993E180
        0x6960dee884ddbfc3L    # 4.0355353699310585E199
        0x6319e4a2b42b27a9L    # 2.4429903845233428E169
    .end array-data
.end method


# virtual methods
.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup$LayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdView;->zza:Landroid/widget/FrameLayout;

    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final bringChildToFront(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdView;->zza:Landroid/widget/FrameLayout;

    .line 5
    .line 6
    if-eq v0, p1, :cond_0

    .line 7
    .line 8
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdView;->zzb:Lcom/google/android/gms/internal/ads/zzbjq;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbjq;->zzc()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v2, 0x5

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
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :array_0
    .array-data 8
        0x10464501d079cd19L
        -0x25957bef61e4af26L    # -3.5898326615639215E127
        -0x11f4a41d32a2f52dL    # -1.2361919798112299E222
        -0x2292f6294bb3e06bL    # -1.1065757345905473E142
        -0x1f98ae2f3ae0814aL    # -2.5013168658300643E156
    .end array-data
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdView;->zzb:Lcom/google/android/gms/internal/ads/zzbjq;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzkU:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdView;->zzb:Lcom/google/android/gms/internal/ads/zzbjq;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbjq;->zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/4 v2, 0x7

    .line 37
    new-array v2, v2, [J

    .line 38
    .line 39
    fill-array-data v2, :array_0

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    return p1

    .line 57
    :array_0
    .array-data 8
        0xa12aeeb2c8fae24L
        0x6b053def4789214cL    # 3.4098953567038925E207
        -0x591bfc227d2a602cL    # -2.422197173695066E-121
        0x68a6a1ee9f742d93L    # 1.3217235621322276E196
        0x2bbdc769a39c9ebaL    # 5.445915337909667E-98
        -0x7dcd0a657e8ad8cdL    # -4.529691600529463E-298
        -0x514d52b69f1aea09L    # -9.61404230629719E-84
    .end array-data
.end method

.method public getAdChoicesView()Lcom/google/android/gms/ads/nativead/AdChoicesView;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->zza(Ljava/lang/String;)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    instance-of v1, v0, Lcom/google/android/gms/ads/nativead/AdChoicesView;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    check-cast v0, Lcom/google/android/gms/ads/nativead/AdChoicesView;

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    return-object v0

    .line 29
    :array_0
    .array-data 8
        0xc33712c1acc146eL
        -0x30b52fc6fd3ee38aL    # -9.475024786279274E73
    .end array-data
.end method

.method public final getAdvertiserView()Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->zza(Ljava/lang/String;)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :array_0
    .array-data 8
        -0x212af0941261ad5bL    # -6.732265018733788E148
        0x2910ea270a6a47aL
    .end array-data
.end method

.method public final getBodyView()Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->zza(Ljava/lang/String;)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :array_0
    .array-data 8
        0x2a64e70588ae89b9L    # 1.822754811804541E-104
        -0x5fea5ce63024281L    # -4.921568404086159E279
    .end array-data
.end method

.method public final getCallToActionView()Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->zza(Ljava/lang/String;)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :array_0
    .array-data 8
        0x24cad8fe1c9eb737L    # 1.891201553925744E-131
        -0x716a7544c7a25a33L
    .end array-data
.end method

.method public final getHeadlineView()Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->zza(Ljava/lang/String;)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :array_0
    .array-data 8
        0x7ab5d1ab30802017L    # 1.267392549919718E283
        0x7278031996d8e47fL    # 2.5618094525170978E243
    .end array-data
.end method

.method public final getIconView()Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->zza(Ljava/lang/String;)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :array_0
    .array-data 8
        -0x57dc70061385c4b7L
        -0x539dd5e629f4b9ffL    # -6.803208604649202E-95
    .end array-data
.end method

.method public final getImageView()Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->zza(Ljava/lang/String;)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :array_0
    .array-data 8
        0x72b4dd62eaa8fcf6L    # 3.5616441560973026E244
        -0x3f379e3627f16c8bL    # -12483.57690603447
    .end array-data
.end method

.method public final getMediaView()Lcom/google/android/gms/ads/nativead/MediaView;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->zza(Ljava/lang/String;)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    instance-of v1, v0, Lcom/google/android/gms/ads/nativead/MediaView;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    check-cast v0, Lcom/google/android/gms/ads/nativead/MediaView;

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_0
    if-eqz v0, :cond_1

    .line 28
    .line 29
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    const/4 v1, 0x6

    .line 32
    new-array v1, v1, [J

    .line 33
    .line 34
    fill-array-data v1, :array_1

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcec;->zze(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    const/4 v0, 0x0

    .line 48
    return-object v0

    .line 49
    :array_0
    .array-data 8
        -0x65954a68122c597dL
        0x68ee5abe866f2dbL
    .end array-data

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    :array_1
    .array-data 8
        0x25cc8566207c252eL
        -0x76ec180abfb36ce8L    # -6.1734750895681E-265
        0x4ffa53a5a40ea735L    # 1.905268092906106E77
        0x2a7fcea9af40fddfL    # 5.54738101161935E-104
        -0x5d9d5c6b51b4daaL
        0x3aee3a59fc21dd9dL    # 7.81373820410405E-25
    .end array-data
.end method

.method public final getPriceView()Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->zza(Ljava/lang/String;)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :array_0
    .array-data 8
        -0xd713bcfb0c2de79L    # -6.564817498535538E243
        -0x13db385a64a8db05L    # -8.744395515761879E212
    .end array-data
.end method

.method public final getStarRatingView()Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->zza(Ljava/lang/String;)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :array_0
    .array-data 8
        -0x682c1f42e624d427L    # -6.807583620753536E-194
        -0x3dff507e412de457L    # -8.957999066263506E9
    .end array-data
.end method

.method public final getStoreView()Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->zza(Ljava/lang/String;)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :array_0
    .array-data 8
        -0x30c8b269c5321020L    # -4.1172967143436275E73
        0xb6be4a0a6bd18c9L
    .end array-data
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdView;->zzb:Lcom/google/android/gms/internal/ads/zzbjq;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbjq;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception p1

    .line 18
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v0, 0x7

    .line 21
    new-array v0, v0, [J

    .line 22
    .line 23
    fill-array-data v0, :array_0

    .line 24
    .line 25
    .line 26
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :array_0
    .array-data 8
        0x33cd5878725ce5faL    # 3.6523608332116825E-59
        0x9db8e331a93a376L
        -0x22375df664b3d42fL    # -6.007648774635086E143
        -0x421e40ba679a1b94L    # -1.2912755257329963E-10
        0x418364dc032b5330L    # 4.067212839615476E7
        -0x19619963d48b3d4eL    # -2.0668199372526824E186
        0x5a9f86c6761d0eeaL    # 3.4145498528089115E128
    .end array-data
.end method

.method public final removeAllViews()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdView;->zza:Landroid/widget/FrameLayout;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final removeView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdView;->zza:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setAdChoicesView(Lcom/google/android/gms/ads/nativead/AdChoicesView;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/nativead/AdChoicesView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->zzf(Ljava/lang/String;Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 8
        -0x3713f280b2256ffbL    # -1.954989514443646E43
        0x1e5ef470a4c5ad17L
    .end array-data
.end method

.method public final setAdvertiserView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->zzf(Ljava/lang/String;Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 8
        -0x649de7ed1d955437L    # -8.930341270836213E-177
        -0x1662c5dfa155dc01L    # -5.592966364597935E200
    .end array-data
.end method

.method public final setBodyView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->zzf(Ljava/lang/String;Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 8
        -0x1fcc0ed6c66922beL    # -2.673789789399048E155
        -0x6bfd4e74ecc6468dL    # -2.776414775309281E-212
    .end array-data
.end method

.method public final setCallToActionView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->zzf(Ljava/lang/String;Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 8
        -0x4808b97a6789c2faL    # -4.2750297747188076E-39
        -0x11d2be4b2d96d5a9L    # -5.287758809599862E222
    .end array-data
.end method

.method public final setClickConfirmingView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdView;->zzb:Lcom/google/android/gms/internal/ads/zzbjq;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbjq;->zzbF(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catch_0
    move-exception p1

    .line 15
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    new-array v1, v1, [J

    .line 20
    .line 21
    fill-array-data v1, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :array_0
    .array-data 8
        -0x1f2cf4afa36d800cL    # -2.614690901500887E158
        -0x37540e627a9ba8d1L    # -1.2171245759957208E42
        -0x71e9e9f04f7241e9L    # -8.280642283986707E-241
        0x3f80fcb3e705d43aL    # 0.008294492233043117
        0x6247b580c5e09c00L
        -0x26062e13e6767c3eL    # -2.7309553539357346E125
        -0x1b69d025d221e9beL    # -3.5120003509077225E176
        -0x18e8f63b728c9c2aL    # -4.009636534472911E188
    .end array-data
.end method

.method public final setHeadlineView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->zzf(Ljava/lang/String;Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 8
        -0x3e7ad5c8a5bdc3b0L    # -4.43860272823416E7
        -0x6fa5533f1f034088L    # -6.872658870791753E-230
    .end array-data
.end method

.method public final setIconView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->zzf(Ljava/lang/String;Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 8
        0x4b2efa6f356c8718L    # 1.4835638877956114E54
        0x541eb142ea8cfb7L
    .end array-data
.end method

.method public final setImageView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->zzf(Ljava/lang/String;Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 8
        0x463856ef185fe4ceL    # 1.928380659563591E30
        0x66fa36d9a09a9ae7L    # 1.1406039858745213E188
    .end array-data
.end method

.method public final setMediaView(Lcom/google/android/gms/ads/nativead/MediaView;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/nativead/MediaView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->zzf(Ljava/lang/String;Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/nativead/zzb;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/nativead/zzb;-><init>(Lcom/google/android/gms/ads/nativead/NativeAdView;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/nativead/MediaView;->zza(Lcom/google/android/gms/ads/nativead/zzb;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/google/android/gms/ads/nativead/zzc;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/nativead/zzc;-><init>(Lcom/google/android/gms/ads/nativead/NativeAdView;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/nativead/MediaView;->zzb(Lcom/google/android/gms/ads/nativead/zzc;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :array_0
    .array-data 8
        -0x49d947cb980542c9L    # -7.772673349918873E-48
        -0x19f3d87108732867L    # -3.738484507921616E183
    .end array-data
.end method

.method public setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/nativead/NativeAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdView;->zzb:Lcom/google/android/gms/internal/ads/zzbjq;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->zza()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbjq;->zzbI(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catch_0
    move-exception p1

    .line 15
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/4 v1, 0x6

    .line 18
    new-array v1, v1, [J

    .line 19
    .line 20
    fill-array-data v1, :array_0

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :array_0
    .array-data 8
        0x6a3c46728f24ff1dL    # 5.540673380736225E203
        -0x1621b6df76d1ab95L    # -9.27286741268531E201
        -0x72649b31f0194d30L
        0x2cb0492a3511a2f5L    # 1.9518680601305924E-93
        0x2ddca659703f3023L    # 9.00125163989293E-88
        -0x79b38095b04a0b86L
    .end array-data
.end method

.method public final setPriceView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->zzf(Ljava/lang/String;Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 8
        0x5a8941a9901535c0L    # 1.3677327013790801E128
        0x5b923e07f1178ff9L    # 1.2948453486752432E133
    .end array-data
.end method

.method public final setStarRatingView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->zzf(Ljava/lang/String;Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 8
        -0x6d3d02a002b2703L    # -4.879470927353125E275
        -0x79ec6180630d37eL    # -7.280404077474075E271
    .end array-data
.end method

.method public final setStoreView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->zzf(Ljava/lang/String;Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 8
        -0x41d15bc130036c04L    # -3.5671497976746476E-9
        0x4b702d4e772b72d6L    # 2.479114747511184E55
    .end array-data
.end method

.method public final zza(Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdView;->zzb:Lcom/google/android/gms/internal/ads/zzbjq;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbjq;->zzb(Ljava/lang/String;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/view/View;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    return-object p1

    .line 19
    :catch_0
    move-exception p1

    .line 20
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 v2, 0x6

    .line 23
    new-array v2, v2, [J

    .line 24
    .line 25
    fill-array-data v2, :array_0

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-object v1

    .line 39
    :array_0
    .array-data 8
        0x65e5590ae5e7ed7bL    # 7.08664975976461E182
        -0x581ec162e1e34bcfL
        -0x7690a7e5e1ff45f6L
        -0x6b6cc78995097d3eL
        0x70141e0dde7f647eL    # 7.808156528345525E231
        0x2113394f10653657L
    .end array-data
.end method

.method public final synthetic zzb(Lcom/google/android/gms/ads/MediaContent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdView;->zzb:Lcom/google/android/gms/internal/ads/zzbjq;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    instance-of v1, p1, Lcom/google/android/gms/ads/internal/client/zzep;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    check-cast p1, Lcom/google/android/gms/ads/internal/client/zzep;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zzep;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbjq;->zzbG(Lcom/google/android/gms/internal/ads/zzbjj;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catch_0
    move-exception p1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    if-nez p1, :cond_2

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbjq;->zzbG(Lcom/google/android/gms/internal/ads/zzbjj;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    const/16 v0, 0x8

    .line 32
    .line 33
    new-array v0, v0, [J

    .line 34
    .line 35
    fill-array-data v0, :array_0

    .line 36
    .line 37
    .line 38
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zze(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :goto_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    const/4 v1, 0x7

    .line 52
    new-array v1, v1, [J

    .line 53
    .line 54
    fill-array-data v1, :array_1

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    nop

    .line 69
    :array_0
    .array-data 8
        -0x17ea8943908c7e9aL
        0x94f3ad8ad907be0L
        0x65a87f203bb37a1aL    # 5.08244816444674E181
        0x3123e9d574c080eeL    # 5.635296265307374E-72
        0x13dfb953b67fc4daL    # 5.889658460011633E-213
        -0x5e846ea6093498f5L
        0x6b18b41361adb2f2L    # 7.931112690473427E207
        -0x6a859c5ee366ee40L
    .end array-data

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :array_1
    .array-data 8
        -0x48833a068bc85019L    # -2.064385731287715E-41
        0x1d955fc436debaebL    # 3.624682658644318E-166
        -0x7037549a466829c7L
        0x213f762a229e3860L
        -0x7e837a910f1345efL
        -0x2e0c39932966281eL    # -6.146634910783251E86
        -0x2ef3b42e58db3548L    # -2.684086179355594E82
    .end array-data
.end method

.method public final synthetic zzc(Landroid/widget/ImageView$ScaleType;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdView;->zzb:Lcom/google/android/gms/internal/ads/zzbjq;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbjq;->zzbH(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catch_0
    move-exception p1

    .line 17
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    new-array v1, v1, [J

    .line 22
    .line 23
    fill-array-data v1, :array_0

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void

    .line 37
    :array_0
    .array-data 8
        0x215dd4dbc5f81a01L
        0x3360db2435227470L    # 3.2779774268707506E-61
        0x69b4ff29579800aL
        0x4417f06e39b2dc2dL    # 1.1039999048805537E20
        -0x1461f9529bd5c025L    # -2.4678324755915733E210
        0x400facdc271a8743L    # 3.959404283043939
        0x10e8cbe4849dbdfbL
        0x7a60d89414329b79L    # 3.057898068091128E281
    .end array-data
.end method
