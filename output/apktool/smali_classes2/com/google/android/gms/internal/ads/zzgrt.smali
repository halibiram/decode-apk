.class public final Lcom/google/android/gms/internal/ads/zzgrt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzggp;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzggp;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgvz;

.field private final zzc:[B


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzggp;Lcom/google/android/gms/internal/ads/zzgvz;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgrt;->zza:Lcom/google/android/gms/internal/ads/zzggp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgrt;->zzb:Lcom/google/android/gms/internal/ads/zzgvz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgrt;->zzc:[B

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzgno;)Lcom/google/android/gms/internal/ads/zzggp;
    .locals 6

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggb;->zza()Lcom/google/android/gms/internal/ads/zzghc;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzgno;->zza(Lcom/google/android/gms/internal/ads/zzghc;)Lcom/google/android/gms/internal/ads/zzgox;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgut;->zza()Lcom/google/android/gms/internal/ads/zzguq;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgox;->zzg()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzguq;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzguq;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgox;->zze()Lcom/google/android/gms/internal/ads/zzgyl;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzguq;->zzc(Lcom/google/android/gms/internal/ads/zzgyl;)Lcom/google/android/gms/internal/ads/zzguq;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgox;->zzb()Lcom/google/android/gms/internal/ads/zzgus;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzguq;->zza(Lcom/google/android/gms/internal/ads/zzgus;)Lcom/google/android/gms/internal/ads/zzguq;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgzp;->zzal()Lcom/google/android/gms/internal/ads/zzgzu;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/google/android/gms/internal/ads/zzgut;

    .line 40
    .line 41
    const-class v3, Lcom/google/android/gms/internal/ads/zzggp;

    .line 42
    .line 43
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzghb;->zzc(Lcom/google/android/gms/internal/ads/zzgut;Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lcom/google/android/gms/internal/ads/zzggp;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgox;->zzc()Lcom/google/android/gms/internal/ads/zzgvz;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    sget-object v3, Lcom/google/android/gms/internal/ads/zzgvz;->zza:Lcom/google/android/gms/internal/ads/zzgvz;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    const/4 v4, 0x1

    .line 60
    if-eq v3, v4, :cond_3

    .line 61
    .line 62
    const/4 v4, 0x2

    .line 63
    const/4 v5, 0x0

    .line 64
    if-eq v3, v4, :cond_2

    .line 65
    .line 66
    const/4 v4, 0x3

    .line 67
    if-eq v3, v4, :cond_1

    .line 68
    .line 69
    const/4 v4, 0x4

    .line 70
    if-ne v3, v4, :cond_0

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 74
    .line 75
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 76
    .line 77
    new-array v0, v0, [J

    .line 78
    .line 79
    fill-array-data v0, :array_0

    .line 80
    .line 81
    .line 82
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p0

    .line 93
    :cond_1
    new-array p0, v5, [B

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    :goto_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgno;->zzb()Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    goto :goto_1

    .line 121
    :cond_3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgno;->zzb()Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 134
    .line 135
    .line 136
    move-result p0

    .line 137
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgrt;

    .line 146
    .line 147
    invoke-direct {v0, v2, v1, p0}, Lcom/google/android/gms/internal/ads/zzgrt;-><init>(Lcom/google/android/gms/internal/ads/zzggp;Lcom/google/android/gms/internal/ads/zzgvz;[B)V

    .line 148
    .line 149
    .line 150
    return-object v0

    .line 151
    :array_0
    .array-data 8
        0x7d9ca33192101e91L    # 1.1705513418980305E297
        -0x6fed97277cb009a4L    # -2.964466858157857E-231
        -0x4b37bc298944ead7L    # -1.9792056942997577E-54
        -0x2f3b3d4ade27e734L    # -1.2308021812601814E81
        -0x37b19628ba24ac9L    # -6.51792798539705E291
    .end array-data
.end method
