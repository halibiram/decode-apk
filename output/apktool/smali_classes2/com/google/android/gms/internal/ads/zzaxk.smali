.class public final Lcom/google/android/gms/internal/ads/zzaxk;
.super Lcom/google/android/gms/internal/ads/zzaxx;
.source "SourceFile"


# static fields
.field private static volatile zzi:Ljava/lang/String;

.field private static final zzj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaxk;->zzj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzawj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzasg;II)V
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
    const/4 v6, 0x1

    .line 33
    move-object v0, p0

    .line 34
    move-object v1, p1

    .line 35
    move-object v4, p4

    .line 36
    move v5, p5

    .line 37
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzaxx;-><init>(Lcom/google/android/gms/internal/ads/zzawj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzasg;II)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :array_0
    .array-data 8
        -0x38fd1a40cd449270L    # -1.2265145441592546E34
        0x3fa9ef3e4b40660aL    # 0.05065340679739101
        0x3bb6d5234ec61548L    # 4.834984765736481E-21
        0x4822b5ad3fd3c55fL    # 3.1832862168702597E39
        -0xfb2cad0c96fde0L
        0xe5a781acafed13L
        -0x31a3fed47096917L    # -4.341009690977055E293
        -0x3b10208859e4934L    # -6.040546637196635E290
        0x6cc3bb0ed06401b8L    # 8.502160265128056E215
    .end array-data

    .line 42
    .line 43
    .line 44
    .line 45
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
        -0x2db797cad055054fL    # -2.4276397689607825E88
        0x7edb52e1ceb8acd1L    # 1.1711056772111666E303
        -0x7a02b4447dca2542L    # -8.069559841957485E-280
        0x56c97b5587323b4fL    # 1.1969006173315177E110
        0x2534917607b6d113L
        -0x6f9c464b0bde4d21L
        -0x1d72d2547b79b76fL    # -5.376864218049389E166
    .end array-data
.end method


# virtual methods
.method public final zza()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxx;->zze:Lcom/google/android/gms/internal/ads/zzasg;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzasg;->zzB(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzasg;

    .line 19
    .line 20
    .line 21
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxk;->zzi:Ljava/lang/String;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxk;->zzj:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzaxk;->zzi:Ljava/lang/String;

    .line 29
    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxx;->zzf:Ljava/lang/reflect/Method;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {v1, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/lang/String;

    .line 40
    .line 41
    sput-object v1, Lcom/google/android/gms/internal/ads/zzaxk;->zzi:Ljava/lang/String;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v1

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    :goto_0
    monitor-exit v0

    .line 47
    goto :goto_2

    .line 48
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw v1

    .line 50
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxx;->zze:Lcom/google/android/gms/internal/ads/zzasg;

    .line 51
    .line 52
    monitor-enter v0

    .line 53
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxx;->zze:Lcom/google/android/gms/internal/ads/zzasg;

    .line 54
    .line 55
    sget-object v2, Lcom/google/android/gms/internal/ads/zzaxk;->zzi:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzasg;->zzB(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzasg;

    .line 58
    .line 59
    .line 60
    monitor-exit v0

    .line 61
    return-void

    .line 62
    :catchall_1
    move-exception v1

    .line 63
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    throw v1

    .line 65
    :array_0
    .array-data 8
        0x6d5b66e2162101b4L    # 6.0455712691531115E218
        0x43366803d5858155L    # 6.306815164121429E15
    .end array-data
.end method
