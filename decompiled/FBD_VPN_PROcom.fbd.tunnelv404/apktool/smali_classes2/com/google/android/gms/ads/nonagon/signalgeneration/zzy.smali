.class final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgej;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbxi;

.field final synthetic zzb:Z

.field final synthetic zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;Lcom/google/android/gms/internal/ads/zzbxi;Z)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzy;->zza:Lcom/google/android/gms/internal/ads/zzbxi;

    iput-boolean p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzy;->zzb:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzy;->zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzy;->zza:Lcom/google/android/gms/internal/ads/zzbxi;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/4 v3, 0x3

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
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbxi;->zze(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catch_0
    move-exception p1

    .line 42
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    new-array v1, v1, [J

    .line 46
    .line 47
    const-wide v2, 0x692d118187de1374L    # 4.345782929510301E198

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    aput-wide v2, v1, v4

    .line 54
    .line 55
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    nop

    .line 67
    :array_0
    .array-data 8
        -0x3c637ba32f6f9e7aL    # -5.1371734520826304E17
        0x31504db50288f8f9L    # 3.690991386165268E-71
        -0x42b13508835ca302L    # -2.1879627958235205E-13
    .end array-data
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzy;->zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzI(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzy;->zza:Lcom/google/android/gms/internal/ads/zzbxi;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbxi;->zzf(Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzy;->zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzP(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzy;->zzb:Z

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p1

    .line 27
    goto :goto_2

    .line 28
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/net/Uri;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzy;->zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzR(Landroid/net/Uri;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const/4 v2, 0x0

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzy;->zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;

    .line 54
    .line 55
    invoke-static {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzy(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    const/4 v5, 0x2

    .line 62
    new-array v5, v5, [J

    .line 63
    .line 64
    fill-array-data v5, :array_0

    .line 65
    .line 66
    .line 67
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-static {v1, v0, v3, v4}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzd(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzy;->zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;

    .line 79
    .line 80
    invoke-static {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzt(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;)Lcom/google/android/gms/internal/ads/zzfny;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzfny;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfmz;)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgc;->zzhx:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 93
    .line 94
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Ljava/lang/Boolean;

    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_1

    .line 109
    .line 110
    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzy;->zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;

    .line 111
    .line 112
    invoke-static {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzt(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;)Lcom/google/android/gms/internal/ads/zzfny;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzfny;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfmz;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_3
    return-void

    .line 125
    :goto_2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 126
    .line 127
    const/4 v1, 0x1

    .line 128
    new-array v1, v1, [J

    .line 129
    .line 130
    const-wide v2, -0x49f2ccc6ad61c3b4L    # -2.497439335641695E-48

    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    const/4 v4, 0x0

    .line 136
    aput-wide v2, v1, v4

    .line 137
    .line 138
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :array_0
    .array-data 8
        -0x7ed0b00ed99d8a59L    # -5.707540152833263E-303
        -0x32d6a84c25ee73e1L    # -5.212668020671926E63
    .end array-data
.end method
