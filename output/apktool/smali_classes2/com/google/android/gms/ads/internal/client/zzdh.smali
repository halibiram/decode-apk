.class public final Lcom/google/android/gms/ads/internal/client/zzdh;
.super Lcom/google/android/gms/internal/ads/zzayg;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/client/zzdj;


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
        0x287d1996ffed5fbdL
        -0x3986d6f32fbd8dbaL    # -3.189453502155307E31
        -0x783e5578ba097206L
        -0x656cba5340cfc30bL    # -1.161109461907283E-180
        -0x1c20229cc2882fd8L    # -1.2314269800401648E173
        0x455b9af3b66e4eacL    # 1.3349094908919075E26
        -0x130970bde41ec22L
        -0x3b976e3ee4895553L    # -3.62579651017214E21
        0x58fbd274dfc58c71L    # 4.490225227237272E120
    .end array-data
.end method


# virtual methods
.method public final zze(Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzayg;->zza()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p3}, Lcom/google/android/gms/internal/ads/zzayi;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzayg;->zzbm(ILandroid/os/Parcel;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
