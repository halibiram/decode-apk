.class public final Lcom/google/android/gms/internal/ads/zzbcd;
.super Lcom/google/android/gms/internal/ads/zzgzu;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhbf;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzbcd;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/ads/zzbch;

.field private zzg:Lcom/google/android/gms/internal/ads/zzbcj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcd;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbcd;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzbcd;->zzb:Lcom/google/android/gms/internal/ads/zzbcd;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/zzbcd;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaU(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgzu;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgzu;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzbcc;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcd;->zzb:Lcom/google/android/gms/internal/ads/zzbcd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaA()Lcom/google/android/gms/internal/ads/zzgzp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbcc;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic zzc()Lcom/google/android/gms/internal/ads/zzbcd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcd;->zzb:Lcom/google/android/gms/internal/ads/zzbcd;

    return-object v0
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/ads/zzbcd;Lcom/google/android/gms/internal/ads/zzbch;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcd;->zzf:Lcom/google/android/gms/internal/ads/zzbch;

    .line 5
    .line 6
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbcd;->zzd:I

    .line 7
    .line 8
    or-int/lit8 p1, p1, 0x2

    .line 9
    .line 10
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbcd;->zzd:I

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic zze(Lcom/google/android/gms/internal/ads/zzbcd;Lcom/google/android/gms/internal/ads/zzbcj;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcd;->zzg:Lcom/google/android/gms/internal/ads/zzbcj;

    .line 5
    .line 6
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbcd;->zzd:I

    .line 7
    .line 8
    or-int/lit8 p1, p1, 0x4

    .line 9
    .line 10
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbcd;->zzd:I

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic zzf(Lcom/google/android/gms/internal/ads/zzbcd;I)V
    .locals 1

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbcd;->zze:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbcd;->zzd:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbcd;->zzd:I

    return-void
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    const/4 p2, 0x1

    .line 2
    const/4 p3, 0x5

    .line 3
    const/4 v0, 0x4

    .line 4
    const/4 v1, 0x3

    .line 5
    const/4 v2, 0x2

    .line 6
    add-int/lit8 p1, p1, -0x1

    .line 7
    .line 8
    if-eqz p1, :cond_4

    .line 9
    .line 10
    if-eq p1, v2, :cond_3

    .line 11
    .line 12
    if-eq p1, v1, :cond_2

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    if-eq p1, v0, :cond_1

    .line 16
    .line 17
    if-eq p1, p3, :cond_0

    .line 18
    .line 19
    return-object p2

    .line 20
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcd;->zzb:Lcom/google/android/gms/internal/ads/zzbcd;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbcc;

    .line 24
    .line 25
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbcc;-><init>(Lcom/google/android/gms/internal/ads/zzbbw;)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbcd;

    .line 30
    .line 31
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbcd;-><init>()V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_3
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array v3, v2, [J

    .line 38
    .line 39
    fill-array-data v3, :array_0

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    new-array v4, v2, [J

    .line 52
    .line 53
    fill-array-data v4, :array_1

    .line 54
    .line 55
    .line 56
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 64
    .line 65
    new-array v5, v2, [J

    .line 66
    .line 67
    fill-array-data v5, :array_2

    .line 68
    .line 69
    .line 70
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 78
    .line 79
    new-array v6, v2, [J

    .line 80
    .line 81
    fill-array-data v6, :array_3

    .line 82
    .line 83
    .line 84
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    new-array p3, p3, [Ljava/lang/Object;

    .line 92
    .line 93
    const/4 v6, 0x0

    .line 94
    aput-object p1, p3, v6

    .line 95
    .line 96
    aput-object v3, p3, p2

    .line 97
    .line 98
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcf;->zza:Lcom/google/android/gms/internal/ads/zzgzy;

    .line 99
    .line 100
    aput-object p1, p3, v2

    .line 101
    .line 102
    aput-object v4, p3, v1

    .line 103
    .line 104
    aput-object v5, p3, v0

    .line 105
    .line 106
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcd;->zzb:Lcom/google/android/gms/internal/ads/zzbcd;

    .line 107
    .line 108
    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u1009\u0001\u0003\u1009\u0002"

    .line 109
    .line 110
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaR(Lcom/google/android/gms/internal/ads/zzhbe;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    return-object p1

    .line 115
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    return-object p1

    .line 120
    nop

    :array_0
    .array-data 8
        -0x169e5997ad1f861dL    # -4.2219450309801525E199
        0x743e33a09b374aacL    # 8.649427083487757E251
    .end array-data

    :array_1
    .array-data 8
        0x855465dbbfa2a89L
        0x559c20fa67f76e72L    # 2.5200551480536724E104
    .end array-data

    :array_2
    .array-data 8
        -0x3e527fd819727b01L    # -2.474690432764053E8
        -0x58ab05618508a53dL    # -3.249721244416948E-119
    .end array-data

    :array_3
    .array-data 8
        -0x17d8e3c672c4fa29L    # -5.271957887082905E193
        0x2e26e4fc82feee25L    # 2.3017703926404165E-86
    .end array-data
.end method
