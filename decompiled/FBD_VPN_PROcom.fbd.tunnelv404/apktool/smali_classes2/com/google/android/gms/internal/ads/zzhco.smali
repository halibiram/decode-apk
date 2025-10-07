.class public final Lcom/google/android/gms/internal/ads/zzhco;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhbe;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v0, 0xe

    .line 4
    .line 5
    new-array v0, v0, [J

    .line 6
    .line 7
    fill-array-data v0, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :array_0
    .array-data 8
        0xd1bd07b0843e067L
        -0x56307db495465942L
        0x7b9cd47df812392eL
        -0x184f2c2fe8ffdcfaL    # -2.998983814138207E191
        0x5e105fb54123c935L    # 1.2778768018583428E145
        0x686f81b996de6886L    # 1.1499809737634604E195
        0xd1fed98935d2c12L
        -0x269963e286fc1b42L    # -4.670737369719702E122
        0x63f94cecd5658f61L    # 3.9109875317502007E173
        -0x1caba0595d7e30f5L    # -3.075573528492461E170
        0x2b0dd1d3cfcffff7L
        -0x3d0c892cfb2772d4L    # -3.4241707806126675E14
        0x6351d8402ec5ce3L
        0x6de43a45c47b435cL    # 2.2849240476240892E221
    .end array-data
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzhag;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhag;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhag;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
