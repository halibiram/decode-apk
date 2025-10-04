.class final Lcom/google/android/gms/ads/internal/client/zzee;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/initialization/AdapterStatus;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/zzej;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v1, 0x10

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 8
        -0x23486c3177de6a14L    # -4.387058088947287E138
        0x438581405a025612L    # 1.9369881276532384E17
        -0x29781f938bcddbe3L    # -7.009417588525863E108
        0x41058cf06cd5ac2cL    # 176542.05314192304
        -0x2a3c8d95f2066befL    # -1.393797149809029E105
        -0x28d36058203c1cb6L    # -8.604655789944886E111
        -0x696b24a6af851adbL    # -6.811946398915397E-200
        0x3c60c5a5e2ce5917L    # 7.273722626332893E-18
        0x3c3eabd19d1dc1efL    # 1.6626873056413547E-18
        -0x69dc332e7042b8b9L    # -5.052190315335167E-202
        0x72f928dbfc3dcc4fL    # 6.871638862436405E245
        -0x5467e68a8cc0b821L    # -1.1018146262120437E-98
        -0x55c08f970fcba081L    # -3.426980619497722E-105
        0x20c52ec6f24ba8ceL    # 8.088983915896267E-151
        -0x396a5fb03fb809cfL    # -1.0965794736208252E32
        0x1edc8c7deae574eL
    .end array-data
.end method

.method public final getInitializationState()Lcom/google/android/gms/ads/initialization/AdapterStatus$State;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/initialization/AdapterStatus$State;->READY:Lcom/google/android/gms/ads/initialization/AdapterStatus$State;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLatency()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
