.class public final Lcom/google/android/gms/internal/ads/zzbko;
.super Lcom/google/android/gms/internal/ads/zzayg;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbkq;


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
        -0x6cf77ddcdd1eeaccL
        -0x3f3ece057b1ec655L    # -8803.957180169256
        0x504d0a9abda1f527L    # 6.7255342392248134E78
        -0x5e19ea81c16aa390L
        0x666b1580d953ac0cL    # 2.3016543965783577E185
        -0x62ad067daa0f976L    # -7.511094639934318E278
        -0x7018d55d47195a21L    # -4.663098927734089E-232
        -0x7d99b3afdbabc9dbL    # -4.261888717310874E-297
        0x3eb385674b8865b5L    # 1.1635486726390877E-6
        -0x474ab0a20f425667L    # -1.6031882592175708E-35
        0x4e433876a27908d8L    # 1.0363705569549033E69
    .end array-data
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/ads/zzbkg;Ljava/lang/String;)V
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
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzayg;->zzbm(ILandroid/os/Parcel;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
