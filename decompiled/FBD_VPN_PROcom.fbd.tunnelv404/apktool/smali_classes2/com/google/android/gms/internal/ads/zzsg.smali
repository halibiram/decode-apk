.class final Lcom/google/android/gms/internal/ads/zzsg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzsr;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x17
.end annotation


# instance fields
.field private final zza:Landroid/media/MediaCodec;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzsm;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzss;

.field private zzd:Z

.field private zze:I


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Lcom/google/android/gms/internal/ads/zzss;Lcom/google/android/gms/internal/ads/zzsf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsg;->zza:Landroid/media/MediaCodec;

    .line 5
    .line 6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzsm;

    .line 7
    .line 8
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzsm;-><init>(Landroid/os/HandlerThread;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzb:Lcom/google/android/gms/internal/ads/zzsm;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzc:Lcom/google/android/gms/internal/ads/zzss;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzsg;->zze:I

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic zzd(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzsg;->zzr(ILjava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :array_0
    .array-data 8
        -0x59a2f1f8b16737dfL    # -6.867515849638723E-124
        0x72e5187352fe5266L    # 2.880822542311704E245
        -0x7c77c246a6f2b438L    # -1.214581613472717E-291
        0x48a48bbe8a662027L    # 8.94899119782367E41
        -0x7b45475633294fcfL    # -7.019438546400071E-286
        -0x48458160b1f064caL
    .end array-data
.end method

.method public static synthetic zze(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzsg;->zzr(ILjava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :array_0
    .array-data 8
        -0x266c9d41b08a91aL
        -0x3bbf76194bcfe935L    # -6.101694658516525E20
        0x21a9481d9a0bb171L
        0x7c3cfb051b55f4bL
        -0x616067a6d145b74L
        0x703f8b1f9369984bL    # 4.8971777686330876E232
    .end array-data
.end method

.method public static synthetic zzh(Lcom/google/android/gms/internal/ads/zzsg;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .locals 2

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzb:Lcom/google/android/gms/internal/ads/zzsm;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zza:Landroid/media/MediaCodec;

    .line 4
    .line 5
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/ads/zzsm;->zzf(Landroid/media/MediaCodec;)V

    .line 6
    .line 7
    .line 8
    sget p3, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 9
    .line 10
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    new-array v1, v0, [J

    .line 14
    .line 15
    fill-array-data v1, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzsg;->zza:Landroid/media/MediaCodec;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {p3, p1, p2, v1, p4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzc:Lcom/google/android/gms/internal/ads/zzss;

    .line 38
    .line 39
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzss;->zzh()V

    .line 40
    .line 41
    .line 42
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    new-array p2, v0, [J

    .line 45
    .line 46
    fill-array-data p2, :array_1

    .line 47
    .line 48
    .line 49
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsg;->zza:Landroid/media/MediaCodec;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 65
    .line 66
    .line 67
    const/4 p1, 0x1

    .line 68
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzsg;->zze:I

    .line 69
    .line 70
    return-void

    .line 71
    :array_0
    .array-data 8
        0x5b413f59573caf78L
        0x457103da53db0635L    # 3.291189354485684E26
        -0x5ed704c2f01e84cfL    # -6.105327099660092E-149
    .end array-data

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
    :array_1
    .array-data 8
        0x5928f039bc446049L    # 3.219856561305167E121
        0x24d3080100824a79L
        -0x241f126fffcac878L    # -3.844971974439448E134
    .end array-data
.end method

.method private static zzr(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    if-ne p0, p1, :cond_0

    .line 9
    .line 10
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    new-array p1, v0, [J

    .line 13
    .line 14
    fill-array-data p1, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    if-ne p0, v0, :cond_1

    .line 29
    .line 30
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    new-array p1, v0, [J

    .line 33
    .line 34
    fill-array-data p1, :array_1

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    new-array v2, v0, [J

    .line 51
    .line 52
    fill-array-data v2, :array_2

    .line 53
    .line 54
    .line 55
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    new-array p1, v0, [J

    .line 71
    .line 72
    fill-array-data p1, :array_3

    .line 73
    .line 74
    .line 75
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0

    .line 90
    nop

    .line 91
    :array_0
    .array-data 8
        -0x29d7f7b8098e90b8L    # -1.1023631404377682E107
        -0x4f75a7f6b2815cb9L    # -7.280329320363845E-75
    .end array-data

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
    :array_1
    .array-data 8
        0x55f049b03e6a53L
        0x790966a3925a1815L    # 1.0992987507968735E275
    .end array-data

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
    :array_2
    .array-data 8
        0x3f144db3d960d94eL    # 7.74518033218364E-5
        0x596cb2dc8cfa1e1eL    # 5.928572587560284E122
    .end array-data

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    :array_3
    .array-data 8
        0x191c474a23145bcL
        0x1df88e37d119d5f5L    # 2.665089824119953E-164
    .end array-data
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzc:Lcom/google/android/gms/internal/ads/zzss;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzss;->zzc()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzb:Lcom/google/android/gms/internal/ads/zzsm;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsm;->zza()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public final zzb(Landroid/media/MediaCodec$BufferInfo;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzc:Lcom/google/android/gms/internal/ads/zzss;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzss;->zzc()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzb:Lcom/google/android/gms/internal/ads/zzsm;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzsm;->zzb(Landroid/media/MediaCodec$BufferInfo;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final zzc()Landroid/media/MediaFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzb:Lcom/google/android/gms/internal/ads/zzsm;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsm;->zzc()Landroid/media/MediaFormat;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final zzf(I)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zza:Landroid/media/MediaCodec;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final zzg(I)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zza:Landroid/media/MediaCodec;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final zzi()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzc:Lcom/google/android/gms/internal/ads/zzss;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzss;->zzb()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zza:Landroid/media/MediaCodec;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzb:Lcom/google/android/gms/internal/ads/zzsm;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsm;->zze()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zza:Landroid/media/MediaCodec;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final zzj(IIIJI)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzc:Lcom/google/android/gms/internal/ads/zzss;

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    move v1, p1

    .line 5
    move v3, p3

    .line 6
    move-wide v4, p4

    .line 7
    move v6, p6

    .line 8
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzss;->zzd(IIIJI)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final zzk(IILcom/google/android/gms/internal/ads/zzie;JI)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzc:Lcom/google/android/gms/internal/ads/zzss;

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v6, 0x0

    .line 5
    move v1, p1

    .line 6
    move-object v3, p3

    .line 7
    move-wide v4, p4

    .line 8
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzss;->zze(IILcom/google/android/gms/internal/ads/zzie;JI)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final zzl()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzsg;->zze:I

    .line 3
    .line 4
    if-ne v1, v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzc:Lcom/google/android/gms/internal/ads/zzss;

    .line 7
    .line 8
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzss;->zzg()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzb:Lcom/google/android/gms/internal/ads/zzsm;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsm;->zzg()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    const/4 v1, 0x2

    .line 20
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzsg;->zze:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzd:Z

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsg;->zza:Landroid/media/MediaCodec;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 29
    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzd:Z

    .line 32
    .line 33
    :cond_1
    return-void

    .line 34
    :goto_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzd:Z

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsg;->zza:Landroid/media/MediaCodec;

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    .line 42
    .line 43
    .line 44
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzd:Z

    .line 45
    .line 46
    :goto_2
    throw v1
.end method

.method public final zzm(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zza:Landroid/media/MediaCodec;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzn(IZ)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzsg;->zza:Landroid/media/MediaCodec;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p2, p1, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final zzo(Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zza:Landroid/media/MediaCodec;

    .line 2
    .line 3
    invoke-static {v0, p1}, L땸듬땠뒝드딻돳땟뒉땠따듰땮될듨뎽두딻둥뎡딸땵땄땸돶둡돸뎽땹득뒋딸딃딟되땮딅되됴두땪땥땠땥돵뒘뒵돠뒤따딎딀듔땅둥둬땠듌돛둥둑땝땔딠뒬둡뎹돵뒋듸둣돤둬둘돸땸듐둡뒵될들땹돤듨땔땥땅땔둬뎸딹됫뒹뒘뒉둔든돷땬뎬딎땵땯된뒙땩돷땃뎸딠돨돤돸딌듽뒛됫뒻딐땃뒨따도뎰듨딁됨듼뎬둡;->뎨땱듼딃든둔뒬뒨땣된둬딻땵딎딽디땋따땃뒷딐땁된땀땔듨땤둠돠뎽땤돷듽둡돛딨듻뒋딐둣듌뒵듐둑뒾됫듟딌딤될뒨둥듟땬땁뒼땄돴뒙디딐딜들둣땧듬땐딌됨딹땸뒘땪뒝뒻딀땬땡딤듟딁따들돤땝뒼뒙딌딜딨뎹땀딌뎠득땝땔땅돠돛둬뒬뒻돨둡돠땋땯돝돵땔둘됴뒹땲땻땤듬뎬뎡돶땸돳듰땭뒐땪둔듔땬(Landroid/media/MediaCodec;Landroid/view/Surface;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzp(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzc:Lcom/google/android/gms/internal/ads/zzss;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzss;->zzf(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzq(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zza:Landroid/media/MediaCodec;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
