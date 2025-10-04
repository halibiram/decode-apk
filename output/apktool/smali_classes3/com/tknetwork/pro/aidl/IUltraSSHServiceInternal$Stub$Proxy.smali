.class Lcom/tknetwork/pro/aidl/IUltraSSHServiceInternal$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tknetwork/pro/aidl/IUltraSSHServiceInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/pro/aidl/IUltraSSHServiceInternal$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tknetwork/pro/aidl/IUltraSSHServiceInternal$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/pro/aidl/IUltraSSHServiceInternal$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
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
    return-object v0

    .line 17
    :array_0
    .array-data 8
        -0x2ad4cca9c73b15e3L    # -1.903820433858116E102
        0x40bfa0d04079a74L    # 3.58848892294795E-289
        0x301fcaef5dc2bb3fL    # 6.8641811259658015E-77
        -0x58f55fe10bd6dbfaL
        0x6bdb8c797bf547fbL    # 3.622751422179483E211
        -0x15566954bc7a6a96L    # -6.418192606618348E205
        0x2cbd9b3300ff2e46L    # 3.548335784113156E-93
    .end array-data
.end method

.method public stopVPN()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :try_start_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v3, 0x7

    .line 12
    new-array v3, v3, [J

    .line 13
    .line 14
    fill-array-data v3, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/tknetwork/pro/aidl/IUltraSSHServiceInternal$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception v2

    .line 45
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 49
    .line 50
    .line 51
    throw v2

    .line 52
    nop

    .line 53
    :array_0
    .array-data 8
        -0x1c9f92b221d2b16eL    # -4.959581227442252E170
        0x4d08562a554e70b5L    # 1.251436218214177E63
        -0x7e6e2e00b3a47ba1L    # -4.157759833415435E-301
        0x11e60ff3bff852d5L
        -0x112f36e44fade0caL    # -6.213167832901836E225
        -0x78bb4b351964dbbeL
        0x484f4f55db88bc65L    # 2.130841636826023E40
    .end array-data
.end method
