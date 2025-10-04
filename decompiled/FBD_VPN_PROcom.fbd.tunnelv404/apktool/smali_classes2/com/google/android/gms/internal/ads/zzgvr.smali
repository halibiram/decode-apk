.class public final Lcom/google/android/gms/internal/ads/zzgvr;
.super Lcom/google/android/gms/internal/ads/zzgzu;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhbf;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgvr;


# instance fields
.field private zzd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgvr;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgvr;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgvr;->zzb:Lcom/google/android/gms/internal/ads/zzgvr;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/zzgvr;

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
    const-wide v2, -0x38770e87769d9f7eL    # -4.1444075269502224E36

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
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvr;->zzd:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzgvq;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgvr;->zzb:Lcom/google/android/gms/internal/ads/zzgvr;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaA()Lcom/google/android/gms/internal/ads/zzgzp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzgvq;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic zzc()Lcom/google/android/gms/internal/ads/zzgvr;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgvr;->zzb:Lcom/google/android/gms/internal/ads/zzgvr;

    return-object v0
.end method

.method public static zzd()Lcom/google/android/gms/internal/ads/zzgvr;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgvr;->zzb:Lcom/google/android/gms/internal/ads/zzgvr;

    return-object v0
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzgyl;Lcom/google/android/gms/internal/ads/zzgzf;)Lcom/google/android/gms/internal/ads/zzgvr;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgvr;->zzb:Lcom/google/android/gms/internal/ads/zzgvr;

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaG(Lcom/google/android/gms/internal/ads/zzgzu;Lcom/google/android/gms/internal/ads/zzgyl;Lcom/google/android/gms/internal/ads/zzgzf;)Lcom/google/android/gms/internal/ads/zzgzu;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/gms/internal/ads/zzgvr;

    .line 8
    .line 9
    return-object p0
.end method

.method public static synthetic zzg(Lcom/google/android/gms/internal/ads/zzgvr;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgvr;->zzd:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgvr;->zzb:Lcom/google/android/gms/internal/ads/zzgvr;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgvq;

    .line 24
    .line 25
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzgvq;-><init>(Lcom/google/android/gms/internal/ads/zzgvp;)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgvr;

    .line 30
    .line 31
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgvr;-><init>()V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_3
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array p3, p3, [J

    .line 38
    .line 39
    fill-array-data p3, :array_0

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-array p2, p2, [Ljava/lang/Object;

    .line 50
    .line 51
    const/4 p3, 0x0

    .line 52
    aput-object p1, p2, p3

    .line 53
    .line 54
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgvr;->zzb:Lcom/google/android/gms/internal/ads/zzgvr;

    .line 55
    .line 56
    const-string p3, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0208"

    .line 57
    .line 58
    invoke-static {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaR(Lcom/google/android/gms/internal/ads/zzhbe;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1

    .line 63
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    return-object p1

    .line 68
    nop

    .line 69
    :array_0
    .array-data 8
        -0x38597b4c9e44d902L    # -1.49660186934832E37
        -0xd83af1a85c58a55L
    .end array-data
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvr;->zzd:Ljava/lang/String;

    return-object v0
.end method
