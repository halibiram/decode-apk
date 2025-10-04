.class public abstract Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;
.super Lcom/google/android/gms/internal/common/zzb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/dynamic/IObjectWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/dynamic/IObjectWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/common/zzb;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 8
        0x6613e77e7a644604L    # 5.285957978141625E183
        -0x68032d8e9b18f148L
        -0x4da59740643deffaL    # -3.918282782776105E-66
        -0x7e2f2d38a9457c78L    # -6.280249754643175E-300
        -0x19c855c04e5d2d84L
        0x59c60d39aead8c95L    # 2.9154764797071507E124
        0x1c0eecaa1e6f6937L
    .end array-data
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 2
    .param p0    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

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
    const/4 v1, 0x7

    .line 8
    new-array v1, v1, [J

    .line 9
    .line 10
    fill-array-data v1, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    instance-of v1, v0, Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    check-cast v0, Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_1
    new-instance v0, Lcom/google/android/gms/dynamic/zzb;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/google/android/gms/dynamic/zzb;-><init>(Landroid/os/IBinder;)V

    .line 34
    .line 35
    .line 36
    return-object v0

    .line 37
    :array_0
    .array-data 8
        0x22e1f9a1de165bfbL
        -0x37a21bc66d31c632L    # -4.0686206248951224E40
        0x624240f6ca4a85e2L    # 2.1023262309955327E165
        0x708698ecd69124d4L    # 1.1226501195597152E234
        0x261b9a5c2ac6df22L    # 4.077721940096284E-125
        -0x510c4b7dde0a54cL
        -0x36a58b2881363325L    # -2.35999091827721E45
    .end array-data
.end method
