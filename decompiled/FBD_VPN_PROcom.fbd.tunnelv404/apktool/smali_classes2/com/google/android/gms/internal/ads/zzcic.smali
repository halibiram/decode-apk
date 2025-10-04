.class public final Lcom/google/android/gms/internal/ads/zzcic;
.super Lcom/google/android/gms/internal/ads/zzchw;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhy;


# instance fields
.field private zzd:Ljava/lang/String;

.field private final zze:Lcom/google/android/gms/internal/ads/zzcgk;

.field private zzf:Z

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcib;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzchh;

.field private zzi:Ljava/nio/ByteBuffer;

.field private zzj:Z

.field private final zzk:Ljava/lang/Object;

.field private final zzl:Ljava/lang/String;

.field private final zzm:I

.field private zzn:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcgl;Lcom/google/android/gms/internal/ads/zzcgk;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzchw;-><init>(Lcom/google/android/gms/internal/ads/zzcgl;)V

    .line 3
    .line 4
    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcic;->zze:Lcom/google/android/gms/internal/ads/zzcgk;

    .line 6
    .line 7
    new-instance p2, Lcom/google/android/gms/internal/ads/zzcib;

    .line 8
    .line 9
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzcib;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzg:Lcom/google/android/gms/internal/ads/zzcib;

    .line 13
    .line 14
    new-instance p2, Lcom/google/android/gms/internal/ads/zzchh;

    .line 15
    .line 16
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzchh;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzh:Lcom/google/android/gms/internal/ads/zzchh;

    .line 20
    .line 21
    new-instance p2, Ljava/lang/Object;

    .line 22
    .line 23
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzk:Ljava/lang/Object;

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcgl;->zzr()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p2, 0x0

    .line 36
    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfwz;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwz;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    new-array v2, v2, [J

    .line 44
    .line 45
    const-wide v3, 0x33c67e4bf0ca44c6L    # 2.7995287486968625E-59

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    aput-wide v3, v2, v0

    .line 51
    .line 52
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzfwz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    check-cast p2, Ljava/lang/String;

    .line 64
    .line 65
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzl:Ljava/lang/String;

    .line 66
    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcgl;->zzf()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    :cond_1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzm:I

    .line 74
    .line 75
    return-void
.end method

.method public static final zzm(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzcdv;->zze(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    new-array v1, v1, [J

    .line 13
    .line 14
    fill-array-data v1, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :array_0
    .array-data 8
        -0x419c99ff79d8d5a2L    # -3.613242040600875E-8
        -0x2dfea4a5fad6fa43L    # -1.0789951263319103E87
    .end array-data
.end method

.method private final zzv()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzg:Lcom/google/android/gms/internal/ads/zzcib;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcib;->zza()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    long-to-int v6, v0

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzh:Lcom/google/android/gms/internal/ads/zzchh;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzi:Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzchh;->zza(Ljava/nio/ByteBuffer;)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    long-to-int v1, v0

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzi:Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    int-to-float v0, v5

    .line 24
    int-to-float v2, v6

    .line 25
    int-to-float v3, v1

    .line 26
    div-float/2addr v0, v2

    .line 27
    mul-float v0, v0, v3

    .line 28
    .line 29
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcgc;->zzs()I

    .line 34
    .line 35
    .line 36
    move-result v12

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcgc;->zzu()I

    .line 38
    .line 39
    .line 40
    move-result v13

    .line 41
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzd:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzcic;->zzm(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    int-to-long v7, v0

    .line 48
    if-lez v0, :cond_0

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    const/4 v11, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 v0, 0x0

    .line 54
    const/4 v11, 0x0

    .line 55
    :goto_0
    int-to-long v9, v1

    .line 56
    move-object v2, p0

    .line 57
    invoke-virtual/range {v2 .. v13}, Lcom/google/android/gms/internal/ads/zzchw;->zzn(Ljava/lang/String;Ljava/lang/String;IIJJZII)V

    .line 58
    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgw;Lcom/google/android/gms/internal/ads/zzhb;ZI)V
    .locals 0

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgw;Lcom/google/android/gms/internal/ads/zzhb;Z)V
    .locals 0

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzgw;Lcom/google/android/gms/internal/ads/zzhb;Z)V
    .locals 0

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzgw;Lcom/google/android/gms/internal/ads/zzhb;Z)V
    .locals 0

    .line 1
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzhj;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzg:Lcom/google/android/gms/internal/ads/zzcib;

    .line 6
    .line 7
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhj;

    .line 8
    .line 9
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzcib;->zzb(Lcom/google/android/gms/internal/ads/zzhj;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final zzf()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzf:Z

    return-void
.end method

.method public final zzi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzk()Ljava/nio/ByteBuffer;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzk:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzi:Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzj:Z

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 14
    .line 15
    .line 16
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzj:Z

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzf:Z

    .line 22
    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzi:Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    return-object v0

    .line 27
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw v1
.end method

.method public final zzl()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcic;->zzn:Z

    return v0
.end method

.method public final zzt(Ljava/lang/String;)Z
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzcic;->zzd:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v5, 0x2

    .line 10
    new-array v6, v5, [J

    .line 11
    .line 12
    fill-array-data v6, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcic;->zzm(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    const/4 v8, 0x0

    .line 27
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhe;

    .line 28
    .line 29
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhe;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzchw;->zzb:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzhe;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhe;

    .line 35
    .line 36
    .line 37
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzcic;->zze:Lcom/google/android/gms/internal/ads/zzcgk;

    .line 38
    .line 39
    iget v9, v9, Lcom/google/android/gms/internal/ads/zzcgk;->zzd:I

    .line 40
    .line 41
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzhe;->zzc(I)Lcom/google/android/gms/internal/ads/zzhe;

    .line 42
    .line 43
    .line 44
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzcic;->zze:Lcom/google/android/gms/internal/ads/zzcgk;

    .line 45
    .line 46
    iget v9, v9, Lcom/google/android/gms/internal/ads/zzcgk;->zzf:I

    .line 47
    .line 48
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzhe;->zzd(I)Lcom/google/android/gms/internal/ads/zzhe;

    .line 49
    .line 50
    .line 51
    const/4 v9, 0x1

    .line 52
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzhe;->zzb(Z)Lcom/google/android/gms/internal/ads/zzhe;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhe;->zze(Lcom/google/android/gms/internal/ads/zzhy;)Lcom/google/android/gms/internal/ads/zzhe;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhe;->zzg()Lcom/google/android/gms/internal/ads/zzhj;

    .line 59
    .line 60
    .line 61
    move-result-object v12

    .line 62
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcic;->zze:Lcom/google/android/gms/internal/ads/zzcgk;

    .line 63
    .line 64
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzcgk;->zzj:Z

    .line 65
    .line 66
    if-eqz v0, :cond_0

    .line 67
    .line 68
    new-instance v0, Lcom/google/android/gms/internal/ads/zzchf;

    .line 69
    .line 70
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzchw;->zza:Landroid/content/Context;

    .line 71
    .line 72
    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzcic;->zzl:Ljava/lang/String;

    .line 73
    .line 74
    iget v14, v1, Lcom/google/android/gms/internal/ads/zzcic;->zzm:I

    .line 75
    .line 76
    const/4 v15, 0x0

    .line 77
    const/16 v16, 0x0

    .line 78
    .line 79
    move-object v10, v0

    .line 80
    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/zzchf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgw;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzhy;Lcom/google/android/gms/internal/ads/zzche;)V

    .line 81
    .line 82
    .line 83
    move-object v12, v0

    .line 84
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    move-object/from16 v17, v6

    .line 87
    .line 88
    goto/16 :goto_6

    .line 89
    .line 90
    :cond_0
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    new-instance v10, Lcom/google/android/gms/internal/ads/zzhb;

    .line 95
    .line 96
    invoke-direct {v10, v0}, Lcom/google/android/gms/internal/ads/zzhb;-><init>(Landroid/net/Uri;)V

    .line 97
    .line 98
    .line 99
    invoke-interface {v12, v10}, Lcom/google/android/gms/internal/ads/zzgw;->zzb(Lcom/google/android/gms/internal/ads/zzhb;)J

    .line 100
    .line 101
    .line 102
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzchw;->zzc:Ljava/lang/ref/WeakReference;

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Lcom/google/android/gms/internal/ads/zzcgl;

    .line 109
    .line 110
    if-eqz v0, :cond_1

    .line 111
    .line 112
    invoke-interface {v0, v7, v1}, Lcom/google/android/gms/internal/ads/zzcgl;->zzt(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzchw;)V

    .line 113
    .line 114
    .line 115
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 120
    .line 121
    .line 122
    move-result-wide v10

    .line 123
    sget-object v13, Lcom/google/android/gms/internal/ads/zzbgc;->zzy:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 124
    .line 125
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 126
    .line 127
    .line 128
    move-result-object v14

    .line 129
    invoke-virtual {v14, v13}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v13

    .line 133
    check-cast v13, Ljava/lang/Long;

    .line 134
    .line 135
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 136
    .line 137
    .line 138
    move-result-wide v13

    .line 139
    sget-object v15, Lcom/google/android/gms/internal/ads/zzbgc;->zzx:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 140
    .line 141
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-virtual {v3, v15}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    check-cast v3, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .line 151
    move-object/from16 v17, v6

    .line 152
    .line 153
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 154
    .line 155
    .line 156
    move-result-wide v5

    .line 157
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzcic;->zze:Lcom/google/android/gms/internal/ads/zzcgk;

    .line 158
    .line 159
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzcgk;->zzc:I

    .line 160
    .line 161
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzcic;->zzi:Ljava/nio/ByteBuffer;

    .line 166
    .line 167
    const/16 v3, 0x2000

    .line 168
    .line 169
    new-array v15, v3, [B

    .line 170
    .line 171
    move-wide/from16 v18, v10

    .line 172
    .line 173
    :goto_1
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzcic;->zzi:Ljava/nio/ByteBuffer;

    .line 174
    .line 175
    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    invoke-interface {v12, v15, v8, v4}, Lcom/google/android/gms/internal/ads/zzu;->zza([BII)I

    .line 184
    .line 185
    .line 186
    move-result v4

    .line 187
    const/4 v3, -0x1

    .line 188
    if-ne v4, v3, :cond_2

    .line 189
    .line 190
    iput-boolean v9, v1, Lcom/google/android/gms/internal/ads/zzcic;->zzn:Z

    .line 191
    .line 192
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcic;->zzh:Lcom/google/android/gms/internal/ads/zzchh;

    .line 193
    .line 194
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzcic;->zzi:Ljava/nio/ByteBuffer;

    .line 195
    .line 196
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzchh;->zza(Ljava/nio/ByteBuffer;)J

    .line 197
    .line 198
    .line 199
    move-result-wide v3

    .line 200
    long-to-int v0, v3

    .line 201
    int-to-long v3, v0

    .line 202
    invoke-virtual {v1, v2, v7, v3, v4}, Lcom/google/android/gms/internal/ads/zzchw;->zzj(Ljava/lang/String;Ljava/lang/String;J)V

    .line 203
    .line 204
    .line 205
    :goto_2
    const/4 v3, 0x1

    .line 206
    goto :goto_4

    .line 207
    :catch_1
    move-exception v0

    .line 208
    goto/16 :goto_6

    .line 209
    .line 210
    :cond_2
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzcic;->zzk:Ljava/lang/Object;

    .line 211
    .line 212
    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 213
    :try_start_2
    iget-boolean v9, v1, Lcom/google/android/gms/internal/ads/zzcic;->zzf:Z

    .line 214
    .line 215
    if-nez v9, :cond_3

    .line 216
    .line 217
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzcic;->zzi:Ljava/nio/ByteBuffer;

    .line 218
    .line 219
    invoke-virtual {v9, v15, v8, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 220
    .line 221
    .line 222
    goto :goto_3

    .line 223
    :catchall_0
    move-exception v0

    .line 224
    goto/16 :goto_5

    .line 225
    .line 226
    :cond_3
    :goto_3
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 227
    :try_start_3
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzcic;->zzi:Ljava/nio/ByteBuffer;

    .line 228
    .line 229
    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    if-gtz v3, :cond_4

    .line 234
    .line 235
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzcic;->zzv()V

    .line 236
    .line 237
    .line 238
    goto :goto_2

    .line 239
    :goto_4
    return v3

    .line 240
    :cond_4
    const/4 v3, 0x1

    .line 241
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzcic;->zzf:Z

    .line 242
    .line 243
    if-nez v4, :cond_7

    .line 244
    .line 245
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 246
    .line 247
    .line 248
    move-result-wide v20

    .line 249
    sub-long v22, v20, v18

    .line 250
    .line 251
    cmp-long v4, v22, v13

    .line 252
    .line 253
    if-ltz v4, :cond_5

    .line 254
    .line 255
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzcic;->zzv()V

    .line 256
    .line 257
    .line 258
    move-wide/from16 v18, v20

    .line 259
    .line 260
    :cond_5
    sub-long v20, v20, v10

    .line 261
    .line 262
    const-wide/16 v22, 0x3e8

    .line 263
    .line 264
    mul-long v22, v22, v5

    .line 265
    .line 266
    cmp-long v4, v20, v22

    .line 267
    .line 268
    if-gtz v4, :cond_6

    .line 269
    .line 270
    const/16 v3, 0x2000

    .line 271
    .line 272
    const/4 v9, 0x1

    .line 273
    goto :goto_1

    .line 274
    :cond_6
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 275
    .line 276
    const/4 v3, 0x3

    .line 277
    new-array v4, v3, [J

    .line 278
    .line 279
    fill-array-data v4, :array_1

    .line 280
    .line 281
    .line 282
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 289
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .line 293
    .line 294
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 295
    .line 296
    const/4 v9, 0x5

    .line 297
    new-array v9, v9, [J

    .line 298
    .line 299
    fill-array-data v9, :array_2

    .line 300
    .line 301
    .line 302
    invoke-direct {v4, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 316
    .line 317
    const/4 v5, 0x2

    .line 318
    new-array v6, v5, [J

    .line 319
    .line 320
    fill-array-data v6, :array_3

    .line 321
    .line 322
    .line 323
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v4

    .line 330
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    new-instance v4, Ljava/io/IOException;

    .line 338
    .line 339
    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 343
    :catch_2
    move-exception v0

    .line 344
    move-object v6, v3

    .line 345
    goto :goto_7

    .line 346
    :cond_7
    :try_start_5
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 347
    .line 348
    const/4 v3, 0x3

    .line 349
    new-array v4, v3, [J

    .line 350
    .line 351
    fill-array-data v4, :array_4

    .line 352
    .line 353
    .line 354
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 361
    :try_start_6
    new-instance v0, Ljava/io/IOException;

    .line 362
    .line 363
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzcic;->zzi:Ljava/nio/ByteBuffer;

    .line 364
    .line 365
    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    .line 366
    .line 367
    .line 368
    move-result v3

    .line 369
    new-instance v4, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .line 373
    .line 374
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 375
    .line 376
    const/4 v9, 0x4

    .line 377
    new-array v10, v9, [J

    .line 378
    .line 379
    fill-array-data v10, :array_5

    .line 380
    .line 381
    .line 382
    invoke-direct {v5, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v5

    .line 389
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 396
    .line 397
    const/4 v5, 0x2

    .line 398
    new-array v9, v5, [J

    .line 399
    .line 400
    fill-array-data v9, :array_6

    .line 401
    .line 402
    .line 403
    invoke-direct {v3, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v3

    .line 417
    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 421
    :catch_3
    move-exception v0

    .line 422
    goto :goto_7

    .line 423
    :goto_5
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 424
    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 425
    :goto_6
    move-object/from16 v6, v17

    .line 426
    .line 427
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 428
    .line 429
    .line 430
    move-result-object v3

    .line 431
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v3

    .line 435
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    invoke-static {v3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    move-result-object v3

    .line 443
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 444
    .line 445
    const/4 v5, 0x2

    .line 446
    new-array v5, v5, [J

    .line 447
    .line 448
    fill-array-data v5, :array_7

    .line 449
    .line 450
    .line 451
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 452
    .line 453
    .line 454
    invoke-static {v4, v3, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    new-instance v3, Ljava/lang/StringBuilder;

    .line 459
    .line 460
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 461
    .line 462
    .line 463
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 464
    .line 465
    const/4 v5, 0x4

    .line 466
    new-array v5, v5, [J

    .line 467
    .line 468
    fill-array-data v5, :array_8

    .line 469
    .line 470
    .line 471
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v4

    .line 478
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 485
    .line 486
    const/4 v5, 0x3

    .line 487
    new-array v5, v5, [J

    .line 488
    .line 489
    fill-array-data v5, :array_9

    .line 490
    .line 491
    .line 492
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v4

    .line 499
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v3

    .line 509
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v1, v2, v7, v6, v0}, Lcom/google/android/gms/internal/ads/zzchw;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    return v8

    .line 516
    nop

    .line 517
    :array_0
    .array-data 8
        0x5cc5069ff53b227bL    # 7.824600337852129E138
        -0x5195a2dfe636700dL    # -4.2409071828001474E-85
    .end array-data

    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    :array_1
    .array-data 8
        -0x517ccb7980bd95bcL    # -1.2357469497146416E-84
        -0x5d0efd9a13388906L    # -2.231773930041857E-140
        0x4e5373cf7ead753fL    # 2.0977410345663786E69
    .end array-data

    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    :array_2
    .array-data 8
        -0x171248a96e62606fL    # -2.776642288841822E197
        -0x31a249a9c0cb1058L    # -3.2041630813936432E69
        0x14e554a0b8a78987L
        -0xcb2c4ddb1c275e7L
        -0x623f6161b226ddb5L
    .end array-data

    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    :array_3
    .array-data 8
        -0x5b15efdfbe64e52cL    # -7.343720996739505E-131
        -0x5352e4506020097dL    # -1.744319115222057E-93
    .end array-data

    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    :array_4
    .array-data 8
        0x5947551df86e5e30L    # 1.205006314921236E122
        0x8741d7a488479baL
        0x30a780f6e1c80d98L    # 2.5981759299289645E-74
    .end array-data

    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    :array_5
    .array-data 8
        0xbcaba587f97ab2eL
        -0x5f7b40336e7c384bL    # -4.952150943627313E-152
        0x500117330f9b3a04L    # 2.4736986618289886E77
        0x39bea12aecd27eacL    # 1.5101539626402107E-30
    .end array-data

    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    :array_6
    .array-data 8
        -0x42d4b9cec3d8bc45L    # -4.8448691753728114E-14
        0x53018f9e52ff544fL    # 7.154481661365638E91
    .end array-data

    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    :array_7
    .array-data 8
        0x1e8838304fe46afL
        0x7cb60533e55970e3L    # 5.493631063617792E292
    .end array-data

    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    :array_8
    .array-data 8
        0x5857e93e70ada260L    # 3.7685826616672926E117
        0xa46b28c5715233dL
        -0x52565195962e2408L    # -1.0085756574688226E-88
        0x5b827844d359498L
    .end array-data

    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    :array_9
    .array-data 8
        -0x53dd69fdb7a154daL    # -4.350675359586423E-96
        -0x56f7291ab451a8acL    # -5.164322368241319E-111
        0x73f5c77a772ba841L    # 3.898329825441266E250
    .end array-data
.end method
