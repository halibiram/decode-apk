.class public Lcom/google/android/play/core/review/internal/zza;
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

    iput-object p1, p0, Lcom/google/android/play/core/review/internal/zza;->zza:Landroid/os/IBinder;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/16 p2, 0xa

    new-array p2, p2, [J

    fill-array-data p2, :array_0

    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/review/internal/zza;->zzb:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        0x2f4b9493e6ed4743L    # 7.268946108798834E-81
        0xc1ca6809bd30907L
        0x246c0ac67c46b9f4L
        0x691b50c3c1eeb729L    # 2.041860710146437E198
        -0x57ab3adfda5cd0fL
        -0x968c35ebd0dd86fL    # -1.829250633360041E263
        -0x52db5bbe343b68eaL    # -3.1666151835637067E-91
        0x15eb701dc8185225L
        0x4ee4bf2fc2d7b3d7L    # 1.1455144526442964E72
        0x54aa1614a17ce64L
    .end array-data
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zza;->zza:Landroid/os/IBinder;

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
    iget-object v1, p0, Lcom/google/android/play/core/review/internal/zza;->zzb:Ljava/lang/String;

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
    iget-object p1, p0, Lcom/google/android/play/core/review/internal/zza;->zza:Landroid/os/IBinder;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-interface {p1, v2, p2, v0, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 15
    .line 16
    .line 17
    throw p1
.end method
