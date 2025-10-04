.class public final Lcom/google/android/gms/internal/ads/zzfww;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfwu;

.field private zzc:Lcom/google/android/gms/internal/ads/zzfwu;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfwv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p2, Lcom/google/android/gms/internal/ads/zzfwu;

    .line 5
    .line 6
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzfwu;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfww;->zzb:Lcom/google/android/gms/internal/ads/zzfwu;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfww;->zzc:Lcom/google/android/gms/internal/ads/zzfwu;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfww;->zza:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfww;->zza:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x7b

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfww;->zzb:Lcom/google/android/gms/internal/ads/zzfwu;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfwu;->zzb:Lcom/google/android/gms/internal/ads/zzfwu;

    .line 21
    .line 22
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    new-array v4, v3, [J

    .line 26
    .line 27
    const-wide v5, 0x41216ef43d64c96fL    # 571258.1199095676

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    aput-wide v5, v4, v7

    .line 34
    .line 35
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    :goto_0
    if-eqz v1, :cond_1

    .line 43
    .line 44
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzfwu;->zza:Ljava/lang/Object;

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    if-eqz v4, :cond_0

    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_0

    .line 60
    .line 61
    new-array v2, v3, [Ljava/lang/Object;

    .line 62
    .line 63
    aput-object v4, v2, v7

    .line 64
    .line 65
    invoke-static {v2}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    add-int/lit8 v4, v4, -0x1

    .line 74
    .line 75
    invoke-virtual {v0, v2, v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    :goto_1
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfwu;->zzb:Lcom/google/android/gms/internal/ads/zzfwu;

    .line 83
    .line 84
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    const/4 v4, 0x2

    .line 87
    new-array v4, v4, [J

    .line 88
    .line 89
    fill-array-data v4, :array_0

    .line 90
    .line 91
    .line 92
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    goto :goto_0

    .line 100
    :cond_1
    const/16 v1, 0x7d

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    return-object v0

    .line 110
    nop

    .line 111
    :array_0
    .array-data 8
        -0x74091d812a4f6cd5L    # -4.994243998798846E-251
        -0x141a47be3cf4d43eL    # -5.712442743913462E211
    .end array-data
.end method

.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfwu;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfwu;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfww;->zzc:Lcom/google/android/gms/internal/ads/zzfwu;

    .line 7
    .line 8
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzfwu;->zzb:Lcom/google/android/gms/internal/ads/zzfwu;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfww;->zzc:Lcom/google/android/gms/internal/ads/zzfwu;

    .line 11
    .line 12
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzfwu;->zza:Ljava/lang/Object;

    .line 13
    .line 14
    return-object p0
.end method
