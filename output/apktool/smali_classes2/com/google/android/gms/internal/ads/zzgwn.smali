.class public final Lcom/google/android/gms/internal/ads/zzgwn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgfs;


# static fields
.field private static final zza:Ljava/lang/ThreadLocal;

.field private static final zzb:Ljava/lang/ThreadLocal;


# instance fields
.field private final zzc:[B

.field private final zzd:[B

.field private final zze:[B

.field private final zzf:Ljavax/crypto/spec/SecretKeySpec;

.field private final zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwl;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgwl;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgwn;->zza:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwm;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgwm;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgwn;->zzb:Ljava/lang/ThreadLocal;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>([BI[B)V
    .locals 4

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgmv;->zza(I)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_2

    .line 11
    .line 12
    const/16 v2, 0xc

    .line 13
    .line 14
    const/16 v3, 0x10

    .line 15
    .line 16
    if-eq p2, v2, :cond_1

    .line 17
    .line 18
    if-ne p2, v3, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    new-array p3, v0, [J

    .line 26
    .line 27
    fill-array-data p3, :array_0

    .line 28
    .line 29
    .line 30
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :cond_1
    :goto_0
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgwn;->zzg:I

    .line 42
    .line 43
    array-length p2, p1

    .line 44
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgxo;->zza(I)V

    .line 45
    .line 46
    .line 47
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    const/4 v0, 0x2

    .line 50
    new-array v0, v0, [J

    .line 51
    .line 52
    fill-array-data v0, :array_1

    .line 53
    .line 54
    .line 55
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 63
    .line 64
    invoke-direct {v0, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwn;->zzf:Ljavax/crypto/spec/SecretKeySpec;

    .line 68
    .line 69
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgwn;->zza:Ljava/lang/ThreadLocal;

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Ljavax/crypto/Cipher;

    .line 76
    .line 77
    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 78
    .line 79
    .line 80
    new-array p2, v3, [B

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgwn;->zzc([B)[B

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwn;->zzc:[B

    .line 91
    .line 92
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgwn;->zzc([B)[B

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwn;->zzd:[B

    .line 97
    .line 98
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgwn;->zze:[B

    .line 99
    .line 100
    return-void

    .line 101
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 102
    .line 103
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 104
    .line 105
    new-array p3, v0, [J

    .line 106
    .line 107
    fill-array-data p3, :array_2

    .line 108
    .line 109
    .line 110
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p1

    :array_0
    .array-data 8
        -0x660a42f8237bf025L    # -1.2789991430716048E-183
        0x2b93ea041db710dfL    # 9.104637653413007E-99
        0x5d80bee9c89238cdL    # 2.5525408019326167E142
        -0x3720d9715b782756L    # -1.0854404793979763E43
        -0x5927db565b304049L    # -1.46088771291583E-121
        0x35fcc7f07c9ff63dL    # 1.2307980261724547E-48
    .end array-data

    :array_1
    .array-data 8
        0xcfa392c5cd2e5L
        -0x235bfe682b12e93fL    # -1.8612860949459402E138
    .end array-data

    :array_2
    .array-data 8
        0x6b33e498dcb2ce71L    # 2.554679196392411E208
        0x256fb49e55ae959eL
        0x523611ef366b06c2L    # 1.0975951848821897E88
        -0x2448c5fbdc38219aL    # -6.594535535201125E133
        0x1aac50f272866dfaL
        0x325ae7843dd06acaL
    .end array-data
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzgii;)Lcom/google/android/gms/internal/ads/zzgfs;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgmv;->zza(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgii;->zza()Lcom/google/android/gms/internal/ads/zzgiq;

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwn;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgii;->zzc()Lcom/google/android/gms/internal/ads/zzgxr;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggb;->zza()Lcom/google/android/gms/internal/ads/zzghc;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgxr;->zzd(Lcom/google/android/gms/internal/ads/zzghc;)[B

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgii;->zza()Lcom/google/android/gms/internal/ads/zzgiq;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgiq;->zzb()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgii;->zzb()Lcom/google/android/gms/internal/ads/zzgxq;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxq;->zzc()[B

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/gms/internal/ads/zzgwn;-><init>([BI[B)V

    .line 42
    .line 43
    .line 44
    return-object v0

    .line 45
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 46
    .line 47
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    const/4 v1, 0x6

    .line 50
    new-array v1, v1, [J

    .line 51
    .line 52
    fill-array-data v1, :array_0

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p0

    .line 66
    nop

    .line 67
    :array_0
    .array-data 8
        0x541f1cf8d6f22c06L    # 1.6614333005037522E97
        -0xe81130a3108de6cL    # -5.034485321686334E238
        0x36a0c97a4bc18124L
        0x7ccca18f3eb463acL
        0x883a7faaff4768bL
        0x6869c3b1a38795a3L    # 9.403894299272145E194
    .end array-data
.end method

.method private static zzc([B)[B
    .locals 6

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    const/16 v3, 0xf

    .line 8
    .line 9
    if-ge v2, v3, :cond_0

    .line 10
    .line 11
    aget-byte v3, p0, v2

    .line 12
    .line 13
    add-int/2addr v3, v3

    .line 14
    add-int/lit8 v4, v2, 0x1

    .line 15
    .line 16
    aget-byte v5, p0, v4

    .line 17
    .line 18
    and-int/lit16 v5, v5, 0xff

    .line 19
    .line 20
    ushr-int/lit8 v5, v5, 0x7

    .line 21
    .line 22
    xor-int/2addr v3, v5

    .line 23
    and-int/lit16 v3, v3, 0xff

    .line 24
    .line 25
    int-to-byte v3, v3

    .line 26
    aput-byte v3, v0, v2

    .line 27
    .line 28
    move v2, v4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    aget-byte v2, p0, v3

    .line 31
    .line 32
    add-int/2addr v2, v2

    .line 33
    aget-byte p0, p0, v1

    .line 34
    .line 35
    shr-int/lit8 p0, p0, 0x7

    .line 36
    .line 37
    and-int/lit16 p0, p0, 0x87

    .line 38
    .line 39
    xor-int/2addr p0, v2

    .line 40
    int-to-byte p0, p0

    .line 41
    aput-byte p0, v0, v3

    .line 42
    .line 43
    return-object v0
.end method

.method private final zzd(Ljavax/crypto/Cipher;I[BII)[B
    .locals 6

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    const/16 v2, 0xf

    .line 6
    .line 7
    int-to-byte p2, p2

    .line 8
    aput-byte p2, v1, v2

    .line 9
    .line 10
    if-nez p5, :cond_0

    .line 11
    .line 12
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgwn;->zzc:[B

    .line 13
    .line 14
    invoke-static {v1, p2}, Lcom/google/android/gms/internal/ads/zzgwn;->zzf([B[B)[B

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_0
    invoke-virtual {p1, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const/4 v1, 0x0

    .line 28
    const/4 v2, 0x0

    .line 29
    :goto_0
    sub-int v3, p5, v2

    .line 30
    .line 31
    if-le v3, v0, :cond_2

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    :goto_1
    if-ge v3, v0, :cond_1

    .line 35
    .line 36
    add-int v4, p4, v2

    .line 37
    .line 38
    aget-byte v5, p2, v3

    .line 39
    .line 40
    add-int/2addr v4, v3

    .line 41
    aget-byte v4, p3, v4

    .line 42
    .line 43
    xor-int/2addr v4, v5

    .line 44
    int-to-byte v4, v4

    .line 45
    aput-byte v4, p2, v3

    .line 46
    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    add-int/lit8 v2, v2, 0x10

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    add-int/2addr v2, p4

    .line 58
    add-int/2addr p4, p5

    .line 59
    invoke-static {p3, v2, p4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    array-length p4, p3

    .line 64
    if-ne p4, v0, :cond_3

    .line 65
    .line 66
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzgwn;->zzc:[B

    .line 67
    .line 68
    invoke-static {p3, p4}, Lcom/google/android/gms/internal/ads/zzgwn;->zzf([B[B)[B

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    goto :goto_3

    .line 73
    :cond_3
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzgwn;->zzd:[B

    .line 74
    .line 75
    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 76
    .line 77
    .line 78
    move-result-object p4

    .line 79
    :goto_2
    array-length p5, p3

    .line 80
    if-ge v1, p5, :cond_4

    .line 81
    .line 82
    aget-byte p5, p4, v1

    .line 83
    .line 84
    aget-byte v0, p3, v1

    .line 85
    .line 86
    xor-int/2addr p5, v0

    .line 87
    int-to-byte p5, p5

    .line 88
    aput-byte p5, p4, v1

    .line 89
    .line 90
    add-int/lit8 v1, v1, 0x1

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_4
    aget-byte p3, p4, p5

    .line 94
    .line 95
    xor-int/lit16 p3, p3, 0x80

    .line 96
    .line 97
    int-to-byte p3, p3

    .line 98
    aput-byte p3, p4, p5

    .line 99
    .line 100
    move-object p3, p4

    .line 101
    :goto_3
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/zzgwn;->zzf([B[B)[B

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    return-object p1
.end method

.method private final zze([B[B)[B
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    array-length v1, p1

    .line 3
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgwn;->zzg:I

    .line 4
    .line 5
    sub-int v2, v1, v2

    .line 6
    .line 7
    add-int/lit8 v2, v2, -0x10

    .line 8
    .line 9
    if-ltz v2, :cond_3

    .line 10
    .line 11
    sget-object v3, Lcom/google/android/gms/internal/ads/zzgwn;->zza:Ljava/lang/ThreadLocal;

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    move-object v10, v3

    .line 18
    check-cast v10, Ljavax/crypto/Cipher;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgwn;->zzf:Ljavax/crypto/spec/SecretKeySpec;

    .line 21
    .line 22
    invoke-virtual {v10, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 23
    .line 24
    .line 25
    const/4 v8, 0x0

    .line 26
    iget v9, p0, Lcom/google/android/gms/internal/ads/zzgwn;->zzg:I

    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    move-object v4, p0

    .line 30
    move-object v5, v10

    .line 31
    move-object v7, p1

    .line 32
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzgwn;->zzd(Ljavax/crypto/Cipher;I[BII)[B

    .line 33
    .line 34
    .line 35
    move-result-object v11

    .line 36
    const/4 v12, 0x0

    .line 37
    if-nez p2, :cond_0

    .line 38
    .line 39
    new-array p2, v12, [B

    .line 40
    .line 41
    :cond_0
    move-object v7, p2

    .line 42
    const/4 v8, 0x0

    .line 43
    array-length v9, v7

    .line 44
    const/4 v6, 0x1

    .line 45
    move-object v4, p0

    .line 46
    move-object v5, v10

    .line 47
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzgwn;->zzd(Ljavax/crypto/Cipher;I[BII)[B

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    const/4 v5, 0x2

    .line 52
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzgwn;->zzg:I

    .line 53
    .line 54
    move-object v3, p0

    .line 55
    move-object v4, v10

    .line 56
    move-object v6, p1

    .line 57
    move v8, v2

    .line 58
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzgwn;->zzd(Ljavax/crypto/Cipher;I[BII)[B

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    add-int/lit8 v1, v1, -0x10

    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    :goto_0
    const/16 v5, 0x10

    .line 66
    .line 67
    if-ge v12, v5, :cond_1

    .line 68
    .line 69
    add-int v5, v1, v12

    .line 70
    .line 71
    aget-byte v5, p1, v5

    .line 72
    .line 73
    aget-byte v6, p2, v12

    .line 74
    .line 75
    xor-int/2addr v5, v6

    .line 76
    aget-byte v6, v11, v12

    .line 77
    .line 78
    xor-int/2addr v5, v6

    .line 79
    aget-byte v6, v3, v12

    .line 80
    .line 81
    xor-int/2addr v5, v6

    .line 82
    or-int/2addr v4, v5

    .line 83
    int-to-byte v4, v4

    .line 84
    add-int/2addr v12, v0

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    if-nez v4, :cond_2

    .line 87
    .line 88
    sget-object p2, Lcom/google/android/gms/internal/ads/zzgwn;->zzb:Ljava/lang/ThreadLocal;

    .line 89
    .line 90
    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    check-cast p2, Ljavax/crypto/Cipher;

    .line 95
    .line 96
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgwn;->zzf:Ljavax/crypto/spec/SecretKeySpec;

    .line 97
    .line 98
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    .line 99
    .line 100
    invoke-direct {v3, v11}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, v0, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 104
    .line 105
    .line 106
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgwn;->zzg:I

    .line 107
    .line 108
    invoke-virtual {p2, p1, v0, v2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    return-object p1

    .line 113
    :cond_2
    new-instance p1, Ljavax/crypto/AEADBadTagException;

    .line 114
    .line 115
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 116
    .line 117
    const/4 v0, 0x3

    .line 118
    new-array v0, v0, [J

    .line 119
    .line 120
    fill-array-data v0, :array_0

    .line 121
    .line 122
    .line 123
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-direct {p1, p2}, Ljavax/crypto/AEADBadTagException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p1

    .line 134
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 135
    .line 136
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 137
    .line 138
    const/4 v0, 0x4

    .line 139
    new-array v0, v0, [J

    .line 140
    .line 141
    fill-array-data v0, :array_1

    .line 142
    .line 143
    .line 144
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw p1

    .line 155
    :array_0
    .array-data 8
        0x4000d374186751b3L    # 2.1032487780123232
        0x641a7c3b237ee29eL    # 1.6376535721438918E174
        -0x6ddf3d773026c3f2L
    .end array-data

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    :array_1
    .array-data 8
        -0x237f3489403af88eL    # -3.90627103728353E137
        -0x850e43308b2de5bL
        0x35feaa13151df813L    # 1.3113376377937574E-48
        0x6e0a9da52b2770beL    # 1.202614320342445E222
    .end array-data
.end method

.method private static zzf([B[B)[B
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v0, :cond_0

    .line 6
    .line 7
    aget-byte v3, p0, v2

    .line 8
    .line 9
    aget-byte v4, p1, v2

    .line 10
    .line 11
    xor-int/2addr v3, v4

    .line 12
    int-to-byte v3, v3

    .line 13
    aput-byte v3, v1, v2

    .line 14
    .line 15
    add-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwn;->zze:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgwn;->zze([B[B)[B

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :cond_0
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgpm;->zzb([B[B)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwn;->zze:[B

    .line 18
    .line 19
    array-length v1, p1

    .line 20
    array-length v0, v0

    .line 21
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgwn;->zze([B[B)[B

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 31
    .line 32
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    const/4 v0, 0x7

    .line 35
    new-array v0, v0, [J

    .line 36
    .line 37
    fill-array-data v0, :array_0

    .line 38
    .line 39
    .line 40
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :array_0
    .array-data 8
        0x6d3e8dbf2ba22d1cL    # 1.685235750612954E218
        -0x55c848f940a0996bL
        -0x1e95eeb10d5de87cL    # -1.8324364727819697E161
        0x67b54f84557c9b9fL    # 3.797984623555123E191
        -0x7c16d328bb3bc5f9L    # -8.072841376956319E-290
        -0x7ea44265c3847580L    # -4.045207051200819E-302
        0x58b129acc48195d2L    # 1.7311960458848323E119
    .end array-data
.end method
