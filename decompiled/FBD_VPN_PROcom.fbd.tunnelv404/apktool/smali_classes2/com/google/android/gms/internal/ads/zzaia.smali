.class final Lcom/google/android/gms/internal/ads/zzaia;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:[J


# instance fields
.field private final zzb:[B

.field private zzc:I

.field private zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaia;->zza:[J

    return-void

    :array_0
    .array-data 8
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzb:[B

    return-void
.end method

.method public static zzb(I)I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/16 v1, 0x8

    .line 3
    .line 4
    if-ge v0, v1, :cond_1

    .line 5
    .line 6
    add-int/lit8 v1, v0, 0x1

    .line 7
    .line 8
    sget-object v2, Lcom/google/android/gms/internal/ads/zzaia;->zza:[J

    .line 9
    .line 10
    aget-wide v3, v2, v0

    .line 11
    .line 12
    int-to-long v5, p0

    .line 13
    and-long v2, v3, v5

    .line 14
    .line 15
    const-wide/16 v4, 0x0

    .line 16
    .line 17
    cmp-long v0, v2, v4

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    move v0, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, -0x1

    .line 25
    :goto_1
    return v1
.end method

.method public static zzc([BIZ)J
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-byte v0, p0, v0

    .line 3
    .line 4
    int-to-long v0, v0

    .line 5
    const-wide/16 v2, 0xff

    .line 6
    .line 7
    and-long/2addr v0, v2

    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    add-int/lit8 p2, p1, -0x1

    .line 11
    .line 12
    sget-object v4, Lcom/google/android/gms/internal/ads/zzaia;->zza:[J

    .line 13
    .line 14
    aget-wide v5, v4, p2

    .line 15
    .line 16
    not-long v4, v5

    .line 17
    and-long/2addr v0, v4

    .line 18
    :cond_0
    const/4 p2, 0x1

    .line 19
    :goto_0
    if-ge p2, p1, :cond_1

    .line 20
    .line 21
    const/16 v4, 0x8

    .line 22
    .line 23
    shl-long/2addr v0, v4

    .line 24
    aget-byte v4, p0, p2

    .line 25
    .line 26
    int-to-long v4, v4

    .line 27
    and-long/2addr v4, v2

    .line 28
    or-long/2addr v0, v4

    .line 29
    add-int/lit8 p2, p2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-wide v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzd:I

    return v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzacv;ZZI)J
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzc:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzb:[B

    .line 9
    .line 10
    invoke-interface {p1, v0, v3, v2, p2}, Lcom/google/android/gms/internal/ads/zzacv;->zzn([BIIZ)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    const-wide/16 p1, -0x1

    .line 17
    .line 18
    return-wide p1

    .line 19
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzb:[B

    .line 20
    .line 21
    aget-byte p2, p2, v3

    .line 22
    .line 23
    and-int/lit16 p2, p2, 0xff

    .line 24
    .line 25
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaia;->zzb(I)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzd:I

    .line 30
    .line 31
    if-eq p2, v1, :cond_1

    .line 32
    .line 33
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzc:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    const/4 p3, 0x6

    .line 41
    new-array p3, p3, [J

    .line 42
    .line 43
    fill-array-data p3, :array_0

    .line 44
    .line 45
    .line 46
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_2
    :goto_0
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzd:I

    .line 58
    .line 59
    if-le p2, p4, :cond_3

    .line 60
    .line 61
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzc:I

    .line 62
    .line 63
    const-wide/16 p1, -0x2

    .line 64
    .line 65
    return-wide p1

    .line 66
    :cond_3
    if-eq p2, v2, :cond_4

    .line 67
    .line 68
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzb:[B

    .line 69
    .line 70
    add-int/2addr p2, v1

    .line 71
    check-cast p1, Lcom/google/android/gms/internal/ads/zzack;

    .line 72
    .line 73
    invoke-virtual {p1, p4, v2, p2, v3}, Lcom/google/android/gms/internal/ads/zzack;->zzn([BIIZ)Z

    .line 74
    .line 75
    .line 76
    :cond_4
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzc:I

    .line 77
    .line 78
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzb:[B

    .line 79
    .line 80
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzd:I

    .line 81
    .line 82
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaia;->zzc([BIZ)J

    .line 83
    .line 84
    .line 85
    move-result-wide p1

    .line 86
    return-wide p1

    .line 87
    :array_0
    .array-data 8
        0x1ee57b30224ba3ebL    # 7.639605183668714E-160
        0x2f7e4b54e580688eL    # 6.38736258799602E-80
        0x39c4c361e2c2fc95L    # 2.04741081304752E-30
        0x5cf3aa75c48f8ec7L    # 5.854784809771495E139
        0x30b526ae3acc73d6L    # 4.676209420143272E-74
        0x42ddbb20010b5303L    # 1.3075813211681205E14
    .end array-data
.end method

.method public final zze()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzc:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzd:I

    return-void
.end method
