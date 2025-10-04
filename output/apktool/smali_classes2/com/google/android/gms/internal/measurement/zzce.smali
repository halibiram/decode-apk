.class public abstract Lcom/google/android/gms/internal/measurement/zzce;
.super Lcom/google/android/gms/internal/measurement/zzbn;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzcf;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v1, 0x9

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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzbn;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :array_0
    .array-data 8
        0x457e65bd48c0442eL    # 5.8797160448165714E26
        0x10c1d5ebf56ab090L    # 5.881956205413603E-228
        -0x7efbe027981e9fe6L    # -9.1705891025425E-304
        -0x44c610bea86fd151L    # -2.1452590696367484E-23
        0x30eb7bb998ad08b7L    # 4.860936550841454E-73
        0x2082528d2a00d386L    # 4.372966340468445E-152
        -0xf4692fadda4397eL    # -1.010537139934152E235
        -0x4b094a480430c47bL    # -1.481886113977393E-53
        -0x6a25ac410e7cee6eL
    .end array-data
.end method


# virtual methods
.method public final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 1
    const/4 p4, 0x1

    .line 2
    if-ne p1, p4, :cond_0

    .line 3
    .line 4
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5
    .line 6
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/zzbo;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/os/Bundle;

    .line 11
    .line 12
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbo;->zzc(Landroid/os/Parcel;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcf;->zzd(Landroid/os/Bundle;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 19
    .line 20
    .line 21
    return p4

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    return p1
.end method
