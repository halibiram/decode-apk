.class public final Lcom/google/android/gms/internal/ads/zzcga;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcgl;

.field private final zzc:Landroid/view/ViewGroup;

.field private zzd:Lcom/google/android/gms/internal/ads/zzcfz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzcjk;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcga;->zza:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcga;->zzc:Landroid/view/ViewGroup;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcga;->zzb:Lcom/google/android/gms/internal/ads/zzcgl;

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcga;->zzd:Lcom/google/android/gms/internal/ads/zzcfz;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcfz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcga;->zzd:Lcom/google/android/gms/internal/ads/zzcfz;

    return-object v0
.end method

.method public final zzb()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcga;->zzd:Lcom/google/android/gms/internal/ads/zzcfz;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfz;->zzl()Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzc(IIII)V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    new-array v1, v1, [J

    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcga;->zzd:Lcom/google/android/gms/internal/ads/zzcfz;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzcfz;->zzF(IIII)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    nop

    .line 29
    :array_0
    .array-data 8
        0x40b88f4ca2fd8e29L    # 6287.2993620369025
        -0x13171c4cc30e9950L    # -4.2900491143550704E216
        -0x13c35c6d99b3dc1L
        -0x3cea54affad24062L    # -1.5248336708853515E15
        0x3c5826d1dac70d4fL    # 5.237052030551698E-18
        -0x702ed63d0449cdb5L
        0x4ce1aa77439c79a7L    # 2.2710382715838225E62
        -0x22f0ede7081213cbL    # -1.8500307532425067E140
    .end array-data
.end method

.method public final zzd(IIIIIZLcom/google/android/gms/internal/ads/zzcgk;)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcga;->zzd:Lcom/google/android/gms/internal/ads/zzcfz;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcga;->zzb:Lcom/google/android/gms/internal/ads/zzcgl;

    .line 8
    .line 9
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcgl;->zzm()Lcom/google/android/gms/internal/ads/zzbgs;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbgs;->zza()Lcom/google/android/gms/internal/ads/zzbgu;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzcga;->zzb:Lcom/google/android/gms/internal/ads/zzcgl;

    .line 18
    .line 19
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    new-array v4, v4, [J

    .line 23
    .line 24
    fill-array-data v4, :array_0

    .line 25
    .line 26
    .line 27
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcgl;->zzk()Lcom/google/android/gms/internal/ads/zzbgr;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    filled-new-array {v3}, [Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbgm;->zza(Lcom/google/android/gms/internal/ads/zzbgu;Lcom/google/android/gms/internal/ads/zzbgr;[Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzcga;->zza:Landroid/content/Context;

    .line 46
    .line 47
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzcga;->zzb:Lcom/google/android/gms/internal/ads/zzcgl;

    .line 48
    .line 49
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcfz;

    .line 50
    .line 51
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzcgl;->zzm()Lcom/google/android/gms/internal/ads/zzbgs;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbgs;->zza()Lcom/google/android/gms/internal/ads/zzbgu;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    move-object v4, v1

    .line 60
    move/from16 v7, p5

    .line 61
    .line 62
    move/from16 v8, p6

    .line 63
    .line 64
    move-object/from16 v10, p7

    .line 65
    .line 66
    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzcfz;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgl;IZLcom/google/android/gms/internal/ads/zzbgu;Lcom/google/android/gms/internal/ads/zzcgk;)V

    .line 67
    .line 68
    .line 69
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcga;->zzd:Lcom/google/android/gms/internal/ads/zzcfz;

    .line 70
    .line 71
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzcga;->zzc:Landroid/view/ViewGroup;

    .line 72
    .line 73
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 74
    .line 75
    const/4 v4, -0x1

    .line 76
    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 77
    .line 78
    .line 79
    const/4 v4, 0x0

    .line 80
    invoke-virtual {v2, v1, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 81
    .line 82
    .line 83
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcga;->zzd:Lcom/google/android/gms/internal/ads/zzcfz;

    .line 84
    .line 85
    move v2, p1

    .line 86
    move v3, p2

    .line 87
    move v5, p3

    .line 88
    move v6, p4

    .line 89
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzcfz;->zzF(IIII)V

    .line 90
    .line 91
    .line 92
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcga;->zzb:Lcom/google/android/gms/internal/ads/zzcgl;

    .line 93
    .line 94
    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zzcgl;->zzz(Z)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    nop

    .line 99
    :array_0
    .array-data 8
        -0x34a0e4795e25a753L    # -1.1918035099924378E55
        0x54eab2ae84bc1d63L    # 1.1679033226673397E101
    .end array-data
.end method

.method public final zze()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x7

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
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcga;->zzd:Lcom/google/android/gms/internal/ads/zzcfz;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfz;->zzo()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcga;->zzc:Landroid/view/ViewGroup;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcga;->zzd:Lcom/google/android/gms/internal/ads/zzcfz;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcga;->zzd:Lcom/google/android/gms/internal/ads/zzcfz;

    .line 35
    .line 36
    :cond_0
    return-void

    .line 37
    :array_0
    .array-data 8
        0x410d611904738e8aL    # 240675.1271735321
        0x75562161844e5227L    # 1.661443071742796E257
        -0x69a1cd6e6e8577bL    # -6.062323855150031E276
        -0x6ce43596cd934159L
        0x72e9b334f3177191L    # 3.509619690232114E245
        0x722a627dee1d90d2L    # 8.796689369794939E241
        -0x4bc2b1f5db17fcb4L
    .end array-data
.end method

.method public final zzf()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x7

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
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcga;->zzd:Lcom/google/android/gms/internal/ads/zzcfz;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfz;->zzu()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void

    .line 27
    :array_0
    .array-data 8
        -0x3792b3f63a3e9fb5L    # -7.9754085680112995E40
        0x48f86485053ce938L    # 3.399839861719497E43
        -0x1fd2c7095a05589L    # -9.849930296408604E298
        0x45d0707d08f59f6bL    # 2.0351001240086614E28
        -0x60fd0107c45399c6L
        -0x782101671d6d7294L    # -9.167033762066622E-271
        0x4b68862095ab4c8cL    # 1.879141028782358E55
    .end array-data
.end method

.method public final zzg(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcga;->zzd:Lcom/google/android/gms/internal/ads/zzcfz;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfz;->zzC(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
