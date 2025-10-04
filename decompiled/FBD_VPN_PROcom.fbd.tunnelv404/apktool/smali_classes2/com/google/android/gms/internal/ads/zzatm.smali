.class public final Lcom/google/android/gms/internal/ads/zzatm;
.super Lcom/google/android/gms/internal/ads/zzgzu;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhbf;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzatm;


# instance fields
.field private zzd:I

.field private zze:J

.field private zzf:Ljava/lang/String;

.field private zzg:Lcom/google/android/gms/internal/ads/zzgyl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzatm;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzatm;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzatm;->zzb:Lcom/google/android/gms/internal/ads/zzatm;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/zzatm;

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
    const-wide v2, 0x21ce58bf933fb9a6L

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
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatm;->zzf:Ljava/lang/String;

    .line 25
    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgyl;->zzb:Lcom/google/android/gms/internal/ads/zzgyl;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatm;->zzg:Lcom/google/android/gms/internal/ads/zzgyl;

    .line 29
    .line 30
    return-void
.end method

.method public static synthetic zzc()Lcom/google/android/gms/internal/ads/zzatm;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzatm;->zzb:Lcom/google/android/gms/internal/ads/zzatm;

    return-object v0
.end method

.method public static zzd()Lcom/google/android/gms/internal/ads/zzatm;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzatm;->zzb:Lcom/google/android/gms/internal/ads/zzatm;

    return-object v0
.end method


# virtual methods
.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzatm;->zze:J

    return-wide v0
.end method

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzatm;->zzb:Lcom/google/android/gms/internal/ads/zzatm;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzatl;

    .line 24
    .line 25
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzatl;-><init>(Lcom/google/android/gms/internal/ads/zzasf;)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzatm;

    .line 30
    .line 31
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzatm;-><init>()V

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzatm;->zzb:Lcom/google/android/gms/internal/ads/zzatm;

    .line 103
    .line 104
    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0004\u0003\u0000\u0000\u0000\u0001\u1002\u0000\u0003\u1008\u0001\u0004\u100a\u0002"

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
        -0x1bcd6487b3a89e9bL    # -4.602152056450773E174
        -0x72929f76b75adcdcL
    .end array-data

    .line 118
    .line 119
    .line 120
    :array_1
    .array-data 8
        -0x3743dec5fc59d348L    # -2.450450438368747E42
        0x5c031d6ea6046dddL    # 1.7366875159850153E135
    .end array-data

    :array_2
    .array-data 8
        -0x4a610176336be749L    # -2.0710111230436721E-50
        0x290a8f73fa5bc1f8L    # 5.522117228265309E-111
    .end array-data

    :array_3
    .array-data 8
        0x7a8f691dcf1adf9eL    # 2.2806694243301217E282
        -0x699ffc1657d0a20bL    # -6.538340702102339E-201
    .end array-data
.end method

.method public final zze()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzatm;->zzd:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
