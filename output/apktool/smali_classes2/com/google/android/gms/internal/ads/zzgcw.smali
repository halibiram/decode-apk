.class public final Lcom/google/android/gms/internal/ads/zzgcw;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(J)B
    .locals 5

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    shr-long v0, p0, v0

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v4, v0, v2

    .line 8
    .line 9
    if-nez v4, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/4 v2, 0x3

    .line 17
    new-array v2, v2, [J

    .line 18
    .line 19
    fill-array-data v2, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzfxe;->zzg(ZLjava/lang/String;J)V

    .line 30
    .line 31
    .line 32
    long-to-int p1, p0

    .line 33
    int-to-byte p0, p1

    .line 34
    return p0

    .line 35
    :array_0
    .array-data 8
        0x71c12c70fd5ec0a6L    # 8.94639113849091E239
        0x21e968b8b852008cL    # 2.54355333577423E-145
        0x4bd579deab599883L    # 2.106365238992284E57
    .end array-data
.end method
