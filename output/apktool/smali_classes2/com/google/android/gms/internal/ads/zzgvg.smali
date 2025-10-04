.class public final Lcom/google/android/gms/internal/ads/zzgvg;
.super Lcom/google/android/gms/internal/ads/zzgzu;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhbf;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgvg;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/ads/zzhad;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgvg;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgvg;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgvg;->zzb:Lcom/google/android/gms/internal/ads/zzgvg;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/zzgvg;

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
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaN()Lcom/google/android/gms/internal/ads/zzhad;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvg;->zze:Lcom/google/android/gms/internal/ads/zzhad;

    .line 9
    .line 10
    return-void
.end method

.method public static zzd()Lcom/google/android/gms/internal/ads/zzgvd;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgvg;->zzb:Lcom/google/android/gms/internal/ads/zzgvg;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaA()Lcom/google/android/gms/internal/ads/zzgzp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzgvd;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic zzf()Lcom/google/android/gms/internal/ads/zzgvg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgvg;->zzb:Lcom/google/android/gms/internal/ads/zzgvg;

    return-object v0
.end method

.method public static zzg(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzgzf;)Lcom/google/android/gms/internal/ads/zzgvg;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgvg;->zzb:Lcom/google/android/gms/internal/ads/zzgvg;

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaH(Lcom/google/android/gms/internal/ads/zzgzu;Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzgzf;)Lcom/google/android/gms/internal/ads/zzgzu;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/gms/internal/ads/zzgvg;

    .line 8
    .line 9
    return-object p0
.end method

.method public static synthetic zzi(Lcom/google/android/gms/internal/ads/zzgvg;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgvg;->zzd:I

    return-void
.end method

.method public static synthetic zzj(Lcom/google/android/gms/internal/ads/zzgvg;Lcom/google/android/gms/internal/ads/zzgvf;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvg;->zze:Lcom/google/android/gms/internal/ads/zzhad;

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhad;->zzc()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaO(Lcom/google/android/gms/internal/ads/zzhad;)Lcom/google/android/gms/internal/ads/zzhad;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvg;->zze:Lcom/google/android/gms/internal/ads/zzhad;

    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgvg;->zze:Lcom/google/android/gms/internal/ads/zzhad;

    .line 19
    .line 20
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvg;->zze:Lcom/google/android/gms/internal/ads/zzhad;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    const/4 p2, 0x1

    .line 2
    const/4 p3, 0x3

    .line 3
    const/4 v0, 0x2

    .line 4
    add-int/lit8 p1, p1, -0x1

    .line 5
    .line 6
    if-eqz p1, :cond_4

    .line 7
    .line 8
    if-eq p1, v0, :cond_3

    .line 9
    .line 10
    if-eq p1, p3, :cond_2

    .line 11
    .line 12
    const/4 p2, 0x4

    .line 13
    const/4 p3, 0x0

    .line 14
    if-eq p1, p2, :cond_1

    .line 15
    .line 16
    const/4 p2, 0x5

    .line 17
    if-eq p1, p2, :cond_0

    .line 18
    .line 19
    return-object p3

    .line 20
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgvg;->zzb:Lcom/google/android/gms/internal/ads/zzgvg;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgvd;

    .line 24
    .line 25
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzgvd;-><init>(Lcom/google/android/gms/internal/ads/zzgvc;)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgvg;

    .line 30
    .line 31
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgvg;-><init>()V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_3
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array v1, v0, [J

    .line 38
    .line 39
    fill-array-data v1, :array_0

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    new-array v2, v0, [J

    .line 52
    .line 53
    fill-array-data v2, :array_1

    .line 54
    .line 55
    .line 56
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    new-array p3, p3, [Ljava/lang/Object;

    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    aput-object p1, p3, v2

    .line 67
    .line 68
    aput-object v1, p3, p2

    .line 69
    .line 70
    const-class p1, Lcom/google/android/gms/internal/ads/zzgvf;

    .line 71
    .line 72
    aput-object p1, p3, v0

    .line 73
    .line 74
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgvg;->zzb:Lcom/google/android/gms/internal/ads/zzgvg;

    .line 75
    .line 76
    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b"

    .line 77
    .line 78
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaR(Lcom/google/android/gms/internal/ads/zzhbe;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    return-object p1

    .line 83
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    return-object p1

    .line 88
    nop

    .line 89
    :array_0
    .array-data 8
        -0x11ad91627728a941L    # -2.665087133724657E223
        -0x55328a21e08bbbd5L
    .end array-data

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    :array_1
    .array-data 8
        0x4c418034084680b2L    # 2.1970852815193983E59
        0x8bcb68d984addccL
    .end array-data
.end method

.method public final zzc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgvg;->zzd:I

    return v0
.end method

.method public final zze(I)Lcom/google/android/gms/internal/ads/zzgvf;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvg;->zze:Lcom/google/android/gms/internal/ads/zzhad;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgvf;

    .line 8
    .line 9
    return-object p1
.end method

.method public final zzh()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvg;->zze:Lcom/google/android/gms/internal/ads/zzhad;

    return-object v0
.end method
