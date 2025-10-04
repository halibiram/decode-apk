.class public final Lcom/google/android/gms/internal/ads/zzchf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgw;


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

.field private final zzl:Ljava/util/concurrent/atomic/AtomicLong;

.field private zzm:Lcom/google/android/gms/internal/ads/zzhb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgw;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzhy;Lcom/google/android/gms/internal/ads/zzche;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchf;->zza:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzb:Lcom/google/android/gms/internal/ads/zzgw;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzc:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzd:I

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzj:Z

    .line 14
    .line 15
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzk:Z

    .line 16
    .line 17
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 18
    .line 19
    const-wide/16 p2, -0x1

    .line 20
    .line 21
    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzl:Ljava/util/concurrent/atomic/AtomicLong;

    .line 25
    .line 26
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgc;->zzbQ:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 27
    .line 28
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzchf;->zze:Z

    .line 43
    .line 44
    return-void
.end method

.method private final zzg()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzchf;->zze:Z

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
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzj:Z

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
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzk:Z

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
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzg:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzf:Ljava/io/InputStream;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzb:Lcom/google/android/gms/internal/ads/zzgw;

    .line 15
    .line 16
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzu;->zza([BII)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    :goto_0
    return p1

    .line 21
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 22
    .line 23
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/4 p3, 0x6

    .line 26
    new-array p3, p3, [J

    .line 27
    .line 28
    fill-array-data p3, :array_0

    .line 29
    .line 30
    .line 31
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    nop

    .line 43
    :array_0
    .array-data 8
        -0x3336f60e83f049c0L    # -8.047173241523557E61
        -0x3efc0bdfe8ba72d6L    # -163460.01136312756
        0x4f7b824cd9af3d2dL    # 7.776667144784364E74
        -0x20ebd2790fc2240L    # -4.51548664762946E298
        -0x2867d0dd172b60acL    # -9.305694329254912E113
        -0x508252d03ac0151aL    # -6.257112889546159E-80
    .end array-data
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhb;)J
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzg:Z

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzg:Z

    .line 7
    .line 8
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhb;->zza:Landroid/net/Uri;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzh:Landroid/net/Uri;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzm:Lcom/google/android/gms/internal/ads/zzhb;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbb;->zza(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzbbb;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzi:Lcom/google/android/gms/internal/ads/zzbbb;

    .line 19
    .line 20
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzej:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 21
    .line 22
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v1, 0x0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzi:Lcom/google/android/gms/internal/ads/zzbbb;

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzi:Lcom/google/android/gms/internal/ads/zzbbb;

    .line 44
    .line 45
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzhb;->zzf:J

    .line 46
    .line 47
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzbbb;->zzh:J

    .line 48
    .line 49
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzi:Lcom/google/android/gms/internal/ads/zzbbb;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzc:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfxt;->zzc(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzbbb;->zzi:Ljava/lang/String;

    .line 58
    .line 59
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzi:Lcom/google/android/gms/internal/ads/zzbbb;

    .line 60
    .line 61
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzd:I

    .line 62
    .line 63
    iput v0, p1, Lcom/google/android/gms/internal/ads/zzbbb;->zzj:I

    .line 64
    .line 65
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzi:Lcom/google/android/gms/internal/ads/zzbbb;

    .line 66
    .line 67
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzbbb;->zzg:Z

    .line 68
    .line 69
    if-eqz p1, :cond_0

    .line 70
    .line 71
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgc;->zzel:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 72
    .line 73
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Ljava/lang/Long;

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgc;->zzek:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 85
    .line 86
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Ljava/lang/Long;

    .line 95
    .line 96
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 97
    .line 98
    .line 99
    move-result-wide v2

    .line 100
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 105
    .line 106
    .line 107
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzd()Lcom/google/android/gms/internal/ads/zzbbm;

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchf;->zza:Landroid/content/Context;

    .line 111
    .line 112
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzi:Lcom/google/android/gms/internal/ads/zzbbb;

    .line 113
    .line 114
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbbm;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbb;)Ljava/util/concurrent/Future;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    const/4 v0, 0x0

    .line 119
    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 120
    .line 121
    invoke-interface {p1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    check-cast v2, Lcom/google/android/gms/internal/ads/zzbbn;

    .line 126
    .line 127
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbbn;->zzd()Z

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbbn;->zzf()Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzj:Z

    .line 135
    .line 136
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbbn;->zze()Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzk:Z

    .line 141
    .line 142
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbbn;->zza()J

    .line 143
    .line 144
    .line 145
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzchf;->zzg()Z

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    if-nez v3, :cond_1

    .line 150
    .line 151
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbbn;->zzc()Ljava/io/InputStream;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzf:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :catch_0
    :try_start_1
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 159
    .line 160
    .line 161
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :catch_1
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    .line 171
    .line 172
    :catchall_0
    :cond_1
    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 177
    .line 178
    .line 179
    throw v1

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzi:Lcom/google/android/gms/internal/ads/zzbbb;

    .line 181
    .line 182
    if-eqz v0, :cond_3

    .line 183
    .line 184
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzi:Lcom/google/android/gms/internal/ads/zzbbb;

    .line 185
    .line 186
    iget-wide v1, p1, Lcom/google/android/gms/internal/ads/zzhb;->zzf:J

    .line 187
    .line 188
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzbbb;->zzh:J

    .line 189
    .line 190
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzi:Lcom/google/android/gms/internal/ads/zzbbb;

    .line 191
    .line 192
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzc:Ljava/lang/String;

    .line 193
    .line 194
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfxt;->zzc(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbbb;->zzi:Ljava/lang/String;

    .line 199
    .line 200
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzi:Lcom/google/android/gms/internal/ads/zzbbb;

    .line 201
    .line 202
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzd:I

    .line 203
    .line 204
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzbbb;->zzj:I

    .line 205
    .line 206
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/internal/ads/zzbax;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzi:Lcom/google/android/gms/internal/ads/zzbbb;

    .line 211
    .line 212
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbax;->zzb(Lcom/google/android/gms/internal/ads/zzbbb;)Lcom/google/android/gms/internal/ads/zzbay;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    :cond_3
    if-eqz v1, :cond_4

    .line 217
    .line 218
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbay;->zze()Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-eqz v0, :cond_4

    .line 223
    .line 224
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbay;->zzg()Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzj:Z

    .line 229
    .line 230
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbay;->zzf()Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzk:Z

    .line 235
    .line 236
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzchf;->zzg()Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-nez v0, :cond_4

    .line 241
    .line 242
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbay;->zzc()Ljava/io/InputStream;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzf:Ljava/io/InputStream;

    .line 247
    .line 248
    const-wide/16 v0, -0x1

    .line 249
    .line 250
    return-wide v0

    .line 251
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzi:Lcom/google/android/gms/internal/ads/zzbbb;

    .line 252
    .line 253
    if-eqz v0, :cond_5

    .line 254
    .line 255
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhb;

    .line 256
    .line 257
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzi:Lcom/google/android/gms/internal/ads/zzbbb;

    .line 258
    .line 259
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbbb;->zza:Ljava/lang/String;

    .line 260
    .line 261
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzhb;->zze:J

    .line 266
    .line 267
    iget-wide v6, p1, Lcom/google/android/gms/internal/ads/zzhb;->zzf:J

    .line 268
    .line 269
    iget-wide v8, p1, Lcom/google/android/gms/internal/ads/zzhb;->zzg:J

    .line 270
    .line 271
    const/4 v10, 0x0

    .line 272
    iget v11, p1, Lcom/google/android/gms/internal/ads/zzhb;->zzi:I

    .line 273
    .line 274
    const/4 v3, 0x0

    .line 275
    move-object v1, v0

    .line 276
    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zzhb;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    .line 277
    .line 278
    .line 279
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzm:Lcom/google/android/gms/internal/ads/zzhb;

    .line 280
    .line 281
    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzb:Lcom/google/android/gms/internal/ads/zzgw;

    .line 282
    .line 283
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzm:Lcom/google/android/gms/internal/ads/zzhb;

    .line 284
    .line 285
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzgw;->zzb(Lcom/google/android/gms/internal/ads/zzhb;)J

    .line 286
    .line 287
    .line 288
    move-result-wide v0

    .line 289
    return-wide v0

    .line 290
    :cond_6
    new-instance p1, Ljava/io/IOException;

    .line 291
    .line 292
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 293
    .line 294
    const/4 v1, 0x7

    .line 295
    new-array v1, v1, [J

    .line 296
    .line 297
    fill-array-data v1, :array_0

    .line 298
    .line 299
    .line 300
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    throw p1

    .line 311
    :array_0
    .array-data 8
        -0xe290ce3735cf886L    # -2.3910722910436047E240
        -0x118fcce2307881e3L    # -9.369211789795873E223
        0x10e7107473cb9ffaL
        -0x45c5267771f72ce2L    # -3.3889136210110455E-28
        -0x1eda56507031c99dL    # -9.517502705402967E159
        -0x725845b4272c577fL    # -6.950075358330756E-243
        -0x59b7a79b59d3db8aL
    .end array-data
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzh:Landroid/net/Uri;

    return-object v0
.end method

.method public final zzd()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzg:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzg:Z

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzh:Landroid/net/Uri;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzf:Ljava/io/InputStream;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-static {v1}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzf:Ljava/io/InputStream;

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchf;->zzb:Lcom/google/android/gms/internal/ads/zzgw;

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgw;->zzd()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 28
    .line 29
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    const/16 v2, 0x8

    .line 32
    .line 33
    new-array v2, v2, [J

    .line 34
    .line 35
    fill-array-data v2, :array_0

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
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0

    .line 49
    :array_0
    .array-data 8
        -0x603e33d7db165282L
        -0x16056aaad38e53d7L    # -3.255715901719686E202
        -0xc0c8dd0479251b6L    # -3.480708062115233E250
        0x6ba9bbd868a5f0d2L    # 4.230097878732525E210
        -0x1bf448134a2bf438L    # -8.569520958880491E173
        0x27b16d089187a4e8L
        0x29a0a438d99d2749L
        -0x339f9f884fddd709L    # -8.223920380150783E59
    .end array-data
.end method

.method public final synthetic zze()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzhy;)V
    .locals 0

    return-void
.end method
