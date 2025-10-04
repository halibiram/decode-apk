.class public final Lcom/google/android/gms/internal/ads/zzfwg;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza([B)Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 17
    .line 18
    .line 19
    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const/16 v0, 0xb

    .line 28
    .line 29
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :catch_0
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    new-array v0, v0, [J

    .line 38
    .line 39
    const-wide v1, 0x3d93b2aa97abd95dL    # 4.478787453639078E-12

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    aput-wide v1, v0, v3

    .line 46
    .line 47
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :array_0
    .array-data 8
        0x3e43c7684dd81f4cL    # 9.210284475209206E-9
        -0x21a7470114a410b0L    # -3.087114593345291E146
    .end array-data
.end method
