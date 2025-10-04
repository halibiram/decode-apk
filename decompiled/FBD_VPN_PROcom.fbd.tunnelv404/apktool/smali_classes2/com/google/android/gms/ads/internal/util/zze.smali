.class public final Lcom/google/android/gms/ads/internal/util/zze;
.super Lcom/google/android/gms/internal/ads/zzcec;
.source "SourceFile"


# direct methods
.method public static zza(Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zze;->zzc()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_3

    .line 7
    .line 8
    if-eqz p0, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/16 v2, 0xfa0

    .line 15
    .line 16
    if-gt v1, v2, :cond_0

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcec;->zza:Lcom/google/android/gms/internal/ads/zzfxr;

    .line 20
    .line 21
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzfxr;->zzd(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const/4 v1, 0x1

    .line 30
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/lang/String;

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array v3, v0, [J

    .line 48
    .line 49
    fill-array-data v3, :array_0

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    :goto_1
    const/4 v1, 0x0

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 61
    .line 62
    new-array v3, v0, [J

    .line 63
    .line 64
    fill-array-data v3, :array_1

    .line 65
    .line 66
    .line 67
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    :goto_2
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    new-array v0, v0, [J

    .line 77
    .line 78
    fill-array-data v0, :array_2

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    :cond_3
    return-void

    .line 88
    nop

    .line 89
    :array_0
    .array-data 8
        -0x63bd2770f42235fL    # -3.576855069243808E278
        -0x796b3086f3c9a7f5L    # -5.869826668105726E-277
    .end array-data

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    :array_1
    .array-data 8
        -0x63dbf449378d477cL    # -4.052424950158963E-173
        -0x67fce7e2635aed8aL    # -5.231356263545343E-193
    .end array-data

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    :array_2
    .array-data 8
        -0x21d56268c7ec261eL    # -4.1543587672612866E145
        -0x62b2b86422433745L
    .end array-data
.end method

.method public static zzb(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zze;->zzc()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    new-array p1, p1, [J

    .line 11
    .line 12
    fill-array-data p1, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        -0x423480778a692755L    # -5.0018890677488514E-11
        -0x179e96066945e9bcL    # -6.35601437885217E194
    .end array-data
.end method

.method public static zzc()Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzm(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbid;->zza:Lcom/google/android/gms/internal/ads/zzbhm;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhm;->zze()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    return v0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    return v0
.end method
