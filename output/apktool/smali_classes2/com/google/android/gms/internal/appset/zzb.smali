.class public Lcom/google/android/gms/internal/appset/zzb;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/16 v0, 0x8

    .line 7
    .line 8
    new-array v0, v0, [J

    .line 9
    .line 10
    fill-array-data v0, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :array_0
    .array-data 8
        0x654d6075e24c4d15L    # 9.523397175504058E179
        0x1f05227292150aa5L    # 3.006529902895559E-159
        0x3bfe1bb14c883fddL    # 1.0201046183622497E-19
        0x57b01e2a23a682abL    # 2.480761160155694E114
        0x3275eede25214058L    # 1.3016688755403233E-65
        0x38d9117f11405751L    # 7.543730714057821E-35
        0x1667f54f4a250274L    # 9.781102996095593E-201
        -0x788eb38dd7f6677L
    .end array-data
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1

    .line 1
    const v0, 0xffffff

    .line 2
    .line 3
    .line 4
    if-le p1, v0, :cond_0

    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/appset/zzb;->zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method public zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
