.class public final Lcom/google/android/gms/internal/ads/zzgct;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(J)C
    .locals 4

    .line 1
    long-to-int v0, p0

    .line 2
    int-to-char v0, v0

    .line 3
    int-to-long v1, v0

    .line 4
    cmp-long v3, v1, p0

    .line 5
    .line 6
    if-nez v3, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v3, 0x3

    .line 14
    new-array v3, v3, [J

    .line 15
    .line 16
    fill-array-data v3, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v1, v2, p0, p1}, Lcom/google/android/gms/internal/ads/zzfxe;->zzg(ZLjava/lang/String;J)V

    .line 27
    .line 28
    .line 29
    return v0

    .line 30
    nop

    .line 31
    :array_0
    .array-data 8
        -0x5ca08494c2853fb5L
        -0x7d3275acb80b5a32L
        0x61c09e1d8511ef0cL    # 7.476132054513666E162
    .end array-data
.end method

.method public static zzb(BB)C
    .locals 0

    shl-int/lit8 p0, p0, 0x8

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    int-to-char p0, p0

    return p0
.end method
