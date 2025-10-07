.class public final Lcom/google/android/gms/internal/ads/zzbaa;
.super Lcom/google/android/gms/internal/ads/zzazr;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private zzb:Ljava/security/MessageDigest;

.field private final zzc:I

.field private final zzd:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzazr;-><init>()V

    .line 2
    .line 3
    .line 4
    and-int/lit8 v0, p1, 0x7

    .line 5
    .line 6
    shr-int/lit8 v1, p1, 0x3

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    :cond_0
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbaa;->zzc:I

    .line 13
    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbaa;->zzd:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/String;)[B
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazr;->zza:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzazr;->zza()Ljava/security/MessageDigest;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbaa;->zzb:Ljava/security/MessageDigest;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-array p1, v2, [B

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-object p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_2

    .line 19
    :cond_0
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbaa;->zzb:Ljava/security/MessageDigest;

    .line 23
    .line 24
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    const/4 v4, 0x2

    .line 27
    new-array v4, v4, [J

    .line 28
    .line 29
    fill-array-data v4, :array_0

    .line 30
    .line 31
    .line 32
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbaa;->zzb:Ljava/security/MessageDigest;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    array-length v1, p1

    .line 57
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzbaa;->zzc:I

    .line 58
    .line 59
    if-le v1, v3, :cond_1

    .line 60
    .line 61
    move v1, v3

    .line 62
    :cond_1
    new-array v3, v1, [B

    .line 63
    .line 64
    invoke-static {p1, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    .line 66
    .line 67
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbaa;->zzd:I

    .line 68
    .line 69
    and-int/lit8 p1, p1, 0x7

    .line 70
    .line 71
    if-lez p1, :cond_4

    .line 72
    .line 73
    const-wide/16 v4, 0x0

    .line 74
    .line 75
    :goto_0
    const/16 p1, 0x8

    .line 76
    .line 77
    if-ge v2, v1, :cond_3

    .line 78
    .line 79
    if-lez v2, :cond_2

    .line 80
    .line 81
    shl-long/2addr v4, p1

    .line 82
    :cond_2
    aget-byte p1, v3, v2

    .line 83
    .line 84
    and-int/lit16 p1, p1, 0xff

    .line 85
    .line 86
    int-to-long v6, p1

    .line 87
    add-long/2addr v4, v6

    .line 88
    add-int/lit8 v2, v2, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbaa;->zzd:I

    .line 92
    .line 93
    and-int/lit8 v1, v1, 0x7

    .line 94
    .line 95
    rsub-int/lit8 v1, v1, 0x8

    .line 96
    .line 97
    ushr-long v1, v4, v1

    .line 98
    .line 99
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzbaa;->zzc:I

    .line 100
    .line 101
    :goto_1
    add-int/lit8 v4, v4, -0x1

    .line 102
    .line 103
    if-ltz v4, :cond_4

    .line 104
    .line 105
    const-wide/16 v5, 0xff

    .line 106
    .line 107
    and-long/2addr v5, v1

    .line 108
    long-to-int v6, v5

    .line 109
    int-to-byte v5, v6

    .line 110
    aput-byte v5, v3, v4

    .line 111
    .line 112
    ushr-long/2addr v1, p1

    .line 113
    goto :goto_1

    .line 114
    :cond_4
    monitor-exit v0

    .line 115
    return-object v3

    .line 116
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    throw p1

    .line 118
    nop

    .line 119
    :array_0
    .array-data 8
        -0x941123a602005eaL    # -9.739109386981408E263
        -0xe58667b0081d0ccL    # -3.0734969619221507E239
    .end array-data
.end method
