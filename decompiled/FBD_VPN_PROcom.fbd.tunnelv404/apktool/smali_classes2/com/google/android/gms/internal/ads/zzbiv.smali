.class public final Lcom/google/android/gms/internal/ads/zzbiv;
.super Lcom/google/android/gms/internal/ads/zzayg;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


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
        0x6fa7504f8aab0721L    # 7.069328580638497E229
        0x2117e7386888f95L
        -0x598d470438965ca7L    # -1.7701405710999838E-123
        -0x3f220f2341b37a61L    # -30659.449114923944
        0x644e34538477f9adL    # 1.494093244746381E175
        -0x254c6fa40f5cd32L    # -2.225448946616165E297
        -0x44cc3523cf632adfL    # -1.637190802777409E-23
        -0x2472c94639ac0f6cL    # -1.0368018025246276E133
        -0x30d7b3e0cebe54d9L    # -2.146485161135038E73
        -0x2d275aff2a0d30e1L    # -1.255045568827242E91
    .end array-data
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/ads/zzbyd;)V
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
