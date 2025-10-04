.class public abstract Lcom/google/android/gms/internal/ads/zzbje;
.super Lcom/google/android/gms/internal/ads/zzayh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbjf;


# direct methods
.method public constructor <init>()V
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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzayh;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :array_0
    .array-data 8
        -0x6e28775a0f6a59f7L
        0x32e9a2cd3d6fba8eL    # 1.947422760058241E-63
        -0x38a9c6ad307d8f75L    # -4.615727566623575E35
        -0xb7f2b8d56350d4cL    # -1.542365319266E253
        0x326ac1a105cf88caL    # 7.939589374331795E-66
        0x70f9878f59225f2aL    # 1.6234520114621636E236
        0x67ea2282fcb59d28L    # 3.7262038805202115E192
        0x6418ec20b5268f4aL    # 1.541015196634999E174
        0x6c3eed39909fdcf2L    # 2.6028549214206396E213
        0xb78aecceea899adL
    .end array-data
.end method

.method public static zzj(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbjf;
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
    const/16 v1, 0xa

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
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbjf;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbjf;

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbjd;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbjd;-><init>(Landroid/os/IBinder;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        0x76c80421285caedfL    # 1.5124786660321274E264
        -0x36f65aed6717808fL    # -7.148731068430796E43
        -0xf6a6c1f9c64e799L    # -2.1439795591811854E234
        0x69010d381c8d3f65L    # 6.373137061600696E197
        0x2af5a98248ed50L
        0x59a7b8dde375e4b6L    # 7.840829715023569E123
        -0x315e203f0ccc5840L    # -6.168103800481161E70
        0x4ab41b5934a30e70L    # 7.522858201363726E51
        -0x46a764aa3d1986cL
        -0x3b170b8d17d044d8L    # -9.427686485060193E23
    .end array-data
.end method


# virtual methods
.method public final zzbO(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 1
    const/4 p2, 0x2

    .line 2
    if-eq p1, p2, :cond_1

    .line 3
    .line 4
    const/4 p2, 0x3

    .line 5
    if-eq p1, p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbjf;->zzh()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbjf;->zzg()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    const/4 p1, 0x1

    .line 31
    return p1
.end method
