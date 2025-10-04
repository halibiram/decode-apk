.class public final Lcom/google/android/gms/internal/ads/zzfp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:[C

.field private static final zzb:[C

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzgaf;


# instance fields
.field private zzd:[B

.field private zze:I

.field private zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [C

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/android/gms/internal/ads/zzfp;->zza:[C

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    new-array v0, v0, [C

    .line 11
    .line 12
    const/16 v1, 0xa

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aput-char v1, v0, v2

    .line 16
    .line 17
    sput-object v0, Lcom/google/android/gms/internal/ads/zzfp;->zzb:[C

    .line 18
    .line 19
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfwq;->zza:Ljava/nio/charset/Charset;

    .line 20
    .line 21
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfwq;->zzc:Ljava/nio/charset/Charset;

    .line 22
    .line 23
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfwq;->zzf:Ljava/nio/charset/Charset;

    .line 24
    .line 25
    sget-object v3, Lcom/google/android/gms/internal/ads/zzfwq;->zzd:Ljava/nio/charset/Charset;

    .line 26
    .line 27
    sget-object v4, Lcom/google/android/gms/internal/ads/zzfwq;->zze:Ljava/nio/charset/Charset;

    .line 28
    .line 29
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgaf;->zzr(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgaf;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/google/android/gms/internal/ads/zzfp;->zzc:Lcom/google/android/gms/internal/ads/zzgaf;

    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :array_0
    .array-data 2
        0xds
        0xas
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfy;->zzf:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzf:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    array-length p1, p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzf:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzf:I

    return-void
.end method

.method private final zzN(Ljava/nio/charset/Charset;[C)C
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzO(Ljava/nio/charset/Charset;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    shr-int/lit8 v1, p1, 0x10

    .line 9
    .line 10
    array-length v2, p2

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v2, :cond_1

    .line 13
    .line 14
    int-to-char v4, v1

    .line 15
    aget-char v5, p2, v3

    .line 16
    .line 17
    if-ne v5, v4, :cond_0

    .line 18
    .line 19
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 20
    .line 21
    int-to-char p1, p1

    .line 22
    add-int/2addr p2, p1

    .line 23
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 24
    .line 25
    return v4

    .line 26
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return v0
.end method

.method private final zzO(Ljava/nio/charset/Charset;)I
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfwq;->zzc:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfwq;->zza:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzf:I

    .line 19
    .line 20
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 21
    .line 22
    sub-int/2addr v0, v2

    .line 23
    if-lez v0, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    .line 26
    .line 27
    aget-byte p1, p1, v2

    .line 28
    .line 29
    and-int/lit16 p1, p1, 0xff

    .line 30
    .line 31
    int-to-long v2, p1

    .line 32
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgct;->zza(J)C

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    int-to-byte p1, p1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfwq;->zzf:Ljava/nio/charset/Charset;

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v2, 0x2

    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfwq;->zzd:Ljava/nio/charset/Charset;

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzf:I

    .line 56
    .line 57
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 58
    .line 59
    sub-int/2addr v0, v3

    .line 60
    if-lt v0, v2, :cond_3

    .line 61
    .line 62
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    .line 63
    .line 64
    aget-byte v0, p1, v3

    .line 65
    .line 66
    add-int/2addr v3, v1

    .line 67
    aget-byte p1, p1, v3

    .line 68
    .line 69
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgct;->zzb(BB)C

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    :goto_0
    int-to-byte p1, p1

    .line 74
    const/4 v1, 0x2

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfwq;->zze:Ljava/nio/charset/Charset;

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_4

    .line 83
    .line 84
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzf:I

    .line 85
    .line 86
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 87
    .line 88
    sub-int/2addr p1, v0

    .line 89
    if-lt p1, v2, :cond_4

    .line 90
    .line 91
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    .line 92
    .line 93
    add-int/lit8 v1, v0, 0x1

    .line 94
    .line 95
    aget-byte v1, p1, v1

    .line 96
    .line 97
    aget-byte p1, p1, v0

    .line 98
    .line 99
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzgct;->zzb(BB)C

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    goto :goto_0

    .line 104
    :goto_1
    int-to-long v2, p1

    .line 105
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgct;->zza(J)C

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    shl-int/lit8 p1, p1, 0x10

    .line 110
    .line 111
    add-int/2addr p1, v1

    .line 112
    return p1

    .line 113
    :cond_4
    const/4 p1, 0x0

    .line 114
    return p1
.end method


# virtual methods
.method public final zzA(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    invoke-direct {v0, v1, v2, p1, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/2addr v2, p1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    return-object v0
.end method

.method public final zzB()Ljava/nio/charset/Charset;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzf:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    const/4 v2, 0x3

    .line 7
    if-lt v0, v2, :cond_1

    .line 8
    .line 9
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    .line 10
    .line 11
    aget-byte v4, v3, v1

    .line 12
    .line 13
    const/16 v5, -0x11

    .line 14
    .line 15
    if-ne v4, v5, :cond_1

    .line 16
    .line 17
    add-int/lit8 v4, v1, 0x1

    .line 18
    .line 19
    aget-byte v4, v3, v4

    .line 20
    .line 21
    const/16 v5, -0x45

    .line 22
    .line 23
    if-ne v4, v5, :cond_1

    .line 24
    .line 25
    add-int/lit8 v4, v1, 0x2

    .line 26
    .line 27
    aget-byte v3, v3, v4

    .line 28
    .line 29
    const/16 v4, -0x41

    .line 30
    .line 31
    if-eq v3, v4, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    add-int/2addr v1, v2

    .line 35
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 36
    .line 37
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfwq;->zzc:Ljava/nio/charset/Charset;

    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_1
    :goto_0
    const/4 v2, 0x2

    .line 41
    if-lt v0, v2, :cond_3

    .line 42
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    .line 44
    .line 45
    aget-byte v3, v0, v1

    .line 46
    .line 47
    const/4 v4, -0x1

    .line 48
    const/4 v5, -0x2

    .line 49
    if-ne v3, v5, :cond_2

    .line 50
    .line 51
    add-int/lit8 v3, v1, 0x1

    .line 52
    .line 53
    aget-byte v0, v0, v3

    .line 54
    .line 55
    if-ne v0, v4, :cond_3

    .line 56
    .line 57
    add-int/2addr v1, v2

    .line 58
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 59
    .line 60
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfwq;->zzd:Ljava/nio/charset/Charset;

    .line 61
    .line 62
    return-object v0

    .line 63
    :cond_2
    if-ne v3, v4, :cond_3

    .line 64
    .line 65
    add-int/lit8 v3, v1, 0x1

    .line 66
    .line 67
    aget-byte v0, v0, v3

    .line 68
    .line 69
    if-ne v0, v5, :cond_3

    .line 70
    .line 71
    add-int/2addr v1, v2

    .line 72
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 73
    .line 74
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfwq;->zze:Ljava/nio/charset/Charset;

    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_3
    const/4 v0, 0x0

    .line 78
    return-object v0
.end method

.method public final zzC()S
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 8
    .line 9
    aget-byte v3, v0, v1

    .line 10
    .line 11
    and-int/lit16 v3, v3, 0xff

    .line 12
    .line 13
    add-int/lit8 v1, v1, 0x2

    .line 14
    .line 15
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 16
    .line 17
    aget-byte v0, v0, v2

    .line 18
    .line 19
    and-int/lit16 v0, v0, 0xff

    .line 20
    .line 21
    shl-int/lit8 v0, v0, 0x8

    .line 22
    .line 23
    or-int/2addr v0, v3

    .line 24
    int-to-short v0, v0

    .line 25
    return v0
.end method

.method public final zzD()S
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 8
    .line 9
    aget-byte v3, v0, v1

    .line 10
    .line 11
    and-int/lit16 v3, v3, 0xff

    .line 12
    .line 13
    add-int/lit8 v1, v1, 0x2

    .line 14
    .line 15
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 16
    .line 17
    aget-byte v0, v0, v2

    .line 18
    .line 19
    and-int/lit16 v0, v0, 0xff

    .line 20
    .line 21
    shl-int/lit8 v1, v3, 0x8

    .line 22
    .line 23
    or-int/2addr v0, v1

    .line 24
    int-to-short v0, v0

    .line 25
    return v0
.end method

.method public final zzE(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-le p1, v1, :cond_0

    .line 5
    .line 6
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final zzF(Lcom/google/android/gms/internal/ads/zzfo;I)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfo;->zza:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzfp;->zzG([BII)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzfo;->zzk(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final zzG([BII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 4
    .line 5
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    .line 7
    .line 8
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 9
    .line 10
    add-int/2addr p1, p3

    .line 11
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 12
    .line 13
    return-void
.end method

.method public final zzH(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-ge v1, p1, :cond_0

    .line 5
    .line 6
    new-array v0, p1, [B

    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzI([BI)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final zzI([BI)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzf:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    return-void
.end method

.method public final zzJ(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    .line 5
    .line 6
    array-length v1, v1

    .line 7
    if-gt p1, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzd(Z)V

    .line 11
    .line 12
    .line 13
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzf:I

    .line 14
    .line 15
    return-void
.end method

.method public final zzK(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzf:I

    .line 5
    .line 6
    if-gt p1, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzd(Z)V

    .line 10
    .line 11
    .line 12
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 13
    .line 14
    return-void
.end method

.method public final zzL(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final zzM()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    return-object v0
.end method

.method public final zza(Ljava/nio/charset/Charset;)C
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfp;->zzc:Lcom/google/android/gms/internal/ads/zzgaf;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfzv;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v3, 0x4

    .line 14
    new-array v3, v3, [J

    .line 15
    .line 16
    fill-array-data v3, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzek;->zze(ZLjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzO(Ljava/nio/charset/Charset;)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    shr-int/lit8 p1, p1, 0x10

    .line 38
    .line 39
    int-to-char p1, p1

    .line 40
    return p1

    .line 41
    :array_0
    .array-data 8
        0x5a00b8ddfa295125L    # 3.537365933752112E125
        -0x593e3eb718d62cc5L    # -5.371714196519791E-122
        0x600a6d5f121a593dL    # 4.429140620283547E154
        -0x26da3b98e8587144L    # -2.810417227506885E121
    .end array-data
.end method

.method public final zzb()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzf:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final zzc()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public final zzd()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    return v0
.end method

.method public final zze()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzf:I

    return v0
.end method

.method public final zzf()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 4
    .line 5
    aget-byte v0, v0, v1

    .line 6
    .line 7
    and-int/lit16 v0, v0, 0xff

    .line 8
    .line 9
    return v0
.end method

.method public final zzg()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 8
    .line 9
    aget-byte v3, v0, v1

    .line 10
    .line 11
    and-int/lit16 v3, v3, 0xff

    .line 12
    .line 13
    add-int/lit8 v4, v1, 0x2

    .line 14
    .line 15
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 16
    .line 17
    aget-byte v2, v0, v2

    .line 18
    .line 19
    and-int/lit16 v2, v2, 0xff

    .line 20
    .line 21
    add-int/lit8 v5, v1, 0x3

    .line 22
    .line 23
    iput v5, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 24
    .line 25
    aget-byte v4, v0, v4

    .line 26
    .line 27
    and-int/lit16 v4, v4, 0xff

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x4

    .line 30
    .line 31
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 32
    .line 33
    aget-byte v0, v0, v5

    .line 34
    .line 35
    and-int/lit16 v0, v0, 0xff

    .line 36
    .line 37
    shl-int/lit8 v1, v3, 0x18

    .line 38
    .line 39
    shl-int/lit8 v2, v2, 0x10

    .line 40
    .line 41
    or-int/2addr v1, v2

    .line 42
    shl-int/lit8 v2, v4, 0x8

    .line 43
    .line 44
    or-int/2addr v1, v2

    .line 45
    or-int/2addr v0, v1

    .line 46
    return v0
.end method

.method public final zzh()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 8
    .line 9
    aget-byte v3, v0, v1

    .line 10
    .line 11
    and-int/lit16 v3, v3, 0xff

    .line 12
    .line 13
    add-int/lit8 v4, v1, 0x2

    .line 14
    .line 15
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 16
    .line 17
    aget-byte v2, v0, v2

    .line 18
    .line 19
    and-int/lit16 v2, v2, 0xff

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x3

    .line 22
    .line 23
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 24
    .line 25
    aget-byte v0, v0, v4

    .line 26
    .line 27
    and-int/lit16 v0, v0, 0xff

    .line 28
    .line 29
    shl-int/lit8 v1, v3, 0x18

    .line 30
    .line 31
    shr-int/lit8 v1, v1, 0x8

    .line 32
    .line 33
    shl-int/lit8 v2, v2, 0x8

    .line 34
    .line 35
    or-int/2addr v1, v2

    .line 36
    or-int/2addr v0, v1

    .line 37
    return v0
.end method

.method public final zzi()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 8
    .line 9
    aget-byte v3, v0, v1

    .line 10
    .line 11
    and-int/lit16 v3, v3, 0xff

    .line 12
    .line 13
    add-int/lit8 v4, v1, 0x2

    .line 14
    .line 15
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 16
    .line 17
    aget-byte v2, v0, v2

    .line 18
    .line 19
    and-int/lit16 v2, v2, 0xff

    .line 20
    .line 21
    add-int/lit8 v5, v1, 0x3

    .line 22
    .line 23
    iput v5, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 24
    .line 25
    aget-byte v4, v0, v4

    .line 26
    .line 27
    and-int/lit16 v4, v4, 0xff

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x4

    .line 30
    .line 31
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 32
    .line 33
    aget-byte v0, v0, v5

    .line 34
    .line 35
    and-int/lit16 v0, v0, 0xff

    .line 36
    .line 37
    shl-int/lit8 v1, v2, 0x8

    .line 38
    .line 39
    or-int/2addr v1, v3

    .line 40
    shl-int/lit8 v2, v4, 0x10

    .line 41
    .line 42
    or-int/2addr v1, v2

    .line 43
    shl-int/lit8 v0, v0, 0x18

    .line 44
    .line 45
    or-int/2addr v0, v1

    .line 46
    return v0
.end method

.method public final zzj()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzi()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/4 v4, 0x4

    .line 18
    new-array v4, v4, [J

    .line 19
    .line 20
    fill-array-data v4, :array_0

    .line 21
    .line 22
    .line 23
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-static {v3, v2, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v1

    .line 34
    nop

    .line 35
    :array_0
    .array-data 8
        0x29208bd1fffd5ef8L
        -0x4bd3c920b6154124L    # -2.247402209263214E-57
        -0x3de9e77d7abfa69dL    # -2.372512187208729E10
        0x699ef341e520f0b0L    # 5.922716286473439E200
    .end array-data
.end method

.method public final zzk()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 8
    .line 9
    aget-byte v3, v0, v1

    .line 10
    .line 11
    and-int/lit16 v3, v3, 0xff

    .line 12
    .line 13
    add-int/lit8 v1, v1, 0x2

    .line 14
    .line 15
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 16
    .line 17
    aget-byte v0, v0, v2

    .line 18
    .line 19
    and-int/lit16 v0, v0, 0xff

    .line 20
    .line 21
    shl-int/lit8 v0, v0, 0x8

    .line 22
    .line 23
    or-int/2addr v0, v3

    .line 24
    return v0
.end method

.method public final zzl()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    shl-int/lit8 v0, v0, 0x15

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    shl-int/lit8 v1, v1, 0xe

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    shl-int/lit8 v2, v2, 0x7

    .line 18
    .line 19
    or-int/2addr v0, v1

    .line 20
    or-int/2addr v0, v2

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    or-int/2addr v0, v1

    .line 26
    return v0
.end method

.method public final zzm()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 8
    .line 9
    aget-byte v0, v0, v1

    .line 10
    .line 11
    and-int/lit16 v0, v0, 0xff

    .line 12
    .line 13
    return v0
.end method

.method public final zzn()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 8
    .line 9
    aget-byte v3, v0, v1

    .line 10
    .line 11
    and-int/lit16 v3, v3, 0xff

    .line 12
    .line 13
    add-int/lit8 v4, v1, 0x2

    .line 14
    .line 15
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 16
    .line 17
    aget-byte v0, v0, v2

    .line 18
    .line 19
    and-int/lit16 v0, v0, 0xff

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x4

    .line 22
    .line 23
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 24
    .line 25
    shl-int/lit8 v1, v3, 0x8

    .line 26
    .line 27
    or-int/2addr v0, v1

    .line 28
    return v0
.end method

.method public final zzo()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 8
    .line 9
    aget-byte v3, v0, v1

    .line 10
    .line 11
    and-int/lit16 v3, v3, 0xff

    .line 12
    .line 13
    add-int/lit8 v4, v1, 0x2

    .line 14
    .line 15
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 16
    .line 17
    aget-byte v2, v0, v2

    .line 18
    .line 19
    and-int/lit16 v2, v2, 0xff

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x3

    .line 22
    .line 23
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 24
    .line 25
    aget-byte v0, v0, v4

    .line 26
    .line 27
    and-int/lit16 v0, v0, 0xff

    .line 28
    .line 29
    shl-int/lit8 v1, v3, 0x10

    .line 30
    .line 31
    shl-int/lit8 v2, v2, 0x8

    .line 32
    .line 33
    or-int/2addr v1, v2

    .line 34
    or-int/2addr v0, v1

    .line 35
    return v0
.end method

.method public final zzp()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzg()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/4 v4, 0x4

    .line 18
    new-array v4, v4, [J

    .line 19
    .line 20
    fill-array-data v4, :array_0

    .line 21
    .line 22
    .line 23
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-static {v3, v2, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v1

    .line 34
    nop

    .line 35
    :array_0
    .array-data 8
        0x71dca2dbaebf607bL    # 2.9835368561289425E240
        -0x14de18d2f3b63948L    # -1.149565146272218E208
        0xd4d499a2dfa42b4L
        -0x122ef175dee2faa7L    # -9.63372553955759E220
    .end array-data
.end method

.method public final zzq()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 8
    .line 9
    aget-byte v3, v0, v1

    .line 10
    .line 11
    and-int/lit16 v3, v3, 0xff

    .line 12
    .line 13
    add-int/lit8 v1, v1, 0x2

    .line 14
    .line 15
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 16
    .line 17
    aget-byte v0, v0, v2

    .line 18
    .line 19
    and-int/lit16 v0, v0, 0xff

    .line 20
    .line 21
    shl-int/lit8 v1, v3, 0x8

    .line 22
    .line 23
    or-int/2addr v0, v1

    .line 24
    return v0
.end method

.method public final zzr()J
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    .line 4
    .line 5
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 6
    .line 7
    add-int/lit8 v3, v2, 0x1

    .line 8
    .line 9
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 10
    .line 11
    aget-byte v4, v1, v2

    .line 12
    .line 13
    int-to-long v4, v4

    .line 14
    add-int/lit8 v6, v2, 0x2

    .line 15
    .line 16
    iput v6, v0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 17
    .line 18
    aget-byte v3, v1, v3

    .line 19
    .line 20
    int-to-long v7, v3

    .line 21
    add-int/lit8 v3, v2, 0x3

    .line 22
    .line 23
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 24
    .line 25
    aget-byte v6, v1, v6

    .line 26
    .line 27
    int-to-long v9, v6

    .line 28
    add-int/lit8 v6, v2, 0x4

    .line 29
    .line 30
    iput v6, v0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 31
    .line 32
    aget-byte v3, v1, v3

    .line 33
    .line 34
    int-to-long v11, v3

    .line 35
    add-int/lit8 v3, v2, 0x5

    .line 36
    .line 37
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 38
    .line 39
    aget-byte v6, v1, v6

    .line 40
    .line 41
    int-to-long v13, v6

    .line 42
    add-int/lit8 v6, v2, 0x6

    .line 43
    .line 44
    iput v6, v0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 45
    .line 46
    aget-byte v3, v1, v3

    .line 47
    .line 48
    move-wide v15, v4

    .line 49
    int-to-long v3, v3

    .line 50
    add-int/lit8 v5, v2, 0x7

    .line 51
    .line 52
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 53
    .line 54
    aget-byte v6, v1, v6

    .line 55
    .line 56
    move-wide/from16 v17, v3

    .line 57
    .line 58
    int-to-long v3, v6

    .line 59
    const/16 v6, 0x8

    .line 60
    .line 61
    add-int/2addr v2, v6

    .line 62
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 63
    .line 64
    aget-byte v1, v1, v5

    .line 65
    .line 66
    int-to-long v1, v1

    .line 67
    const-wide/16 v19, 0xff

    .line 68
    .line 69
    and-long v7, v7, v19

    .line 70
    .line 71
    and-long v9, v9, v19

    .line 72
    .line 73
    and-long v11, v11, v19

    .line 74
    .line 75
    and-long v13, v13, v19

    .line 76
    .line 77
    and-long v17, v17, v19

    .line 78
    .line 79
    and-long v3, v3, v19

    .line 80
    .line 81
    and-long v1, v1, v19

    .line 82
    .line 83
    and-long v15, v15, v19

    .line 84
    .line 85
    shl-long v5, v7, v6

    .line 86
    .line 87
    or-long/2addr v5, v15

    .line 88
    const/16 v7, 0x10

    .line 89
    .line 90
    shl-long v7, v9, v7

    .line 91
    .line 92
    or-long/2addr v5, v7

    .line 93
    const/16 v7, 0x18

    .line 94
    .line 95
    shl-long v7, v11, v7

    .line 96
    .line 97
    or-long/2addr v5, v7

    .line 98
    const/16 v7, 0x20

    .line 99
    .line 100
    shl-long v7, v13, v7

    .line 101
    .line 102
    or-long/2addr v5, v7

    .line 103
    const/16 v7, 0x28

    .line 104
    .line 105
    shl-long v7, v17, v7

    .line 106
    .line 107
    or-long/2addr v5, v7

    .line 108
    const/16 v7, 0x30

    .line 109
    .line 110
    shl-long/2addr v3, v7

    .line 111
    or-long/2addr v3, v5

    .line 112
    const/16 v5, 0x38

    .line 113
    .line 114
    shl-long/2addr v1, v5

    .line 115
    or-long/2addr v1, v3

    .line 116
    return-wide v1
.end method

.method public final zzs()J
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 8
    .line 9
    aget-byte v3, v0, v1

    .line 10
    .line 11
    int-to-long v3, v3

    .line 12
    add-int/lit8 v5, v1, 0x2

    .line 13
    .line 14
    iput v5, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 15
    .line 16
    aget-byte v2, v0, v2

    .line 17
    .line 18
    int-to-long v6, v2

    .line 19
    add-int/lit8 v2, v1, 0x3

    .line 20
    .line 21
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 22
    .line 23
    aget-byte v5, v0, v5

    .line 24
    .line 25
    int-to-long v8, v5

    .line 26
    add-int/lit8 v1, v1, 0x4

    .line 27
    .line 28
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 29
    .line 30
    aget-byte v0, v0, v2

    .line 31
    .line 32
    int-to-long v0, v0

    .line 33
    const-wide/16 v10, 0xff

    .line 34
    .line 35
    and-long v5, v6, v10

    .line 36
    .line 37
    and-long v7, v8, v10

    .line 38
    .line 39
    and-long/2addr v0, v10

    .line 40
    and-long v2, v3, v10

    .line 41
    .line 42
    const/16 v4, 0x8

    .line 43
    .line 44
    shl-long v4, v5, v4

    .line 45
    .line 46
    or-long/2addr v2, v4

    .line 47
    const/16 v4, 0x10

    .line 48
    .line 49
    shl-long v4, v7, v4

    .line 50
    .line 51
    or-long/2addr v2, v4

    .line 52
    const/16 v4, 0x18

    .line 53
    .line 54
    shl-long/2addr v0, v4

    .line 55
    or-long/2addr v0, v2

    .line 56
    return-wide v0
.end method

.method public final zzt()J
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    .line 4
    .line 5
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 6
    .line 7
    add-int/lit8 v3, v2, 0x1

    .line 8
    .line 9
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 10
    .line 11
    aget-byte v4, v1, v2

    .line 12
    .line 13
    int-to-long v4, v4

    .line 14
    add-int/lit8 v6, v2, 0x2

    .line 15
    .line 16
    iput v6, v0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 17
    .line 18
    aget-byte v3, v1, v3

    .line 19
    .line 20
    int-to-long v7, v3

    .line 21
    add-int/lit8 v3, v2, 0x3

    .line 22
    .line 23
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 24
    .line 25
    aget-byte v6, v1, v6

    .line 26
    .line 27
    int-to-long v9, v6

    .line 28
    add-int/lit8 v6, v2, 0x4

    .line 29
    .line 30
    iput v6, v0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 31
    .line 32
    aget-byte v3, v1, v3

    .line 33
    .line 34
    int-to-long v11, v3

    .line 35
    add-int/lit8 v3, v2, 0x5

    .line 36
    .line 37
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 38
    .line 39
    aget-byte v6, v1, v6

    .line 40
    .line 41
    int-to-long v13, v6

    .line 42
    add-int/lit8 v6, v2, 0x6

    .line 43
    .line 44
    iput v6, v0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 45
    .line 46
    aget-byte v3, v1, v3

    .line 47
    .line 48
    move-wide v15, v13

    .line 49
    int-to-long v13, v3

    .line 50
    add-int/lit8 v3, v2, 0x7

    .line 51
    .line 52
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 53
    .line 54
    aget-byte v6, v1, v6

    .line 55
    .line 56
    move-wide/from16 v17, v13

    .line 57
    .line 58
    int-to-long v13, v6

    .line 59
    const/16 v6, 0x8

    .line 60
    .line 61
    add-int/2addr v2, v6

    .line 62
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 63
    .line 64
    aget-byte v1, v1, v3

    .line 65
    .line 66
    int-to-long v1, v1

    .line 67
    const-wide/16 v19, 0xff

    .line 68
    .line 69
    and-long v3, v4, v19

    .line 70
    .line 71
    and-long v7, v7, v19

    .line 72
    .line 73
    and-long v9, v9, v19

    .line 74
    .line 75
    and-long v11, v11, v19

    .line 76
    .line 77
    and-long v15, v15, v19

    .line 78
    .line 79
    and-long v17, v17, v19

    .line 80
    .line 81
    and-long v13, v13, v19

    .line 82
    .line 83
    const/16 v5, 0x38

    .line 84
    .line 85
    shl-long/2addr v3, v5

    .line 86
    const/16 v5, 0x30

    .line 87
    .line 88
    shl-long/2addr v7, v5

    .line 89
    or-long/2addr v3, v7

    .line 90
    const/16 v5, 0x28

    .line 91
    .line 92
    shl-long v7, v9, v5

    .line 93
    .line 94
    or-long/2addr v3, v7

    .line 95
    const/16 v5, 0x20

    .line 96
    .line 97
    shl-long v7, v11, v5

    .line 98
    .line 99
    or-long/2addr v3, v7

    .line 100
    const/16 v5, 0x18

    .line 101
    .line 102
    shl-long v7, v15, v5

    .line 103
    .line 104
    or-long/2addr v3, v7

    .line 105
    const/16 v5, 0x10

    .line 106
    .line 107
    shl-long v7, v17, v5

    .line 108
    .line 109
    or-long/2addr v3, v7

    .line 110
    shl-long v5, v13, v6

    .line 111
    .line 112
    or-long/2addr v3, v5

    .line 113
    and-long v1, v1, v19

    .line 114
    .line 115
    or-long/2addr v1, v3

    .line 116
    return-wide v1
.end method

.method public final zzu()J
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 8
    .line 9
    aget-byte v3, v0, v1

    .line 10
    .line 11
    int-to-long v3, v3

    .line 12
    add-int/lit8 v5, v1, 0x2

    .line 13
    .line 14
    iput v5, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 15
    .line 16
    aget-byte v2, v0, v2

    .line 17
    .line 18
    int-to-long v6, v2

    .line 19
    add-int/lit8 v2, v1, 0x3

    .line 20
    .line 21
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 22
    .line 23
    aget-byte v5, v0, v5

    .line 24
    .line 25
    int-to-long v8, v5

    .line 26
    add-int/lit8 v1, v1, 0x4

    .line 27
    .line 28
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 29
    .line 30
    aget-byte v0, v0, v2

    .line 31
    .line 32
    int-to-long v0, v0

    .line 33
    const-wide/16 v10, 0xff

    .line 34
    .line 35
    and-long v2, v3, v10

    .line 36
    .line 37
    and-long v4, v6, v10

    .line 38
    .line 39
    and-long v6, v8, v10

    .line 40
    .line 41
    const/16 v8, 0x18

    .line 42
    .line 43
    shl-long/2addr v2, v8

    .line 44
    const/16 v8, 0x10

    .line 45
    .line 46
    shl-long/2addr v4, v8

    .line 47
    or-long/2addr v2, v4

    .line 48
    const/16 v4, 0x8

    .line 49
    .line 50
    shl-long v4, v6, v4

    .line 51
    .line 52
    or-long/2addr v2, v4

    .line 53
    and-long/2addr v0, v10

    .line 54
    or-long/2addr v0, v2

    .line 55
    return-wide v0
.end method

.method public final zzv()J
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzt()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v4, v0, v2

    .line 8
    .line 9
    if-ltz v4, :cond_0

    .line 10
    .line 11
    return-wide v0

    .line 12
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 v5, 0x4

    .line 22
    new-array v5, v5, [J

    .line 23
    .line 24
    fill-array-data v5, :array_0

    .line 25
    .line 26
    .line 27
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-static {v4, v3, v0, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;J)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v2

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        0x4f70e89692dc88c5L    # 4.77997082355628E74
        -0x1c8530778d13c7f7L    # -1.6189197285649909E171
        -0x40f53b5097ca087eL    # -5.105648326784921E-5
        0x399d0e9cbe07eaa1L    # 3.581561531104765E-31
    .end array-data
.end method

.method public final zzw()J
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x6

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    .line 4
    .line 5
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 6
    .line 7
    aget-byte v2, v2, v3

    .line 8
    .line 9
    int-to-long v2, v2

    .line 10
    const/4 v4, 0x7

    .line 11
    const/4 v5, 0x7

    .line 12
    :goto_0
    const/4 v6, 0x0

    .line 13
    if-ltz v5, :cond_2

    .line 14
    .line 15
    shl-int v7, v0, v5

    .line 16
    .line 17
    int-to-long v8, v7

    .line 18
    and-long/2addr v8, v2

    .line 19
    const-wide/16 v10, 0x0

    .line 20
    .line 21
    cmp-long v12, v8, v10

    .line 22
    .line 23
    if-nez v12, :cond_1

    .line 24
    .line 25
    if-ge v5, v1, :cond_0

    .line 26
    .line 27
    add-int/lit8 v7, v7, -0x1

    .line 28
    .line 29
    int-to-long v6, v7

    .line 30
    and-long/2addr v2, v6

    .line 31
    rsub-int/lit8 v6, v5, 0x7

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    if-ne v5, v4, :cond_2

    .line 35
    .line 36
    const/4 v6, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    add-int/lit8 v5, v5, -0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    :goto_1
    if-eqz v6, :cond_5

    .line 42
    .line 43
    const/4 v5, 0x1

    .line 44
    :goto_2
    if-ge v5, v6, :cond_4

    .line 45
    .line 46
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    .line 47
    .line 48
    iget v8, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 49
    .line 50
    add-int/2addr v8, v5

    .line 51
    aget-byte v7, v7, v8

    .line 52
    .line 53
    and-int/lit16 v8, v7, 0xc0

    .line 54
    .line 55
    const/16 v9, 0x80

    .line 56
    .line 57
    if-ne v8, v9, :cond_3

    .line 58
    .line 59
    shl-long/2addr v2, v1

    .line 60
    and-int/lit8 v7, v7, 0x3f

    .line 61
    .line 62
    int-to-long v7, v7

    .line 63
    or-long/2addr v2, v7

    .line 64
    add-int/2addr v5, v0

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 67
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    new-array v4, v4, [J

    .line 76
    .line 77
    fill-array-data v4, :array_0

    .line 78
    .line 79
    .line 80
    invoke-direct {v5, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-static {v5, v1, v2, v3}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;J)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v0

    .line 91
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 92
    .line 93
    add-int/2addr v0, v6

    .line 94
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 95
    .line 96
    return-wide v2

    .line 97
    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 98
    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 105
    .line 106
    new-array v1, v1, [J

    .line 107
    .line 108
    fill-array-data v1, :array_1

    .line 109
    .line 110
    .line 111
    invoke-direct {v5, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 112
    .line 113
    .line 114
    invoke-static {v5, v4, v2, v3}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;J)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw v0

    .line 122
    nop

    .line 123
    :array_0
    .array-data 8
        0x2efa469ac7c14251L    # 2.164099038388962E-82
        0x226c402073e31899L    # 7.239659372514031E-143
        -0x3098166f3cdc85a5L    # -3.3799593737213415E74
        -0x2bee068939a4e483L    # -9.598307982154065E96
        -0x4a7e9f1997d24cbbL    # -5.806085444952484E-51
        -0xd227163ae0a93f2L
        0x140e6d400c315e15L
    .end array-data

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    :array_1
    .array-data 8
        0x700e935d76314935L    # 5.933655229042039E231
        -0x6400919fd52bb143L    # -7.942602968886012E-174
        0x3d8d6482386fadfaL    # 3.3415531113906428E-12
        0x26775afa6ff443f3L
        -0x3d88c65fa7373559L    # -1.5960169217406658E12
        -0x5ba0e4391b88efc9L
    .end array-data
.end method

.method public final zzx(C)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzf:I

    .line 2
    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 4
    .line 5
    sub-int/2addr p1, v0

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzf:I

    .line 9
    .line 10
    if-ge v0, p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    .line 13
    .line 14
    aget-byte p1, p1, v0

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    .line 22
    .line 23
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 24
    .line 25
    sub-int v2, v0, v1

    .line 26
    .line 27
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzfy;->zzA([BII)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 32
    .line 33
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzf:I

    .line 34
    .line 35
    if-ge v0, v1, :cond_1

    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 40
    .line 41
    :cond_1
    return-object p1

    .line 42
    :cond_2
    const/4 p1, 0x0

    .line 43
    return-object p1
.end method

.method public final zzy(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfp;->zzc:Lcom/google/android/gms/internal/ads/zzgaf;

    .line 3
    .line 4
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfzv;->contains(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/4 v4, 0x4

    .line 15
    new-array v5, v4, [J

    .line 16
    .line 17
    fill-array-data v5, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzek;->zze(ZLjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzf:I

    .line 35
    .line 36
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 37
    .line 38
    sub-int/2addr v1, v2

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    return-object p1

    .line 43
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfwq;->zza:Ljava/nio/charset/Charset;

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_1

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzB()Ljava/nio/charset/Charset;

    .line 52
    .line 53
    .line 54
    :cond_1
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfwq;->zzc:Ljava/nio/charset/Charset;

    .line 55
    .line 56
    invoke-virtual {p1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_2

    .line 61
    .line 62
    invoke-virtual {p1, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    :cond_2
    const/4 v2, 0x1

    .line 69
    goto :goto_0

    .line 70
    :cond_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfwq;->zzf:Ljava/nio/charset/Charset;

    .line 71
    .line 72
    invoke-virtual {p1, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    const/4 v2, 0x2

    .line 77
    if-nez v1, :cond_5

    .line 78
    .line 79
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfwq;->zze:Ljava/nio/charset/Charset;

    .line 80
    .line 81
    invoke-virtual {p1, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_5

    .line 86
    .line 87
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfwq;->zzd:Ljava/nio/charset/Charset;

    .line 88
    .line 89
    invoke-virtual {p1, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_4

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 97
    .line 98
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 103
    .line 104
    new-array v2, v4, [J

    .line 105
    .line 106
    fill-array-data v2, :array_1

    .line 107
    .line 108
    .line 109
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v0

    .line 124
    :cond_5
    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 125
    .line 126
    :goto_1
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzf:I

    .line 127
    .line 128
    add-int/lit8 v4, v2, -0x1

    .line 129
    .line 130
    sub-int v4, v3, v4

    .line 131
    .line 132
    if-ge v1, v4, :cond_b

    .line 133
    .line 134
    sget-object v3, Lcom/google/android/gms/internal/ads/zzfwq;->zzc:Ljava/nio/charset/Charset;

    .line 135
    .line 136
    invoke-virtual {p1, v3}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-nez v3, :cond_6

    .line 141
    .line 142
    sget-object v3, Lcom/google/android/gms/internal/ads/zzfwq;->zza:Ljava/nio/charset/Charset;

    .line 143
    .line 144
    invoke-virtual {p1, v3}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-eqz v3, :cond_7

    .line 149
    .line 150
    :cond_6
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    .line 151
    .line 152
    aget-byte v3, v3, v1

    .line 153
    .line 154
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfy;->zzI(I)Z

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    if-nez v3, :cond_c

    .line 159
    .line 160
    :cond_7
    sget-object v3, Lcom/google/android/gms/internal/ads/zzfwq;->zzf:Ljava/nio/charset/Charset;

    .line 161
    .line 162
    invoke-virtual {p1, v3}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    if-nez v3, :cond_8

    .line 167
    .line 168
    sget-object v3, Lcom/google/android/gms/internal/ads/zzfwq;->zzd:Ljava/nio/charset/Charset;

    .line 169
    .line 170
    invoke-virtual {p1, v3}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    if-eqz v3, :cond_9

    .line 175
    .line 176
    :cond_8
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    .line 177
    .line 178
    aget-byte v4, v3, v1

    .line 179
    .line 180
    if-nez v4, :cond_9

    .line 181
    .line 182
    add-int/lit8 v4, v1, 0x1

    .line 183
    .line 184
    aget-byte v3, v3, v4

    .line 185
    .line 186
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfy;->zzI(I)Z

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    if-nez v3, :cond_c

    .line 191
    .line 192
    :cond_9
    sget-object v3, Lcom/google/android/gms/internal/ads/zzfwq;->zze:Ljava/nio/charset/Charset;

    .line 193
    .line 194
    invoke-virtual {p1, v3}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    if-eqz v3, :cond_a

    .line 199
    .line 200
    add-int/lit8 v3, v1, 0x1

    .line 201
    .line 202
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    .line 203
    .line 204
    aget-byte v3, v4, v3

    .line 205
    .line 206
    if-nez v3, :cond_a

    .line 207
    .line 208
    aget-byte v3, v4, v1

    .line 209
    .line 210
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfy;->zzI(I)Z

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    if-eqz v3, :cond_a

    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_a
    add-int/2addr v1, v2

    .line 218
    goto :goto_1

    .line 219
    :cond_b
    move v1, v3

    .line 220
    :cond_c
    :goto_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 221
    .line 222
    sub-int/2addr v1, v0

    .line 223
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzA(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 228
    .line 229
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzf:I

    .line 230
    .line 231
    if-eq v1, v2, :cond_d

    .line 232
    .line 233
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfp;->zza:[C

    .line 234
    .line 235
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzN(Ljava/nio/charset/Charset;[C)C

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    const/16 v2, 0xd

    .line 240
    .line 241
    if-ne v1, v2, :cond_d

    .line 242
    .line 243
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfp;->zzb:[C

    .line 244
    .line 245
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzN(Ljava/nio/charset/Charset;[C)C

    .line 246
    .line 247
    .line 248
    :cond_d
    return-object v0

    .line 249
    :array_0
    .array-data 8
        -0x6e27f4f8b8fdfda5L
        -0x7ee08c3ac09faL
        0x195bb1684a5ec3edL
        0x6698c66d4a0ca7aL
    .end array-data

    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    :array_1
    .array-data 8
        -0x28ea226557e0fa25L    # -3.286552913927292E111
        0x4ecff444d4ec2f0eL    # 4.4107922512879996E71
        0x64f045256aefdcbL
        -0x3f1386478eecdd9fL    # -58317.763803069254
    .end array-data
.end method

.method public final zzz(I)Ljava/lang/String;
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    new-array v0, v0, [J

    .line 7
    .line 8
    const-wide v1, 0x3b252a60f8b7bc54L    # 8.753863067970606E-24

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    aput-wide v1, v0, v3

    .line 15
    .line 16
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 25
    .line 26
    add-int v1, v0, p1

    .line 27
    .line 28
    add-int/lit8 v1, v1, -0x1

    .line 29
    .line 30
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzf:I

    .line 31
    .line 32
    if-ge v1, v2, :cond_1

    .line 33
    .line 34
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    .line 35
    .line 36
    aget-byte v1, v2, v1

    .line 37
    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    add-int/lit8 v1, p1, -0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move v1, p1

    .line 44
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfp;->zzd:[B

    .line 45
    .line 46
    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzfy;->zzA([BII)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 51
    .line 52
    add-int/2addr v1, p1

    .line 53
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 54
    .line 55
    return-object v0
.end method
