.class public final Lcom/google/android/gms/internal/ads/zzyh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzcz;

.field public final zzb:[I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcz;[II)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length p3, p2

    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    new-instance p3, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    invoke-direct {p3}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    new-array v1, v1, [J

    .line 16
    .line 17
    fill-array-data v1, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/4 v2, 0x5

    .line 30
    new-array v2, v2, [J

    .line 31
    .line 32
    fill-array-data v2, :array_1

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v0, v1, p3}, Lcom/google/android/gms/internal/ads/zzff;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyh;->zza:Lcom/google/android/gms/internal/ads/zzcz;

    .line 46
    .line 47
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzyh;->zzb:[I

    .line 48
    .line 49
    return-void

    .line 50
    nop

    .line 51
    :array_0
    .array-data 8
        -0x6d5538b77317eb7eL    # -9.482407372287684E-219
        -0x68140d2b481a24e9L
        0x2c930c4d409fe23aL    # 5.707316670627569E-94
    .end array-data

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    :array_1
    .array-data 8
        -0x612a55294f684337L    # -3.852901281707E-160
        0x3aba855ae9b76e95L    # 8.569370932348563E-26
        -0x2c551f8e00b0fc57L    # -1.121257169062035E95
        -0x6c5a9d500aece598L    # -4.962864836418284E-214
        0x4c757a65bebf62eeL    # 2.1571250077462955E60
    .end array-data
.end method
