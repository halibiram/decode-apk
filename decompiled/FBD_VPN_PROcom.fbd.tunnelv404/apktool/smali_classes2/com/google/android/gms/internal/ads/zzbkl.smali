.class public final Lcom/google/android/gms/internal/ads/zzbkl;
.super Lcom/google/android/gms/internal/ads/zzayg;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbkn;


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
        -0x47ebf51e563ed1cdL    # -1.4724907748716125E-38
        0x549744ed207146bL
        -0x7d7b452e223be7c3L
        -0x313c36d8b0b514e6L    # -2.731125393351945E71
        -0x1559d82e5562e412L    # -5.557115897448099E205
        0x5832553e8b025941L    # 7.223564114418365E116
        0x401e09cec60c8563L    # 7.509577841295456
        0x6c8b765704144f34L    # 7.396108667923229E214
        -0x70fc8ef0328b7159L    # -2.388506757493415E-236
        0x1cc6897d47615433L
        -0x57156f99fd3ad33fL
    .end array-data
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/ads/zzbkd;)V
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
