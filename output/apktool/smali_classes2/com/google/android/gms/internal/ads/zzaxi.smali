.class public final Lcom/google/android/gms/internal/ads/zzaxi;
.super Lcom/google/android/gms/internal/ads/zzaxx;
.source "SourceFile"


# instance fields
.field private final zzi:Lcom/google/android/gms/internal/ads/zzavm;

.field private final zzj:J

.field private final zzk:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzawj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzasg;IILcom/google/android/gms/internal/ads/zzavm;JJ)V
    .locals 8

    .line 1
    move-object v7, p0

    .line 2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/16 v1, 0x9

    .line 5
    .line 6
    new-array v1, v1, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v1, 0x7

    .line 21
    new-array v1, v1, [J

    .line 22
    .line 23
    fill-array-data v1, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const/16 v6, 0xb

    .line 34
    .line 35
    move-object v0, p0

    .line 36
    move-object v1, p1

    .line 37
    move-object v4, p4

    .line 38
    move v5, p5

    .line 39
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzaxx;-><init>(Lcom/google/android/gms/internal/ads/zzawj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzasg;II)V

    .line 40
    .line 41
    .line 42
    move-object v0, p7

    .line 43
    iput-object v0, v7, Lcom/google/android/gms/internal/ads/zzaxi;->zzi:Lcom/google/android/gms/internal/ads/zzavm;

    .line 44
    .line 45
    move-wide/from16 v0, p8

    .line 46
    .line 47
    iput-wide v0, v7, Lcom/google/android/gms/internal/ads/zzaxi;->zzj:J

    .line 48
    .line 49
    move-wide/from16 v0, p10

    .line 50
    .line 51
    iput-wide v0, v7, Lcom/google/android/gms/internal/ads/zzaxi;->zzk:J

    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :array_0
    .array-data 8
        -0x4f3551b4e34cb45cL    # -1.1797513028172818E-73
        -0x35afa6bceeea1e2bL    # -9.557448805672417E49
        0x16cf04b7fe395a6cL
        -0x33a812cdd9ae038bL    # -6.007574655629326E59
        -0x702ebbda8849054bL    # -1.737720964048084E-232
        -0x600b54314edba9a4L
        -0x6c8fe11e8faae4f8L
        -0x60d3685712f45e32L
        0x591a888e1b28eb83L    # 1.7128979085788927E121
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
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    :array_1
    .array-data 8
        0x358a36533977124L
        -0x209c525f51f46aadL    # -3.220727159045073E151
        -0x29666cd7dbd2941eL    # -1.5015895064111416E109
        0x53e697e70a949427L    # 1.5080982382964582E96
        0x4fe182cd9026ec5fL    # 6.336341830935388E76
        0x3e114e67b84b9b55L    # 1.007357503993649E-9
        0x6d81a17515da0122L
    .end array-data
.end method


# virtual methods
.method public final zza()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxi;->zzi:Lcom/google/android/gms/internal/ads/zzavm;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxx;->zzf:Ljava/lang/reflect/Method;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzavm;->zzb()Landroid/net/NetworkCapabilities;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaxi;->zzj:J

    .line 12
    .line 13
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaxi;->zzk:J

    .line 18
    .line 19
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const/4 v4, 0x3

    .line 24
    new-array v4, v4, [Ljava/lang/Object;

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    aput-object v0, v4, v5

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    aput-object v2, v4, v0

    .line 31
    .line 32
    const/4 v0, 0x2

    .line 33
    aput-object v3, v4, v0

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/String;

    .line 41
    .line 42
    new-instance v1, Lcom/google/android/gms/internal/ads/zzavk;

    .line 43
    .line 44
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzavk;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxx;->zze:Lcom/google/android/gms/internal/ads/zzasg;

    .line 48
    .line 49
    monitor-enter v0

    .line 50
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaxx;->zze:Lcom/google/android/gms/internal/ads/zzasg;

    .line 51
    .line 52
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzavk;->zza:Ljava/lang/Long;

    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 55
    .line 56
    .line 57
    move-result-wide v3

    .line 58
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzasg;->zzz(J)Lcom/google/android/gms/internal/ads/zzasg;

    .line 59
    .line 60
    .line 61
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzavk;->zzb:Ljava/lang/Long;

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    const-wide/16 v4, 0x0

    .line 68
    .line 69
    cmp-long v6, v2, v4

    .line 70
    .line 71
    if-ltz v6, :cond_0

    .line 72
    .line 73
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaxx;->zze:Lcom/google/android/gms/internal/ads/zzasg;

    .line 74
    .line 75
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzavk;->zzb:Ljava/lang/Long;

    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 78
    .line 79
    .line 80
    move-result-wide v6

    .line 81
    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/ads/zzasg;->zzQ(J)Lcom/google/android/gms/internal/ads/zzasg;

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catchall_0
    move-exception v1

    .line 86
    goto :goto_1

    .line 87
    :cond_0
    :goto_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzavk;->zzc:Ljava/lang/Long;

    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 90
    .line 91
    .line 92
    move-result-wide v2

    .line 93
    cmp-long v6, v2, v4

    .line 94
    .line 95
    if-ltz v6, :cond_1

    .line 96
    .line 97
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaxx;->zze:Lcom/google/android/gms/internal/ads/zzasg;

    .line 98
    .line 99
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzavk;->zzc:Ljava/lang/Long;

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 102
    .line 103
    .line 104
    move-result-wide v3

    .line 105
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzasg;->zzf(J)Lcom/google/android/gms/internal/ads/zzasg;

    .line 106
    .line 107
    .line 108
    :cond_1
    monitor-exit v0

    .line 109
    return-void

    .line 110
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    throw v1

    .line 112
    :cond_2
    return-void
.end method
