.class final Lcom/google/android/gms/internal/ads/zzhba;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzhaz;

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhaz;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v2, 0x6

    .line 5
    new-array v2, v2, [J

    .line 6
    .line 7
    fill-array-data v2, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/google/android/gms/internal/ads/zzhaz;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    move-object v0, v1

    .line 32
    :catch_0
    sput-object v0, Lcom/google/android/gms/internal/ads/zzhba;->zza:Lcom/google/android/gms/internal/ads/zzhaz;

    .line 33
    .line 34
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhaz;

    .line 35
    .line 36
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhaz;-><init>()V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/google/android/gms/internal/ads/zzhba;->zzb:Lcom/google/android/gms/internal/ads/zzhaz;

    .line 40
    .line 41
    return-void

    .line 42
    nop

    .line 43
    :array_0
    .array-data 8
        0x5ca5482f72f3933aL    # 1.9799760439496405E138
        0x372b446208cafb29L    # 6.113499939728944E-43
        0x86b83b5c7904f36L    # 4.16653830227572E-268
        0x12c39286db0cfd3eL
        -0x7a031d34e295678cL    # -7.956647567837878E-280
        -0x58e8dfcd72153dc7L
    .end array-data
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzhaz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhba;->zza:Lcom/google/android/gms/internal/ads/zzhaz;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/ads/zzhaz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhba;->zzb:Lcom/google/android/gms/internal/ads/zzhaz;

    return-object v0
.end method
