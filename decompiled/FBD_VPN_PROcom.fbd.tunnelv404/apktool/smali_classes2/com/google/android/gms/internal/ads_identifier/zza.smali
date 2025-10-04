.class public Lcom/google/android/gms/internal/ads_identifier/zza;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads_identifier/zza;->zza:Landroid/os/IBinder;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/16 p2, 0xa

    new-array p2, p2, [J

    fill-array-data p2, :array_0

    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads_identifier/zza;->zzb:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        -0x6018767c2ef7939fL    # -5.485881746498869E-155
        -0x106d53fd80b2aa53L    # -2.830906534566375E229
        0x45e6af637652fa50L    # 5.616561545183149E28
        0x224faa3b7a228a45L
        0x534d97d56128d9eeL    # 1.9290306772881963E93
        0x47325c4c5fe44db8L    # 9.533337615459197E34
        0x360dc759b991721eL    # 2.5469277695553987E-48
        0x4f19395812d8a1a9L    # 1.1141737655317913E73
        0x72d40f87edff5fe5L    # 1.3697517865532836E245
        -0x78c5c86b8bc19b4bL    # -7.572316428981327E-274
    .end array-data
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads_identifier/zza;->zza:Landroid/os/IBinder;

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
    iget-object v1, p0, Lcom/google/android/gms/internal/ads_identifier/zza;->zzb:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final zzb(ILandroid/os/Parcel;)Landroid/os/Parcel;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads_identifier/zza;->zza:Landroid/os/IBinder;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v1, p1, p2, v0, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p1

    .line 21
    :try_start_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 22
    .line 23
    .line 24
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 26
    .line 27
    .line 28
    throw p1
.end method
