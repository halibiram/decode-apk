.class public final Lcom/google/android/gms/internal/ads/zzbel;
.super Lcom/google/android/gms/internal/ads/zzgzu;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhbf;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzbel;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/ads/zzben;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbel;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbel;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzbel;->zzb:Lcom/google/android/gms/internal/ads/zzbel;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/zzbel;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaU(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgzu;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgzu;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v1, v1, [J

    .line 8
    .line 9
    const-wide v2, 0x24e5b9e4003b8fe9L    # 6.121732860549293E-131

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    aput-wide v2, v1, v4

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zze:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic zza()Lcom/google/android/gms/internal/ads/zzbel;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbel;->zzb:Lcom/google/android/gms/internal/ads/zzbel;

    return-object v0
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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbel;->zzb:Lcom/google/android/gms/internal/ads/zzbel;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbek;

    .line 24
    .line 25
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbek;-><init>(Lcom/google/android/gms/internal/ads/zzbbw;)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbel;

    .line 30
    .line 31
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbel;-><init>()V

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
    aput-object v4, p3, v2

    .line 99
    .line 100
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbdc;->zza:Lcom/google/android/gms/internal/ads/zzgzy;

    .line 101
    .line 102
    aput-object p1, p3, v1

    .line 103
    .line 104
    aput-object v5, p3, v0

    .line 105
    .line 106
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbel;->zzb:Lcom/google/android/gms/internal/ads/zzbel;

    .line 107
    .line 108
    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u180c\u0001\u0003\u1009\u0002"

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
        -0x4c9f2116c039f5a1L    # -3.2808410573386705E-61
        0x268789935ac42cb8L    # 4.450720856730146E-123
    .end array-data

    :array_1
    .array-data 8
        -0x26f31525e862bc15L    # -9.333990954693649E120
        -0x71ce545ee6326b08L    # -2.6500283001621E-240
    .end array-data

    :array_2
    .array-data 8
        0x6654e9873686e7ceL    # 8.885819405512972E184
        0x40e00ededa2b3ea2L    # 32886.964131948786
    .end array-data

    :array_3
    .array-data 8
        0x7a7316a19ec60950L
        0x44d257746b765478L    # 3.4646340941960966E23
    .end array-data
.end method
