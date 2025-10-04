.class final Lcom/google/android/gms/internal/ads/zzgzi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzgzg;

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgzg;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzh;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgzh;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgzi;->zza:Lcom/google/android/gms/internal/ads/zzgzg;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :try_start_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v2, 0x6

    .line 12
    new-array v2, v2, [J

    .line 13
    .line 14
    fill-array-data v2, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/google/android/gms/internal/ads/zzgzg;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    move-object v0, v1

    .line 39
    :catch_0
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgzi;->zzb:Lcom/google/android/gms/internal/ads/zzgzg;

    .line 40
    .line 41
    return-void

    .line 42
    nop

    .line 43
    :array_0
    .array-data 8
        -0x694cd95dbc864301L    # -2.501913972634096E-199
        -0x496f216aa8a3a26L    # -2.980498372155087E286
        -0x5ebffb7e934e5cf1L    # -1.565847944825115E-148
        0x35978b7756862206L    # 1.5732420756265748E-50
        0x4aeb2a4e3f756e58L    # 8.130983281964685E52
        -0x61a22d0589d5cd24L
    .end array-data
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzgzg;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgzi;->zzb:Lcom/google/android/gms/internal/ads/zzgzg;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v2, 0x7

    .line 11
    new-array v2, v2, [J

    .line 12
    .line 13
    fill-array-data v2, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0

    .line 27
    :array_0
    .array-data 8
        0x20e90b01c668fe62L
        -0x6439d03e3ca7d144L    # -7.008132582842274E-175
        0x424ba6c0614a472bL    # 2.37523485332556E11
        0x41a9c9a638b9e3fcL    # 2.163228443630675E8
        0x28e6b89adace2cddL
        0x749c01d2731acd70L    # 5.133396133564852E253
        0x67aeb730a6d019d1L    # 2.7370710485111675E191
    .end array-data
.end method

.method public static zzb()Lcom/google/android/gms/internal/ads/zzgzg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgzi;->zza:Lcom/google/android/gms/internal/ads/zzgzg;

    return-object v0
.end method
