.class abstract Lcom/google/android/gms/common/zzj;
.super Lcom/google/android/gms/common/internal/zzz;
.source "SourceFile"


# instance fields
.field private final zza:I


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzz;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    const/16 v1, 0x19

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput p1, p0, Lcom/google/android/gms/common/zzj;->zza:I

    .line 20
    .line 21
    return-void
.end method

.method public static zze(Ljava/lang/String;)[B
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 17
    .line 18
    .line 19
    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return-object p0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    new-instance v0, Ljava/lang/AssertionError;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    nop

    .line 29
    :array_0
    .array-data 8
        0x47bf227b170ced94L    # 4.1385102525152598E37
        0x3100e8995fce1a3L
        0x1c4be59afc33fccfL
    .end array-data
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    instance-of v1, p1, Lcom/google/android/gms/common/internal/zzaa;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    :try_start_0
    check-cast p1, Lcom/google/android/gms/common/internal/zzaa;

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzc()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget v2, p0, Lcom/google/android/gms/common/zzj;->zza:I

    .line 16
    .line 17
    if-eq v1, v2, :cond_1

    .line 18
    .line 19
    return v0

    .line 20
    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzd()Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-nez p1, :cond_2

    .line 25
    .line 26
    return v0

    .line 27
    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, [B

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/common/zzj;->zzf()[B

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 38
    .line 39
    .line 40
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    return p1

    .line 42
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    const/4 v1, 0x4

    .line 45
    new-array v1, v1, [J

    .line 46
    .line 47
    fill-array-data v1, :array_0

    .line 48
    .line 49
    .line 50
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 57
    .line 58
    const/4 v1, 0x7

    .line 59
    new-array v1, v1, [J

    .line 60
    .line 61
    fill-array-data v1, :array_1

    .line 62
    .line 63
    .line 64
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    :cond_3
    :goto_0
    return v0

    .line 71
    :array_0
    .array-data 8
        0xe7fd6a8beb50e01L    # 7.639698483339804E-239
        -0x1a52223b8553241bL    # -6.196529543814256E181
        0x515c7960f57629ffL    # 8.643096516375868E83
        0x2d27577619253920L
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :array_1
    .array-data 8
        0x5153c6dfbb86f9e2L    # 6.003105308840966E83
        0x7138c43848cfd2d6L    # 2.519886347109871E237
        0x3e56376273ee5775L    # 2.0690584575157155E-8
        0x6adca997db766f91L    # 5.7513620529685484E206
        -0x3b5519ab079f3707L    # -6.3515201220836835E22
        -0xe9174f545ed8e41L    # -2.4861089826610346E238
        0x5d6a0d3b9b2a317aL    # 9.927591294613074E141
    .end array-data
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/zzj;->zza:I

    return v0
.end method

.method public final zzc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/zzj;->zza:I

    return v0
.end method

.method public final zzd()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/zzj;->zzf()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public abstract zzf()[B
.end method
