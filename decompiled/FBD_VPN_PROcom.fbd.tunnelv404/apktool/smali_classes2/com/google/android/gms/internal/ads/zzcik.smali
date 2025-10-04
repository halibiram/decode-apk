.class public final Lcom/google/android/gms/internal/ads/zzcik;
.super Lcom/google/android/gms/internal/ads/zzgq;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgw;

.field private final zzc:Ljava/lang/String;

.field private final zzd:I

.field private final zze:Z

.field private zzf:Ljava/io/InputStream;

.field private zzg:Z

.field private zzh:Landroid/net/Uri;

.field private volatile zzi:Lcom/google/android/gms/internal/ads/zzbbb;

.field private zzj:Z

.field private zzk:Z

.field private zzl:Z

.field private zzm:Z

.field private zzn:J

.field private zzo:Lcom/google/common/util/concurrent/ListenableFuture;

.field private final zzp:Ljava/util/concurrent/atomic/AtomicLong;

.field private final zzq:Lcom/google/android/gms/internal/ads/zzciv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgw;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzhy;Lcom/google/android/gms/internal/ads/zzciv;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgq;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcik;->zza:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzb:Lcom/google/android/gms/internal/ads/zzgw;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzq:Lcom/google/android/gms/internal/ads/zzciv;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzc:Ljava/lang/String;

    .line 12
    .line 13
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzd:I

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzj:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzk:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzl:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzm:Z

    .line 22
    .line 23
    const-wide/16 p1, 0x0

    .line 24
    .line 25
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzn:J

    .line 26
    .line 27
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 28
    .line 29
    const-wide/16 p2, -0x1

    .line 30
    .line 31
    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzo:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 38
    .line 39
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgc;->zzbQ:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 40
    .line 41
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Ljava/lang/Boolean;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcik;->zze:Z

    .line 56
    .line 57
    invoke-virtual {p0, p5}, Lcom/google/android/gms/internal/ads/zzgq;->zzf(Lcom/google/android/gms/internal/ads/zzhy;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method private final zzr()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zze:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzem:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x1

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzl:Z

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return v2

    .line 32
    :cond_2
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzen:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 33
    .line 34
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Ljava/lang/Boolean;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzm:Z

    .line 51
    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    return v2

    .line 55
    :cond_3
    return v1
.end method


# virtual methods
.method public final zza([BII)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzg:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzf:Ljava/io/InputStream;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzb:Lcom/google/android/gms/internal/ads/zzgw;

    .line 15
    .line 16
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzu;->zza([BII)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    :goto_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzcik;->zze:Z

    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzf:Ljava/io/InputStream;

    .line 25
    .line 26
    if-eqz p2, :cond_2

    .line 27
    .line 28
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzg(I)V

    .line 29
    .line 30
    .line 31
    :cond_2
    return p1

    .line 32
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 33
    .line 34
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/4 p3, 0x6

    .line 37
    new-array p3, p3, [J

    .line 38
    .line 39
    fill-array-data p3, :array_0

    .line 40
    .line 41
    .line 42
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :array_0
    .array-data 8
        -0x65518c856e252a24L
        -0x48141e2270d78e71L    # -2.5605836583928216E-39
        -0x522b1987663b6c74L    # -6.566490673791898E-88
        -0x6a70071959880eceL    # -7.96684606437978E-205
        0x212324d9966ded24L    # 4.678682727893963E-149
        0x25b2acdeb96f76b9L    # 4.310710023589466E-127
    .end array-data
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhb;)J
    .locals 13

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x4

    .line 3
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzg:Z

    .line 4
    .line 5
    if-nez v2, :cond_9

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzg:Z

    .line 9
    .line 10
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzhb;->zza:Landroid/net/Uri;

    .line 11
    .line 12
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzh:Landroid/net/Uri;

    .line 13
    .line 14
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzcik;->zze:Z

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzj(Lcom/google/android/gms/internal/ads/zzhb;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzhb;->zza:Landroid/net/Uri;

    .line 22
    .line 23
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbbb;->zza(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzbbb;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzi:Lcom/google/android/gms/internal/ads/zzbbb;

    .line 28
    .line 29
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbgc;->zzej:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 30
    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    const-wide/16 v4, -0x1

    .line 46
    .line 47
    const/4 v6, 0x0

    .line 48
    if-eqz v3, :cond_4

    .line 49
    .line 50
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzi:Lcom/google/android/gms/internal/ads/zzbbb;

    .line 51
    .line 52
    if-eqz v3, :cond_7

    .line 53
    .line 54
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzi:Lcom/google/android/gms/internal/ads/zzbbb;

    .line 55
    .line 56
    iget-wide v7, p1, Lcom/google/android/gms/internal/ads/zzhb;->zzf:J

    .line 57
    .line 58
    iput-wide v7, v3, Lcom/google/android/gms/internal/ads/zzbbb;->zzh:J

    .line 59
    .line 60
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzi:Lcom/google/android/gms/internal/ads/zzbbb;

    .line 61
    .line 62
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzc:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzfxt;->zzc(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    iput-object v7, v3, Lcom/google/android/gms/internal/ads/zzbbb;->zzi:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzi:Lcom/google/android/gms/internal/ads/zzbbb;

    .line 71
    .line 72
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzd:I

    .line 73
    .line 74
    iput v7, v3, Lcom/google/android/gms/internal/ads/zzbbb;->zzj:I

    .line 75
    .line 76
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzi:Lcom/google/android/gms/internal/ads/zzbbb;

    .line 77
    .line 78
    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzbbb;->zzg:Z

    .line 79
    .line 80
    if-eqz v3, :cond_1

    .line 81
    .line 82
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbgc;->zzel:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 83
    .line 84
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Ljava/lang/Long;

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbgc;->zzek:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 96
    .line 97
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    check-cast v3, Ljava/lang/Long;

    .line 106
    .line 107
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 108
    .line 109
    .line 110
    move-result-wide v7

    .line 111
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 116
    .line 117
    .line 118
    move-result-wide v9

    .line 119
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzd()Lcom/google/android/gms/internal/ads/zzbbm;

    .line 120
    .line 121
    .line 122
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcik;->zza:Landroid/content/Context;

    .line 123
    .line 124
    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzi:Lcom/google/android/gms/internal/ads/zzbbb;

    .line 125
    .line 126
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/ads/zzbbm;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbb;)Ljava/util/concurrent/Future;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    :try_start_0
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 131
    .line 132
    invoke-interface {v3, v7, v8, v11}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    check-cast v7, Lcom/google/android/gms/internal/ads/zzbbn;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 137
    .line 138
    :try_start_1
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzbbn;->zzd()Z

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzj:Z

    .line 143
    .line 144
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzbbn;->zzf()Z

    .line 145
    .line 146
    .line 147
    move-result v8

    .line 148
    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzl:Z

    .line 149
    .line 150
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzbbn;->zze()Z

    .line 151
    .line 152
    .line 153
    move-result v8

    .line 154
    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzm:Z

    .line 155
    .line 156
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzbbn;->zza()J

    .line 157
    .line 158
    .line 159
    move-result-wide v11

    .line 160
    iput-wide v11, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzn:J

    .line 161
    .line 162
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcik;->zzr()Z

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    if-nez v8, :cond_3

    .line 167
    .line 168
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzbbn;->zzc()Ljava/io/InputStream;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzf:Ljava/io/InputStream;

    .line 173
    .line 174
    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzcik;->zze:Z

    .line 175
    .line 176
    if-eqz v7, :cond_2

    .line 177
    .line 178
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzj(Lcom/google/android/gms/internal/ads/zzhb;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    .line 180
    .line 181
    goto :goto_1

    .line 182
    :catchall_0
    move-exception p1

    .line 183
    goto/16 :goto_6

    .line 184
    .line 185
    :cond_2
    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 190
    .line 191
    .line 192
    move-result-wide v6

    .line 193
    sub-long/2addr v6, v9

    .line 194
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzq:Lcom/google/android/gms/internal/ads/zzciv;

    .line 195
    .line 196
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzciv;->zza:Lcom/google/android/gms/internal/ads/zzcix;

    .line 197
    .line 198
    invoke-virtual {p1, v2, v6, v7}, Lcom/google/android/gms/internal/ads/zzcix;->zzab(ZJ)V

    .line 199
    .line 200
    .line 201
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzk:Z

    .line 202
    .line 203
    new-instance p1, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 209
    .line 210
    new-array v1, v1, [J

    .line 211
    .line 212
    fill-array-data v1, :array_0

    .line 213
    .line 214
    .line 215
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 229
    .line 230
    new-array v0, v0, [J

    .line 231
    .line 232
    fill-array-data v0, :array_1

    .line 233
    .line 234
    .line 235
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    return-wide v4

    .line 253
    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 258
    .line 259
    .line 260
    move-result-wide v3

    .line 261
    sub-long/2addr v3, v9

    .line 262
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzq:Lcom/google/android/gms/internal/ads/zzciv;

    .line 263
    .line 264
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzciv;->zza:Lcom/google/android/gms/internal/ads/zzcix;

    .line 265
    .line 266
    invoke-virtual {v5, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcix;->zzab(ZJ)V

    .line 267
    .line 268
    .line 269
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzk:Z

    .line 270
    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .line 275
    .line 276
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 277
    .line 278
    new-array v1, v1, [J

    .line 279
    .line 280
    fill-array-data v1, :array_2

    .line 281
    .line 282
    .line 283
    invoke-direct {v5, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 297
    .line 298
    new-array v0, v0, [J

    .line 299
    .line 300
    fill-array-data v0, :array_3

    .line 301
    .line 302
    .line 303
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    goto/16 :goto_8

    .line 321
    .line 322
    :catch_0
    const/4 v4, 0x1

    .line 323
    goto :goto_3

    .line 324
    :catch_1
    const/4 v4, 0x1

    .line 325
    goto :goto_5

    .line 326
    :catchall_1
    move-exception p1

    .line 327
    const/4 v2, 0x0

    .line 328
    goto/16 :goto_6

    .line 329
    .line 330
    :catch_2
    const/4 v4, 0x0

    .line 331
    :goto_3
    :try_start_2
    invoke-interface {v3, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 332
    .line 333
    .line 334
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 339
    .line 340
    .line 341
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 346
    .line 347
    .line 348
    move-result-wide v2

    .line 349
    sub-long/2addr v2, v9

    .line 350
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzq:Lcom/google/android/gms/internal/ads/zzciv;

    .line 351
    .line 352
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzciv;->zza:Lcom/google/android/gms/internal/ads/zzcix;

    .line 353
    .line 354
    invoke-virtual {v5, v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzcix;->zzab(ZJ)V

    .line 355
    .line 356
    .line 357
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzk:Z

    .line 358
    .line 359
    new-instance v4, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    .line 363
    .line 364
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 365
    .line 366
    new-array v1, v1, [J

    .line 367
    .line 368
    fill-array-data v1, :array_4

    .line 369
    .line 370
    .line 371
    invoke-direct {v5, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 385
    .line 386
    new-array v0, v0, [J

    .line 387
    .line 388
    fill-array-data v0, :array_5

    .line 389
    .line 390
    .line 391
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 392
    .line 393
    .line 394
    :goto_4
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    goto :goto_2

    .line 406
    :catchall_2
    move-exception p1

    .line 407
    move v2, v4

    .line 408
    goto :goto_6

    .line 409
    :catch_3
    const/4 v4, 0x0

    .line 410
    :goto_5
    :try_start_3
    invoke-interface {v3, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 411
    .line 412
    .line 413
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 418
    .line 419
    .line 420
    move-result-wide v2

    .line 421
    sub-long/2addr v2, v9

    .line 422
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzq:Lcom/google/android/gms/internal/ads/zzciv;

    .line 423
    .line 424
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzciv;->zza:Lcom/google/android/gms/internal/ads/zzcix;

    .line 425
    .line 426
    invoke-virtual {v5, v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzcix;->zzab(ZJ)V

    .line 427
    .line 428
    .line 429
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzk:Z

    .line 430
    .line 431
    new-instance v4, Ljava/lang/StringBuilder;

    .line 432
    .line 433
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .line 435
    .line 436
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 437
    .line 438
    new-array v1, v1, [J

    .line 439
    .line 440
    fill-array-data v1, :array_6

    .line 441
    .line 442
    .line 443
    invoke-direct {v5, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 457
    .line 458
    new-array v0, v0, [J

    .line 459
    .line 460
    fill-array-data v0, :array_7

    .line 461
    .line 462
    .line 463
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 464
    .line 465
    .line 466
    goto :goto_4

    .line 467
    :goto_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 468
    .line 469
    .line 470
    move-result-object v3

    .line 471
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 472
    .line 473
    .line 474
    move-result-wide v3

    .line 475
    sub-long/2addr v3, v9

    .line 476
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzq:Lcom/google/android/gms/internal/ads/zzciv;

    .line 477
    .line 478
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzciv;->zza:Lcom/google/android/gms/internal/ads/zzcix;

    .line 479
    .line 480
    invoke-virtual {v5, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcix;->zzab(ZJ)V

    .line 481
    .line 482
    .line 483
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzk:Z

    .line 484
    .line 485
    new-instance v2, Ljava/lang/StringBuilder;

    .line 486
    .line 487
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 488
    .line 489
    .line 490
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 491
    .line 492
    new-array v1, v1, [J

    .line 493
    .line 494
    fill-array-data v1, :array_8

    .line 495
    .line 496
    .line 497
    invoke-direct {v5, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 511
    .line 512
    new-array v0, v0, [J

    .line 513
    .line 514
    fill-array-data v0, :array_9

    .line 515
    .line 516
    .line 517
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    throw p1

    .line 535
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzi:Lcom/google/android/gms/internal/ads/zzbbb;

    .line 536
    .line 537
    if-eqz v0, :cond_5

    .line 538
    .line 539
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzi:Lcom/google/android/gms/internal/ads/zzbbb;

    .line 540
    .line 541
    iget-wide v7, p1, Lcom/google/android/gms/internal/ads/zzhb;->zzf:J

    .line 542
    .line 543
    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzbbb;->zzh:J

    .line 544
    .line 545
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzi:Lcom/google/android/gms/internal/ads/zzbbb;

    .line 546
    .line 547
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzc:Ljava/lang/String;

    .line 548
    .line 549
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfxt;->zzc(Ljava/lang/String;)Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v1

    .line 553
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbbb;->zzi:Ljava/lang/String;

    .line 554
    .line 555
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzi:Lcom/google/android/gms/internal/ads/zzbbb;

    .line 556
    .line 557
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzd:I

    .line 558
    .line 559
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzbbb;->zzj:I

    .line 560
    .line 561
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/internal/ads/zzbax;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzi:Lcom/google/android/gms/internal/ads/zzbbb;

    .line 566
    .line 567
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbax;->zzb(Lcom/google/android/gms/internal/ads/zzbbb;)Lcom/google/android/gms/internal/ads/zzbay;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    goto :goto_7

    .line 572
    :cond_5
    const/4 v0, 0x0

    .line 573
    :goto_7
    if-eqz v0, :cond_7

    .line 574
    .line 575
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbay;->zze()Z

    .line 576
    .line 577
    .line 578
    move-result v1

    .line 579
    if-eqz v1, :cond_7

    .line 580
    .line 581
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbay;->zzd()Z

    .line 582
    .line 583
    .line 584
    move-result v1

    .line 585
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzj:Z

    .line 586
    .line 587
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbay;->zzg()Z

    .line 588
    .line 589
    .line 590
    move-result v1

    .line 591
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzl:Z

    .line 592
    .line 593
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbay;->zzf()Z

    .line 594
    .line 595
    .line 596
    move-result v1

    .line 597
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzm:Z

    .line 598
    .line 599
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbay;->zza()J

    .line 600
    .line 601
    .line 602
    move-result-wide v7

    .line 603
    iput-wide v7, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzn:J

    .line 604
    .line 605
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzk:Z

    .line 606
    .line 607
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcik;->zzr()Z

    .line 608
    .line 609
    .line 610
    move-result v1

    .line 611
    if-nez v1, :cond_7

    .line 612
    .line 613
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbay;->zzc()Ljava/io/InputStream;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzf:Ljava/io/InputStream;

    .line 618
    .line 619
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zze:Z

    .line 620
    .line 621
    if-eqz v0, :cond_6

    .line 622
    .line 623
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzj(Lcom/google/android/gms/internal/ads/zzhb;)V

    .line 624
    .line 625
    .line 626
    :cond_6
    return-wide v4

    .line 627
    :cond_7
    :goto_8
    iput-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzk:Z

    .line 628
    .line 629
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzi:Lcom/google/android/gms/internal/ads/zzbbb;

    .line 630
    .line 631
    if-eqz v0, :cond_8

    .line 632
    .line 633
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhb;

    .line 634
    .line 635
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzi:Lcom/google/android/gms/internal/ads/zzbbb;

    .line 636
    .line 637
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbbb;->zza:Ljava/lang/String;

    .line 638
    .line 639
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 640
    .line 641
    .line 642
    move-result-object v2

    .line 643
    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzhb;->zze:J

    .line 644
    .line 645
    iget-wide v6, p1, Lcom/google/android/gms/internal/ads/zzhb;->zzf:J

    .line 646
    .line 647
    iget-wide v8, p1, Lcom/google/android/gms/internal/ads/zzhb;->zzg:J

    .line 648
    .line 649
    const/4 v10, 0x0

    .line 650
    iget v11, p1, Lcom/google/android/gms/internal/ads/zzhb;->zzi:I

    .line 651
    .line 652
    const/4 v3, 0x0

    .line 653
    move-object v1, v0

    .line 654
    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zzhb;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    .line 655
    .line 656
    .line 657
    move-object p1, v0

    .line 658
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzb:Lcom/google/android/gms/internal/ads/zzgw;

    .line 659
    .line 660
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zzb(Lcom/google/android/gms/internal/ads/zzhb;)J

    .line 661
    .line 662
    .line 663
    move-result-wide v0

    .line 664
    return-wide v0

    .line 665
    :cond_9
    new-instance p1, Ljava/io/IOException;

    .line 666
    .line 667
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 668
    .line 669
    const/16 v1, 0x8

    .line 670
    .line 671
    new-array v1, v1, [J

    .line 672
    .line 673
    fill-array-data v1, :array_a

    .line 674
    .line 675
    .line 676
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 677
    .line 678
    .line 679
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 684
    .line 685
    .line 686
    throw p1

    .line 687
    :array_0
    .array-data 8
        0x1c02fff646ac0a52L
        0x7416b39da21212eaL    # 1.6253740741903622E251
        -0x4540fa008a2e1a03L    # -1.0024210633572818E-25
        0x1e4678f1dbbfbd82L    # 7.80481463571602E-163
    .end array-data

    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    :array_1
    .array-data 8
        -0x3c833b27366b9c31L    # -1.2956375554917912E17
        0x3860f3b7f7419df8L    # 3.985402123398774E-37
    .end array-data

    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    :array_2
    .array-data 8
        -0x64d0c068188d7c93L    # -9.639189494007691E-178
        -0x733d2cb5f478d8acL    # -3.365554248948431E-247
        0x778621ea8b1904aaL    # 5.709214276101957E267
        0x24e17642f660e97bL    # 4.920223892881581E-131
    .end array-data

    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    :array_3
    .array-data 8
        0x7e528cd11f68f8f1L    # 3.105711771726156E300
        -0x5229676eae5bcb83L    # -7.09924581500059E-88
    .end array-data

    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    :array_4
    .array-data 8
        -0x184e91b3e44bce6L
        0x4efcf2cb4286f574L    # 3.1967137690638494E72
        0x236080eee361be1fL    # 2.771736085151903E-138
        -0x726204f392d65159L
    .end array-data

    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    :array_5
    .array-data 8
        -0x29a308a8691583b2L
        0x5d2e0b8f240ab965L    # 7.155869485894659E140
    .end array-data

    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    :array_6
    .array-data 8
        0x32af363d24f2dc50L    # 1.481872153474572E-64
        0x5bea1d08322e72f9L    # 5.9313234157379374E134
        0x40baf6d23570cab1L    # 6902.821127938733
        0x433ba888443c5311L    # 7.785127585010449E15
    .end array-data

    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    :array_7
    .array-data 8
        -0x4b54ae8dd6797743L    # -5.570601083860243E-55
        0x4a47f9f81f37644L
    .end array-data

    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    :array_8
    .array-data 8
        0x25fa5036e3ba2d8eL    # 9.718019317808676E-126
        -0x6bb237fcad6eaf63L    # -7.077122448731647E-211
        0x10e4ddd78410225bL    # 2.75260784933238E-227
        -0x7452d28484fe2950L
    .end array-data

    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    :array_9
    .array-data 8
        -0x59390570bbf58cdeL    # -6.952134054378654E-122
        -0x1f39bada3c8524a5L    # -1.5287978169694776E158
    .end array-data

    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    :array_a
    .array-data 8
        -0x53644672fa5c8e66L    # -8.307109017899437E-94
        0x3f3e5d7277f23823L    # 4.6333355562289314E-4
        0x3b27fbe2d8e01392L    # 9.919521021872396E-24
        0x62150bb7ca797a05L    # 3.02985981638475E164
        0x203cc9b446d02196L
        -0x73edba28b98c38d4L
        -0x4be79de536f1eb15L    # -9.711178120178193E-58
        -0x70e5b6b528144e4fL    # -6.458814917022228E-236
    .end array-data
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzh:Landroid/net/Uri;

    return-object v0
.end method

.method public final zzd()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzg:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzg:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzh:Landroid/net/Uri;

    .line 10
    .line 11
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcik;->zze:Z

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzf:Ljava/io/InputStream;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    :cond_0
    const/4 v0, 0x1

    .line 21
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzf:Ljava/io/InputStream;

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-static {v2}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzf:Ljava/io/InputStream;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzb:Lcom/google/android/gms/internal/ads/zzgw;

    .line 32
    .line 33
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzgw;->zzd()V

    .line 34
    .line 35
    .line 36
    :goto_0
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgq;->zzh()V

    .line 39
    .line 40
    .line 41
    :cond_3
    return-void

    .line 42
    :cond_4
    new-instance v0, Ljava/io/IOException;

    .line 43
    .line 44
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    const/16 v2, 0x8

    .line 47
    .line 48
    new-array v2, v2, [J

    .line 49
    .line 50
    fill-array-data v2, :array_0

    .line 51
    .line 52
    .line 53
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    nop

    .line 65
    :array_0
    .array-data 8
        0xe1db24bf10be886L
        -0x235708feb93f9f17L    # -2.322614955434457E138
        -0x7fa3bed6df50be83L    # -6.286842456161266E-307
        -0x18df8de36db31f3dL    # -5.724544585396936E188
        0x7dc88428302974ffL    # 8.016772543626976E297
        -0x5dcaaef1bc2457a4L
        -0x70405485072ba73aL    # -7.968366568156965E-233
        -0x12398fd4942f317aL    # -6.336568426094707E220
    .end array-data
.end method

.method public final zzk()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzn:J

    return-wide v0
.end method

.method public final zzl()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzi:Lcom/google/android/gms/internal/ads/zzbbb;

    .line 2
    .line 3
    const-wide/16 v1, -0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    cmp-long v0, v3, v1

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    return-wide v0

    .line 25
    :cond_1
    monitor-enter p0

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzo:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcep;->zza:Lcom/google/android/gms/internal/ads/zzgey;

    .line 31
    .line 32
    new-instance v3, Lcom/google/android/gms/internal/ads/zzcij;

    .line 33
    .line 34
    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzcij;-><init>(Lcom/google/android/gms/internal/ads/zzcik;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzgey;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzo:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzo:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 56
    .line 57
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzo:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 58
    .line 59
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Ljava/lang/Long;

    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 66
    .line 67
    .line 68
    move-result-wide v3

    .line 69
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 75
    .line 76
    .line 77
    move-result-wide v0

    .line 78
    return-wide v0

    .line 79
    :catch_0
    :cond_3
    :goto_1
    return-wide v1

    .line 80
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    throw v0
.end method

.method public final synthetic zzm()Ljava/lang/Long;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/internal/ads/zzbax;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzi:Lcom/google/android/gms/internal/ads/zzbbb;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbax;->zza(Lcom/google/android/gms/internal/ads/zzbbb;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public final zzn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzj:Z

    return v0
.end method

.method public final zzo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzm:Z

    return v0
.end method

.method public final zzp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzl:Z

    return v0
.end method

.method public final zzq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zzk:Z

    return v0
.end method
