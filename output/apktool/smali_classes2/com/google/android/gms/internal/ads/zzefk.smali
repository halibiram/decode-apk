.class public final Lcom/google/android/gms/internal/ads/zzefk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdhv;


# instance fields
.field private zza:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzb:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzflw;

.field private final zze:Lcom/google/android/gms/ads/internal/util/zzg;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzflw;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzefk;->zza:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzefk;->zzb:Z

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefk;->zzc:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzefk;->zzd:Lcom/google/android/gms/internal/ads/zzflw;

    .line 12
    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcdl;->zzi()Lcom/google/android/gms/ads/internal/util/zzg;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefk;->zze:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 22
    .line 23
    return-void
.end method

.method private final zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflv;
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzefk;->zze:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 3
    .line 4
    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/util/zzg;->zzQ()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    new-array v2, v2, [J

    .line 14
    .line 15
    const-wide v3, -0x47a43f060dc4d3d7L    # -3.262445142569038E-37

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    aput-wide v3, v2, v5

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
    goto :goto_0

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzefk;->zzc:Ljava/lang/String;

    .line 32
    .line 33
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzflv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflv;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    const/16 v4, 0xa

    .line 46
    .line 47
    invoke-static {v2, v3, v4}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    new-array v4, v0, [J

    .line 54
    .line 55
    fill-array-data v4, :array_0

    .line 56
    .line 57
    .line 58
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/ads/zzflv;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflv;

    .line 66
    .line 67
    .line 68
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    new-array v0, v0, [J

    .line 71
    .line 72
    fill-array-data v0, :array_1

    .line 73
    .line 74
    .line 75
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzflv;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflv;

    .line 83
    .line 84
    .line 85
    return-object p1

    .line 86
    nop

    .line 87
    :array_0
    .array-data 8
        0x31496cd9c29c6152L    # 2.878030392531662E-71
        -0x737a7a800a4335b7L
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
        -0x1ab9b51c99f8e681L    # -7.226813277997033E179
        0x4a7b843d0c579ac4L    # 6.434478785647672E50
    .end array-data
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    new-array v1, v0, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzefk;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflv;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    new-array v0, v0, [J

    .line 23
    .line 24
    fill-array-data v0, :array_1

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/4 v2, 0x3

    .line 37
    new-array v2, v2, [J

    .line 38
    .line 39
    fill-array-data v2, :array_2

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzflv;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflv;

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefk;->zzd:Lcom/google/android/gms/internal/ads/zzflw;

    .line 53
    .line 54
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzflw;->zzb(Lcom/google/android/gms/internal/ads/zzflv;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    nop

    .line 59
    :array_0
    .array-data 8
        0x1ff83ae79c89d5a3L
        0x553b97899eaf6997L    # 3.862431921531167E102
    .end array-data

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
    :array_1
    .array-data 8
        -0x6c26793e2ffbf14cL
        -0x34408f9665f92eb4L    # -7.708847673297271E56
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :array_2
    .array-data 8
        -0x2bf1e0f2d21cbc12L    # -8.042336912928681E96
        0x45dfc94ffa656e62L    # 3.934962832060516E28
        -0x5c55a8a5b0680826L    # -7.078282578987536E-137
    .end array-data
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzefk;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflv;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    new-array v3, v2, [J

    .line 24
    .line 25
    fill-array-data v3, :array_1

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzflv;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflv;

    .line 36
    .line 37
    .line 38
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    new-array v1, v2, [J

    .line 41
    .line 42
    fill-array-data v1, :array_2

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzflv;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflv;

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzefk;->zzd:Lcom/google/android/gms/internal/ads/zzflw;

    .line 56
    .line 57
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzflw;->zzb(Lcom/google/android/gms/internal/ads/zzflv;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :array_0
    .array-data 8
        0x15d19108553559b4L
        0x31b05d6b6090933dL    # 2.3711273747038086E-69
        -0x5fdd063e1e44f22fL    # -7.076329982513135E-154
        -0x4be69418d3c054aeL    # -1.0124694978412654E-57
    .end array-data

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
    :array_1
    .array-data 8
        -0x6db2fba910311762L
        -0x4b53f90e556f1746L
    .end array-data

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
    :array_2
    .array-data 8
        -0x7571ca671ded5185L    # -7.859145111088794E-258
        0x3e1af54fe08e76f8L    # 1.569176679415775E-9
    .end array-data
.end method

.method public final zzc(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzefk;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflv;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    new-array v2, v2, [J

    .line 24
    .line 25
    fill-array-data v2, :array_1

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzflv;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflv;

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzefk;->zzd:Lcom/google/android/gms/internal/ads/zzflw;

    .line 39
    .line 40
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzflw;->zzb(Lcom/google/android/gms/internal/ads/zzflv;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :array_0
    .array-data 8
        0x5be1d02697676da5L    # 4.046013369243678E134
        -0x7d5066eb8ca8a77fL    # -9.663032273671501E-296
        -0x22dbc46c71ff8cdfL    # -4.818837366331564E140
        0x433b974aab1da228L    # 7.766171325407784E15
    .end array-data

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
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
    :array_1
    .array-data 8
        0x3240bc88afd23c28L    # 1.2415796575344885E-66
        -0x79764287a4c648c3L
    .end array-data
.end method

.method public final zzd(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzefk;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflv;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    new-array v2, v2, [J

    .line 24
    .line 25
    fill-array-data v2, :array_1

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzflv;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflv;

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzefk;->zzd:Lcom/google/android/gms/internal/ads/zzflw;

    .line 39
    .line 40
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzflw;->zzb(Lcom/google/android/gms/internal/ads/zzflv;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :array_0
    .array-data 8
        -0x6ecf07f0d9ffc480L
        -0x104c72336469517fL    # -1.1858511200932565E230
        0x1cb937aeeaa85fffL    # 2.610145469235646E-170
        -0x2e814e883e23c4b1L    # -3.7266743823894176E84
    .end array-data

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
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
    :array_1
    .array-data 8
        -0x1ac3e45c5efe438bL    # -4.556032834909683E179
        -0x1dc46adfee786a93L    # -1.5883696935433516E165
    .end array-data
.end method

.method public final declared-synchronized zze()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzefk;->zzb:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefk;->zzd:Lcom/google/android/gms/internal/ads/zzflw;

    .line 7
    .line 8
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    new-array v2, v2, [J

    .line 12
    .line 13
    fill-array-data v2, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzefk;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflv;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzflw;->zzb(Lcom/google/android/gms/internal/ads/zzflv;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzefk;->zzb:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    monitor-exit p0

    .line 38
    return-void

    .line 39
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw v0

    .line 41
    :array_0
    .array-data 8
        0x39bbd3bd9476b9e3L    # 1.3719825234795224E-30
        0x5518d6234efd8c13L    # 8.6917761141529E101
        0xbf6d643cd1a6c8bL
    .end array-data
.end method

.method public final declared-synchronized zzf()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzefk;->zza:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefk;->zzd:Lcom/google/android/gms/internal/ads/zzflw;

    .line 7
    .line 8
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    new-array v2, v2, [J

    .line 12
    .line 13
    fill-array-data v2, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzefk;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflv;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzflw;->zzb(Lcom/google/android/gms/internal/ads/zzflv;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzefk;->zza:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    monitor-exit p0

    .line 38
    return-void

    .line 39
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw v0

    .line 41
    :array_0
    .array-data 8
        0x1cd8664094b2169cL
        0x40a604e01def681L
        0x945f050b39d7b9aL    # 5.44308758423444E-264
    .end array-data
.end method
