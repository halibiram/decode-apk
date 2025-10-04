.class final Lcom/google/android/gms/internal/ads/zzgwt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwy;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgxh;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgxh;Lcom/google/android/gms/internal/ads/zzgws;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwt;->zza:Lcom/google/android/gms/internal/ads/zzgxh;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    new-array v1, v1, [J

    .line 19
    .line 20
    fill-array-data v1, :array_1

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgwz;->zzb([Ljava/lang/String;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Ljava/security/Provider;

    .line 53
    .line 54
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgwt;->zza:Lcom/google/android/gms/internal/ads/zzgxh;

    .line 55
    .line 56
    invoke-interface {v2, p1, v1}, Lcom/google/android/gms/internal/ads/zzgxh;->zza(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    return-object p1

    .line 61
    :catch_0
    nop

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwt;->zza:Lcom/google/android/gms/internal/ads/zzgxh;

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgxh;->zza(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    return-object p1

    .line 71
    :array_0
    .array-data 8
        -0x282ea723b4e46cdfL    # -1.067985923876004E115
        0x2cd045a019534086L    # 7.800843949665577E-93
        -0x6a072fa6b4be357bL    # -7.914387366578346E-203
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :array_1
    .array-data 8
        -0x232d09f4554af4ffL    # -1.4112433169364084E139
        -0x120d4bb867795969L    # -4.2256776966932396E221
        0x6be13fb3eb3fea18L    # 4.536561889238565E211
    .end array-data
.end method
