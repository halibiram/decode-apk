.class public final Lcom/google/android/gms/internal/ads/zzhaf;
.super Lcom/google/android/gms/internal/ads/zzhag;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v0, 0x7

    .line 4
    new-array v0, v0, [J

    .line 5
    .line 6
    fill-array-data v0, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhag;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 8
        -0x1e8a0d827bddeb35L    # -3.085583923787466E161
        0x25295e493a4eec99L
        0x1a7663919acd4b36L    # 3.372222029547311E-181
        -0x5dda40b0cca32b8eL    # -3.483192496971791E-144
        -0x5d979a2bca633b25L    # -6.252334271152859E-143
        -0x2e531151d8607295L    # -2.8102983199471798E85
        -0x2682035ac2f3ee7aL    # -1.2389385506447955E123
    .end array-data
.end method
