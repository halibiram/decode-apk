.class final Lcom/google/android/gms/internal/ads/zzdyh;
.super Lcom/google/android/gms/internal/ads/zzbpg;
.source "SourceFile"


# instance fields
.field final synthetic zza:Ljava/lang/Object;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:J

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfmo;

.field final synthetic zze:Lcom/google/android/gms/internal/ads/zzceu;

.field final synthetic zzf:Lcom/google/android/gms/internal/ads/zzdyi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdyi;Ljava/lang/Object;Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzfmo;Lcom/google/android/gms/internal/ads/zzceu;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zza:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zzb:Ljava/lang/String;

    .line 4
    .line 5
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zzc:J

    .line 6
    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zzd:Lcom/google/android/gms/internal/ads/zzfmo;

    .line 8
    .line 9
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zze:Lcom/google/android/gms/internal/ads/zzceu;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zzf:Lcom/google/android/gms/internal/ads/zzdyi;

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbpg;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final zze(Ljava/lang/String;)V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zza:Ljava/lang/Object;

    .line 3
    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zzf:Lcom/google/android/gms/internal/ads/zzdyi;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zzb:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v4

    .line 17
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zzc:J

    .line 18
    .line 19
    sub-long/2addr v4, v6

    .line 20
    long-to-int v5, v4

    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-static {v2, v3, v4, p1, v5}, Lcom/google/android/gms/internal/ads/zzdyi;->zzk(Lcom/google/android/gms/internal/ads/zzdyi;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zzf:Lcom/google/android/gms/internal/ads/zzdyi;

    .line 26
    .line 27
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdyi;->zzd(Lcom/google/android/gms/internal/ads/zzdyi;)Lcom/google/android/gms/internal/ads/zzdwp;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zzb:Ljava/lang/String;

    .line 32
    .line 33
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    new-array v6, v0, [J

    .line 36
    .line 37
    fill-array-data v6, :array_0

    .line 38
    .line 39
    .line 40
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzdwp;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zzf:Lcom/google/android/gms/internal/ads/zzdyi;

    .line 51
    .line 52
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdyi;->zzc(Lcom/google/android/gms/internal/ads/zzdyi;)Lcom/google/android/gms/internal/ads/zzdht;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zzb:Ljava/lang/String;

    .line 57
    .line 58
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    new-array v0, v0, [J

    .line 61
    .line 62
    fill-array-data v0, :array_1

    .line 63
    .line 64
    .line 65
    invoke-direct {v5, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzdht;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zzf:Lcom/google/android/gms/internal/ads/zzdyi;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyi;->zze(Lcom/google/android/gms/internal/ads/zzdyi;)Lcom/google/android/gms/internal/ads/zzfnc;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zzd:Lcom/google/android/gms/internal/ads/zzfmo;

    .line 82
    .line 83
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzfmo;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfmo;

    .line 84
    .line 85
    .line 86
    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/ads/zzfmo;->zzf(Z)Lcom/google/android/gms/internal/ads/zzfmo;

    .line 87
    .line 88
    .line 89
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzfmo;->zzl()Lcom/google/android/gms/internal/ads/zzfms;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfnc;->zzb(Lcom/google/android/gms/internal/ads/zzfms;)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zze:Lcom/google/android/gms/internal/ads/zzceu;

    .line 97
    .line 98
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzceu;->zzc(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    monitor-exit v1

    .line 104
    return-void

    .line 105
    :catchall_0
    move-exception p1

    .line 106
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    throw p1

    .line 108
    nop

    .line 109
    :array_0
    .array-data 8
        0x32f49901b018624dL    # 3.1293869581278787E-63
        0xb307a23348dddc4L
    .end array-data

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
    .line 120
    .line 121
    :array_1
    .array-data 8
        0x4e67ab827d18d91aL    # 5.105126841129042E69
        0x1794f3c4d413a413L    # 4.48469495221497E-195
    .end array-data
.end method

.method public final zzf()V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zza:Ljava/lang/Object;

    .line 3
    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zzf:Lcom/google/android/gms/internal/ads/zzdyi;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zzb:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    new-array v5, v0, [J

    .line 12
    .line 13
    const-wide v6, 0x551e7ac2edcef727L    # 1.0666622260941296E102

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    const/4 v8, 0x0

    .line 19
    aput-wide v6, v5, v8

    .line 20
    .line 21
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 33
    .line 34
    .line 35
    move-result-wide v5

    .line 36
    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zzc:J

    .line 37
    .line 38
    sub-long/2addr v5, v7

    .line 39
    long-to-int v6, v5

    .line 40
    invoke-static {v2, v3, v0, v4, v6}, Lcom/google/android/gms/internal/ads/zzdyi;->zzk(Lcom/google/android/gms/internal/ads/zzdyi;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zzf:Lcom/google/android/gms/internal/ads/zzdyi;

    .line 44
    .line 45
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdyi;->zzd(Lcom/google/android/gms/internal/ads/zzdyi;)Lcom/google/android/gms/internal/ads/zzdwp;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zzb:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzdwp;->zzd(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zzf:Lcom/google/android/gms/internal/ads/zzdyi;

    .line 55
    .line 56
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdyi;->zzc(Lcom/google/android/gms/internal/ads/zzdyi;)Lcom/google/android/gms/internal/ads/zzdht;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zzb:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzdht;->zzd(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zzf:Lcom/google/android/gms/internal/ads/zzdyi;

    .line 66
    .line 67
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdyi;->zze(Lcom/google/android/gms/internal/ads/zzdyi;)Lcom/google/android/gms/internal/ads/zzfnc;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zzd:Lcom/google/android/gms/internal/ads/zzfmo;

    .line 72
    .line 73
    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/ads/zzfmo;->zzf(Z)Lcom/google/android/gms/internal/ads/zzfmo;

    .line 74
    .line 75
    .line 76
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzfmo;->zzl()Lcom/google/android/gms/internal/ads/zzfms;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzfnc;->zzb(Lcom/google/android/gms/internal/ads/zzfms;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyh;->zze:Lcom/google/android/gms/internal/ads/zzceu;

    .line 84
    .line 85
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzceu;->zzc(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    monitor-exit v1

    .line 91
    return-void

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    throw v0
.end method
