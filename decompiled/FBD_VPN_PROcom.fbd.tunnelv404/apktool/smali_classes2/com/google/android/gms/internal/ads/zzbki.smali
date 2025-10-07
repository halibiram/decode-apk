.class public final Lcom/google/android/gms/internal/ads/zzbki;
.super Lcom/google/android/gms/internal/ads/zzayg;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbkk;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v1, 0xb

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
        -0xc889884d09ac9e5L
        0x394046d80daf437aL    # 6.269569963955264E-33
        0x7bdd849b451f35e3L    # 4.4947206684434214E288
        -0x192ceb33764a8881L    # -2.075601858855712E187
        -0x4a8fea882a61e67eL    # -2.686773301127582E-51
        0x5f51ad6135dfb10bL    # 1.4466147949001112E151
        0x7311c1dc7c705c12L    # 1.9399595893428045E246
        0x48d0dee5df5b8858L    # 5.878579253257392E42
        -0x5d05387626bdd998L    # -3.51369156655805E-140
        -0x19793fcd90d9bb60L    # -7.733630772168958E185
        -0x714a4645366176a2L    # -8.340908219306386E-238
    .end array-data
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/ads/zzbkb;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzayg;->zza()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzayi;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzayg;->zzbm(ILandroid/os/Parcel;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
