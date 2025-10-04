.class public final Lcom/google/android/gms/internal/ads/zzbpi;
.super Lcom/google/android/gms/internal/ads/zzayg;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbpk;


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
        0x3125f4879f071b2bL    # 6.213099835573579E-72
        -0x18aed71600079882L    # -4.778482805826216E189
        -0x5b73ab5c6c33e3e7L
        -0x4f7a0a636e425eb7L    # -6.068648164843256E-75
        0x5566c19752be1817L    # 2.548405673909351E103
        0x7e67e5e22c6c38b4L    # 8.002154318431515E300
        0x470a53fac790fc4eL    # 1.7087878390303865E34
        0x540535e5a1b5e5cbL    # 5.663178513540416E96
        -0x387863c4d71d740aL    # -3.9229302642988036E36
        0xb64cb255897f127L
        -0x599adced4d2b958bL    # -9.992064337782235E-124
    .end array-data
.end method


# virtual methods
.method public final zzb(Ljava/util/List;)V
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
