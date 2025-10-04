.class public final Lcom/google/android/gms/internal/ads/zzcbh;
.super Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcan;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcbf;

.field private zze:Lcom/google/android/gms/ads/FullScreenContentCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzf:Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzg:Lcom/google/android/gms/ads/OnPaidEventListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcbh;->zza:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->zzc:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zza()Lcom/google/android/gms/ads/internal/client/zzaw;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbsr;

    .line 17
    .line 18
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbsr;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/ads/internal/client/zzaw;->zzq(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbsv;)Lcom/google/android/gms/internal/ads/zzcan;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->zzb:Lcom/google/android/gms/internal/ads/zzcan;

    .line 26
    .line 27
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcbf;

    .line 28
    .line 29
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzcbf;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->zzd:Lcom/google/android/gms/internal/ads/zzcbf;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final getAdMetadata()Landroid/os/Bundle;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->zzb:Lcom/google/android/gms/internal/ads/zzcan;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcan;->zzb()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object v0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v2, 0x6

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
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 30
    .line 31
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :array_0
    .array-data 8
        -0x4ab171674b067beeL    # -6.380602995942833E-52
        0x1c9e138cbc2c184fL    # 7.782656014406179E-171
        -0x67fddb5ce4cafe03L    # -4.970780807044253E-193
        0x5947d0596af09ecdL    # 1.2298669692011317E122
        0x3d186bb892c43390L    # 2.1690014331407905E-14
        -0x4953c378b29bfee0L    # -2.4729799611578716E-45
    .end array-data
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final getFullScreenContentCallback()Lcom/google/android/gms/ads/FullScreenContentCallback;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->zze:Lcom/google/android/gms/ads/FullScreenContentCallback;

    return-object v0
.end method

.method public final getOnAdMetadataChangedListener()Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->zzf:Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;

    return-object v0
.end method

.method public final getOnPaidEventListener()Lcom/google/android/gms/ads/OnPaidEventListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->zzg:Lcom/google/android/gms/ads/OnPaidEventListener;

    return-object v0
.end method

