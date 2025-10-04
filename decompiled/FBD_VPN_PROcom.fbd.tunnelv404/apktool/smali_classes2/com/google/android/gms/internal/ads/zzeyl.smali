.class public final Lcom/google/android/gms/internal/ads/zzeyl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzexq;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzc:Ljava/util/concurrent/Executor;

.field private final zzd:I

.field private final zze:Z

.field private final zzf:Z

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcdc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcdc;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeyl;->zzg:Lcom/google/android/gms/internal/ads/zzcdc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeyl;->zza:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeyl;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeyl;->zzc:Ljava/util/concurrent/Executor;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzeyl;->zzd:I

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzeyl;->zze:Z

    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzeyl;->zzf:Z

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzaU:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyl;->zzg:Lcom/google/android/gms/internal/ads/zzcdc;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeyl;->zza:Landroid/content/Context;

    .line 22
    .line 23
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzeyl;->zzd:I

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcdc;->zza(Landroid/content/Context;I)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgee;->zzu(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgee;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Lcom/google/android/gms/internal/ads/zzeyj;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzeyj;-><init>(Lcom/google/android/gms/internal/ads/zzeyl;)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeyl;->zzc:Ljava/util/concurrent/Executor;

    .line 39
    .line 40
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgen;->zzm(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfws;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgc;->zzaV:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 45
    .line 46
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Ljava/lang/Long;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 57
    .line 58
    .line 59
    move-result-wide v1

    .line 60
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeyl;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    .line 61
    .line 62
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 63
    .line 64
    invoke-static {v0, v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzgen;->zzo(Lcom/google/common/util/concurrent/ListenableFuture;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lcom/google/android/gms/internal/ads/zzgee;

    .line 69
    .line 70
    new-instance v1, Lcom/google/android/gms/internal/ads/zzeyk;

    .line 71
    .line 72
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzeyk;-><init>(Lcom/google/android/gms/internal/ads/zzeyl;)V

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeyl;->zzc:Ljava/util/concurrent/Executor;

    .line 76
    .line 77
    const-class v3, Ljava/lang/Throwable;

    .line 78
    .line 79
    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzgen;->zze(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfws;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    return-object v0

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    .line 85
    .line 86
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 87
    .line 88
    const/4 v2, 0x6

    .line 89
    new-array v2, v2, [J

    .line 90
    .line 91
    fill-array-data v2, :array_0

    .line 92
    .line 93
    .line 94
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgen;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    return-object v0

    .line 109
    :array_0
    .array-data 8
        0x2ec708a2af33505dL    # 2.3713492771481514E-83
        -0x774f9ebf32c48eb7L    # -7.93733965517426E-267
        -0x5f4f734daf1333e6L    # -3.159872642459222E-151
        -0x161d2ddfb356f157L    # -1.1525116153126487E202
        0x1be1cc3d0f7e7becL    # 2.248738757403025E-174
        0x1926e96192720801L    # 1.645542044156001E-187
    .end array-data
.end method

.method public final synthetic zzc(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)Lcom/google/android/gms/internal/ads/zzeym;
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfub;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfub;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzeyl;->zze:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgc;->zzcR:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 11
    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzeyl;->zze:Z

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgc;->zzcS:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 33
    .line 34
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Ljava/lang/Boolean;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyl;->zza:Landroid/content/Context;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfue;->zzj(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfue;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyl;->zza:Landroid/content/Context;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzcY:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 73
    .line 74
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Ljava/lang/Long;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 85
    .line 86
    .line 87
    move-result-wide v4

    .line 88
    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzeyl;->zzf:Z

    .line 89
    .line 90
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfue;->zzi(Ljava/lang/String;Ljava/lang/String;JZ)Lcom/google/android/gms/internal/ads/zzfub;

    .line 91
    .line 92
    .line 93
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    goto :goto_1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    goto :goto_0

    .line 97
    :catch_1
    move-exception v0

    .line 98
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 99
    .line 100
    const/4 v2, 0x5

    .line 101
    new-array v2, v2, [J

    .line 102
    .line 103
    fill-array-data v2, :array_0

    .line 104
    .line 105
    .line 106
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzcdl;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfub;

    .line 121
    .line 122
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfub;-><init>()V

    .line 123
    .line 124
    .line 125
    :cond_2
    :goto_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzeym;

    .line 126
    .line 127
    const/4 v2, 0x0

    .line 128
    invoke-direct {v1, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzeym;-><init>(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfub;)V

    .line 129
    .line 130
    .line 131
    return-object v1

    .line 132
    nop

    .line 133
    :array_0
    .array-data 8
        0x6b905958178186b7L    # 1.3437181888648843E210
        -0x2e62cc3880428a2eL    # -1.4182581911600994E85
        -0x20caa4d34cbaf0deL    # -4.3691889701027495E150
        0x361e01445e755956L    # 5.132554885913854E-48
        0x7b5e858d495bf10dL    # 1.8154505924208216E286
    .end array-data
.end method

.method public final synthetic zzd(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzeym;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeyl;->zza:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    move-object p1, v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    new-array v2, v2, [J

    .line 19
    .line 20
    fill-array-data v2, :array_0

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {p1, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzeym;

    .line 35
    .line 36
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfub;

    .line 37
    .line 38
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzfub;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzeym;-><init>(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfub;)V

    .line 42
    .line 43
    .line 44
    return-object v1

    .line 45
    :array_0
    .array-data 8
        0x506523228783f63L
        -0x4c8e63dae89e556cL    # -6.849183230708481E-61
        0x3637245f5c584f2L
    .end array-data
.end method
