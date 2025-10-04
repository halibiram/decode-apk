.class public final Lcom/google/android/gms/internal/ads/zzgwo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgfs;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgmg;

.field private final zzb:[B


# direct methods
.method private constructor <init>([BLcom/google/android/gms/internal/ads/zzgxq;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgmv;->zza(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgmg;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgmg;-><init>([BZ)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwo;->zza:Lcom/google/android/gms/internal/ads/zzgmg;

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgxq;->zzc()[B

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwo;->zzb:[B

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 27
    .line 28
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/16 v0, 0xb

    .line 31
    .line 32
    new-array v0, v0, [J

    .line 33
    .line 34
    fill-array-data v0, :array_0

    .line 35
    .line 36
    .line 37
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    nop

    .line 49
    :array_0
    .array-data 8
        -0x56017c833172fdabL
        0x12f68f362fd7757dL
        0x570f5b2fb6cd6ce0L    # 2.3565236300697898E111
        -0x60896e34b77ee4d0L
        -0x551ee991418a5da7L    # -3.814637221215922E-102
        0x33eb4be2dbc72debL    # 1.3589288241019963E-58
        0x158a3547a6a60c25L
        -0x777eabb9962ff6a4L    # -1.049668979758369E-267
        -0x7764bc5292cd3edcL
        0x29f05d27f6784196L
        -0xc92c3fcd8f55636L
    .end array-data
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzgiz;)Lcom/google/android/gms/internal/ads/zzgfs;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgiz;->zzb()Lcom/google/android/gms/internal/ads/zzgji;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgiz;->zzb()Lcom/google/android/gms/internal/ads/zzgji;

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwo;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgiz;->zzd()Lcom/google/android/gms/internal/ads/zzgxr;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggb;->zza()Lcom/google/android/gms/internal/ads/zzghc;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgxr;->zzd(Lcom/google/android/gms/internal/ads/zzghc;)[B

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgiz;->zzc()Lcom/google/android/gms/internal/ads/zzgxq;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzgwo;-><init>([BLcom/google/android/gms/internal/ads/zzgxq;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwo;->zzb:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/16 v2, 0xc

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgwo;->zza:Lcom/google/android/gms/internal/ads/zzgmg;

    .line 13
    .line 14
    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgmg;->zza([B[B[B)[B

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_0
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgpm;->zzb([B[B)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwo;->zzb:[B

    .line 26
    .line 27
    array-length v1, p1

    .line 28
    array-length v0, v0

    .line 29
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgwo;->zza:Lcom/google/android/gms/internal/ads/zzgmg;

    .line 38
    .line 39
    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgmg;->zza([B[B[B)[B

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1

    .line 44
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 45
    .line 46
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    const/4 v0, 0x7

    .line 49
    new-array v0, v0, [J

    .line 50
    .line 51
    fill-array-data v0, :array_0

    .line 52
    .line 53
    .line 54
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :array_0
    .array-data 8
        -0x59edc1a5fc741c8aL
        0x53dc822e54b22a86L    # 9.514660619373074E95
        -0x38567684524341b6L    # -1.697227653275438E37
        0x90657256e1c60c7L
        0x67183581b1321c81L    # 4.213415963298096E188
        0x10430b19b895565fL
        -0x50c1317e9fd8757fL    # -4.059624058948592E-81
    .end array-data
.end method
