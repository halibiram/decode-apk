.class final Lcom/google/android/gms/internal/ads/zzgcg;
.super Ljava/io/OutputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x5

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 8
        0x48a310c8c370ceccL    # 8.30422405479619E41
        -0x68c871c5e741c58eL    # -7.878010144139928E-197
        -0x4f99cc8a05d5a27eL
        -0x6ce134793026c306L
        0x44c9dc263ec5944fL    # 2.4424040325044E23
    .end array-data
.end method

.method public final write(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final write([B)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final write([BII)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/2addr p3, p2

    array-length p1, p1

    .line 4
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzfxe;->zzh(III)V

    return-void
.end method
