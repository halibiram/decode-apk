.class public final Lcom/google/android/gms/internal/appset/zzg;
.super Lcom/google/android/gms/internal/appset/zza;
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
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/appset/zza;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :array_0
    .array-data 8
        0x7620679b1c59f16L    # 4.1650124916937E-273
        0x38b950564894ba6cL    # 1.9043998969547994E-35
        -0x4998a0e12befdd2eL    # -1.2793178498956085E-46
        0x686614233b09d478L    # 8.058606953773076E194
        0x4cb89332b5aa3f5dL    # 3.9490490413803264E61
        -0x70bdf9b2ad33983cL
        0x6feeab76c9fb8e2eL    # 1.4879809498703678E231
        0x6685d1a18a30e42aL    # 7.416852114642178E185
    .end array-data
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/appset/zza;Lcom/google/android/gms/internal/appset/zzf;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/appset/zza;->zza()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/appset/zzc;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/appset/zzc;->zzc(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/appset/zza;->zzb(ILandroid/os/Parcel;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
