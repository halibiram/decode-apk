.class public final Lcom/google/android/gms/internal/ads/zzavh;
.super Lcom/google/android/gms/internal/ads/zzavg;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzavg;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static zzt(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zzavh;
    .locals 1

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzavg;->zzr(Landroid/content/Context;Z)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzavh;

    .line 6
    .line 7
    invoke-direct {v0, p1, p0, p2}, Lcom/google/android/gms/internal/ads/zzavh;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static zzu(Ljava/lang/String;Landroid/content/Context;ZI)Lcom/google/android/gms/internal/ads/zzavh;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzavg;->zzr(Landroid/content/Context;Z)V

    .line 2
    .line 3
    .line 4
    new-instance p3, Lcom/google/android/gms/internal/ads/zzavh;

    .line 5
    .line 6
    invoke-direct {p3, p1, p0, p2}, Lcom/google/android/gms/internal/ads/zzavh;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    return-object p3
.end method


# virtual methods
.method public final zzp(Lcom/google/android/gms/internal/ads/zzawj;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzasg;Lcom/google/android/gms/internal/ads/zzarz;)Ljava/util/List;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzawj;->zzk()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p4, :cond_1

    .line 7
    .line 8
    iget-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzavg;->zzu:Z

    .line 9
    .line 10
    if-nez p4, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzawj;->zza()I

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    new-instance p4, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-super {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzavg;->zzp(Lcom/google/android/gms/internal/ads/zzawj;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzasg;Lcom/google/android/gms/internal/ads/zzarz;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 27
    .line 28
    .line 29
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    const/16 v0, 0x9

    .line 32
    .line 33
    new-array v0, v0, [J

    .line 34
    .line 35
    fill-array-data v0, :array_0

    .line 36
    .line 37
    .line 38
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    const/4 v0, 0x7

    .line 48
    new-array v0, v0, [J

    .line 49
    .line 50
    fill-array-data v0, :array_1

    .line 51
    .line 52
    .line 53
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    new-instance p2, Lcom/google/android/gms/internal/ads/zzaxb;

    .line 61
    .line 62
    const/16 v7, 0x18

    .line 63
    .line 64
    move-object v1, p2

    .line 65
    move-object v2, p1

    .line 66
    move-object v5, p3

    .line 67
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaxb;-><init>(Lcom/google/android/gms/internal/ads/zzawj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzasg;II)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    return-object p4

    .line 74
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzavg;->zzp(Lcom/google/android/gms/internal/ads/zzawj;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzasg;Lcom/google/android/gms/internal/ads/zzarz;)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    return-object p1

    .line 79
    :array_0
    .array-data 8
        0x774a08f66fb43653L    # 4.1974345612224557E266
        0x30a95f2937de2dc5L    # 2.8046652631918733E-74
        0xdb8aca34c42e7dcL
        -0x7800b3ea97a425deL    # -3.702622283866009E-270
        -0x7593b9ab076c22c4L
        0x49c8f584ade44fc2L    # 2.8498203813496546E47
        0x60399e7ff62eb89dL    # 3.434965089843649E155
        -0x39d8c5f2ec501494L    # -9.2010683870174E29
        -0x2b98cb39ab5135d5L    # -3.965443064335301E98
    .end array-data

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
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
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
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
    :array_1
    .array-data 8
        -0xf20081e40808085L    # -5.0822498414611526E235
        -0x5a5943299e4ae7dL
        0x5d9ddec9de336640L    # 9.106197761701964E142
        0x33626e6b5bcb766dL    # 3.5843256620240365E-61
        0x45d7daf580961a1L
        -0x114495cce6c7b9L    # -1.7264645569994455E308
        0xd5f052ada9b3216L
    .end array-data
.end method
