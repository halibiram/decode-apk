.class public final Lcom/google/android/gms/internal/ads/zzgxp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgfs;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgmm;

.field private final zzb:[B


# direct methods
.method private constructor <init>([B[B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgmm;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzgmm;-><init>([B)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxp;->zza:Lcom/google/android/gms/internal/ads/zzgmm;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgxp;->zzb:[B

    .line 12
    .line 13
    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzgls;)Lcom/google/android/gms/internal/ads/zzgfs;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgxp;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgls;->zzd()Lcom/google/android/gms/internal/ads/zzgxr;

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgls;->zzc()Lcom/google/android/gms/internal/ads/zzgxq;

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
    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzgxp;-><init>([B[B)V

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
    const/16 v1, 0x28

    .line 3
    .line 4
    if-lt v0, v1, :cond_0

    .line 5
    .line 6
    const/16 v1, 0x18

    .line 7
    .line 8
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    add-int/lit8 v0, v0, -0x18

    .line 13
    .line 14
    invoke-static {p1, v1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxp;->zza:Lcom/google/android/gms/internal/ads/zzgmm;

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
        0x72121808db1cad63L    # 3.0162571799105445E241
        0x27b6cdc342050a88L
        -0x435a55a57e8be77dL    # -1.503342138764841E-16
        0x317ffdd76f210d7dL    # 2.8970537768618827E-70
    .end array-data
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxp;->zzb:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgxp;->zzc([B[B)[B

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxp;->zzb:[B

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
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgxp;->zzc([B[B)[B

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
        -0x51b7f43756c0bb5bL    # -9.670181819501662E-86
        -0x5ac4263d809a33edL
        -0x7c4d8ffe3228750bL    # -7.390381861652833E-291
        0x6d317ac29398501dL    # 9.641101748930757E217
        -0x7a5c71de091e486fL    # -1.683280346317827E-281
        -0x39f3f328dfba3cb9L    # -2.7779530524638734E29
        -0x73887a21bbb918b2L
    .end array-data
.end method
