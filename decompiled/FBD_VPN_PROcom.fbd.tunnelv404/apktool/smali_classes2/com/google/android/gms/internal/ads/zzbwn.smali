.class public final Lcom/google/android/gms/internal/ads/zzbwn;
.super Lcom/google/android/gms/internal/ads/zzayg;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbwp;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
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
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzayg;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :array_0
    .array-data 8
        0x744130dc942c24dbL    # 9.846551058590479E251
        -0x7d59c652b1ae5185L    # -6.796759709465679E-296
        -0x1050275755cb9e89L    # -9.656639374163404E229
        -0x3c87f33a32f41e47L    # -1.08311090068069264E17
        0x1bd275ec5f0bbdd5L
        0x244fa92780bee502L    # 8.711907596089383E-134
        0x4be8e51382a8b0a2L    # 4.8833554385869654E57
        -0xb1905d50b304b1L
        -0xb1ea1bcc180f47dL
    .end array-data
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbsv;I)Lcom/google/android/gms/internal/ads/zzbwm;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzayg;->zza()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzayi;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 9
    .line 10
    .line 11
    const p1, 0xe52bf80

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzayg;->zzbl(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    const/16 v0, 0x9

    .line 33
    .line 34
    new-array v0, v0, [J

    .line 35
    .line 36
    fill-array-data v0, :array_0

    .line 37
    .line 38
    .line 39
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    invoke-interface {p2, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    instance-of v0, p3, Lcom/google/android/gms/internal/ads/zzbwm;

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    move-object p2, p3

    .line 55
    check-cast p2, Lcom/google/android/gms/internal/ads/zzbwm;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    new-instance p3, Lcom/google/android/gms/internal/ads/zzbwk;

    .line 59
    .line 60
    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/zzbwk;-><init>(Landroid/os/IBinder;)V

    .line 61
    .line 62
    .line 63
    move-object p2, p3

    .line 64
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 65
    .line 66
    .line 67
    return-object p2

    .line 68
    nop

    .line 69
    :array_0
    .array-data 8
        -0x59981d55f2499820L
        0x3f266e8fc02ae95fL    # 1.7114166992888543E-4
        -0x213dad6cc8587886L    # -2.928559183716061E148
        -0x1e9f12195484d0bfL    # -1.1900541526156408E161
        0x17360db5e5f37579L    # 7.375670160901444E-197
        0x37332456129448afL    # 8.58354202644729E-43
        -0x7593aa3f02a527c7L
        -0x312cd96fb1eaaab7L    # -5.286914226159705E71
        -0xee948a3193fbb70L    # -5.778211909955575E236
    .end array-data
.end method
