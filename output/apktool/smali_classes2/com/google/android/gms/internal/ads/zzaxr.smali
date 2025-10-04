.class public final Lcom/google/android/gms/internal/ads/zzaxr;
.super Lcom/google/android/gms/internal/ads/zzaxx;
.source "SourceFile"


# instance fields
.field private final zzi:Lcom/google/android/gms/internal/ads/zzawq;

.field private zzj:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzawj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzasg;IILcom/google/android/gms/internal/ads/zzawq;)V
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
    const/16 v6, 0x35

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
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzaxr;->zzi:Lcom/google/android/gms/internal/ads/zzawq;

    .line 42
    .line 43
    if-eqz p7, :cond_0

    .line 44
    .line 45
    invoke-virtual {p7}, Lcom/google/android/gms/internal/ads/zzawq;->zza()J

    .line 46
    .line 47
    .line 48
    move-result-wide p1

    .line 49
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaxr;->zzj:J

    .line 50
    .line 51
    :cond_0
    return-void

    .line 52
    nop

    .line 53
    :array_0
    .array-data 8
        0x481b8738731d0ec9L    # 2.3418406974249193E39
        -0x3fb5db9f8c884932L    # -52.28419345231451
        0x794bc6acb94c9819L    # 1.9233436456880563E276
        -0x706e0df971b9285L    # -5.436046419361265E274
        -0x833cbab78ddf73L
        0x3e060ff62b96251fL    # 6.420988941701204E-10
        0x5a97e367e6e26272L    # 2.587280351871964E128
        0x39ffca1404e34cbaL    # 2.507738959094783E-29
        -0x39a8bad06a78640L
    .end array-data

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
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    :array_1
    .array-data 8
        -0x5fa0af7593acb5c9L    # -9.34220189704605E-153
        -0x7826a8f52ef2c5e3L    # -7.494638201590667E-271
        0x1a15e2753dbcc3d8L
        -0x4079dbac4b00657L
        -0x265a8e7716de97f7L    # -7.087675293437966E123
        -0x1479c16097a9440dL    # -9.141384654396458E209
        0x4e094493e748832fL    # 8.51525933078207E67
    .end array-data
.end method


# virtual methods
.method public final zza()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxr;->zzi:Lcom/google/android/gms/internal/ads/zzawq;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxx;->zze:Lcom/google/android/gms/internal/ads/zzasg;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxx;->zzf:Ljava/lang/reflect/Method;

    .line 8
    .line 9
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaxr;->zzj:J

    .line 10
    .line 11
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x1

    .line 16
    new-array v3, v3, [Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    aput-object v2, v3, v4

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/Long;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzasg;->zzP(J)Lcom/google/android/gms/internal/ads/zzasg;

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method
