.class public final Lcom/google/android/gms/internal/ads/zzafu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/io/ByteArrayOutputStream;

.field private final zzb:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 5
    .line 6
    const/16 v1, 0x200

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zza:Ljava/io/ByteArrayOutputStream;

    .line 12
    .line 13
    new-instance v1, Ljava/io/DataOutputStream;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzb:Ljava/io/DataOutputStream;

    .line 19
    .line 20
    return-void
.end method

.method private static zzb(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaft;)[B
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zza:Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzb:Ljava/io/DataOutputStream;

    .line 7
    .line 8
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzaft;->zza:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzafu;->zzb(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzaft;->zzb:Ljava/lang/String;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    new-array v1, v1, [J

    .line 21
    .line 22
    const-wide v2, -0x868b8dfaefb56d8L    # -1.2009329990205776E268

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    aput-wide v2, v1, v4

    .line 29
    .line 30
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p1

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzb:Ljava/io/DataOutputStream;

    .line 41
    .line 42
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzafu;->zzb(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzb:Ljava/io/DataOutputStream;

    .line 46
    .line 47
    iget-wide v1, p1, Lcom/google/android/gms/internal/ads/zzaft;->zzc:J

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzb:Ljava/io/DataOutputStream;

    .line 53
    .line 54
    iget-wide v1, p1, Lcom/google/android/gms/internal/ads/zzaft;->zzd:J

    .line 55
    .line 56
    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzb:Ljava/io/DataOutputStream;

    .line 60
    .line 61
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaft;->zze:[B

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafu;->zzb:Ljava/io/DataOutputStream;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafu;->zza:Ljava/io/ByteArrayOutputStream;

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 74
    .line 75
    .line 76
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    return-object p1

    .line 78
    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 79
    .line 80
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    throw v0
.end method
