.class public final Lcom/google/android/gms/common/internal/service/zap;
.super Lcom/google/android/gms/common/internal/GmsClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/GmsClient<",
        "Lcom/google/android/gms/common/internal/service/zai;",
        ">;"
    }
.end annotation


# instance fields
.field private final zaa:Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V
    .locals 7

    .line 1
    const/16 v3, 0x10e

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
    move-object v5, p5

    .line 8
    move-object v6, p6

    .line 9
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V

    .line 10
    .line 11
    .line 12
    iput-object p4, p0, Lcom/google/android/gms/common/internal/service/zap;->zaa:Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

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
    const/16 v1, 0xa

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
    instance-of v1, v0, Lcom/google/android/gms/common/internal/service/zai;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    move-object p1, v0

    .line 30
    check-cast p1, Lcom/google/android/gms/common/internal/service/zai;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/google/android/gms/common/internal/service/zai;

    .line 34
    .line 35
    invoke-direct {v0, p1}, Lcom/google/android/gms/common/internal/service/zai;-><init>(Landroid/os/IBinder;)V

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
        0x417b673934d0979dL    # 2.873435530092584E7
        0x24f65c3eb047120fL    # 1.260085834382142E-130
        -0x49874037eb0b0fc4L    # -2.709448542487651E-46
        0x7854b995019ba59fL    # 4.379546850880158E271
        0x29dfc78fad7de5b6L
        -0x2d0e083cd653707bL    # -3.660109921485333E91
        0x4bb9eac003589ae2L    # 6.354828042503474E56
        0x86843c579e39ac2L
        0x7f8ee36576218192L    # 2.71130983426654E306
        0x4d1443850f2acf1fL    # 2.0840057155003532E63
    .end array-data
.end method

.method public final getApiFeatures()[Lcom/google/android/gms/common/Feature;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/base/zad;->zab:[Lcom/google/android/gms/common/Feature;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGetServiceRequestExtraArgs()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/service/zap;->zaa:Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;->zaa()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getMinApkVersion()I
    .locals 1

    const v0, 0xc1fa340

    return v0
.end method

.method public final getServiceDescriptor()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v1, 0xa

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x31e3d8bce6619f51L    # 2.3004765909278088E-68
        -0x47f56aef1bab63edL    # -9.76479079738794E-39
        0x7e3cd10aa6f0a1bL
        -0x6404ae39a2e4a8a4L    # -6.9035773799736E-174
        -0x648653ef96cba460L
        -0x73a35119daa845eL    # -5.894637672359247E273
        0x743d6badb54b86f2L    # 8.425742901146218E251
        0x38fc9539344d635bL    # 3.440541933702871E-34
        -0x5ad7c5390517a29dL    # -1.092340657583276E-129
        -0x739fe288c3944704L    # -4.501597042437757E-249
    .end array-data
.end method

.method public final getStartServiceAction()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v1, 0x8

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 8
        -0x6d2f44df87920dc5L    # -4.739626490248491E-218
        0x31805fe6e4ca6d49L    # 2.965665515237506E-70
        0x28924e10c83984c7L
        0x4aef0d38402bbbd6L    # 9.294238119747161E52
        -0x694205c2d1ead3deL
        0x4f5b7391090526d2L    # 1.9400992688437566E74
        0x5b24883ec716ee9eL    # 1.1385806125968138E131
        -0x37990f995e35ea87L    # -6.244607749605822E40
    .end array-data
.end method

.method public final getUseDynamicLookup()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
