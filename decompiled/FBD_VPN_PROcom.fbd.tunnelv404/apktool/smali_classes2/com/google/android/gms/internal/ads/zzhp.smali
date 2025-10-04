.class public Lcom/google/android/gms/internal/ads/zzhp;
.super Lcom/google/android/gms/internal/ads/zzgx;
.source "SourceFile"


# instance fields
.field public final zzb:Lcom/google/android/gms/internal/ads/zzhb;

.field public final zzc:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhb;II)V
    .locals 0

    const/16 p2, 0x7d8

    const/4 p3, 0x1

    .line 1
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/zzhp;->zzb(II)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzgx;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzb:Lcom/google/android/gms/internal/ads/zzhb;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzc:I

    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhb;II)V
    .locals 0

    .line 2
    invoke-static {p3, p4}, Lcom/google/android/gms/internal/ads/zzhp;->zzb(II)I

    move-result p3

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzgx;-><init>(Ljava/lang/Throwable;I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzb:Lcom/google/android/gms/internal/ads/zzhb;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzc:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhb;II)V
    .locals 0

    .line 3
    invoke-static {p3, p4}, Lcom/google/android/gms/internal/ads/zzhp;->zzb(II)I

    move-result p3

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzgx;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzb:Lcom/google/android/gms/internal/ads/zzhb;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzc:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhb;II)V
    .locals 0
    .param p2    # Ljava/io/IOException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-static {p4, p5}, Lcom/google/android/gms/internal/ads/zzhp;->zzb(II)I

    move-result p4

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/ads/zzgx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzb:Lcom/google/android/gms/internal/ads/zzhb;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzc:I

    return-void
.end method

.method public static zza(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhb;I)Lcom/google/android/gms/internal/ads/zzhp;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, p0, Ljava/net/SocketTimeoutException;

    .line 6
    .line 7
    const/16 v2, 0x7d7

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/16 v0, 0x7d2

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    instance-of v1, p0, Ljava/io/InterruptedIOException;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    const/16 v0, 0x3ec

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/16 v1, 0x7d1

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfwk;->zza(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    const/4 v4, 0x5

    .line 32
    new-array v4, v4, [J

    .line 33
    .line 34
    fill-array-data v4, :array_0

    .line 35
    .line 36
    .line 37
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    const/16 v0, 0x7d7

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/16 v0, 0x7d1

    .line 54
    .line 55
    :goto_0
    if-ne v0, v2, :cond_3

    .line 56
    .line 57
    new-instance p2, Lcom/google/android/gms/internal/ads/zzho;

    .line 58
    .line 59
    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzho;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhb;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhp;

    .line 64
    .line 65
    invoke-direct {v1, p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhb;II)V

    .line 66
    .line 67
    .line 68
    move-object p2, v1

    .line 69
    :goto_1
    return-object p2

    .line 70
    nop

    .line 71
    :array_0
    .array-data 8
        -0x4c6f73dcbb959634L    # -2.574370118783863E-60
        0x3666c2b37dd72b38L    # 1.2458720944295403E-46
        -0x22f99f23a405fd27L    # -1.3324665151606142E140
        -0x3d280b8600bf9c7fL    # -1.0535514492148602E14
        -0x37b216a0956251bdL    # -2.0356788388709665E40
    .end array-data
.end method

.method private static zzb(II)I
    .locals 1

    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/16 p0, 0x7d0

    goto :goto_0

    :cond_0
    const/16 p0, 0x7d1

    :cond_1
    :goto_0
    return p0
.end method