.method public final getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->zzb:Lcom/google/android/gms/internal/ads/zzcan;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcan;->zzc()Lcom/google/android/gms/ads/internal/client/zzdn;

    .line 7
    .line 8
    .line 9
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception v1

    .line 12
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/4 v3, 0x6

    .line 15
    new-array v3, v3, [J

    .line 16
    .line 17
    fill-array-data v3, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzcec;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/ads/ResponseInfo;->zzb(Lcom/google/android/gms/ads/internal/client/zzdn;)Lcom/google/android/gms/ads/ResponseInfo;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :array_0
    .array-data 8
        -0x378c361c83852410L    # -1.0773953559664289E41
        -0x7d694d118b36ecaL    # -6.714275989368144E270
        0x5ee7d4b94354f6f4L    # 1.5235940252258143E149
        -0x6296e2ee7f27771fL
        0x13101b18cab3919aL    # 7.30006455928522E-217
        -0x751ec89393d71ec2L
    .end array-data
.end method

.method public final getRewardItem()Lcom/google/android/gms/ads/rewarded/RewardItem;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->zzb:Lcom/google/android/gms/internal/ads/zzcan;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcan;->zzd()Lcom/google/android/gms/internal/ads/zzcak;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcax;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzcax;-><init>(Lcom/google/android/gms/internal/ads/zzcak;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    return-object v1

    .line 21
    :goto_1
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/4 v2, 0x6

    .line 24
    new-array v2, v2, [J

    .line 25
    .line 26
    fill-array-data v2, :array_0

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    sget-object v0, Lcom/google/android/gms/ads/rewarded/RewardItem;->DEFAULT_REWARD:Lcom/google/android/gms/ads/rewarded/RewardItem;

    .line 40
    .line 41
    return-object v0

    .line 42
    nop

    .line 43
    :array_0
    .array-data 8
        0x6110916be2bbb3a7L    # 3.639562487184306E159
        0x756f295b7214c13aL    # 4.678917460908237E257
        0x325b23f08460e773L    # 4.0267718753048683E-66
        0x482cd83ecb9e9b8aL    # 4.907672786588192E39
        0x578d9fa570024323L    # 5.699365161023932E113
        0x563ee93c713fb09eL    # 2.835780632863044E107
    .end array-data
.end method

.method public final setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/ads/FullScreenContentCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->zze:Lcom/google/android/gms/ads/FullScreenContentCallback;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->zzd:Lcom/google/android/gms/internal/ads/zzcbf;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcbf;->zzb(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setImmersiveMode(Z)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->zzb:Lcom/google/android/gms/internal/ads/zzcan;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcan;->zzh(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    return-void

    .line 12
    :goto_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/4 v1, 0x6

    .line 15
    new-array v1, v1, [J

    .line 16
    .line 17
    fill-array-data v1, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :array_0
    .array-data 8
        -0x1838227757c9cbe4L    # -8.506587292505478E191
        -0x54e18eb765def15bL
        -0x2b71001c563da544L    # -2.1188695853345494E99
        -0x41bf740027958722L    # -7.705238014740956E-9
        0x65b0a56cbec57dadL    # 6.907362693312019E181
        0x5f0b8ce825a128dbL    # 7.045568529248313E149
    .end array-data
.end method

.method public final setOnAdMetadataChangedListener(Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->zzf:Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->zzb:Lcom/google/android/gms/internal/ads/zzcan;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzfd;

    .line 8
    .line 9
    invoke-direct {v1, p1}, Lcom/google/android/gms/ads/internal/client/zzfd;-><init>(Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcan;->zzi(Lcom/google/android/gms/ads/internal/client/zzdd;)V
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
    goto :goto_0

    .line 18
    :cond_0
    return-void

    .line 19
    :goto_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 v1, 0x6

    .line 22
    new-array v1, v1, [J

    .line 23
    .line 24
    fill-array-data v1, :array_0

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        0x4471903b4dfa1dbfL    # 5.183802168876578E21
        0x601acbbefaa7d512L    # 8.981851267556511E154
        0x7023b8e0709dc1baL    # 1.530951650603962E232
        -0x75c19cbf0abfe76L
        0x36ab9f372ad03126L    # 2.4191609904530456E-45
        0x8a4e004c3b1a1aeL
    .end array-data
.end method

.method public final setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/OnPaidEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbh;->zzg:Lcom/google/android/gms/ads/OnPaidEventListener;

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->zzb:Lcom/google/android/gms/internal/ads/zzcan;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzfe;

    .line 8
    .line 9
    invoke-direct {v1, p1}, Lcom/google/android/gms/ads/internal/client/zzfe;-><init>(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcan;->zzj(Lcom/google/android/gms/ads/internal/client/zzdg;)V
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
    goto :goto_0

    .line 18
    :cond_0
    return-void

    .line 19
    :goto_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 v1, 0x6

    .line 22
    new-array v1, v1, [J

    .line 23
    .line 24
    fill-array-data v1, :array_0

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        -0x3a2b53a9e18148d8L    # -2.559216849380511E28
        -0x14f28834530c8ae2L    # -4.7303903234468993E207
        -0x6d21143b755d0f14L    # -8.759437648156391E-218
        0x55674fe8aaf55e0bL    # 2.6106625952907495E103
        0x2f3f99a4bf08f49eL    # 4.164190600022499E-81
        -0x4680da9e8956b9f5L    # -9.597607925395259E-32
    .end array-data
.end method

.method public final setServerSideVerificationOptions(Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->zzb:Lcom/google/android/gms/internal/ads/zzcan;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcbb;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzcbb;-><init>(Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcan;->zzl(Lcom/google/android/gms/internal/ads/zzcbb;)V
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
    goto :goto_0

    .line 16
    :cond_0
    return-void

    .line 17
    :goto_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 v1, 0x6

    .line 20
    new-array v1, v1, [J

    .line 21
    .line 22
    fill-array-data v1, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :array_0
    .array-data 8
        -0x3b23848690733fdL    # -5.804337307459869E290
        -0x7da3ecc47499e088L
        -0x248e12c75b26be52L    # -3.181098680541036E132
        -0x72d0f6c7139de390L    # -3.551073269357801E-245
        -0x7c7a5a6089711400L
        -0xc49a1fefb3579b6L    # -2.50223507387692E249
    .end array-data
.end method

.method public final show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/OnUserEarnedRewardListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->zzd:Lcom/google/android/gms/internal/ads/zzcbf;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzcbf;->zzc(Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcbh;->zzb:Lcom/google/android/gms/internal/ads/zzcan;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->zzd:Lcom/google/android/gms/internal/ads/zzcbf;

    .line 11
    .line 12
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzcan;->zzk(Lcom/google/android/gms/internal/ads/zzcaq;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcbh;->zzb:Lcom/google/android/gms/internal/ads/zzcan;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzcan;->zzm(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void

    .line 28
    :goto_0
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/4 v0, 0x6

    .line 31
    new-array v0, v0, [J

    .line 32
    .line 33
    fill-array-data v0, :array_0

    .line 34
    .line 35
    .line 36
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :array_0
    .array-data 8
        -0x563a0c3542c0b717L
        0x51624abaabfd3c72L    # 1.1104726955572642E84
        0x32144bd3b396992aL
        0x5e23a811bc83aca9L    # 3.068135739944687E145
        0x5041da5064b2b428L    # 4.134423521566375E78
        -0x5e423131cc2ac6L    # -6.22923031834867E306
    .end array-data
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/client/zzdx;Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAdLoadCallback;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbh;->zzb:Lcom/google/android/gms/internal/ads/zzcan;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/google/android/gms/ads/internal/client/zzp;->zza:Lcom/google/android/gms/ads/internal/client/zzp;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcbh;->zzc:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/ads/internal/client/zzp;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzdx;)Lcom/google/android/gms/ads/internal/client/zzl;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcbg;

    .line 14
    .line 15
    invoke-direct {v1, p2, p0}, Lcom/google/android/gms/internal/ads/zzcbg;-><init>(Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAdLoadCallback;Lcom/google/android/gms/internal/ads/zzcbh;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzcan;->zzg(Lcom/google/android/gms/ads/internal/client/zzl;Lcom/google/android/gms/internal/ads/zzcau;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catch_0
    move-exception p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void

    .line 25
    :goto_0
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    const/4 v0, 0x6

    .line 28
    new-array v0, v0, [J

    .line 29
    .line 30
    fill-array-data v0, :array_0

    .line 31
    .line 32
    .line 33
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :array_0
    .array-data 8
        -0x53bffeb880700410L    # -1.4986043415227792E-95
        -0x3fec8a567f4fec02L    # -4.8649044139356175
        0x65681740cb55613fL    # 3.1239151326372857E180
        -0x335d2db89760ac79L    # -1.5122413548429753E61
        0x7025157a6d4d0903L    # 1.6366567588553594E232
        0x54c95f36cda015aL
    .end array-data
.end method
