.class public final Lcom/google/android/gms/internal/ads/zzgwp;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final zza(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V
    .locals 3

    .line 1
    if-ltz p3, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lt v0, p3, :cond_1

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-lt v0, p3, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lt v0, p3, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    :goto_0
    if-ge v0, p3, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    xor-int/2addr v1, v2

    .line 33
    int-to-byte v1, v1

    .line 34
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 35
    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-void

    .line 41
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    const/16 p2, 0xc

    .line 46
    .line 47
    new-array p2, p2, [J

    .line 48
    .line 49
    fill-array-data p2, :array_0

    .line 50
    .line 51
    .line 52
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p0

    .line 63
    :array_0
    .array-data 8
        -0x5860d61066d0165bL    # -7.723822546088274E-118
        -0x61335644f2fabb67L
        -0x4ad33996ea4cde6aL
        -0x49a6bb18e69565abL    # -6.915941973587733E-47
        0x3003e033e8cd5910L    # 2.145633631499166E-77
        0x6f5dc59a2e2c85b2L    # 2.8211296586817957E228
        0x402562cdd6919aebL    # 10.692976670526567
        0x2485fb1c48cfd912L    # 9.677371158703145E-133
        0x5c06b58821984422L    # 2.0632324267537428E135
        -0x26cac1b03a3820bfL    # -5.485577928190732E121
        0x15c543ade41f79eeL    # 8.477845696390165E-204
        0x2d15ac9444fdc27fL    # 1.6625057240629028E-91
    .end array-data
.end method

.method public static varargs zzb([[B)[B
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    array-length v3, p0

    .line 5
    if-ge v1, v3, :cond_1

    .line 6
    .line 7
    aget-object v3, p0, v1

    .line 8
    .line 9
    array-length v3, v3

    .line 10
    const v4, 0x7fffffff

    .line 11
    .line 12
    .line 13
    sub-int/2addr v4, v3

    .line 14
    if-gt v2, v4, :cond_0

    .line 15
    .line 16
    add-int/2addr v2, v3

    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 21
    .line 22
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    new-array v1, v1, [J

    .line 26
    .line 27
    fill-array-data v1, :array_0

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p0

    .line 41
    :cond_1
    new-array v1, v2, [B

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    :goto_1
    if-ge v2, v3, :cond_2

    .line 46
    .line 47
    aget-object v5, p0, v2

    .line 48
    .line 49
    array-length v6, v5

    .line 50
    invoke-static {v5, v0, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    .line 52
    .line 53
    add-int/2addr v4, v6

    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    return-object v1

    .line 58
    nop

    .line 59
    :array_0
    .array-data 8
        -0x50c180f083b62461L    # -4.01872934779818E-81
        0x730bc97f52de597aL    # 1.5178528976924414E246
        -0x1c00339ef1363a8eL    # -4.915437594814449E173
        0x748ebae3ba0b7ee1L    # 2.8162386772062503E253
    .end array-data
.end method

.method public static final zzc([B[B)[B
    .locals 2

    .line 1
    array-length v0, p0

    .line 2
    array-length v1, p1

    .line 3
    if-ne v0, v1, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {p0, v1, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzgwp;->zzd([BI[BII)[B

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v0, 0x6

    .line 16
    new-array v0, v0, [J

    .line 17
    .line 18
    fill-array-data v0, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    nop

    .line 33
    :array_0
    .array-data 8
        0x27a6eec327e2d663L
        0x22ef5e7370164e74L
        -0xf82e73dc1f09279L    # -7.227707962032506E233
        -0x3b7a9269cd133954L    # -1.2648901777186181E22
        0x53116303fd90bc25L    # 1.416699825574543E92
        -0x31e9c409c45f15b2L    # -1.4985838655886506E68
    .end array-data
.end method

.method public static final zzd([BI[BII)[B
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    sub-int/2addr v0, p4

    .line 3
    if-lt v0, p1, :cond_1

    .line 4
    .line 5
    array-length v0, p2

    .line 6
    sub-int/2addr v0, p4

    .line 7
    if-lt v0, p3, :cond_1

    .line 8
    .line 9
    new-array v0, p4, [B

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, p4, :cond_0

    .line 13
    .line 14
    add-int v2, v1, p1

    .line 15
    .line 16
    aget-byte v2, p0, v2

    .line 17
    .line 18
    add-int v3, v1, p3

    .line 19
    .line 20
    aget-byte v3, p2, v3

    .line 21
    .line 22
    xor-int/2addr v2, v3

    .line 23
    int-to-byte v2, v2

    .line 24
    aput-byte v2, v0, v1

    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-object v0

    .line 30
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    const/16 p2, 0xc

    .line 35
    .line 36
    new-array p2, p2, [J

    .line 37
    .line 38
    fill-array-data p2, :array_0

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    nop

    .line 53
    :array_0
    .array-data 8
        -0x36e3303acc3cf1d3L    # -1.606300532941071E44
        -0x159f3fd0a377444eL    # -2.62591474468457E204
        0x45906e0a2d90cf40L    # 1.271197515375518E27
        -0x75f3611a9f88cf1eL
        0x77cdeda79f669822L
        -0x6b9059c7259f10e8L
        0x525c651c13d9c6e2L    # 5.64858929817139E88
        0x33341287afa04670L    # 4.879325995263121E-62
        -0x432b8fb293adab62L
        0x602a9a813315510cL    # 1.7834753658611694E155
        0x2637c7c3b1bc56c7L
        -0x20bbc4dbe20b273dL    # -8.278003796441187E150
    .end array-data
.end method
