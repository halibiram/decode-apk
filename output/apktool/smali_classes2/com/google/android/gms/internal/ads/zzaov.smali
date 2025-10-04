.class final Lcom/google/android/gms/internal/ads/zzaov;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/ads/zzacv;)Landroid/util/Pair;
    .locals 4

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzacv;->zzj()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfp;

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfp;-><init>(I)V

    .line 9
    .line 10
    .line 11
    const v2, 0x64617461

    .line 12
    .line 13
    .line 14
    invoke-static {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzaov;->zzd(ILcom/google/android/gms/internal/ads/zzacv;Lcom/google/android/gms/internal/ads/zzfp;)Lcom/google/android/gms/internal/ads/zzaou;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    move-object v2, p0

    .line 19
    check-cast v2, Lcom/google/android/gms/internal/ads/zzack;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzack;->zzo(IZ)Z

    .line 23
    .line 24
    .line 25
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzaou;->zzb:J

    .line 34
    .line 35
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzacv;)Lcom/google/android/gms/internal/ads/zzaot;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfp;

    .line 4
    .line 5
    const/16 v2, 0x10

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfp;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const v3, 0x666d7420

    .line 11
    .line 12
    .line 13
    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzaov;->zzd(ILcom/google/android/gms/internal/ads/zzacv;Lcom/google/android/gms/internal/ads/zzfp;)Lcom/google/android/gms/internal/ads/zzaou;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-wide v4, v3, Lcom/google/android/gms/internal/ads/zzaou;->zzb:J

    .line 18
    .line 19
    const-wide/16 v6, 0x10

    .line 20
    .line 21
    const/4 v8, 0x0

    .line 22
    cmp-long v9, v4, v6

    .line 23
    .line 24
    if-ltz v9, :cond_0

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v4, 0x0

    .line 29
    :goto_0
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzek;->zzf(Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    move-object v5, v0

    .line 37
    check-cast v5, Lcom/google/android/gms/internal/ads/zzack;

    .line 38
    .line 39
    invoke-virtual {v5, v4, v8, v2, v8}, Lcom/google/android/gms/internal/ads/zzack;->zzm([BIIZ)Z

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzk()I

    .line 46
    .line 47
    .line 48
    move-result v10

    .line 49
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzk()I

    .line 50
    .line 51
    .line 52
    move-result v11

    .line 53
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzj()I

    .line 54
    .line 55
    .line 56
    move-result v12

    .line 57
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzj()I

    .line 58
    .line 59
    .line 60
    move-result v13

    .line 61
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzk()I

    .line 62
    .line 63
    .line 64
    move-result v14

    .line 65
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzk()I

    .line 66
    .line 67
    .line 68
    move-result v15

    .line 69
    iget-wide v1, v3, Lcom/google/android/gms/internal/ads/zzaou;->zzb:J

    .line 70
    .line 71
    long-to-int v2, v1

    .line 72
    add-int/lit8 v2, v2, -0x10

    .line 73
    .line 74
    if-lez v2, :cond_1

    .line 75
    .line 76
    new-array v1, v2, [B

    .line 77
    .line 78
    invoke-virtual {v5, v1, v8, v2, v8}, Lcom/google/android/gms/internal/ads/zzack;->zzm([BIIZ)Z

    .line 79
    .line 80
    .line 81
    :goto_1
    move-object/from16 v16, v1

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfy;->zzf:[B

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :goto_2
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzacv;->zze()J

    .line 88
    .line 89
    .line 90
    move-result-wide v1

    .line 91
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    .line 92
    .line 93
    .line 94
    move-result-wide v3

    .line 95
    sub-long/2addr v1, v3

    .line 96
    check-cast v0, Lcom/google/android/gms/internal/ads/zzack;

    .line 97
    .line 98
    long-to-int v2, v1

    .line 99
    invoke-virtual {v0, v2, v8}, Lcom/google/android/gms/internal/ads/zzack;->zzo(IZ)Z

    .line 100
    .line 101
    .line 102
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaot;

    .line 103
    .line 104
    move-object v9, v0

    .line 105
    invoke-direct/range {v9 .. v16}, Lcom/google/android/gms/internal/ads/zzaot;-><init>(IIIIII[B)V

    .line 106
    .line 107
    .line 108
    return-object v0
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzacv;)Z
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfp;

    .line 3
    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfp;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzaou;->zza(Lcom/google/android/gms/internal/ads/zzacv;Lcom/google/android/gms/internal/ads/zzfp;)Lcom/google/android/gms/internal/ads/zzaou;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzaou;->zza:I

    .line 14
    .line 15
    const v3, 0x52494646

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    if-eq v2, v3, :cond_1

    .line 20
    .line 21
    const v3, 0x52463634

    .line 22
    .line 23
    .line 24
    if-ne v2, v3, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return v4

    .line 28
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast p0, Lcom/google/android/gms/internal/ads/zzack;

    .line 33
    .line 34
    invoke-virtual {p0, v2, v4, v0, v4}, Lcom/google/android/gms/internal/ads/zzack;->zzm([BIIZ)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzg()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    const v1, 0x57415645

    .line 45
    .line 46
    .line 47
    if-eq p0, v1, :cond_2

    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    new-array v0, v0, [J

    .line 57
    .line 58
    fill-array-data v0, :array_0

    .line 59
    .line 60
    .line 61
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-static {v2, v1, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    const/4 v1, 0x3

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

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzff;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return v4

    .line 87
    :cond_2
    const/4 p0, 0x1

    .line 88
    return p0

    .line 89
    :array_0
    .array-data 8
        0x56525a5713f04e42L    # 6.734772891791503E107
        0x60d891d0c16a9f75L    # 3.3733054994334333E158
        0x521ce04d2b71135dL    # 3.590198514360728E87
        -0x1a8b0fc00af939bbL    # -5.430283235665886E180
    .end array-data

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
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    :array_1
    .array-data 8
        -0x4050c1333726b049L    # -0.06102600051659073
        -0x2303d2f193ec5c3cL    # -8.388365865569769E139
        0x41b6d7aa5b790ca6L    # 3.8323260347284925E8
    .end array-data
.end method

.method private static zzd(ILcom/google/android/gms/internal/ads/zzacv;Lcom/google/android/gms/internal/ads/zzfp;)Lcom/google/android/gms/internal/ads/zzaou;
    .locals 6

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaou;->zza(Lcom/google/android/gms/internal/ads/zzacv;Lcom/google/android/gms/internal/ads/zzfp;)Lcom/google/android/gms/internal/ads/zzaou;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaou;->zza:I

    .line 6
    .line 7
    if-eq v1, p0, :cond_1

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/4 v4, 0x5

    .line 17
    new-array v4, v4, [J

    .line 18
    .line 19
    fill-array-data v4, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-static {v3, v2, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    const/4 v3, 0x3

    .line 32
    new-array v3, v3, [J

    .line 33
    .line 34
    fill-array-data v3, :array_1

    .line 35
    .line 36
    .line 37
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaou;->zzb:J

    .line 48
    .line 49
    const-wide/16 v3, 0x8

    .line 50
    .line 51
    add-long/2addr v1, v3

    .line 52
    const-wide/32 v3, 0x7fffffff

    .line 53
    .line 54
    .line 55
    cmp-long v5, v1, v3

    .line 56
    .line 57
    if-gtz v5, :cond_0

    .line 58
    .line 59
    long-to-int v0, v1

    .line 60
    move-object v1, p1

    .line 61
    check-cast v1, Lcom/google/android/gms/internal/ads/zzack;

    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzack;->zzo(IZ)Z

    .line 65
    .line 66
    .line 67
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaou;->zza(Lcom/google/android/gms/internal/ads/zzacv;Lcom/google/android/gms/internal/ads/zzfp;)Lcom/google/android/gms/internal/ads/zzaou;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    iget p0, v0, Lcom/google/android/gms/internal/ads/zzaou;->zza:I

    .line 73
    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 80
    .line 81
    const/4 v0, 0x6

    .line 82
    new-array v0, v0, [J

    .line 83
    .line 84
    fill-array-data v0, :array_2

    .line 85
    .line 86
    .line 87
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzcc;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    throw p0

    .line 109
    :cond_1
    return-object v0

    .line 110
    nop

    .line 111
    :array_0
    .array-data 8
        -0x1dc09fa43a410329L    # -1.8068444197949882E165
        0x1a733c020dd1acefL
        -0x5ef44f84ac7340c5L
        0x4c03a3126f5b7f9dL    # 1.5407930883020546E58
        0x12dcbee8f3a140c5L    # 8.143229454484686E-218
    .end array-data

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    :array_1
    .array-data 8
        0x254704fffc6c6ba5L    # 4.151149176844934E-129
        -0x7d45cae7429e15daL
        0x222d32eb5a5f9b39L
    .end array-data

    :array_2
    .array-data 8
        -0x5da681b79b44c62bL
        -0x7489c79c7120224aL    # -1.894231151442911E-253
        0x45409cc7f9e61f1fL    # 4.0166382388693555E25
        -0x2cf756def2edcdd2L    # -1.0046930555900677E92
        0x31aeaa7e5c25251L
        0x760aab1b4806ad02L    # 4.1003693959725493E260
    .end array-data
.end method
