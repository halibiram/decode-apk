.class public final Lcom/google/android/gms/internal/ads/zzfrb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation


# direct methods
.method public static zza(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfqr;)Lcom/google/android/gms/internal/ads/zzfsk;
    .locals 8

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfra;

    .line 2
    .line 3
    new-instance p5, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [J

    .line 7
    .line 8
    fill-array-data v0, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p5, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    const/4 v2, 0x1

    .line 19
    move-object v0, p1

    .line 20
    move-object v1, p0

    .line 21
    move v3, p2

    .line 22
    move-object v4, p3

    .line 23
    move-object v5, p4

    .line 24
    move-object v7, p6

    .line 25
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfra;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfqr;)V

    .line 26
    .line 27
    .line 28
    const p0, 0xc350

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzfra;->zzb(I)Lcom/google/android/gms/internal/ads/zzfsk;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    nop

    .line 37
    :array_0
    .array-data 8
        -0x2528a1820f11793L
        0x4974cdd294a36e40L    # 7.42311327132801E45
    .end array-data
.end method
