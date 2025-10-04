.class final Lcom/google/android/gms/internal/ads/zzazt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# instance fields
.field zza:Ljava/io/ByteArrayOutputStream;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field zzb:Landroid/util/Base64OutputStream;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 5
    .line 6
    const/16 v1, 0x1000

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzazt;->zza:Ljava/io/ByteArrayOutputStream;

    .line 12
    .line 13
    new-instance v0, Landroid/util/Base64OutputStream;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazt;->zza:Ljava/io/ByteArrayOutputStream;

    .line 16
    .line 17
    const/16 v2, 0xa

    .line 18
    .line 19
    invoke-direct {v0, v1, v2}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzazt;->zzb:Landroid/util/Base64OutputStream;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x7

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazt;->zzb:Landroid/util/Base64OutputStream;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/util/Base64OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception v1

    .line 9
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    new-array v3, v0, [J

    .line 12
    .line 13
    fill-array-data v3, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    const/4 v1, 0x0

    .line 27
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzazt;->zza:Ljava/io/ByteArrayOutputStream;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzazt;->zza:Ljava/io/ByteArrayOutputStream;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    goto :goto_2

    .line 41
    :catch_1
    move-exception v2

    .line 42
    :try_start_2
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    new-array v0, v0, [J

    .line 45
    .line 46
    fill-array-data v0, :array_1

    .line 47
    .line 48
    .line 49
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    const/4 v2, 0x1

    .line 62
    new-array v2, v2, [J

    .line 63
    .line 64
    const-wide v3, -0x2e3799a01add9e2L    # -4.554506595846933E294

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    const/4 v5, 0x0

    .line 70
    aput-wide v3, v2, v5

    .line 71
    .line 72
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzazt;->zza:Ljava/io/ByteArrayOutputStream;

    .line 80
    .line 81
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzazt;->zzb:Landroid/util/Base64OutputStream;

    .line 82
    .line 83
    return-object v0

    .line 84
    :goto_2
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzazt;->zza:Ljava/io/ByteArrayOutputStream;

    .line 85
    .line 86
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzazt;->zzb:Landroid/util/Base64OutputStream;

    .line 87
    .line 88
    throw v0

    .line 89
    :array_0
    .array-data 8
        -0x620d8b844041bd9fL    # -2.00298057593616E-164
        -0x257ccc130035334dL    # -1.0399046648732724E128
        0x3093f8ecd9463e55L    # 1.1039020938349922E-74
        0x706f71667bcb335bL    # 3.905262387179253E233
        0x79ff49a466da238eL
        0x2031439b4aa7446L
        -0x74d5731baea62d4dL    # -7.073006816562332E-255
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
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    :array_1
    .array-data 8
        -0x6bbf8515e9154ea5L    # -3.916280570273715E-211
        0x3e3b7799f2afeb27L    # 6.395204181319529E-9
        -0x14964b74851fb74eL    # -2.6408813616978548E209
        0x1da1966a6899f6bfL    # 5.965103983254322E-166
        -0x10eec59acbadb3f5L    # -1.0203150724502908E227
        0x5a5f1be2122dade8L    # 2.1058289805253995E127
        -0x7313b0af41672215L
    .end array-data
.end method
