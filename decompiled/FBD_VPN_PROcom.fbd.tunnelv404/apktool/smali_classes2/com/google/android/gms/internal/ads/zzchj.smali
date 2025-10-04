.class final Lcom/google/android/gms/internal/ads/zzchj;
.super Lcom/google/android/gms/internal/ads/zzari;
.source "SourceFile"


# static fields
.field static final zzb:Lcom/google/android/gms/internal/ads/zzchj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzchj;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzchj;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzchj;->zzb:Lcom/google/android/gms/internal/ads/zzchj;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzari;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;[BLjava/lang/String;)Lcom/google/android/gms/internal/ads/zzarm;
    .locals 1

    .line 1
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 p3, 0x2

    .line 4
    new-array v0, p3, [J

    .line 5
    .line 6
    fill-array-data v0, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaro;

    .line 23
    .line 24
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaro;-><init>()V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_0
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    new-array p3, p3, [J

    .line 31
    .line 32
    fill-array-data p3, :array_1

    .line 33
    .line 34
    .line 35
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-eqz p2, :cond_1

    .line 47
    .line 48
    new-instance p1, Lcom/google/android/gms/internal/ads/zzarp;

    .line 49
    .line 50
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzarp;-><init>()V

    .line 51
    .line 52
    .line 53
    return-object p1

    .line 54
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzarq;

    .line 55
    .line 56
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzarq;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object p2

    .line 60
    nop

    .line 61
    :array_0
    .array-data 8
        -0x6c9a9e6784dccb9fL
        0x61105b42f3ed8672L    # 3.5930878980860085E159
    .end array-data

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
    :array_1
    .array-data 8
        0x12f0bbecbd10dc62L
        -0x44a2499da4bd4b15L    # -9.8310211656671E-23
    .end array-data
.end method
