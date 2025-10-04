.class public final Lcom/google/android/gms/internal/ads/zzelh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzelb;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdlk;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgey;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdpq;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfig;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdsf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdlk;Lcom/google/android/gms/internal/ads/zzgey;Lcom/google/android/gms/internal/ads/zzdpq;Lcom/google/android/gms/internal/ads/zzfig;Lcom/google/android/gms/internal/ads/zzdsf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelh;->zza:Lcom/google/android/gms/internal/ads/zzdlk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzelh;->zzb:Lcom/google/android/gms/internal/ads/zzgey;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzelh;->zzc:Lcom/google/android/gms/internal/ads/zzdpq;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzelh;->zzd:Lcom/google/android/gms/internal/ads/zzfig;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzelh;->zze:Lcom/google/android/gms/internal/ads/zzdsf;

    return-void
.end method

.method private final zzg(Lcom/google/android/gms/internal/ads/zzfgy;Lcom/google/android/gms/internal/ads/zzfgm;Lorg/json/JSONObject;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelh;->zzc:Lcom/google/android/gms/internal/ads/zzdpq;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzelh;->zzd:Lcom/google/android/gms/internal/ads/zzfig;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfig;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 6
    .line 7
    .line 8
    move-result-object v5

    .line 9
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdpq;->zza(Lcom/google/android/gms/internal/ads/zzfgy;Lcom/google/android/gms/internal/ads/zzfgm;Lorg/json/JSONObject;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    const/4 v0, 0x2

    .line 14
    new-array v0, v0, [Lcom/google/common/util/concurrent/ListenableFuture;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    aput-object v5, v0, v1

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    aput-object v4, v0, v1

    .line 21
    .line 22
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgen;->zzc([Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgem;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Lcom/google/android/gms/internal/ads/zzelc;

    .line 27
    .line 28
    move-object v2, v1

    .line 29
    move-object v3, p0

    .line 30
    move-object v6, p1

    .line 31
    move-object v7, p2

    .line 32
    move-object v8, p3

    .line 33
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzelc;-><init>(Lcom/google/android/gms/internal/ads/zzelh;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfgy;Lcom/google/android/gms/internal/ads/zzfgm;Lorg/json/JSONObject;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzelh;->zzb:Lcom/google/android/gms/internal/ads/zzgey;

    .line 37
    .line 38
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgem;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfgy;Lcom/google/android/gms/internal/ads/zzfgm;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelh;->zzd:Lcom/google/android/gms/internal/ads/zzfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfig;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzele;

    .line 8
    .line 9
    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/ads/zzele;-><init>(Lcom/google/android/gms/internal/ads/zzelh;Lcom/google/android/gms/internal/ads/zzfgm;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzelh;->zzb:Lcom/google/android/gms/internal/ads/zzgey;

    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgen;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgdu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Lcom/google/android/gms/internal/ads/zzelf;

    .line 19
    .line 20
    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzelf;-><init>(Lcom/google/android/gms/internal/ads/zzelh;Lcom/google/android/gms/internal/ads/zzfgy;Lcom/google/android/gms/internal/ads/zzfgm;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzelh;->zzb:Lcom/google/android/gms/internal/ads/zzgey;

    .line 24
    .line 25
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgen;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgdu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfgy;Lcom/google/android/gms/internal/ads/zzfgm;)Z
    .locals 0

    .line 1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfgm;->zzt:Lcom/google/android/gms/internal/ads/zzfgr;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfgr;->zzc:Lorg/json/JSONObject;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    return p1
.end method

.method public final synthetic zzc(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfgy;Lcom/google/android/gms/internal/ads/zzfgm;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzdmv;
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdna;

    .line 6
    .line 7
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Lcom/google/android/gms/internal/ads/zzdrz;

    .line 12
    .line 13
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcwx;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, p3, p4, v1}, Lcom/google/android/gms/internal/ads/zzcwx;-><init>(Lcom/google/android/gms/internal/ads/zzfgy;Lcom/google/android/gms/internal/ads/zzfgm;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance p3, Lcom/google/android/gms/internal/ads/zzdnm;

    .line 20
    .line 21
    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/ads/zzdnm;-><init>(Lcom/google/android/gms/internal/ads/zzdna;)V

    .line 22
    .line 23
    .line 24
    new-instance p4, Lcom/google/android/gms/internal/ads/zzdlz;

    .line 25
    .line 26
    invoke-direct {p4, p5, p2}, Lcom/google/android/gms/internal/ads/zzdlz;-><init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzdrz;)V

    .line 27
    .line 28
    .line 29
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzelh;->zza:Lcom/google/android/gms/internal/ads/zzdlk;

    .line 30
    .line 31
    invoke-virtual {p5, v0, p3, p4}, Lcom/google/android/gms/internal/ads/zzdlk;->zzd(Lcom/google/android/gms/internal/ads/zzcwx;Lcom/google/android/gms/internal/ads/zzdnm;Lcom/google/android/gms/internal/ads/zzdlz;)Lcom/google/android/gms/internal/ads/zzdnb;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdnb;->zzh()Lcom/google/android/gms/internal/ads/zzdrl;

    .line 36
    .line 37
    .line 38
    move-result-object p4

    .line 39
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzdrl;->zzb()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdnb;->zzk()Lcom/google/android/gms/internal/ads/zzdrv;

    .line 43
    .line 44
    .line 45
    move-result-object p4

    .line 46
    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/ads/zzdrv;->zza(Lcom/google/android/gms/internal/ads/zzdrz;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdnb;->zzg()Lcom/google/android/gms/internal/ads/zzdqu;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdna;->zzs()Lcom/google/android/gms/internal/ads/zzcjk;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzdqu;->zza(Lcom/google/android/gms/internal/ads/zzcjk;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdnb;->zzl()Lcom/google/android/gms/internal/ads/zzdse;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzelh;->zze:Lcom/google/android/gms/internal/ads/zzdsf;

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdse;->zza(Lcom/google/android/gms/internal/ads/zzdsf;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdnd;->zza()Lcom/google/android/gms/internal/ads/zzdmv;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    return-object p1
.end method

.method public final synthetic zzd(Lcom/google/android/gms/internal/ads/zzdrz;Lorg/json/JSONObject;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelh;->zzd:Lcom/google/android/gms/internal/ads/zzfig;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgen;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfig;->zzb(Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    new-array v1, v0, [J

    .line 14
    .line 15
    fill-array-data v1, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    new-array v1, v0, [J

    .line 34
    .line 35
    fill-array-data v1, :array_1

    .line 36
    .line 37
    .line 38
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    new-array v0, v0, [J

    .line 52
    .line 53
    fill-array-data v0, :array_2

    .line 54
    .line 55
    .line 56
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgen;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    return-object p1

    .line 72
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbrm;

    .line 73
    .line 74
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    const/4 v0, 0x4

    .line 77
    new-array v0, v0, [J

    .line 78
    .line 79
    fill-array-data v0, :array_3

    .line 80
    .line 81
    .line 82
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbrm;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p1

    .line 93
    :array_0
    .array-data 8
        0x29b27f4891375691L    # 7.876033917393827E-108
        0x40eb62beb90b0dc0L    # 56085.96008827863
    .end array-data

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
    :array_1
    .array-data 8
        -0x2a944dc075df730dL    # -3.1016301034820564E103
        -0x2efcef85374ce7fbL    # -1.8083869832035306E82
    .end array-data

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
    .line 116
    .line 117
    :array_2
    .array-data 8
        -0x6a736bc379caeb09L    # -7.121323704568705E-205
        0x488dd6ba6abeaeadL    # 3.249155636500385E41
    .end array-data

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
    .line 128
    .line 129
    :array_3
    .array-data 8
        0x26a0d0edfe4e5e15L    # 1.271914352547784E-122
        0x6c0946c17d1aad50L    # 2.6591449198146113E212
        -0x51115099a70ef133L    # -1.2636288384754056E-82
        -0x47040f7bc0d822a9L    # -3.363097137662334E-34
    .end array-data
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/ads/zzfgm;Lcom/google/android/gms/internal/ads/zzdrz;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    new-array v3, v2, [J

    .line 10
    .line 11
    fill-array-data v3, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgc;->zziw:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 26
    .line 27
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastR()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    const/4 v4, 0x4

    .line 52
    new-array v4, v4, [J

    .line 53
    .line 54
    fill-array-data v4, :array_1

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 65
    .line 66
    .line 67
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    .line 68
    .line 69
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 70
    .line 71
    .line 72
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfgm;->zzt:Lcom/google/android/gms/internal/ads/zzfgr;

    .line 73
    .line 74
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfgr;->zzc:Lorg/json/JSONObject;

    .line 75
    .line 76
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    const/4 v4, 0x2

    .line 79
    new-array v4, v4, [J

    .line 80
    .line 81
    fill-array-data v4, :array_2

    .line 82
    .line 83
    .line 84
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    .line 93
    .line 94
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 95
    .line 96
    new-array v2, v2, [J

    .line 97
    .line 98
    fill-array-data v2, :array_3

    .line 99
    .line 100
    .line 101
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    .line 110
    .line 111
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 112
    .line 113
    const/4 v0, 0x6

    .line 114
    new-array v0, v0, [J

    .line 115
    .line 116
    fill-array-data v0, :array_4

    .line 117
    .line 118
    .line 119
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p2, p1, v1}, Lcom/google/android/gms/internal/ads/zzdrz;->zzd(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeld;

    .line 131
    .line 132
    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzeld;-><init>(Lcom/google/android/gms/internal/ads/zzelh;Lcom/google/android/gms/internal/ads/zzdrz;)V

    .line 133
    .line 134
    .line 135
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzelh;->zzb:Lcom/google/android/gms/internal/ads/zzgey;

    .line 136
    .line 137
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzgen;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgdu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    return-object p1

    .line 142
    nop

    .line 143
    :array_0
    .array-data 8
        -0x74a09a8fd3e26719L    # -6.691158971426612E-254
        0x69ecdad7d0a95085L    # 1.7669571302098827E202
        0x46d8d151cf371915L    # 2.0134473409870175E33
    .end array-data

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    :array_1
    .array-data 8
        0x54b9590531792bf9L    # 1.386046320705074E100
        -0x970ef5109a14eacL
        0x2d2cd733b5327c3dL    # 4.4244175550126794E-91
        0x5d52c6ee38b7ff08L    # 3.577715989391824E141
    .end array-data

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :array_2
    .array-data 8
        0x2435756553f5e1fbL    # 2.952316198194555E-134
        -0x3cf9332f7e592771L    # -8.022056735116979E14
    .end array-data

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    :array_3
    .array-data 8
        0x59e1581024febd6L
        -0x621dcaa171e883cL
        -0x2f13d983f036948L    # -2.455633670060567E294
    .end array-data

    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    :array_4
    .array-data 8
        0x3d7b7cf0e7184173L    # 1.5625147900491018E-12
        0x1a9eb940377c42aL
        0x705d2a094029af56L    # 1.8111181527843177E233
        0x54c4dd0e45d3e787L    # 2.2816851693021763E100
        0x5eb3551b9e9f2a23L    # 1.5449870378235348E148
        0x3aeaa011a9832ea1L    # 6.88247085531208E-25
    .end array-data
.end method

.method public final synthetic zzf(Lcom/google/android/gms/internal/ads/zzfgy;Lcom/google/android/gms/internal/ads/zzfgm;Lorg/json/JSONArray;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5

    .line 1
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzead;

    .line 9
    .line 10
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzead;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgen;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_2

    .line 18
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfgy;->zza:Lcom/google/android/gms/internal/ads/zzfgv;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfgv;->zza:Lcom/google/android/gms/internal/ads/zzfhh;

    .line 21
    .line 22
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfhh;->zzk:I

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x1

    .line 26
    if-le v0, v3, :cond_3

    .line 27
    .line 28
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzelh;->zzd:Lcom/google/android/gms/internal/ads/zzfig;

    .line 33
    .line 34
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzfgy;->zza:Lcom/google/android/gms/internal/ads/zzfgv;

    .line 35
    .line 36
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfgv;->zza:Lcom/google/android/gms/internal/ads/zzfhh;

    .line 37
    .line 38
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzfhh;->zzk:I

    .line 39
    .line 40
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfig;->zzc(I)V

    .line 45
    .line 46
    .line 47
    new-instance v3, Ljava/util/ArrayList;

    .line 48
    .line 49
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzfgy;->zza:Lcom/google/android/gms/internal/ads/zzfgv;

    .line 50
    .line 51
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfgv;->zza:Lcom/google/android/gms/internal/ads/zzfhh;

    .line 52
    .line 53
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzfhh;->zzk:I

    .line 54
    .line 55
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    .line 57
    .line 58
    :goto_0
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzfgy;->zza:Lcom/google/android/gms/internal/ads/zzfgv;

    .line 59
    .line 60
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfgv;->zza:Lcom/google/android/gms/internal/ads/zzfhh;

    .line 61
    .line 62
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzfhh;->zzk:I

    .line 63
    .line 64
    if-ge v2, v4, :cond_2

    .line 65
    .line 66
    if-ge v2, v0, :cond_1

    .line 67
    .line 68
    invoke-virtual {p3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-direct {p0, p1, p2, v4}, Lcom/google/android/gms/internal/ads/zzelh;->zzg(Lcom/google/android/gms/internal/ads/zzfgy;Lcom/google/android/gms/internal/ads/zzfgm;Lorg/json/JSONObject;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    new-instance v4, Lcom/google/android/gms/internal/ads/zzead;

    .line 81
    .line 82
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzead;-><init>(I)V

    .line 83
    .line 84
    .line 85
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgen;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgen;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    goto :goto_2

    .line 100
    :cond_3
    invoke-virtual {p3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzelh;->zzg(Lcom/google/android/gms/internal/ads/zzfgy;Lcom/google/android/gms/internal/ads/zzfgm;Lorg/json/JSONObject;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzelh;->zzb:Lcom/google/android/gms/internal/ads/zzgey;

    .line 109
    .line 110
    sget-object p3, Lcom/google/android/gms/internal/ads/zzelg;->zza:Lcom/google/android/gms/internal/ads/zzelg;

    .line 111
    .line 112
    invoke-static {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzgen;->zzm(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfws;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    :goto_2
    return-object p1
.end method
