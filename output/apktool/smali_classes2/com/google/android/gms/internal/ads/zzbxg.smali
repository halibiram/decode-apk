.class public final Lcom/google/android/gms/internal/ads/zzbxg;
.super Lcom/google/android/gms/internal/ads/zzayg;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbxi;


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
        -0x14e9e11388490927L    # -7.101952617418489E207
        -0x3c3b14d2e72bf2daL    # -3.0146961698913188E18
        -0x72b20b5cf9de3372L
        -0x2dc3642e5d43c1aeL    # -1.4227755128720934E88
        -0x3119a6446cddb302L    # -1.23406087046978E72
        -0x2eb8b02d59aceb3fL    # -3.5380565813621015E83
        -0x5dde7daab09bf895L
        -0x2637cbc6564351dcL    # -3.2000403773360994E124
        -0x7457d0fb15bb8a04L    # -1.649285467035822E-252
    .end array-data
.end method


# virtual methods
.method public final zze(Ljava/lang/String;)V
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
    const/4 p1, 0x2

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzayg;->zzbm(ILandroid/os/Parcel;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final zzf(Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzayg;->zza()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

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
