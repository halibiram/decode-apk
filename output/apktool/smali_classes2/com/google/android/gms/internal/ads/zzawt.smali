.class public final Lcom/google/android/gms/internal/ads/zzawt;
.super Lcom/google/android/gms/internal/ads/zzaxx;
.source "SourceFile"


# instance fields
.field private final zzi:Landroid/app/Activity;

.field private final zzj:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzawj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzasg;IILandroid/view/View;Landroid/app/Activity;)V
    .locals 7

    .line 1
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 p3, 0x9

    .line 4
    .line 5
    new-array p3, p3, [J

    .line 6
    .line 7
    fill-array-data p3, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 p3, 0x7

    .line 20
    new-array p3, p3, [J

    .line 21
    .line 22
    fill-array-data p3, :array_1

    .line 23
    .line 24
    .line 25
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const/16 v6, 0x3e

    .line 33
    .line 34
    move-object v0, p0

    .line 35
    move-object v1, p1

    .line 36
    move-object v4, p4

    .line 37
    move v5, p5

    .line 38
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzaxx;-><init>(Lcom/google/android/gms/internal/ads/zzawj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzasg;II)V

    .line 39
    .line 40
    .line 41
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzawt;->zzj:Landroid/view/View;

    .line 42
    .line 43
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzawt;->zzi:Landroid/app/Activity;

    .line 44
    .line 45
    return-void

    .line 46
    nop

    .line 47
    :array_0
    .array-data 8
        0x3e92891f5c00f1f7L    # 2.7620248133403544E-7
        0x6f584a86faafe0dcL    # 2.3017826277677E228
        0x6d967309730e0d9fL    # 7.924664287241791E219
        -0x6e05c4a5b9da099eL    # -4.535572008656995E-222
        -0x6034576fb1215167L
        0x37e16f0f1e7a8a4aL    # 1.601043918159902E-39
        -0x317d33dee7478241L    # -1.62168436046809E70
        -0x9cb188f39d0e80dL    # -2.571265906728449E261
        -0x4c5eaa85f8d91f54L    # -5.39345412552705E-60
    .end array-data

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
    :array_1
    .array-data 8
        0x3ac546e83c9f9910L
        0x7a0f5bab9046cf2eL    # 8.893967627602767E279
        -0x3dbdb9e7ac78ee8dL    # -1.5697082139013632E11
        0x3bc770023faf70e4L    # 9.926181882976804E-21
        0x10aaa5f9815a24cfL
        -0x28c98ab9711fb305L    # -1.350241860807782E112
        -0x18537941a00e7141L    # -2.5419871716009735E191
    .end array-data
.end method


# virtual methods
.method public final zza()V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzawt;->zzj:Landroid/view/View;

    .line 5
    .line 6
    if-nez v3, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbgc;->zzcu:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 10
    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaxx;->zzf:Ljava/lang/reflect/Method;

    .line 26
    .line 27
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzawt;->zzj:Landroid/view/View;

    .line 28
    .line 29
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzawt;->zzi:Landroid/app/Activity;

    .line 30
    .line 31
    const/4 v8, 0x3

    .line 32
    new-array v8, v8, [Ljava/lang/Object;

    .line 33
    .line 34
    aput-object v6, v8, v2

    .line 35
    .line 36
    aput-object v7, v8, v1

    .line 37
    .line 38
    aput-object v3, v8, v0

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-virtual {v5, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, [Ljava/lang/Object;

    .line 46
    .line 47
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaxx;->zze:Lcom/google/android/gms/internal/ads/zzasg;

    .line 48
    .line 49
    monitor-enter v5

    .line 50
    :try_start_0
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaxx;->zze:Lcom/google/android/gms/internal/ads/zzasg;

    .line 51
    .line 52
    aget-object v2, v3, v2

    .line 53
    .line 54
    check-cast v2, Ljava/lang/Long;

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 57
    .line 58
    .line 59
    move-result-wide v7

    .line 60
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzasg;->zzc(J)Lcom/google/android/gms/internal/ads/zzasg;

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaxx;->zze:Lcom/google/android/gms/internal/ads/zzasg;

    .line 64
    .line 65
    aget-object v1, v3, v1

    .line 66
    .line 67
    check-cast v1, Ljava/lang/Long;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 70
    .line 71
    .line 72
    move-result-wide v6

    .line 73
    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/ads/zzasg;->zze(J)Lcom/google/android/gms/internal/ads/zzasg;

    .line 74
    .line 75
    .line 76
    if-eqz v4, :cond_1

    .line 77
    .line 78
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxx;->zze:Lcom/google/android/gms/internal/ads/zzasg;

    .line 79
    .line 80
    aget-object v0, v3, v0

    .line 81
    .line 82
    check-cast v0, Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzasg;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzasg;

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    :goto_0
    monitor-exit v5

    .line 91
    return-void

    .line 92
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    throw v0
.end method
