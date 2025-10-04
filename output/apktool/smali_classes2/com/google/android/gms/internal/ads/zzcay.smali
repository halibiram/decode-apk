.class public final synthetic Lcom/google/android/gms/internal/ads/zzcay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcee;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzcay;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcay;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcay;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcay;->zza:Lcom/google/android/gms/internal/ads/zzcay;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

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
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzcar;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    move-object p1, v0

    .line 30
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcar;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcar;

    .line 34
    .line 35
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzcar;-><init>(Landroid/os/IBinder;)V

    .line 36
    .line 37
    .line 38
    move-object p1, v0

    .line 39
    :goto_0
    return-object p1

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        -0x60a238515afa6f3cL
        0x71ab1ba851e5b791L    # 3.5304059117841018E239
        0x72a572bfb52d2036L    # 1.8306196317166575E244
        -0x1dd5743e46d3f284L    # -7.643380926209401E164
        -0x9151b8dd715d749L    # -6.774468605062175E264
        -0x623ef3f4cb1c4956L    # -2.312711831510181E-165
        -0x44e78f64c5c8457fL    # -5.054046366165817E-24
        -0x40542de4171e4ff5L    # -0.0543373796252525
        -0xe11eb81337b3258L    # -6.2679460272777075E240
        -0x39bbc4ce2594fa60L    # -3.205766269360015E30
    .end array-data
.end method
