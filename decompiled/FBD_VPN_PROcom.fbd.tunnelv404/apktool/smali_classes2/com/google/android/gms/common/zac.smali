.class final Lcom/google/android/gms/common/zac;
.super Lcom/google/android/gms/internal/base/zaq;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/GoogleApiAvailability;

.field private final zab:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/GoogleApiAvailability;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/zac;->zaa:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/base/zaq;-><init>(Landroid/os/Looper;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/google/android/gms/common/zac;->zab:Landroid/content/Context;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v0, 0x6

    .line 9
    new-array v0, v0, [J

    .line 10
    .line 11
    fill-array-data v0, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    new-array v0, v0, [J

    .line 24
    .line 25
    fill-array-data v0, :array_1

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/common/zac;->zaa:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/google/android/gms/common/zac;->zab:Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/common/zac;->zaa:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isUserResolvableError(I)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Lcom/google/android/gms/common/zac;->zaa:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/google/android/gms/common/zac;->zab:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->showErrorNotification(Landroid/content/Context;I)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void

    .line 59
    :array_0
    .array-data 8
        -0x53b85ee15e9e9e21L    # -2.2125015962473475E-95
        0x2b86cb305b511803L    # 5.21058385225591E-99
        0x707e158770ef572L
        0x5ba63523123ee537L    # 3.1526014117884783E133
        -0x59b8062ca6dd4c06L    # -2.833520616461338E-124
        -0x69b2a2cbdcf834beL    # -2.997017374462463E-201
    .end array-data

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :array_1
    .array-data 8
        -0x6785613c1bb9b3aaL    # -9.335416300573755E-191
        0x6b7602935a85cfb3L    # 4.522496552068603E209
        0x297bc2f21db11c00L    # 7.387961341522589E-109
        0x4824341f6e29622eL    # 3.437465194872998E39
    .end array-data
.end method
