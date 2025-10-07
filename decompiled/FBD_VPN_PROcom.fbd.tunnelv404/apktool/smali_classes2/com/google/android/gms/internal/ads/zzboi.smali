.class public final Lcom/google/android/gms/internal/ads/zzboi;
.super Lcom/google/android/gms/internal/ads/zzayg;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbok;


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
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzayg;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :array_0
    .array-data 8
        0x4fcee4172d5c7ebdL    # 2.7944773102743815E76
        -0x72f33ba230a46b09L    # -8.228657315927277E-246
        -0x3f54c6d8a5ed8468L    # -3484.576859071338
        0x48fe0bc078868b45L    # 4.1877880345098055E43
        -0x29678a4d0ca42fcdL    # -1.4361198049552252E109
        0x74b1a843b65e2b64L    # 1.2945542074347905E254
        -0x7fbe4bced0a40ecbL
        0x6158ec8dafa454e4L    # 8.760241694339426E160
        0x354e66235ddfb42eL    # 6.347602606036063E-52
        -0x427e95a9e1963d24L    # -1.9798990898178953E-12
    .end array-data
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbsv;ILcom/google/android/gms/internal/ads/zzboe;)Lcom/google/android/gms/internal/ads/zzboh;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzayg;->zza()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzayi;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 9
    .line 10
    .line 11
    const p1, 0xe52bf80

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {p3, p4}, Lcom/google/android/gms/internal/ads/zzayi;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzayg;->zzbl(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    if-nez p2, :cond_0

    .line 30
    .line 31
    const/4 p2, 0x0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    const/16 p4, 0x9

    .line 36
    .line 37
    new-array p4, p4, [J

    .line 38
    .line 39
    fill-array-data p4, :array_0

    .line 40
    .line 41
    .line 42
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    invoke-interface {p2, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    instance-of p4, p3, Lcom/google/android/gms/internal/ads/zzboh;

    .line 54
    .line 55
    if-eqz p4, :cond_1

    .line 56
    .line 57
    move-object p2, p3

    .line 58
    check-cast p2, Lcom/google/android/gms/internal/ads/zzboh;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    new-instance p3, Lcom/google/android/gms/internal/ads/zzbof;

    .line 62
    .line 63
    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/zzbof;-><init>(Landroid/os/IBinder;)V

    .line 64
    .line 65
    .line 66
    move-object p2, p3

    .line 67
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 68
    .line 69
    .line 70
    return-object p2

    .line 71
    :array_0
    .array-data 8
        -0x7fd03d77632e2e30L    # -8.833514582265449E-308
        -0x658eecf8e81e7eccL
        0x4b73dacb1132646cL    # 3.04271795386146E55
        -0xfc70b77dcf7d5a3L    # -3.874340304196558E232
        0x67c83c89a9d360aL
        -0x61b4d41e96cc3f83L    # -9.436794596756619E-163
        0x6ca2a94d4b091750L    # 2.010340589963707E215
        0x7138ddb5146da5a9L    # 2.53001620998114E237
        -0x74b2301dc3ce2508L
    .end array-data
.end method
