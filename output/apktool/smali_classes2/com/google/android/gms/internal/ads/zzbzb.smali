.class public final synthetic Lcom/google/android/gms/internal/ads/zzbzb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Ljava/io/OutputStream;

.field public final synthetic zzb:[B


# direct methods
.method public synthetic constructor <init>(Ljava/io/OutputStream;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzb;->zza:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbzb;->zzb:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbzc;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzb;->zza:Ljava/io/OutputStream;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbzb;->zzb:[B

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    new-instance v3, Ljava/io/DataOutputStream;

    .line 9
    .line 10
    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    .line 12
    .line 13
    :try_start_1
    array-length v2, v1

    .line 14
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    .line 20
    invoke-static {v3}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v1

    .line 27
    goto :goto_1

    .line 28
    :goto_0
    move-object v2, v3

    .line 29
    goto :goto_3

    .line 30
    :goto_1
    move-object v2, v3

    .line 31
    goto :goto_2

    .line 32
    :catchall_1
    move-exception v1

    .line 33
    goto :goto_3

    .line 34
    :catch_1
    move-exception v1

    .line 35
    :goto_2
    :try_start_2
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    const/4 v4, 0x6

    .line 38
    new-array v4, v4, [J

    .line 39
    .line 40
    fill-array-data v4, :array_0

    .line 41
    .line 42
    .line 43
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    const/4 v5, 0x5

    .line 60
    new-array v5, v5, [J

    .line 61
    .line 62
    fill-array-data v5, :array_1

    .line 63
    .line 64
    .line 65
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzcdl;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 73
    .line 74
    .line 75
    if-nez v2, :cond_0

    .line 76
    .line 77
    invoke-static {v0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_0
    invoke-static {v2}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :goto_3
    if-nez v2, :cond_1

    .line 86
    .line 87
    invoke-static {v0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 88
    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_1
    invoke-static {v2}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 92
    .line 93
    .line 94
    :goto_4
    throw v1

    .line 95
    :array_0
    .array-data 8
        0x3fb8fb1fee6859e9L    # 0.0975818593072756
        0x75b2d23787a639deL    # 9.04321114091029E258
        -0x18cdbe62bc76a7caL    # -1.2709550718750813E189
        0xdbb8c3d447d5377L
        0x42051ee7a30d82daL    # 1.1339101281688892E10
        0x569848a43aca77fdL    # 1.425785872699194E109
    .end array-data

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
    .line 122
    .line 123
    :array_1
    .array-data 8
        -0x448452501345c380L    # -3.663214427097501E-22
        -0x56a37fb2c8aac58aL
        0xa209df37218b7e0L
        -0x262e23995010e4d9L    # -4.722832895980809E124
        0x40b46f56d059ee77L    # 5231.33911668846
    .end array-data
.end method
