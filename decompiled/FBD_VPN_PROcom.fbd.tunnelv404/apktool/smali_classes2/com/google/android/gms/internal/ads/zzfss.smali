.class public final Lcom/google/android/gms/internal/ads/zzfss;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfst;

.field private final zzb:[B

.field private zzc:I

.field private zzd:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfst;[BLcom/google/android/gms/internal/ads/zzfsr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfss;->zza:Lcom/google/android/gms/internal/ads/zzfst;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfss;->zzb:[B

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/ads/zzfss;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfss;->zzd:I

    return-object p0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/ads/zzfss;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfss;->zzc:I

    return-object p0
.end method

.method public final declared-synchronized zzc()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfss;->zza:Lcom/google/android/gms/internal/ads/zzfst;

    .line 3
    .line 4
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzfst;->zzb:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfst;->zza:Lcom/google/android/gms/internal/ads/zzfsw;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfss;->zzb:[B

    .line 11
    .line 12
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfsw;->zzj([B)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfss;->zza:Lcom/google/android/gms/internal/ads/zzfst;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfst;->zza:Lcom/google/android/gms/internal/ads/zzfsw;

    .line 18
    .line 19
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfss;->zzc:I

    .line 20
    .line 21
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfsw;->zzi(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfss;->zza:Lcom/google/android/gms/internal/ads/zzfst;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfst;->zza:Lcom/google/android/gms/internal/ads/zzfsw;

    .line 27
    .line 28
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfss;->zzd:I

    .line 29
    .line 30
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfsw;->zzg(I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfss;->zza:Lcom/google/android/gms/internal/ads/zzfst;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfst;->zza:Lcom/google/android/gms/internal/ads/zzfsw;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfsw;->zzh([I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfss;->zza:Lcom/google/android/gms/internal/ads/zzfst;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfst;->zza:Lcom/google/android/gms/internal/ads/zzfsw;

    .line 44
    .line 45
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfsw;->zzf()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    monitor-exit p0

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    monitor-exit p0

    .line 53
    return-void

    .line 54
    :catch_0
    :try_start_1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    const/4 v1, 0x2

    .line 57
    new-array v1, v1, [J

    .line 58
    .line 59
    fill-array-data v1, :array_0

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    const/4 v1, 0x4

    .line 71
    new-array v1, v1, [J

    .line 72
    .line 73
    fill-array-data v1, :array_1

    .line 74
    .line 75
    .line 76
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .line 81
    .line 82
    monitor-exit p0

    .line 83
    return-void

    .line 84
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    throw v0

    .line 86
    nop

    .line 87
    :array_0
    .array-data 8
        -0x30af7f4119dcc35eL    # -1.1663249278013113E74
        -0x15d5d815b3422723L    # -2.562695889600762E203
    .end array-data

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
    :array_1
    .array-data 8
        0x3d03c6c4a8b08ad3L    # 8.78250284823291E-15
        -0x5867eeb94b82882aL    # -5.965027091147711E-118
        0x1da52a7400b9f2caL    # 7.178732226433878E-166
        -0x6eda1af13c962af9L    # -4.621185319673859E-226
    .end array-data
.end method
