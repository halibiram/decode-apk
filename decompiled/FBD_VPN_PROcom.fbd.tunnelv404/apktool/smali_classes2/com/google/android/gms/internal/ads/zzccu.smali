.class public final Lcom/google/android/gms/internal/ads/zzccu;
.super Lcom/google/android/gms/internal/ads/zzayg;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzccw;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v1, 0xa

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
        -0x51185a16048a82b0L
        -0x2d2f968389678b83L    # -8.35798682827313E90
        -0x27b105b482b8679dL    # -2.441168187620455E117
        0x6128b46477d5f310L    # 1.085391862921648E160
        0x2278260c8565a4c7L
        -0x351d4cfa7cd60a8L    # -3.763245023578649E292
        0x61f2e92f939bba2L
        0x1c0ca7a9c61a521cL
        -0xe48f997cadfc343L    # -5.9973131337888345E239
        -0x4f21bb4bc08c69daL    # -2.6767645852946705E-73
    .end array-data
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbsv;I)Lcom/google/android/gms/internal/ads/zzcct;
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
    const/4 p1, 0x2

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
    instance-of v0, p3, Lcom/google/android/gms/internal/ads/zzcct;

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    move-object p2, p3

    .line 55
    check-cast p2, Lcom/google/android/gms/internal/ads/zzcct;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    new-instance p3, Lcom/google/android/gms/internal/ads/zzccr;

    .line 59
    .line 60
    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/zzccr;-><init>(Landroid/os/IBinder;)V

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
        -0x2e95a3348ce1b130L    # -1.60042402012828E84
        0x2d6fe7400a78fd4fL    # 7.830819216586558E-90
        -0x1cb0a1e015f37270L    # -2.3676084962929448E170
        -0x5cfda3720cde3cf1L    # -4.818381150573894E-140
        0x5dcde152eb5e5d65L    # 7.287373598639586E143
        -0x433be9ba4948804bL    # -5.575262820083032E-16
        0x723b8494c1ad53a7L    # 1.8348971998781975E242
        0x4d7673c1491e71acL    # 1.4778057942179356E65
        0x4631142a1621c3f2L    # 1.353119342338269E30
    .end array-data
.end method
