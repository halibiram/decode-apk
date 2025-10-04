.class public abstract Lcom/tknetwork/pro/aidl/IUltraSSHServiceInternal$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/tknetwork/pro/aidl/IUltraSSHServiceInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/pro/aidl/IUltraSSHServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tknetwork/pro/aidl/IUltraSSHServiceInternal$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_stopVPN:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v1, 0x7

    .line 7
    new-array v1, v1, [J

    .line 8
    .line 9
    fill-array-data v1, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :array_0
    .array-data 8
        -0x541467cad5079e93L    # -4.0371501577766005E-97
        0x5e4eb973021172bcL    # 1.9182777183384115E146
        -0x751335b853c4f3b2L    # -4.793555045609256E-256
        -0x423afc4ae48d6de1L    # -3.82251204915907E-11
        -0x67b3a38b0cf96db4L    # -1.243245091035111E-191
        0x6865f9fa9d5901c0L    # 8.021310917707604E194
        -0x46df16bd6f1efc12L
    .end array-data
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tknetwork/pro/aidl/IUltraSSHServiceInternal;
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
    if-eqz v0, :cond_1

    .line 25
    .line 26
    instance-of v1, v0, Lcom/tknetwork/pro/aidl/IUltraSSHServiceInternal;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    check-cast v0, Lcom/tknetwork/pro/aidl/IUltraSSHServiceInternal;

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_1
    new-instance v0, Lcom/tknetwork/pro/aidl/IUltraSSHServiceInternal$Stub$Proxy;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/tknetwork/pro/aidl/IUltraSSHServiceInternal$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 36
    .line 37
    .line 38
    return-object v0

    .line 39
    :array_0
    .array-data 8
        -0x6c688c49827aca66L    # -2.7212161710009885E-214
        0x52ee29473b848a1eL    # 3.071976871571697E91
        0x3e7fa964ed50a59cL    # 1.1794900996232083E-7
        -0x5c9ba2802b433e9dL    # -3.420277602743069E-138
        -0x29ff75845f408833L    # -1.8968321718850095E106
        0x7a485b5e8ecf16eeL    # 1.1053204153449577E281
        0x471e8ae06c65470bL    # 3.9646414734142504E34
    .end array-data
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

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
    const/4 v1, 0x1

    .line 17
    if-lt p1, v1, :cond_0

    .line 18
    .line 19
    const v2, 0xffffff

    .line 20
    .line 21
    .line 22
    if-gt p1, v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    const v2, 0x5f4e5446

    .line 28
    .line 29
    .line 30
    if-eq p1, v2, :cond_2

    .line 31
    .line 32
    if-eq p1, v1, :cond_1

    .line 33
    .line 34
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1

    .line 39
    :cond_1
    invoke-interface {p0}, Lcom/tknetwork/pro/aidl/IUltraSSHServiceInternal;->stopVPN()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 43
    .line 44
    .line 45
    return v1

    .line 46
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return v1

    .line 50
    nop

    .line 51
    :array_0
    .array-data 8
        0x39dad45bcbfaac02L
        0x492a8ac4915161b9L    # 2.9595387956245655E44
        -0x1282f8f7a20e0b7aL    # -2.5616870148669455E219
        -0x1b54695dd4a940dcL    # -8.734019862659766E176
        -0x46fa3a85714146bL    # -1.5570339997376962E287
        -0x28981ef3d4f151bcL    # -1.1485401951543568E113
        0x6e9d1adfe9a54b87L    # 6.733239693222241E224
    .end array-data
.end method
