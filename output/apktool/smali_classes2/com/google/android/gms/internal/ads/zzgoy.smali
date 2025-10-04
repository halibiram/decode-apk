.class public final Lcom/google/android/gms/internal/ads/zzgoy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgpc;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgxq;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzguy;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzguy;Lcom/google/android/gms/internal/ads/zzgxq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgoy;->zzb:Lcom/google/android/gms/internal/ads/zzguy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgoy;->zza:Lcom/google/android/gms/internal/ads/zzgxq;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzguy;)Lcom/google/android/gms/internal/ads/zzgoy;
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgoy;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzguy;->zzh()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lcom/google/android/gms/internal/ads/zzgpm;->zza:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    new-array v2, v2, [B

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-ge v3, v4, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const/16 v5, 0x21

    .line 27
    .line 28
    if-lt v4, v5, :cond_0

    .line 29
    .line 30
    const/16 v5, 0x7e

    .line 31
    .line 32
    if-gt v4, v5, :cond_0

    .line 33
    .line 34
    int-to-byte v4, v4

    .line 35
    aput-byte v4, v2, v3

    .line 36
    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    const/4 v2, 0x6

    .line 50
    new-array v2, v2, [J

    .line 51
    .line 52
    fill-array-data v2, :array_0

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p0

    .line 76
    :cond_1
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgxq;->zzb([B)Lcom/google/android/gms/internal/ads/zzgxq;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzgoy;-><init>(Lcom/google/android/gms/internal/ads/zzguy;Lcom/google/android/gms/internal/ads/zzgxq;)V

    .line 81
    .line 82
    .line 83
    return-object v0

    .line 84
    nop

    .line 85
    :array_0
    .array-data 8
        0x214ace9ade8008f7L    # 2.620602679156489E-148
        0x2a1caed6272daca3L    # 7.816375769779154E-106
        -0x5eda9f9e297b1196L    # -5.22430603602728E-149
        -0x3dc3d4e98245a653L    # -1.209819785543503E11
        0x31ca107076dc6f78L    # 7.552933637199673E-69
        0x7569a34f9ca1b57cL    # 3.84954434869177E257
    .end array-data
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzguy;)Lcom/google/android/gms/internal/ads/zzgoy;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgoy;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzguy;->zzh()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgpm;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgxq;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzgoy;-><init>(Lcom/google/android/gms/internal/ads/zzguy;Lcom/google/android/gms/internal/ads/zzgxq;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public final zzc()Lcom/google/android/gms/internal/ads/zzguy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgoy;->zzb:Lcom/google/android/gms/internal/ads/zzguy;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzgxq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgoy;->zza:Lcom/google/android/gms/internal/ads/zzgxq;

    return-object v0
.end method
