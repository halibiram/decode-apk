.class public final Lcom/google/android/gms/internal/ads/zzgxn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzggp;


# static fields
.field private static final zza:[B


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzgse;

.field private final zzc:I

.field private final zzd:[B

.field private final zze:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgxn;->zza:[B

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgpq;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgxk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpq;->zzd()Lcom/google/android/gms/internal/ads/zzgxr;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggb;->zza()Lcom/google/android/gms/internal/ads/zzghc;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgxr;->zzd(Lcom/google/android/gms/internal/ads/zzghc;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgxk;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxn;->zzb:Lcom/google/android/gms/internal/ads/zzgse;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpq;->zza()Lcom/google/android/gms/internal/ads/zzgpz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgpz;->zzb()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgxn;->zzc:I

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpq;->zzc()Lcom/google/android/gms/internal/ads/zzgxq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxq;->zzc()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxn;->zzd:[B

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpq;->zza()Lcom/google/android/gms/internal/ads/zzgpz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpz;->zze()Lcom/google/android/gms/internal/ads/zzgpx;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgpx;->zzc:Lcom/google/android/gms/internal/ads/zzgpx;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgxn;->zza:[B

    const/4 v0, 0x1

    .line 5
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgxn;->zze:[B

    return-void

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgxn;->zze:[B

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgqm;)V
    .locals 7

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgxm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgqm;->zzd()Lcom/google/android/gms/internal/ads/zzgqx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgqx;->zzf()Lcom/google/android/gms/internal/ads/zzgqu;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgqm;->zze()Lcom/google/android/gms/internal/ads/zzgxr;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggb;->zza()Lcom/google/android/gms/internal/ads/zzghc;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzgxr;->zzd(Lcom/google/android/gms/internal/ads/zzghc;)[B

    move-result-object v3

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v5, 0x2

    new-array v6, v5, [J

    fill-array-data v6, :array_0

    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v5, [J

    fill-array-data v4, :array_1

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgxm;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxn;->zzb:Lcom/google/android/gms/internal/ads/zzgse;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgqm;->zzd()Lcom/google/android/gms/internal/ads/zzgqx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqx;->zzb()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgxn;->zzc:I

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgqm;->zzc()Lcom/google/android/gms/internal/ads/zzgxq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxq;->zzc()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxn;->zzd:[B

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgqm;->zzd()Lcom/google/android/gms/internal/ads/zzgqx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgqx;->zzg()Lcom/google/android/gms/internal/ads/zzgqv;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgqv;->zzc:Lcom/google/android/gms/internal/ads/zzgqv;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgxn;->zza:[B

    const/4 v0, 0x1

    .line 11
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgxn;->zze:[B

    return-void

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgxn;->zze:[B

    return-void

    :array_0
    .array-data 8
        0x3bfce049696f3d5dL    # 9.783610071175025E-20
        0x3b1c4a50bf33bc9aL
    .end array-data

    :array_1
    .array-data 8
        0x449df4012ed99967L    # 3.5362429700475172E22
        -0x5967dfdd94f56e63L    # -9.123858764612723E-123
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgse;I)V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgxn;->zzb:Lcom/google/android/gms/internal/ads/zzgse;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgxn;->zzc:I

    const/4 v0, 0x0

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgxn;->zzd:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgxn;->zze:[B

    new-array v0, v0, [B

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzgse;->zza([BI)[B

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzgpq;)Lcom/google/android/gms/internal/ads/zzggp;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgxn;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgxn;-><init>(Lcom/google/android/gms/internal/ads/zzgpq;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzgqm;)Lcom/google/android/gms/internal/ads/zzggp;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgxn;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgxn;-><init>(Lcom/google/android/gms/internal/ads/zzgqm;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final zzc([B)[B
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgxn;->zze:[B

    .line 5
    .line 6
    array-length v4, v3

    .line 7
    if-lez v4, :cond_0

    .line 8
    .line 9
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzgxn;->zzd:[B

    .line 10
    .line 11
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzgxn;->zzb:Lcom/google/android/gms/internal/ads/zzgse;

    .line 12
    .line 13
    new-array v6, v2, [[B

    .line 14
    .line 15
    aput-object p1, v6, v1

    .line 16
    .line 17
    aput-object v3, v6, v0

    .line 18
    .line 19
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgwp;->zzb([[B)[B

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzgxn;->zzc:I

    .line 24
    .line 25
    invoke-interface {v5, p1, v3}, Lcom/google/android/gms/internal/ads/zzgse;->zza([BI)[B

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-array v2, v2, [[B

    .line 30
    .line 31
    aput-object v4, v2, v1

    .line 32
    .line 33
    aput-object p1, v2, v0

    .line 34
    .line 35
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgwp;->zzb([[B)[B

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgxn;->zzd:[B

    .line 41
    .line 42
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzgxn;->zzb:Lcom/google/android/gms/internal/ads/zzgse;

    .line 43
    .line 44
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzgxn;->zzc:I

    .line 45
    .line 46
    invoke-interface {v4, p1, v5}, Lcom/google/android/gms/internal/ads/zzgse;->zza([BI)[B

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    new-array v2, v2, [[B

    .line 51
    .line 52
    aput-object v3, v2, v1

    .line 53
    .line 54
    aput-object p1, v2, v0

    .line 55
    .line 56
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgwp;->zzb([[B)[B

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1
.end method
