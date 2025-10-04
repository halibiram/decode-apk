.class public final Lcom/google/android/gms/internal/ads/zzgjs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzb:Lcom/google/android/gms/internal/ads/zzgjt;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjs;->zza:Ljava/lang/Integer;

    .line 3
    throw v0
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgjr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjs;->zza:Ljava/lang/Integer;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgjt;->zzc:Lcom/google/android/gms/internal/ads/zzgjt;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjs;->zzb:Lcom/google/android/gms/internal/ads/zzgjt;

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/ads/zzgjs;
    .locals 3

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x20

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v1, 0x1

    .line 17
    new-array v1, v1, [Ljava/lang/Object;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    aput-object p1, v1, v2

    .line 21
    .line 22
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    const/16 v2, 0xa

    .line 25
    .line 26
    new-array v2, v2, [J

    .line 27
    .line 28
    fill-array-data v2, :array_0

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjs;->zza:Ljava/lang/Integer;

    .line 51
    .line 52
    return-object p0

    .line 53
    :array_0
    .array-data 8
        0x48080c85f98bc034L    # 1.0229278973657896E39
        -0x23976df8a0962bebL    # -1.428698908910944E137
        0x4ce43762fee22a4eL    # 2.5989143077295463E62
        -0x310ab4bb5b9c7ffL    # -6.253142527204406E293
        0x4b76fd40dc4b1becL    # 3.5230955207919873E55
        0x4d4f306e9903338eL    # 2.5660975156820773E64
        -0x506c8f4b1c0c2294L    # -1.6395445661614532E-79
        -0xba80d7b5fcf3728L    # -2.743301843086864E252
        0x4681e196c44c84a0L    # 4.533424498625851E31
        -0x7982806e4bb459dcL    # -2.080085780607055E-277
    .end array-data
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgjt;)Lcom/google/android/gms/internal/ads/zzgjs;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjs;->zzb:Lcom/google/android/gms/internal/ads/zzgjt;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzgjv;
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgjs;->zza:Ljava/lang/Integer;

    .line 3
    .line 4
    if-eqz v1, :cond_1

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgjs;->zzb:Lcom/google/android/gms/internal/ads/zzgjt;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgjv;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgjs;->zzb:Lcom/google/android/gms/internal/ads/zzgjt;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgjv;-><init>(ILcom/google/android/gms/internal/ads/zzgjt;Lcom/google/android/gms/internal/ads/zzgju;)V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 24
    .line 25
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    new-array v0, v0, [J

    .line 28
    .line 29
    fill-array-data v0, :array_0

    .line 30
    .line 31
    .line 32
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v1

    .line 43
    :cond_1
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 44
    .line 45
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array v0, v0, [J

    .line 48
    .line 49
    fill-array-data v0, :array_1

    .line 50
    .line 51
    .line 52
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v1

    .line 63
    :array_0
    .array-data 8
        0x1b6732f28e165d31L    # 1.1449910009003992E-176
        -0x7bf2ae7b4c901680L
        0x5162bef1aa75a4abL    # 1.1380321335973815E84
        0x1b4fb76c1bc682d8L
    .end array-data

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
    .line 78
    .line 79
    .line 80
    :array_1
    .array-data 8
        0x57622e44c2e5e771L    # 8.74459839696284E112
        -0x473dc22f2c3312dfL    # -2.74467100606717E-35
        0xe87adf2c6c5b5b7L
        0x61baa5e2f6258facL    # 5.9943514819117E162
    .end array-data
.end method
