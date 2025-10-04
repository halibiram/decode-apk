.class public final Lcom/google/android/gms/internal/ads/zzbjg;
.super Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbjf;

.field private final zzb:Ljava/util/List;

.field private zzc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbjf;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v2, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzbjg;->zzb:Ljava/util/List;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjg;->zza:Lcom/google/android/gms/internal/ads/zzbjf;

    .line 14
    .line 15
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbjf;->zzg()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzbjg;->zzc:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v2

    .line 23
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    new-array v4, v1, [J

    .line 26
    .line 27
    const-wide v5, -0x396909e6c34f9781L    # -1.1642773743817615E32

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    aput-wide v5, v4, v0

    .line 33
    .line 34
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array v3, v1, [J

    .line 47
    .line 48
    const-wide v4, 0x74709f132b0e345aL    # 7.616292533237071E252

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    aput-wide v4, v3, v0

    .line 54
    .line 55
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzbjg;->zzc:Ljava/lang/String;

    .line 63
    .line 64
    :goto_0
    :try_start_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbjf;->zzh()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_4

    .line 77
    .line 78
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    instance-of v3, v2, Landroid/os/IBinder;

    .line 83
    .line 84
    const/4 v4, 0x0

    .line 85
    if-eqz v3, :cond_3

    .line 86
    .line 87
    check-cast v2, Landroid/os/IBinder;

    .line 88
    .line 89
    if-nez v2, :cond_1

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_1
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 93
    .line 94
    const/16 v4, 0xa

    .line 95
    .line 96
    new-array v4, v4, [J

    .line 97
    .line 98
    fill-array-data v4, :array_0

    .line 99
    .line 100
    .line 101
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    instance-of v4, v3, Lcom/google/android/gms/internal/ads/zzbjm;

    .line 113
    .line 114
    if-eqz v4, :cond_2

    .line 115
    .line 116
    move-object v4, v3

    .line 117
    check-cast v4, Lcom/google/android/gms/internal/ads/zzbjm;

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :catch_1
    move-exception p1

    .line 121
    goto :goto_3

    .line 122
    :cond_2
    new-instance v4, Lcom/google/android/gms/internal/ads/zzbjk;

    .line 123
    .line 124
    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/zzbjk;-><init>(Landroid/os/IBinder;)V

    .line 125
    .line 126
    .line 127
    :cond_3
    :goto_2
    if-eqz v4, :cond_0

    .line 128
    .line 129
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbjg;->zzb:Ljava/util/List;

    .line 130
    .line 131
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbjn;

    .line 132
    .line 133
    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/zzbjn;-><init>(Lcom/google/android/gms/internal/ads/zzbjm;)V

    .line 134
    .line 135
    .line 136
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_4
    return-void

    .line 141
    :goto_3
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 142
    .line 143
    new-array v1, v1, [J

    .line 144
    .line 145
    const-wide v3, -0x5540094763d56ec0L    # -8.91947467927285E-103

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    aput-wide v3, v1, v0

    .line 151
    .line 152
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :array_0
    .array-data 8
        -0x3f1ec62143c81be5L    # -35278.96047586967
        -0x4f00e4a50c2602c7L    # -1.1003660558617942E-72
        -0x3569863516450a13L    # -2.102294337015148E51
        0x431c9c14ff78e0c7L    # 2.0132283368223218E15
        -0x59a2d9a7b51722f1L    # -6.889967083588984E-124
        0x245b112286c719faL
        -0x47df99fc67f54a01L    # -2.4095418882779E-38
        -0x120c2046bd64b3f2L    # -4.4899383341982905E221
        -0x25b7af69e7ace591L    # -8.229599865185163E126
        0x482612f7863182e2L    # 3.755711697637203E39
    .end array-data
.end method


# virtual methods
.method public final getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjg;->zzb:Ljava/util/List;

    return-object v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjg;->zzc:Ljava/lang/String;

    return-object v0
.end method
