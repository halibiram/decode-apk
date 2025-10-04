.class public Lcom/google/android/gms/ads/AdService;
.super Landroid/app/IntentService;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field public static final CLASS_NAME:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x6

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/ads/AdService;->CLASS_NAME:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        0x3345a79ebbc50ac0L    # 1.0527963953315654E-61
        0x503d9d9e01de751dL    # 3.4292628798451654E78
        0x58638f868732b671L    # 6.165829712428065E117
        -0x472f13e2254c4380L    # -5.092378612008025E-35
        -0x4b7d6c43589f8d9aL    # -9.470407541262936E-56
        -0x28ea5d24b5fca045L    # -3.2520601451297923E111
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 8
        0x35e6af9d41736fabL    # 4.850745780400853E-49
        0x77b9754ebada4e7eL    # 5.253689468988611E268
        -0x29b61aadc9300620L    # -4.7513558999653854E107
    .end array-data
.end method


# virtual methods
.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zza()Lcom/google/android/gms/ads/internal/client/zzaw;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbsr;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbsr;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/ads/internal/client/zzaw;->zzm(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbsv;)Lcom/google/android/gms/internal/ads/zzbwm;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbwm;->zze(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception p1

    .line 19
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/16 v1, 0x8

    .line 22
    .line 23
    new-array v1, v1, [J

    .line 24
    .line 25
    fill-array-data v1, :array_0

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzg(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :array_0
    .array-data 8
        -0xec721d71c2c4718L    # -2.5301960073362953E237
        -0x6ffe109f39eb812L    # -6.976803178523673E274
        0x13ad67c505af7f8aL
        0x75dce36e6f0580c3L    # 5.552132555328396E259
        0x2983f8dca9b0a8dbL
        0x6ead1d1ca5f749d1L    # 1.3470522919951503E225
        -0x31067a2564671578L    # -2.8184376586417157E72
        0x6a254cd45657b360L    # 2.0869355587220363E203
    .end array-data
.end method
