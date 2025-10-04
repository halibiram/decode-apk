.class public final Lcom/tknetwork/tunnel/activities/MainBaseActivity$loadInterstitial$2;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
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
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016J\u0008\u0010\u0008\u001a\u00020\u0003H\u0016J\u0008\u0010\t\u001a\u00020\u0003H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/tknetwork/tunnel/activities/MainBaseActivity$loadInterstitial$2",
        "Lcom/google/android/gms/ads/FullScreenContentCallback;",
        "onAdDismissedFullScreenContent",
        "",
        "onAdFailedToShowFullScreenContent",
        "adError",
        "Lcom/google/android/gms/ads/AdError;",
        "onAdShowedFullScreenContent",
        "onAdImpression",
        "onAdClicked",
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
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$loadInterstitial$2;->this$0:Lcom/tknetwork/tunnel/activities/MainBaseActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    new-array v1, v1, [J

    .line 18
    .line 19
    fill-array-data v1, :array_1

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :array_0
    .array-data 8
        0x25be552a72ecc1aeL    # 7.001524408568254E-127
        -0x9cfbf30437cb85aL    # -1.9991911765897336E261
        -0x34ba05f12831f5b3L    # -4.209916390452892E54
    .end array-data

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    :array_1
    .array-data 8
        -0x66ff0387d60b79ccL
        0x1e45689d21b4f211L    # 7.435352945961593E-163
        -0x7005b152c46840e4L
    .end array-data
.end method

.method public onAdDismissedFullScreenContent()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    new-array v1, v1, [J

    .line 19
    .line 20
    fill-array-data v1, :array_1

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
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$loadInterstitial$2;->this$0:Lcom/tknetwork/tunnel/activities/MainBaseActivity;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-static {v0, v1}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->access$setInterstitialAd$p(Lcom/tknetwork/tunnel/activities/MainBaseActivity;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :array_0
    .array-data 8
        0x10d86681934ab98aL    # 1.609387017059262E-227
        0x255525b665562e87L    # 7.627058655628955E-129
        -0x6a9070eb7d87aaa6L
    .end array-data

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    :array_1
    .array-data 8
        -0x1a2175ab5fa540a1L    # -5.0691069422508614E182
        -0x5027d140d926dc8bL    # -3.2632038492880147E-78
        0x4f969e0ba33668fbL    # 2.5575312061195042E75
        -0x530b7f58838a2de8L    # -3.9316000740422825E-92
    .end array-data
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
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
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 v0, 0x3

    .line 22
    new-array v0, v0, [J

    .line 23
    .line 24
    fill-array-data v0, :array_1

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    const/4 v0, 0x4

    .line 36
    new-array v0, v0, [J

    .line 37
    .line 38
    fill-array-data v0, :array_2

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$loadInterstitial$2;->this$0:Lcom/tknetwork/tunnel/activities/MainBaseActivity;

    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    invoke-static {p1, v0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->access$setInterstitialAd$p(Lcom/tknetwork/tunnel/activities/MainBaseActivity;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :array_0
    .array-data 8
        0x17160e14841147a0L
        -0x6dc81cda6dd704faL    # -6.608305474684851E-221
    .end array-data

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    :array_1
    .array-data 8
        0x6c323e10cb310d32L    # 1.5353237329721597E213
        -0xea09035c6ced9b8L    # -1.2794203624860982E238
        0x4b536e69c10abc6cL    # 7.444595602528164E54
    .end array-data

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    :array_2
    .array-data 8
        -0x23a8fb5408eb0033L    # -6.692221889705065E136
        -0x547eb3b965be0c4fL    # -3.9542682769990524E-99
        0x58e267b601be3624L
        -0x1a24ed5dd3361a99L    # -4.493558061489203E182
    .end array-data
.end method

.method public onAdImpression()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/4 v1, 0x5

    .line 18
    new-array v1, v1, [J

    .line 19
    .line 20
    fill-array-data v1, :array_1

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
    return-void

    .line 30
    nop

    .line 31
    :array_0
    .array-data 8
        -0x1b94269e4b0622cfL    # -5.510352594166992E175
        0x419bde6c05aebcf9L    # 1.1689036942064275E8
        -0x66ad42d2f978c4bbL
    .end array-data

    .line 32
    .line 33
    .line 34
    :array_1
    .array-data 8
        -0x46e49d1ac497a6ecL
        -0x142ff3829c2153c6L
        -0x69179ce51ea286f5L
        -0x113ca716c7fb6f7eL    # -3.5806949968240326E225
        0x13e9848bb0690f4eL    # 9.474920243626876E-213
    .end array-data
.end method

.method public onAdShowedFullScreenContent()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/4 v1, 0x5

    .line 18
    new-array v1, v1, [J

    .line 19
    .line 20
    fill-array-data v1, :array_1

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
    return-void

    .line 30
    nop

    .line 31
    :array_0
    .array-data 8
        0x12e87b1e6c62e5cL
        0x1941047cc723aea6L    # 4.888877999115558E-187
        0x49d0a3ca9b185d13L    # 3.79986093033807E47
    .end array-data

    .line 32
    .line 33
    .line 34
    :array_1
    .array-data 8
        -0x1dd5932ab5e262b4L    # -7.608600307762465E164
        -0x4321ef4b673fe1d7L    # -1.6689569552290712E-15
        0x566bddf55406554fL    # 2.0452154397794077E108
        0x12bb0887c9166e76L    # 1.914531749315118E-218
        -0x2a0b5f6dc3562772L    # -1.1827131666343926E106
    .end array-data
.end method
