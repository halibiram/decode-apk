.class public abstract Lcom/google/android/gms/internal/ads/zzgza;
.super Lcom/google/android/gms/internal/ads/zzgya;
.source "SourceFile"


# static fields
.field private static final zza:Ljava/util/logging/Logger;

.field private static final zzb:Z

.field public static final synthetic zzf:I


# instance fields
.field zze:Lcom/google/android/gms/internal/ads/zzgzb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzgza;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgza;->zza:Ljava/util/logging/Logger;

    .line 12
    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcz;->zzA()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sput-boolean v0, Lcom/google/android/gms/internal/ads/zzgza;->zzb:Z

    .line 18
    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgya;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgyz;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgya;-><init>()V

    return-void
.end method

.method public static zzA(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    mul-int/lit8 p0, p0, 0x9

    .line 6
    .line 7
    rsub-int p0, p0, 0x280

    .line 8
    .line 9
    ushr-int/lit8 p0, p0, 0x6

    .line 10
    .line 11
    return p0
.end method

.method public static zzB([BII)Lcom/google/android/gms/internal/ads/zzgza;
    .locals 1

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgyw;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p1, p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzgyw;-><init>([BII)V

    .line 5
    .line 6
    .line 7
    return-object p1
.end method

.method public static bridge synthetic zzE()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzgza;->zzb:Z

    return v0
.end method

.method public static zzw(ILcom/google/android/gms/internal/ads/zzhbe;Lcom/google/android/gms/internal/ads/zzhby;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    shl-int/lit8 p0, p0, 0x3

    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgza;->zzz(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    add-int/2addr p0, p0

    .line 8
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgxt;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgxt;->zzat(Lcom/google/android/gms/internal/ads/zzhby;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    add-int/2addr p1, p0

    .line 15
    return p1
.end method

.method public static zzx(Lcom/google/android/gms/internal/ads/zzhbe;Lcom/google/android/gms/internal/ads/zzhby;)I
    .locals 0

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/ads/zzgxt;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgxt;->zzat(Lcom/google/android/gms/internal/ads/zzhby;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgza;->zzz(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    add-int/2addr p1, p0

    .line 12
    return p1
.end method

.method public static zzy(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhde;->zze(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzhdd; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    goto :goto_0

    .line 6
    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhae;->zzb:Ljava/nio/charset/Charset;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    array-length p0, p0

    .line 13
    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgza;->zzz(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/2addr v0, p0

    .line 18
    return v0
.end method

.method public static zzz(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    mul-int/lit8 p0, p0, 0x9

    .line 6
    .line 7
    rsub-int p0, p0, 0x160

    .line 8
    .line 9
    ushr-int/lit8 p0, p0, 0x6

    .line 10
    .line 11
    return p0
.end method


# virtual methods
.method public final zzC()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgza;->zzb()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v2, 0x6

    .line 13
    new-array v2, v2, [J

    .line 14
    .line 15
    fill-array-data v2, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0

    .line 29
    :array_0
    .array-data 8
        0x39024452ace601d2L    # 4.397592968954715E-34
        -0x18fa307f81e06df0L    # -1.897990403239511E188
        -0x1a27807d6bd13ddbL    # -4.066207607929148E182
        -0x68eb864c09a90b78L
        -0x3f7e7453c8d04307L    # -561.4590896348519
        -0x3a3915068d36615eL    # -1.4185473689141403E28
    .end array-data
.end method

.method public final zzD(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhdd;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgza;->zza:Ljava/util/logging/Logger;

    .line 2
    .line 3
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 4
    .line 5
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v3, 0x6

    .line 8
    new-array v3, v3, [J

    .line 9
    .line 10
    fill-array-data v3, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 v4, 0x5

    .line 23
    new-array v4, v4, [J

    .line 24
    .line 25
    fill-array-data v4, :array_1

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    const/16 v5, 0xc

    .line 38
    .line 39
    new-array v5, v5, [J

    .line 40
    .line 41
    fill-array-data v5, :array_2

    .line 42
    .line 43
    .line 44
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    move-object v5, p2

    .line 52
    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    sget-object p2, Lcom/google/android/gms/internal/ads/zzhae;->zzb:Ljava/nio/charset/Charset;

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    :try_start_0
    array-length p2, p1

    .line 62
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzgza;->zzs(I)V

    .line 63
    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzgza;->zza([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :catch_0
    move-exception p1

    .line 71
    new-instance p2, Lcom/google/android/gms/internal/ads/zzgyx;

    .line 72
    .line 73
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzgyx;-><init>(Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    throw p2

    .line 77
    :array_0
    .array-data 8
        -0x2ab849dcf88cfa30L    # -6.638455593118519E102
        0x48ca488de70b0fe4L    # 4.579216770872839E42
        -0x4ad39b94ecb7a6f2L
        0x4be6882b16048203L    # 4.419846102967584E57
        -0x71d48b7c2165d62L    # -2.024966544475178E274
        0x4ab061d2892ece3dL    # 6.129278312669786E51
    .end array-data

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
    :array_1
    .array-data 8
        -0x5d21c91daaab021fL    # -9.910963666538773E-141
        0xe15da5578f3b62dL    # 8.193168643507707E-241
        -0x5575148551e34cdeL    # -9.389965361207797E-104
        0xb33ea31a7ce140cL
        0x10bf7b5ba615eefaL    # 5.19115238848714E-228
    .end array-data

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
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    :array_2
    .array-data 8
        -0x6c60077f1ab834eaL    # -3.709671634528936E-214
        -0x4c7047b8ee57d7f7L    # -2.467412678088141E-60
        0x32fb4498d18e8949L    # 4.142795701350997E-63
        -0x4db0a2af44550736L    # -2.326748900969983E-66
        -0x3dbb979af145ec0cL    # -1.7530159858015588E11
        0x2e2c735fae179b84L    # 2.860380998588889E-86
        0xa1d021ec04f8ae1L
        -0x75c60cd3b0561642L
        0x8132e716257e5e0L
        -0x26b16934abcd7b65L    # -1.5797708989392546E122
        0x200feb2f3f09c82fL
        0x5b2da2ff07313de1L    # 1.6434558158472333E131
    .end array-data
.end method

.method public abstract zzH()V
.end method

.method public abstract zzI(B)V
.end method

.method public abstract zzJ(IZ)V
.end method

.method public abstract zzK(ILcom/google/android/gms/internal/ads/zzgyl;)V
.end method

.method public abstract zza([BII)V
.end method

.method public abstract zzb()I
.end method

.method public abstract zzh(II)V
.end method

.method public abstract zzi(I)V
.end method

.method public abstract zzj(IJ)V
.end method

.method public abstract zzk(J)V
.end method

.method public abstract zzl(II)V
.end method

.method public abstract zzm(I)V
.end method

.method public abstract zzn(ILcom/google/android/gms/internal/ads/zzhbe;Lcom/google/android/gms/internal/ads/zzhby;)V
.end method

.method public abstract zzo(ILjava/lang/String;)V
.end method

.method public abstract zzq(II)V
.end method

.method public abstract zzr(II)V
.end method

.method public abstract zzs(I)V
.end method

.method public abstract zzt(IJ)V
.end method

.method public abstract zzu(J)V
.end method
