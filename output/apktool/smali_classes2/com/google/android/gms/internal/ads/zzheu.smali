.class public final Lcom/google/android/gms/internal/ads/zzheu;
.super Lcom/google/android/gms/internal/ads/zzgzu;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhbf;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzheu;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/ads/zzgyl;

.field private zzg:Lcom/google/android/gms/internal/ads/zzgyl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzheu;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzheu;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzheu;->zzb:Lcom/google/android/gms/internal/ads/zzheu;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/zzheu;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaU(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgzu;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgzu;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgyl;->zzb:Lcom/google/android/gms/internal/ads/zzgyl;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzheu;->zzf:Lcom/google/android/gms/internal/ads/zzgyl;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzheu;->zzg:Lcom/google/android/gms/internal/ads/zzgyl;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic zza()Lcom/google/android/gms/internal/ads/zzheu;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzheu;->zzb:Lcom/google/android/gms/internal/ads/zzheu;

    return-object v0
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    const/4 p2, 0x1

    .line 2
    const/4 p3, 0x4

    .line 3
    const/4 v0, 0x3

    .line 4
    const/4 v1, 0x2

    .line 5
    add-int/lit8 p1, p1, -0x1

    .line 6
    .line 7
    if-eqz p1, :cond_4

    .line 8
    .line 9
    if-eq p1, v1, :cond_3

    .line 10
    .line 11
    if-eq p1, v0, :cond_2

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    if-eq p1, p3, :cond_1

    .line 15
    .line 16
    const/4 p3, 0x5

    .line 17
    if-eq p1, p3, :cond_0

    .line 18
    .line 19
    return-object p2

    .line 20
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzheu;->zzb:Lcom/google/android/gms/internal/ads/zzheu;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhet;

    .line 24
    .line 25
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzhet;-><init>(Lcom/google/android/gms/internal/ads/zzhdp;)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzheu;

    .line 30
    .line 31
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzheu;-><init>()V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_3
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array v2, v1, [J

    .line 38
    .line 39
    fill-array-data v2, :array_0

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    new-array v3, v1, [J

    .line 52
    .line 53
    fill-array-data v3, :array_1

    .line 54
    .line 55
    .line 56
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 64
    .line 65
    new-array v4, v1, [J

    .line 66
    .line 67
    fill-array-data v4, :array_2

    .line 68
    .line 69
    .line 70
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 78
    .line 79
    new-array v5, v1, [J

    .line 80
    .line 81
    fill-array-data v5, :array_3

    .line 82
    .line 83
    .line 84
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    new-array p3, p3, [Ljava/lang/Object;

    .line 92
    .line 93
    const/4 v5, 0x0

    .line 94
    aput-object p1, p3, v5

    .line 95
    .line 96
    aput-object v2, p3, p2

    .line 97
    .line 98
    aput-object v3, p3, v1

    .line 99
    .line 100
    aput-object v4, p3, v0

    .line 101
    .line 102
    sget-object p1, Lcom/google/android/gms/internal/ads/zzheu;->zzb:Lcom/google/android/gms/internal/ads/zzheu;

    .line 103
    .line 104
    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u100a\u0001\u0003\u100a\u0002"

    .line 105
    .line 106
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaR(Lcom/google/android/gms/internal/ads/zzhbe;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    return-object p1

    .line 111
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    return-object p1

    .line 116
    nop

    .line 117
    :array_0
    .array-data 8
        0x7a9ae320f09870b3L    # 3.9044680470641916E282
        -0xc8e028f6465ea2L    # -6.34315950474728E304
    .end array-data

    .line 118
    .line 119
    .line 120
    :array_1
    .array-data 8
        0xa60c941e2de5a1bL
        0x2ca547b437859ee3L    # 1.2752193437000626E-93
    .end array-data

    :array_2
    .array-data 8
        0x4a74ff59595f80c1L    # 4.910050871198756E50
        -0x75e73bcf24e12ac1L    # -5.033685993027871E-260
    .end array-data

    :array_3
    .array-data 8
        -0x636b88b40c4f6006L
        0x6bae6ed08545ea01L    # 5.0025321326197936E210
    .end array-data
.end method
