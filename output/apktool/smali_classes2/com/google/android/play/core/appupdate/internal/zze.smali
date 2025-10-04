.class public abstract Lcom/google/android/play/core/appupdate/internal/zze;
.super Lcom/google/android/play/core/appupdate/internal/zzb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/appupdate/internal/zzf;


# direct methods
.method public static zzb(Landroid/os/IBinder;)Lcom/google/android/play/core/appupdate/internal/zzf;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

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
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    instance-of v1, v0, Lcom/google/android/play/core/appupdate/internal/zzf;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    check-cast v0, Lcom/google/android/play/core/appupdate/internal/zzf;

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/google/android/play/core/appupdate/internal/zzd;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/google/android/play/core/appupdate/internal/zzd;-><init>(Landroid/os/IBinder;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        0x556429085f076e82L    # 2.25769450275298E103
        0x376903c34b3419a1L    # 8.973583070396857E-42
        -0x96cca92820d84dfL
        0x1f9bc39997bdbe92L
        0x1a85f8e69f0ae6edL    # 6.618925943410343E-181
        -0x3857a3d5bfa385ecL    # -1.6190010085124572E37
        0x686b97b40b676cf0L    # 1.0071164638200361E195
        -0x7df5ef046c86547cL    # -7.784564998230668E-299
        -0x1979bf47d40a48a8L    # -7.564360296975172E185
        -0x372506f1c2771205L    # -9.398674689153568E42
    .end array-data
.end method
