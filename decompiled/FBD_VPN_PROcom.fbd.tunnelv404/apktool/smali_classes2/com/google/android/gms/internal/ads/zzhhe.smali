.class public final Lcom/google/android/gms/internal/ads/zzhhe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhhd;
.implements Lcom/google/android/gms/internal/ads/zzhgx;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzhhe;


# instance fields
.field private final zzb:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhhe;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhhe;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhhe;->zza:Lcom/google/android/gms/internal/ads/zzhhe;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhhe;->zzb:Ljava/lang/Object;

    return-void
.end method

.method public static zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhhd;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

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
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhhe;

    .line 17
    .line 18
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzhhl;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzhhe;-><init>(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-object v1

    .line 25
    :array_0
    .array-data 8
        -0x5ca9b72303d0e6e9L
        0x7e2e5b12377e7a25L    # 6.352821071027326E299
        -0x4d0a95ae94648151L    # -3.2536076519104267E-63
        -0x40d5e32c9ea0b7e4L    # -1.9922333075200825E-4
    .end array-data
.end method

.method public static zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhhd;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhhe;->zza:Lcom/google/android/gms/internal/ads/zzhhe;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhhe;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzhhe;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    move-object p0, v0

    .line 12
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final zzb()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhhe;->zzb:Ljava/lang/Object;

    return-object v0
.end method
