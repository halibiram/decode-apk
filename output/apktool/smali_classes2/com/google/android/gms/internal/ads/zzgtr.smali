.class public final Lcom/google/android/gms/internal/ads/zzgtr;
.super Lcom/google/android/gms/internal/ads/zzgzu;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhbf;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgtr;


# instance fields
.field private zzd:I

.field private zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgtr;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgtr;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgtr;->zzb:Lcom/google/android/gms/internal/ads/zzgtr;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/zzgtr;

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

.method public static zzd()Lcom/google/android/gms/internal/ads/zzgtq;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtr;->zzb:Lcom/google/android/gms/internal/ads/zzgtr;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaA()Lcom/google/android/gms/internal/ads/zzgzp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzgtq;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic zze()Lcom/google/android/gms/internal/ads/zzgtr;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtr;->zzb:Lcom/google/android/gms/internal/ads/zzgtr;

    return-object v0
.end method

.method public static zzf(Lcom/google/android/gms/internal/ads/zzgyl;Lcom/google/android/gms/internal/ads/zzgzf;)Lcom/google/android/gms/internal/ads/zzgtr;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtr;->zzb:Lcom/google/android/gms/internal/ads/zzgtr;

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaG(Lcom/google/android/gms/internal/ads/zzgzu;Lcom/google/android/gms/internal/ads/zzgyl;Lcom/google/android/gms/internal/ads/zzgzf;)Lcom/google/android/gms/internal/ads/zzgzu;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/gms/internal/ads/zzgtr;

    .line 8
    .line 9
    return-object p0
.end method

.method public static synthetic zzg(Lcom/google/android/gms/internal/ads/zzgtr;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgtr;->zzd:I

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgtr;->zzd:I

    return v0
.end method

.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 p2, 0x1

    .line 2
    const/4 p3, 0x2

    .line 3
    add-int/lit8 p1, p1, -0x1

    .line 4
    .line 5
    if-eqz p1, :cond_4

    .line 6
    .line 7
    if-eq p1, p3, :cond_3

    .line 8
    .line 9
    const/4 p2, 0x3

    .line 10
    if-eq p1, p2, :cond_2

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgtr;->zzb:Lcom/google/android/gms/internal/ads/zzgtr;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgtq;

    .line 24
    .line 25
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzgtq;-><init>(Lcom/google/android/gms/internal/ads/zzgtp;)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgtr;

    .line 30
    .line 31
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgtr;-><init>()V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_3
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array v0, p3, [J

    .line 38
    .line 39
    fill-array-data v0, :array_0

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    new-array v1, p3, [J

    .line 52
    .line 53
    fill-array-data v1, :array_1

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    new-array p3, p3, [Ljava/lang/Object;

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    aput-object p1, p3, v1

    .line 67
    .line 68
    aput-object v0, p3, p2

    .line 69
    .line 70
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgtr;->zzb:Lcom/google/android/gms/internal/ads/zzgtr;

    .line 71
    .line 72
    const-string p2, "\u0000\u0002\u0000\u0000\u0002\u0003\u0002\u0000\u0000\u0000\u0002\u000b\u0003\u000b"

    .line 73
    .line 74
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaR(Lcom/google/android/gms/internal/ads/zzhbe;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    return-object p1

    .line 79
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    return-object p1

    .line 84
    nop

    .line 85
    :array_0
    .array-data 8
        0x2617d0aec8ae5f11L
        -0x6f5f0ca1b3a78ad0L
    .end array-data

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    :array_1
    .array-data 8
        -0x891a50819506d07L
        -0x425a01b060a9464L
    .end array-data
.end method

.method public final zzc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgtr;->zze:I

    return v0
.end method
