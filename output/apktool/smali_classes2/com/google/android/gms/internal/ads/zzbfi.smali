.class public final Lcom/google/android/gms/internal/ads/zzbfi;
.super Lcom/google/android/gms/internal/ads/zzgzu;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhbf;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzbfi;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/ads/zzbew;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbfi;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbfi;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzbfi;->zzb:Lcom/google/android/gms/internal/ads/zzbfi;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/zzbfi;

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
    const/16 v0, 0x3e8

    .line 5
    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbfi;->zze:I

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic zza()Lcom/google/android/gms/internal/ads/zzbfi;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbfi;->zzb:Lcom/google/android/gms/internal/ads/zzbfi;

    return-object v0
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbfi;->zzb:Lcom/google/android/gms/internal/ads/zzbfi;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbfh;

    .line 24
    .line 25
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbfh;-><init>(Lcom/google/android/gms/internal/ads/zzbbw;)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbfi;

    .line 30
    .line 31
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbfi;-><init>()V

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
    new-array p3, p3, [Ljava/lang/Object;

    .line 78
    .line 79
    const/4 v4, 0x0

    .line 80
    aput-object p1, p3, v4

    .line 81
    .line 82
    aput-object v2, p3, p2

    .line 83
    .line 84
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbdc;->zza:Lcom/google/android/gms/internal/ads/zzgzy;

    .line 85
    .line 86
    aput-object p1, p3, v1

    .line 87
    .line 88
    aput-object v3, p3, v0

    .line 89
    .line 90
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbfi;->zzb:Lcom/google/android/gms/internal/ads/zzbfi;

    .line 91
    .line 92
    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u1009\u0001"

    .line 93
    .line 94
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaR(Lcom/google/android/gms/internal/ads/zzhbe;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    return-object p1

    .line 99
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    return-object p1

    .line 104
    nop

    .line 105
    :array_0
    .array-data 8
        -0x3571af62be491feeL    # -1.4177688103397434E51
        -0x76be25c257dcaa7fL    # -4.429277941886188E-264
    .end array-data

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    :array_1
    .array-data 8
        -0x6788443da4f4696aL    # -8.323066137936685E-191
        -0x6f813b8fc576e121L
    .end array-data

    .line 118
    .line 119
    .line 120
    :array_2
    .array-data 8
        -0x4fc0604654b1a8deL    # -2.73109562534946E-76
        0x5337386641d5420fL    # 7.568097200701728E92
    .end array-data
.end method
