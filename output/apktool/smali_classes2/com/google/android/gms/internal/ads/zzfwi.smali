.class final Lcom/google/android/gms/internal/ads/zzfwi;
.super Lcom/google/android/gms/internal/ads/zzfwz;
.source "SourceFile"


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzfwi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfwi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfwi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfwi;->zza:Lcom/google/android/gms/internal/ads/zzfwi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfwz;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    const v0, 0x79a31aac

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 8
        -0x33a62eb1e8417f76L    # -6.482387530913002E59
        0x2fbb8113be2011d0L    # 9.278553591351784E-79
        0xbcd3c3bdc60160fL
        0x43d4d32ae608fca4L    # 6.0023610733045064E18
    .end array-data
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzfws;)Lcom/google/android/gms/internal/ads/zzfwz;
    .locals 0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzfwi;->zza:Lcom/google/android/gms/internal/ads/zzfwi;

    return-object p1
.end method

.method public final zzb(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x1

    new-array v0, v0, [J

    const-wide v1, -0x2f086d73c51fe706L    # -1.118004630848899E82

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
