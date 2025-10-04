.class public abstract Lcom/google/android/gms/ads/internal/client/zzca;
.super Lcom/google/android/gms/internal/ads/zzayh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/client/zzcb;


# direct methods
.method public constructor <init>()V
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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzayh;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :array_0
    .array-data 8
        0x1425730b57242cfeL
        0x41cf256561d92df1L    # 1.0450889636967145E9
        0x47698f7584c126e6L    # 1.0617369345378778E36
        -0x1a0830ff32725151L    # -1.5807069004544672E183
        -0x6993c455b78ddd17L
        0x15faa3c772797f08L    # 8.496758464796186E-203
        0x1756afb3ce75f27fL    # 3.034919821937408E-196
        0x209e73abdd1be472L    # 1.4535693275400077E-151
        0x10f6d5384445a448L    # 6.023988843143436E-227
    .end array-data
.end method

.method public static zzd(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzcb;
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
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    instance-of v1, v0, Lcom/google/android/gms/ads/internal/client/zzcb;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzcb;

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzbz;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/client/zzbz;-><init>(Landroid/os/IBinder;)V

    .line 31
    .line 32
    .line 33
    return-object v0

    .line 34
    nop

    .line 35
    :array_0
    .array-data 8
        -0x123099d5891ce8d7L    # -8.867145561661538E220
        -0x5318d4a307e9fb39L    # -2.221497812765461E-92
        -0x3da967632dc101a0L    # -3.881987791319746E11
        -0x4b6fa21d470a2c28L    # -1.668718228330397E-55
        -0x1f94a3d5f4567cceL    # -2.934702776429106E156
        -0x30a022510e7e4f6L    # -8.778353098854348E293
        0x28ea0bf64f013bb9L
        -0x117b2d5ddf65b36aL    # -2.4086052601813466E224
        -0x6238730fc43d615bL    # -3.195017720481879E-165
    .end array-data
.end method


# virtual methods
.method public final zzbO(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1

    .line 1
    const/4 p4, 0x1

    .line 2
    if-ne p1, p4, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/ads/internal/client/zzcb;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 19
    .line 20
    .line 21
    return p4

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    return p1
.end method
