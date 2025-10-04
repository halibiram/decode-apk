.class public final Lcom/tknetwork/tunnel/activities/MainBaseActivity$loadInterstitial$1;
.super Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tknetwork/tunnel/activities/MainBaseActivity;->loadInterstitial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/tknetwork/tunnel/activities/MainBaseActivity$loadInterstitial$1",
        "Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;",
        "onAdLoaded",
        "",
        "ad",
        "Lcom/google/android/gms/ads/interstitial/InterstitialAd;",
        "onAdFailedToLoad",
        "adError",
        "Lcom/google/android/gms/ads/LoadAdError;",
        "com.fbd.tunnel-404_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tknetwork/tunnel/activities/MainBaseActivity;


# direct methods
.method public constructor <init>(Lcom/tknetwork/tunnel/activities/MainBaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$loadInterstitial$1;->this$0:Lcom/tknetwork/tunnel/activities/MainBaseActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 2

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
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    new-array v1, v1, [J

    .line 23
    .line 24
    fill-array-data v1, :array_1

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
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$loadInterstitial$1;->this$0:Lcom/tknetwork/tunnel/activities/MainBaseActivity;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-static {p1, v0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->access$setInterstitialAd$p(Lcom/tknetwork/tunnel/activities/MainBaseActivity;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :array_0
    .array-data 8
        0x6612f120969c08b1L    # 5.03038230475735E183
        -0x720dd9f2f2916dcbL
    .end array-data

    .line 44
    :array_1
    .array-data 8
        0x694d85c1340ade01L    # 1.765468519573691E199
        0x4e5be70518da6202L    # 3.0089911848261E69
        0xef4f508001301cfL
    .end array-data
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V
    .locals 3

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x3

    new-array v2, v1, [J

    fill-array-data v2, :array_1

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_2

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$loadInterstitial$1;->this$0:Lcom/tknetwork/tunnel/activities/MainBaseActivity;

    invoke-static {v0, p1}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->access$setInterstitialAd$p(Lcom/tknetwork/tunnel/activities/MainBaseActivity;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x33f7dacc47ce322fL    # 2.375168566890946E-58
        -0x331d98a0ba865b20L
    .end array-data

    :array_1
    .array-data 8
        -0xac4dc8a0546fd06L
        0x2cb23066a113dbbbL    # 2.179976196972153E-93
        -0x901a6783342a500L
    .end array-data

    :array_2
    .array-data 8
        -0x3279e678fbe7b8eL    # -2.433052308719514E293
        -0x1b44f0130d7d0d7fL    # -1.71348661394739E177
        -0x747f9da271fa3596L
    .end array-data
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/activities/MainBaseActivity$loadInterstitial$1;->onAdLoaded(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V

    return-void
.end method
