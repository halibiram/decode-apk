.class public final Lcom/google/android/gms/internal/ads/zzawc;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private zza:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzawc;->zza:Z

    .line 6
    .line 7
    new-instance v0, Landroid/content/IntentFilter;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/4 v2, 0x6

    .line 15
    new-array v2, v2, [J

    .line 16
    .line 17
    fill-array-data v2, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    new-array v2, v2, [J

    .line 34
    .line 35
    fill-array-data v2, :array_1

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    nop

    .line 53
    :array_0
    .array-data 8
        -0x6a4ca19512471036L    # -3.861055919044259E-204
        0x51f57a08ee6e9ac7L    # 6.675538341029682E86
        0x670ad5cd76963bcbL    # 2.3352404218201522E188
        -0x384dcedbc6598dL
        -0x4559f7c3cead9f2cL    # -3.5594887907284954E-26
        -0x60156dc937d315fbL
    .end array-data

    .line 54
    .line 55
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
    :array_1
    .array-data 8
        -0x5be11f6c6aab4c5fL
        -0x2ccc4c303655e33eL    # -6.42151614468216E92
        -0x4a5e7edab1aae480L
        0x1fe20f33be20d6b4L    # 4.209157309478968E-155
        -0x72fd21e924d5258fL    # -5.396954347670456E-246
    .end array-data
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v0, 0x6

    .line 4
    new-array v0, v0, [J

    .line 5
    .line 6
    fill-array-data v0, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzawc;->zza:Z

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/4 v0, 0x5

    .line 37
    new-array v0, v0, [J

    .line 38
    .line 39
    fill-array-data v0, :array_1

    .line 40
    .line 41
    .line 42
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzawc;->zza:Z

    .line 57
    .line 58
    :cond_1
    return-void

    .line 59
    :array_0
    .array-data 8
        -0x2a6f1cb89ddeb042L    # -1.5129751645805024E104
        0x5f63dbc8e78c762bL    # 3.2502369847141623E151
        -0x7c73b6baa390521L    # -1.3084739996632936E271
        0x589f295ea57506L
        0x4ae25582247ca253L    # 5.487656133182497E52
        0x16540eb5ead26859L    # 4.094292936854047E-201
    .end array-data

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
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
    .line 84
    .line 85
    .line 86
    .line 87
    :array_1
    .array-data 8
        -0x1d4b5efa5fb60784L    # -3.04113441560379E167
        -0x54062c6c5f0da2eeL    # -7.556948775566357E-97
        0x699877d51b425ab9L    # 4.682279088791575E200
        0x5cf0bf740025e41bL    # 4.986059138390024E139
        0x7bc82ff5ef804857L    # 1.841510047267043E288
    .end array-data
.end method

.method public final zza()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzawc;->zza:Z

    return v0
.end method
