.class public final Lcom/google/android/gms/internal/ads/zzfry;
.super Lcom/google/android/gms/ads/internal/zzc;
.source "SourceFile"


# instance fields
.field private final zze:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;I)V
    .locals 7

    .line 1
    const/16 v3, 0x74

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzc;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzfry;->zze:I

    .line 13
    .line 14
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
    const/16 v1, 0x8

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
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzfsd;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    move-object p1, v0

    .line 30
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfsd;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsd;

    .line 34
    .line 35
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzfsd;-><init>(Landroid/os/IBinder;)V

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
        0x66f072cf9a8948ccL    # 7.156869366600438E187
        0x5a8b7bfca1802477L    # 1.4883779508642667E128
        -0x410ba2be3fab0e6dL    # -1.9420895133169502E-5
        0x508c0b147f58d44aL    # 1.0391008498678985E80
        -0x757b85487434f5f0L    # -5.327827715071419E-258
        -0x3f20f9dc9ae8b8adL    # -31768.553045100834
        0x47cccc0f19f5d907L    # 7.655583746810613E37
        -0x2ae8628595b7dac0L    # -8.264360337575623E101
    .end array-data
.end method

.method public final getMinApkVersion()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfry;->zze:I

    return v0
.end method

.method public final getServiceDescriptor()Ljava/lang/String;
    .locals 2

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
        -0x428f93c44e8221bcL    # -9.335272948125517E-13
        0x775d2273ee24892cL    # 9.394311553762568E266
        0x51c0bffda7561320L    # 6.507926878533605E85
        0x76427d2a32e2e792L    # 4.54839227929972E261
        -0x3ee4276dc3f4e1c0L    # -456228.55863616243
        -0x4d93550881ce00d3L    # -8.506793962661597E-66
        0x5a893862c8215034L    # 1.3657703723818321E128
        -0x6248255c26ba42e0L
    .end array-data
.end method

.method public final getStartServiceAction()Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x6

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 8
        -0x18fb4b4718824cf2L    # -1.801865595830625E188
        -0x23af36449b94efa4L    # -4.880871945279397E136
        -0x7f8921dd0f637d8dL
        -0x6ad24731c43b4725L
        -0x5b349ee0f94d4431L    # -1.92865926419888E-131
        -0x55952ed42b9bac6dL
    .end array-data
.end method

.method public final zzp()Lcom/google/android/gms/internal/ads/zzfsd;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfsd;

    .line 6
    .line 7
    return-object v0
.end method
