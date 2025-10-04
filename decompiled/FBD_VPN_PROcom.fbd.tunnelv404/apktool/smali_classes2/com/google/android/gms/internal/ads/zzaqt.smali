.class final Lcom/google/android/gms/internal/ads/zzaqt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# instance fields
.field zza:J

.field final zzb:Ljava/lang/String;

.field final zzc:Ljava/lang/String;

.field final zzd:J

.field final zze:J

.field final zzf:J

.field final zzg:J

.field final zzh:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzapj;)V
    .locals 13

    .line 1
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzapj;->zzb:Ljava/lang/String;

    iget-wide v3, p2, Lcom/google/android/gms/internal/ads/zzapj;->zzc:J

    iget-wide v5, p2, Lcom/google/android/gms/internal/ads/zzapj;->zzd:J

    iget-wide v7, p2, Lcom/google/android/gms/internal/ads/zzapj;->zze:J

    iget-wide v9, p2, Lcom/google/android/gms/internal/ads/zzapj;->zzf:J

    .line 2
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzapj;->zzh:Ljava/util/List;

    if-eqz v0, :cond_1

    :cond_0
    move-object v11, v0

    goto :goto_1

    .line 3
    :cond_1
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzapj;->zzg:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    .line 4
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzaps;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v11, v12, v1}, Lcom/google/android/gms/internal/ads/zzaps;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :goto_1
    move-object v0, p0

    move-object v1, p1

    .line 7
    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/zzaqt;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V
    .locals 7

    move-object v0, p0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaqt;->zzb:Ljava/lang/String;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x1

    new-array v3, v2, [J

    const-wide v4, 0x3b0d7e607c0dee88L

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v2, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaqt;->zzc:Ljava/lang/String;

    move-wide v1, p3

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaqt;->zzd:J

    move-wide v1, p5

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaqt;->zze:J

    move-wide v1, p7

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaqt;->zzf:J

    move-wide/from16 v1, p9

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaqt;->zzg:J

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaqt;->zzh:Ljava/util/List;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzaqu;)Lcom/google/android/gms/internal/ads/zzaqt;
    .locals 16

    .line 1
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaqw;->zze(Ljava/io/InputStream;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x20150306

    .line 6
    .line 7
    .line 8
    if-ne v0, v1, :cond_3

    .line 9
    .line 10
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzh(Lcom/google/android/gms/internal/ads/zzaqu;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzh(Lcom/google/android/gms/internal/ads/zzaqu;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzf(Ljava/io/InputStream;)J

    .line 19
    .line 20
    .line 21
    move-result-wide v5

    .line 22
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzf(Ljava/io/InputStream;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v7

    .line 26
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzf(Ljava/io/InputStream;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v9

    .line 30
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzf(Ljava/io/InputStream;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v11

    .line 34
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaqw;->zze(Ljava/io/InputStream;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-ltz v0, :cond_2

    .line 39
    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :goto_0
    move-object v13, v1

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :goto_1
    const/4 v1, 0x0

    .line 55
    :goto_2
    if-ge v1, v0, :cond_1

    .line 56
    .line 57
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzh(Lcom/google/android/gms/internal/ads/zzaqu;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzh(Lcom/google/android/gms/internal/ads/zzaqu;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v14

    .line 69
    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v14

    .line 73
    new-instance v15, Lcom/google/android/gms/internal/ads/zzaps;

    .line 74
    .line 75
    invoke-direct {v15, v2, v14}, Lcom/google/android/gms/internal/ads/zzaps;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    add-int/lit8 v1, v1, 0x1

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqt;

    .line 85
    .line 86
    move-object v2, v0

    .line 87
    invoke-direct/range {v2 .. v13}, Lcom/google/android/gms/internal/ads/zzaqt;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    .line 88
    .line 89
    .line 90
    return-object v0

    .line 91
    :cond_2
    new-instance v1, Ljava/io/IOException;

    .line 92
    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 99
    .line 100
    const/4 v4, 0x4

    .line 101
    new-array v4, v4, [J

    .line 102
    .line 103
    fill-array-data v4, :array_0

    .line 104
    .line 105
    .line 106
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 107
    .line 108
    .line 109
    invoke-static {v3, v2, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw v1

    .line 117
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 118
    .line 119
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 120
    .line 121
    .line 122
    throw v0

    .line 123
    :array_0
    .array-data 8
        0x4b7fc17085be2547L    # 4.866535096071116E55
        -0xffe0efbe9e866f3L    # -3.481806825872092E231
        0x73ee9091702b398dL    # 2.7354376773626127E250
        -0x2d976c621f7d6aa5L    # -9.778022446800571E88
    .end array-data
.end method
