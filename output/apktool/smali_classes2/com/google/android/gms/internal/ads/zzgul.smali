.class public final Lcom/google/android/gms/internal/ads/zzgul;
.super Lcom/google/android/gms/internal/ads/zzgzu;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhbf;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgul;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/ads/zzguo;

.field private zzf:I

.field private zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgul;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgul;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgul;->zzb:Lcom/google/android/gms/internal/ads/zzgul;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/zzgul;

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

.method public static zzd()Lcom/google/android/gms/internal/ads/zzguk;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgul;->zzb:Lcom/google/android/gms/internal/ads/zzgul;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaA()Lcom/google/android/gms/internal/ads/zzgzp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzguk;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic zze()Lcom/google/android/gms/internal/ads/zzgul;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgul;->zzb:Lcom/google/android/gms/internal/ads/zzgul;

    return-object v0
.end method

.method public static zzf()Lcom/google/android/gms/internal/ads/zzgul;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgul;->zzb:Lcom/google/android/gms/internal/ads/zzgul;

    return-object v0
.end method

.method public static zzg(Lcom/google/android/gms/internal/ads/zzgyl;Lcom/google/android/gms/internal/ads/zzgzf;)Lcom/google/android/gms/internal/ads/zzgul;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgul;->zzb:Lcom/google/android/gms/internal/ads/zzgul;

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaG(Lcom/google/android/gms/internal/ads/zzgzu;Lcom/google/android/gms/internal/ads/zzgyl;Lcom/google/android/gms/internal/ads/zzgzf;)Lcom/google/android/gms/internal/ads/zzgzu;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/gms/internal/ads/zzgul;

    .line 8
    .line 9
    return-object p0
.end method

.method public static synthetic zzi(Lcom/google/android/gms/internal/ads/zzgul;Lcom/google/android/gms/internal/ads/zzguo;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgul;->zze:Lcom/google/android/gms/internal/ads/zzguo;

    .line 5
    .line 6
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgul;->zzd:I

    .line 7
    .line 8
    or-int/lit8 p1, p1, 0x1

    .line 9
    .line 10
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgul;->zzd:I

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic zzj(Lcom/google/android/gms/internal/ads/zzgul;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgul;->zzf:I

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgul;->zzf:I

    return v0
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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgul;->zzb:Lcom/google/android/gms/internal/ads/zzgul;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzguk;

    .line 24
    .line 25
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzguk;-><init>(Lcom/google/android/gms/internal/ads/zzguj;)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgul;

    .line 30
    .line 31
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgul;-><init>()V

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgul;->zzb:Lcom/google/android/gms/internal/ads/zzgul;

    .line 103
    .line 104
    const-string p2, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u000b\u0003\u000b"

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
        -0x3101553666018d4cL    # -3.3865089993150318E72
        -0x34b8a550210b5c79L    # -4.473784746713861E54
    .end array-data

    .line 118
    .line 119
    .line 120
    :array_1
    .array-data 8
        0x39b9facb3a0968c9L    # 1.2808963037982652E-30
        -0x75bc94eb2d74bee3L
    .end array-data

    :array_2
    .array-data 8
        0x3c2f44b8da87e7cL
        -0x6466fd7fdaffe626L    # -9.874888510026688E-176
    .end array-data

    :array_3
    .array-data 8
        0x796bfbecb62fca3cL    # 7.750988219754591E276
        -0x578ef26a55153bd4L    # -6.924749937664309E-114
    .end array-data
.end method

.method public final zzc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgul;->zzg:I

    return v0
.end method

.method public final zzh()Lcom/google/android/gms/internal/ads/zzguo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgul;->zze:Lcom/google/android/gms/internal/ads/zzguo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguo;->zzf()Lcom/google/android/gms/internal/ads/zzguo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method
