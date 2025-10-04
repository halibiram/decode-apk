.class public final Lcom/google/android/gms/internal/ads/zzgmh;
.super Lcom/google/android/gms/internal/ads/zzgmi;
.source "SourceFile"


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgmi;-><init>([BI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public final zzb([II)[I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    array-length v1, p1

    .line 3
    const/4 v2, 0x3

    .line 4
    if-ne v1, v2, :cond_0

    .line 5
    .line 6
    const/16 v1, 0x10

    .line 7
    .line 8
    new-array v1, v1, [I

    .line 9
    .line 10
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgmi;->zza:[I

    .line 11
    .line 12
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzgme;->zzb([I[I)V

    .line 13
    .line 14
    .line 15
    const/16 v3, 0xc

    .line 16
    .line 17
    aput p2, v1, v3

    .line 18
    .line 19
    const/16 p2, 0xd

    .line 20
    .line 21
    invoke-static {p1, v0, v1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    .line 23
    .line 24
    return-object v1

    .line 25
    :cond_0
    mul-int/lit8 v1, v1, 0x20

    .line 26
    .line 27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const/4 v1, 0x1

    .line 34
    new-array v1, v1, [Ljava/lang/Object;

    .line 35
    .line 36
    aput-object p2, v1, v0

    .line 37
    .line 38
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    const/16 v0, 0x8

    .line 41
    .line 42
    new-array v0, v0, [J

    .line 43
    .line 44
    fill-array-data v0, :array_0

    .line 45
    .line 46
    .line 47
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    nop

    .line 63
    :array_0
    .array-data 8
        0xd06b41546f4fed1L
        0x1b3e5ca2a58c35c4L
        0x1f9333ec6b8857fcL    # 1.398644736842497E-156
        0x49496ff378b9e8bbL    # 1.134541885579015E45
        -0x1688b42a0681b4a3L    # -1.1145071355948459E200
        -0x2cf28c1aa7bd5922L    # -1.199924934476121E92
        0x67e40346a9aceedcL    # 2.8533499314928794E192
        -0x6999ca134b83842cL    # -9.067635080721349E-201
    .end array-data
.end method
