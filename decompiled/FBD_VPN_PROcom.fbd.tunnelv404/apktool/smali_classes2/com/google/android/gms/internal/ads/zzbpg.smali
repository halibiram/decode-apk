.class public abstract Lcom/google/android/gms/internal/ads/zzbpg;
.super Lcom/google/android/gms/internal/ads/zzayh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbph;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v1, 0xc

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
        -0x3eec2bbc6726ff2L    # -4.200065223590607E289
        0xa0c7d4732112584L
        0x7b1725d9a8313f5cL    # 8.60531199043471E284
        -0x7538eb68291a8140L    # -9.607222006741508E-257
        0x44cd799bc4a4965L
        0x79eaa46c0a320e19L    # 1.8891101484026862E279
        -0x4396a8834e640ff5L    # -1.0990230611933389E-17
        0x56a7920d1e38c819L    # 2.7678176346506523E109
        0x676f9a8b2850fcfdL    # 1.760131104753474E190
        -0x538400acd355477L    # -2.759094256821985E283
        0x2a8c00be06e3f6eaL
        -0x4bb9098539ea68edL    # -7.316373653643702E-57
    .end array-data
.end method

.method public static zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbph;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/16 v1, 0xc

    .line 8
    .line 9
    new-array v1, v1, [J

    .line 10
    .line 11
    fill-array-data v1, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbph;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbph;

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbpf;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbpf;-><init>(Landroid/os/IBinder;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        -0x28773e951389be96L    # -4.762782484569918E113
        0x2d33e53a4a4881a1L    # 6.104279980363785E-91
        0x7ffa50a2f0264f55L
        0x308e8bf4ff47caa0L    # 8.441808365081071E-75
        0x38c99cba6ea3262eL    # 3.853698509282228E-35
        -0x4f57089b816a7d1L    # -4.936970221813592E284
        0x39b03cf8f8bb93d3L    # 8.006037903104786E-31
        -0x625760294fc585ebL    # -8.351750649492035E-166
        -0x627ba8ec35253535L
        -0x53ee1adee8b267bfL    # -2.094469193641086E-96
        0x3bf42df07bda3a3fL    # 6.837063854237385E-20
        0x5923e33dda0929baL    # 2.567745707444703E121
    .end array-data
.end method


# virtual methods
.method public final zzbO(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 1
    const/4 p4, 0x2

    .line 2
    if-eq p1, p4, :cond_1

    .line 3
    .line 4
    const/4 p4, 0x3

    .line 5
    if-eq p1, p4, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbph;->zze(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbph;->zzf()V

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    return p1
.end method
