.class public final Lcom/google/android/gms/common/internal/service/zah;
.super Lcom/google/android/gms/common/internal/GmsClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/GmsClient<",
        "Lcom/google/android/gms/common/internal/service/zal;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    .line 1
    const/16 v3, 0x27

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v4, p3

    .line 7
    move-object v5, p4

    .line 8
    move-object v6, p5

    .line 9
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/16 v1, 0x9

    .line 8
    .line 9
    new-array v1, v1, [J

    .line 10
    .line 11
    fill-array-data v1, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    instance-of v1, v0, Lcom/google/android/gms/common/internal/service/zal;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    move-object p1, v0

    .line 30
    check-cast p1, Lcom/google/android/gms/common/internal/service/zal;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/google/android/gms/common/internal/service/zal;

    .line 34
    .line 35
    invoke-direct {v0, p1}, Lcom/google/android/gms/common/internal/service/zal;-><init>(Landroid/os/IBinder;)V

    .line 36
    .line 37
    .line 38
    move-object p1, v0

    .line 39
    :goto_0
    return-object p1

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        -0x133a099e31f32657L    # -9.463837976045912E215
        0x73f00612330c9346L    # 2.8681352503595437E250
        0x2ff8413ac015b96eL    # 1.3091785279047232E-77
        -0x1c683101fc28eb96L    # -5.75056792908635E171
        0x70d6b502ce52c11eL    # 3.60992187491839E235
        -0x5a90047c7c7abf62L    # -2.306980565223238E-128
        0x38e34fa636bb91bL
        -0x1a1bfe72f35f4720L    # -6.641236094738112E182
        -0x39c639a740d49cdL
    .end array-data
.end method

.method public final getServiceDescriptor()Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v1, 0x9

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x2c6a971e0f2360d7L    # 9.958975206800183E-95
        0x3e4f28b870c4642cL    # 1.4509570011232806E-8
        -0xc74bfe28e269911L
        -0x1f1dd5867175ddbaL    # -4.988213865614699E158
        -0xa3c1ed1cc0ea17bL
        0x4366d1e64ca92955L    # 5.1385892371778216E16
        0x73a909df80a70aa7L    # 1.4005412185990712E249
        -0x155a2a116a916536L    # -5.476884884808187E205
        -0x3cbca8724eac8a8bL    # -1.0888581269089002E16
    .end array-data
.end method

.method public final getStartServiceAction()Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x7

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 8
        0x1fa8a9a3bf5cbf50L
        0x16ad5d1942a28cbdL    # 1.918064331279749E-199
        -0x739e7420569e8988L    # -4.901411480212146E-249
        0x6b0879ea28f69e3L
        0x37b6b6f13e8641fbL    # 2.6075103358790217E-40
        0x1abb8bb973b80fb7L    # 6.638316706158104E-180
        -0x196f67a33ae7cfc4L    # -1.1282333342792552E186
    .end array-data
.end method
