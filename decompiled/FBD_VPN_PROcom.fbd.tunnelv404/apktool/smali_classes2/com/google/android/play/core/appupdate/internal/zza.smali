.class public Lcom/google/android/play/core/appupdate/internal/zza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field private final zza:Landroid/os/IBinder;

.field private final zzb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/internal/zza;->zza:Landroid/os/IBinder;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/16 p2, 0xa

    new-array p2, p2, [J

    fill-array-data p2, :array_0

    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/internal/zza;->zzb:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        0x2a2dc7d3f2a19a71L    # 1.623097655739513E-105
        -0x6f09bcd6b53491d3L    # -5.873463324687011E-227
        0x703a1b5d95b61ba4L    # 4.053142952403516E232
        0x2c5be4184cf118d1L    # 5.2230646212701055E-95
        -0x71b4bf761a8ffe26L    # -8.173978747035794E-240
        -0x6d0ae9fcb118cf1bL    # -2.389335269603627E-217
        0x193cdfa9768250dcL
        -0x2170b4a89ba3ae6fL    # -3.1261741654879206E147
        0xf97f24df4c88c22L
        -0xac9340477d32ad5L    # -4.278685271615406E256
    .end array-data
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zza;->zza:Landroid/os/IBinder;

    return-object v0
.end method

.method public final zza()Landroid/os/Parcel;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/play/core/appupdate/internal/zza;->zzb:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final zzb(ILandroid/os/Parcel;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zza;->zza:Landroid/os/IBinder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-interface {v0, p1, p2, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 14
    .line 15
    .line 16
    throw p1
.end method
