.class public final Lcom/google/android/gms/internal/ads/zzgwq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgfs;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgmj;

.field private final zzb:[B


# direct methods
.method private constructor <init>([B[B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgmj;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzgmj;-><init>([B)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwq;->zza:Lcom/google/android/gms/internal/ads/zzgmj;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgwq;->zzb:[B

    .line 12
    .line 13
    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzgkb;)Lcom/google/android/gms/internal/ads/zzgfs;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwq;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkb;->zzd()Lcom/google/android/gms/internal/ads/zzgxr;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggb;->zza()Lcom/google/android/gms/internal/ads/zzghc;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgxr;->zzd(Lcom/google/android/gms/internal/ads/zzghc;)[B

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkb;->zzc()Lcom/google/android/gms/internal/ads/zzgxq;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxq;->zzc()[B

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzgwq;-><init>([B[B)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method private final zzc([B[B)[B
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    const/16 v1, 0x1c

    .line 3
    .line 4
    if-lt v0, v1, :cond_0

    .line 5
    .line 6
    const/16 v1, 0xc

    .line 7
    .line 8
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    add-int/lit8 v0, v0, -0xc

    .line 13
    .line 14
    invoke-static {p1, v1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwq;->zza:Lcom/google/android/gms/internal/ads/zzgmj;

    .line 19
    .line 20
    invoke-virtual {v0, p1, v2, p2}, Lcom/google/android/gms/internal/ads/zzgmk;->zzb(Ljava/nio/ByteBuffer;[B[B)[B

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 26
    .line 27
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/4 v0, 0x4

    .line 30
    new-array v0, v0, [J

    .line 31
    .line 32
    fill-array-data v0, :array_0

    .line 33
    .line 34
    .line 35
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    nop

    .line 47
    :array_0
    .array-data 8
        -0x606e85dc55a49e50L    # -1.272951336438277E-156
        -0x6d1bf66a42006340L
        -0x1a3945275b77efddL    # -1.8863588399283563E182
        0x764aba432b7f85f9L    # 6.575155197895396E261
    .end array-data
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwq;->zzb:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgwq;->zzc([B[B)[B

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwq;->zzb:[B

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
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgwq;->zzc([B[B)[B

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
        -0x64b2a2954e3a472dL
        0x7327ea9d674e8c5dL    # 5.2256875823815075E246
        -0x7c7e041dbfb05bc5L    # -9.010701399131917E-292
        -0x3a4cceeeb8d6bc3bL    # -5.939534144689148E27
        -0x5402548b66e951b6L    # -8.681509822908074E-97
        0x655d56fe9a396271L    # 1.902282030317471E180
        -0x2692f87b16fc668fL    # -5.996887343087077E122
    .end array-data
.end method
