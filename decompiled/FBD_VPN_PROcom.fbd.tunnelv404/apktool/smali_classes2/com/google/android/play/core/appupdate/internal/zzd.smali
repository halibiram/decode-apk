.class public final Lcom/google/android/play/core/appupdate/internal/zzd;
.super Lcom/google/android/play/core/appupdate/internal/zza;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/appupdate/internal/zzf;


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
    invoke-direct {p0, p1, v0}, Lcom/google/android/play/core/appupdate/internal/zza;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :array_0
    .array-data 8
        -0x55d901b2840bf125L
        -0x790598ed49a41021L
        0x4231f25c45f82763L    # 7.708057752815385E10
        -0x6f4087ba336127c2L
        0xdc920d23d86dec4L
        -0x40ebd7871e420f27L    # -7.689702800734183E-5
        -0x349eb79f3c958807L    # -1.3242850641072034E55
        -0x4ba19ce606b244e6L    # -1.9363786894245287E-56
        0x1dcd5d84486a44e9L    # 3.983885308726903E-165
        0x7c0e5764f404aa20L
    .end array-data
.end method


# virtual methods
.method public final zzc(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/play/core/appupdate/internal/zzh;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/appupdate/internal/zza;->zza()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p2}, Lcom/google/android/play/core/appupdate/internal/zzc;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x3

    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/google/android/play/core/appupdate/internal/zza;->zzb(ILandroid/os/Parcel;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final zzd(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/play/core/appupdate/internal/zzh;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/appupdate/internal/zza;->zza()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p2}, Lcom/google/android/play/core/appupdate/internal/zzc;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x2

    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/google/android/play/core/appupdate/internal/zza;->zzb(ILandroid/os/Parcel;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
