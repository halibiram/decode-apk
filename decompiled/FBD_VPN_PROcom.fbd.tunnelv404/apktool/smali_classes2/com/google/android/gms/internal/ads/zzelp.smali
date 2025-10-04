.class public final Lcom/google/android/gms/internal/ads/zzelp;
.super Lcom/google/android/gms/internal/ads/zzeml;
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
    const/4 v0, 0x3

    .line 17
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzeml;-><init>(ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :array_0
    .array-data 8
        -0x5f80dec9df23d72fL
        -0xab2b47e835e56dL
        -0x28afc1e31d87819bL    # -3.906202018721111E112
        0x3335c453e59fb42dL    # 5.291241539087597E-62
        0x597a490a59c3971cL    # 1.0860039897290825E123
        0x7e25464be827cc4dL    # 4.4523266517622195E299
        -0x3c127a0805fa1d0L
    .end array-data
.end method
