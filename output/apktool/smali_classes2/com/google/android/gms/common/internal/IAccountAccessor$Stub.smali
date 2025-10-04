.class public abstract Lcom/google/android/gms/common/internal/IAccountAccessor$Stub;
.super Lcom/google/android/gms/internal/common/zzb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/IAccountAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/IAccountAccessor;
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
    const/16 v1, 0x8

    .line 4
    .line 5
    new-array v1, v1, [J

    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/common/zzb;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :array_0
    .array-data 8
        -0x5166f57886103ba9L    # -3.2225164314826644E-84
        0x520ea9ebcab7beeeL    # 1.9062246816914048E87
        -0x21376c6cda411637L    # -3.928142898914688E148
        0x2c5669ec5f70433bL    # 4.1973593726676726E-95
        -0x1d38bc88a5c02437L    # -6.859041058279903E167
        0x19feecd4954eebf4L
        -0x2a71f4ae2d94a546L    # -1.3458275525447256E104
        -0x24b0aade875e21eaL    # -6.949983167080165E131
    .end array-data
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/IAccountAccessor;
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
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    instance-of v1, v0, Lcom/google/android/gms/common/internal/IAccountAccessor;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    check-cast v0, Lcom/google/android/gms/common/internal/IAccountAccessor;

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/google/android/gms/common/internal/zzw;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/zzw;-><init>(Landroid/os/IBinder;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        -0x4be9bf0eaeb46407L    # -8.8630402819071E-58
        -0x1af3510a7255a2d5L    # -5.811638544572903E178
        -0x922d637671b1c7eL
        0x17cf33d57a2f6d19L    # 5.342959292849694E-194
        0x6b0e3b41ee208ffaL    # 4.8529561086106E207
        0x65df22013f678297L    # 5.1674467668082216E182
        -0x35e83085923e6be5L    # -8.699757250049013E48
        0x3065421c61501a7eL    # 1.468718333794013E-75
    .end array-data
.end method


# virtual methods
.method public final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .param p2    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 p2, 0x2

    .line 2
    if-ne p1, p2, :cond_0

    .line 3
    .line 4
    invoke-interface {p0}, Lcom/google/android/gms/common/internal/IAccountAccessor;->zzb()Landroid/accounts/Account;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 9
    .line 10
    .line 11
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->zzd(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method
