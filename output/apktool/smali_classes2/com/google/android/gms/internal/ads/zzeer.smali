.class public final synthetic Lcom/google/android/gms/internal/ads/zzeer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfkp;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzeer;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeer;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeer;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeer;->zza:Lcom/google/android/gms/internal/ads/zzeer;

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
    check-cast p1, Lorg/json/JSONObject;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    nop

    .line 31
    :array_0
    .array-data 8
        0x2e7ac3d208e8d7a9L    # 8.610874109151579E-85
        0x5055d96e7b60b210L
        0x7a36a1728ada9742L    # 5.134912901302525E280
        0x6b7934d1820dcab0L
    .end array-data
.end method
