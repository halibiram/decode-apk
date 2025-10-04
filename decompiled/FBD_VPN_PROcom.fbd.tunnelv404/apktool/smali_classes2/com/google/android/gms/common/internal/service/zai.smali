.class public final Lcom/google/android/gms/common/internal/service/zai;
.super Lcom/google/android/gms/internal/base/zaa;
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
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/base/zaa;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :array_0
    .array-data 8
        0x3fa470f24dcf6a05L    # 0.03992421340781863
        -0x26bba6bf630b88a3L    # -1.0509055751378122E122
        -0x62ab4c6e0fca7e89L
        -0x5ea8b0099c00baaeL    # -4.557936386311029E-148
        0x6c6d119e41f25e03L    # 1.9571961513325999E214
        0x1f3c87a2ee9deed0L
        -0x55802b84df148120L
        0xc9c7bef7b4d3268L
        -0x2415658dc00a0ed4L    # -6.042597768786863E134
        0x51a76d208ec5b500L    # 2.2754750805578445E85
    .end array-data
.end method


# virtual methods
.method public final zae(Lcom/google/android/gms/common/internal/TelemetryData;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zaa;->zaa()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/base/zac;->zac(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/base/zaa;->zad(ILandroid/os/Parcel;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
