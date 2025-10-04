.class final Lcom/google/android/gms/internal/ads/zzzy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcp;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzy;->zza:Lcom/google/android/gms/internal/ads/zzdm;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzt;Lcom/google/android/gms/internal/ads/zzt;Lcom/google/android/gms/internal/ads/zzw;Lcom/google/android/gms/internal/ads/zzdn;Ljava/util/concurrent/Executor;Ljava/util/List;J)Lcom/google/android/gms/internal/ads/zzcq;
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/16 v3, 0x9

    .line 6
    .line 7
    new-array v3, v3, [J

    .line 8
    .line 9
    fill-array-data v3, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-array v3, v1, [Ljava/lang/Class;

    .line 24
    .line 25
    const-class v4, Lcom/google/android/gms/internal/ads/zzdm;

    .line 26
    .line 27
    aput-object v4, v3, v0

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 30
    .line 31
    .line 32
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 33
    move-object v3, p0

    .line 34
    :try_start_1
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzzy;->zza:Lcom/google/android/gms/internal/ads/zzdm;

    .line 35
    .line 36
    new-array v1, v1, [Ljava/lang/Object;

    .line 37
    .line 38
    aput-object v4, v1, v0

    .line 39
    .line 40
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    move-object v4, v0

    .line 45
    check-cast v4, Lcom/google/android/gms/internal/ads/zzcp;

    .line 46
    .line 47
    const-wide/16 v12, 0x0

    .line 48
    .line 49
    move-object v5, p1

    .line 50
    move-object/from16 v6, p2

    .line 51
    .line 52
    move-object/from16 v7, p3

    .line 53
    .line 54
    move-object/from16 v8, p4

    .line 55
    .line 56
    move-object/from16 v9, p5

    .line 57
    .line 58
    move-object/from16 v10, p6

    .line 59
    .line 60
    move-object/from16 v11, p7

    .line 61
    .line 62
    invoke-interface/range {v4 .. v13}, Lcom/google/android/gms/internal/ads/zzcp;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzt;Lcom/google/android/gms/internal/ads/zzt;Lcom/google/android/gms/internal/ads/zzw;Lcom/google/android/gms/internal/ads/zzdn;Ljava/util/concurrent/Executor;Ljava/util/List;J)Lcom/google/android/gms/internal/ads/zzcq;

    .line 63
    .line 64
    .line 65
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    return-object v0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    goto :goto_0

    .line 69
    :catch_1
    move-exception v0

    .line 70
    move-object v3, p0

    .line 71
    :goto_0
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzdl;

    .line 72
    .line 73
    if-eqz v1, :cond_0

    .line 74
    .line 75
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdl;

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdl;

    .line 79
    .line 80
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    invoke-direct {v1, v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzdl;-><init>(Ljava/lang/Throwable;J)V

    .line 86
    .line 87
    .line 88
    move-object v0, v1

    .line 89
    :goto_1
    throw v0

    .line 90
    nop

    .line 91
    :array_0
    .array-data 8
        -0x3ee469bc3633ee4eL    # -451984.9470675244
        -0x32c9cddf96f68b9dL    # -9.130825410233198E63
        0x24ae5f70eb68116bL    # 5.348807673637432E-132
        -0x2da2e0c9750c9059L    # -5.793204196861269E88
        0x3c4b8221bee66b7bL    # 2.9824588348656564E-18
        0x40c0325f0e2c9155L    # 8292.742620058978
        0x6f9f4ab4d722b131L    # 4.7442499656963554E229
        -0x1a3ecb748a4c1073L    # -1.4278693027482187E182
        -0x6b4dbf4f254f8c6L
    .end array-data
.end method
