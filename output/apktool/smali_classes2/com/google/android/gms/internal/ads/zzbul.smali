.class public abstract Lcom/google/android/gms/internal/ads/zzbul;
.super Lcom/google/android/gms/internal/ads/zzayh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbum;


# direct methods
.method public constructor <init>()V
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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzayh;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :array_0
    .array-data 8
        0x76dd2e25e89bfa7aL    # 3.675407150524877E264
        -0x39d39bbe7870d65eL    # -1.1247081358600852E30
        0x745c7f825218af62L    # 3.2646153617874715E252
        -0x18c54ef795e89b3L
        0x385ec652daf8efdeL    # 3.6175488081785992E-37
        -0x73e7ce78c0c452ecL
        0x403f95ae45189ee8L    # 31.584690397749824
        -0xe3528f7834a820bL    # -1.398197883068357E240
        -0x87cb6e5ee3cd833L    # -4.974830433491903E267
        -0x39acbdd5a9ecf8f4L    # -6.103249119112674E30
    .end array-data
.end method


# virtual methods
.method public final zzbO(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1

    .line 1
    const/4 p4, 0x1

    .line 2
    if-eq p1, p4, :cond_2

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    return p1

    .line 12
    :cond_0
    sget-object p1, Lcom/google/android/gms/ads/internal/client/zze;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    .line 14
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzayi;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/google/android/gms/ads/internal/client/zze;

    .line 19
    .line 20
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbum;->zzf(Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbum;->zze(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbtj;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbtk;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbum;->zzg(Lcom/google/android/gms/internal/ads/zzbtk;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    .line 54
    .line 55
    return p4
.end method
