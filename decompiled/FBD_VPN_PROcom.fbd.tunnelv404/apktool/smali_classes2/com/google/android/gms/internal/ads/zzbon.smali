.class public final Lcom/google/android/gms/internal/ads/zzbon;
.super Lcom/google/android/gms/internal/ads/zzboa;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x15
.end annotation


# static fields
.field public static final synthetic zza:I


# instance fields
.field private zzb:Landroid/webkit/WebViewClient;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/ads/h5/H5AdsRequestHandler;

.field private final zzd:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzboa;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v2, 0x7

    .line 21
    new-array v2, v2, [J

    .line 22
    .line 23
    fill-array-data v2, :array_0

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfxe;->zzf(ZLjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbon;->zzd:Landroid/webkit/WebView;

    .line 37
    .line 38
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbom;

    .line 39
    .line 40
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzbom;-><init>(Landroid/webkit/WebView;)V

    .line 41
    .line 42
    .line 43
    new-instance p2, Lcom/google/android/gms/ads/h5/H5AdsRequestHandler;

    .line 44
    .line 45
    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/ads/h5/H5AdsRequestHandler;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;)V

    .line 46
    .line 47
    .line 48
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbon;->zzc:Lcom/google/android/gms/ads/h5/H5AdsRequestHandler;

    .line 49
    .line 50
    return-void

    .line 51
    :array_0
    .array-data 8
        0x1892f81301d75da9L
        0x1877a4826030d3c9L    # 8.291216515888137E-191
        -0x4b99627979d35896L    # -2.8822644434977207E-56
        -0x5bb8bccecee3aa80L
        -0x2d6baf5afc6b9fdbL    # -6.466003492155056E89
        0x3e6e170e87bc9fc2L    # 5.604711447580043E-8
        0x153eb7e15c2491b6L    # 2.391993046392121E-206
    .end array-data
.end method

.method private final zzc(Landroid/webkit/WebView;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbon;->zzd:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/16 v0, 0xd

    .line 14
    .line 15
    new-array v0, v0, [J

    .line 16
    .line 17
    fill-array-data v0, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzg(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    return p1

    .line 32
    nop

    .line 33
    :array_0
    .array-data 8
        0x65d211c6ba9b040L
        0x7e30a61e9059a294L    # 6.968532732172422E299
        -0x4e3db8acbae065c0L    # -5.296808497771177E-69
        0x4fdb91ec48974e8bL    # 4.988108202131811E76
        0x125e59c6a8f47ff3L    # 3.358549214491245E-220
        0x2d8df8c58193bc16L    # 2.942683786937715E-89
        -0x988626b44abde94L
        0x63261bd4668f836aL    # 4.1718719884302177E169
        0x78cd2c012aa9a6c4L    # 7.890611932162887E273
        0x45de7bb60250b20bL    # 3.7736430735444176E28
        -0x7ffaff9a648afa1eL    # -6.95551190949624E-309
        -0x6489351668b7f92cL    # -2.249867433539972E-176
        0x5f34890d65265011L    # 4.2012660412103656E150
    .end array-data
.end method


# virtual methods
.method public final getDelegate()Landroid/webkit/WebViewClient;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbon;->zzb:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbon;->zzc(Landroid/webkit/WebView;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbon;->zzc:Lcom/google/android/gms/ads/h5/H5AdsRequestHandler;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/h5/H5AdsRequestHandler;->handleH5AdsRequest(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzboa;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    :goto_0
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbon;->zzd:Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbon;->zzc(Landroid/webkit/WebView;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbon;->zzc:Lcom/google/android/gms/ads/h5/H5AdsRequestHandler;

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/h5/H5AdsRequestHandler;->handleH5AdsRequest(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzboa;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbon;->zzc(Landroid/webkit/WebView;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbon;->zzc:Lcom/google/android/gms/ads/h5/H5AdsRequestHandler;

    .line 6
    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/h5/H5AdsRequestHandler;->handleH5AdsRequest(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 7
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzboa;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final zza()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbon;->zzc:Lcom/google/android/gms/ads/h5/H5AdsRequestHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/h5/H5AdsRequestHandler;->clearAdObjects()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzb(Landroid/webkit/WebViewClient;)V
    .locals 3
    .param p1    # Landroid/webkit/WebViewClient;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eq p1, p0, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x5

    .line 9
    new-array v2, v2, [J

    .line 10
    .line 11
    fill-array-data v2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfxe;->zzf(ZLjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbon;->zzb:Landroid/webkit/WebViewClient;

    .line 25
    .line 26
    return-void

    :array_0
    .array-data 8
        -0x7a8980f0b487c8b3L    # -2.420559120953439E-282
        -0x388473265edb30daL    # -2.288780718524853E36
        0x78aabe8fcbf90ee1L    # 1.8085005532154631E273
        0x22c3cf6e1b5ee0d1L
        0x69d055ebed643a2aL    # 5.001646945533889E201
    .end array-data
.end method
