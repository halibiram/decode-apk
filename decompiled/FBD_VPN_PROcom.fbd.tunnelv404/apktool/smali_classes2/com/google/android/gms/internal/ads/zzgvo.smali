.class public final Lcom/google/android/gms/internal/ads/zzgvo;
.super Lcom/google/android/gms/internal/ads/zzgzu;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhbf;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgvo;

.field private static volatile zzd:Lcom/google/android/gms/internal/ads/zzhbl;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/ads/zzgvr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgvo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgvo;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgvo;->zzb:Lcom/google/android/gms/internal/ads/zzgvo;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/zzgvo;

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

.method public static zzc()Lcom/google/android/gms/internal/ads/zzgvn;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgvo;->zzb:Lcom/google/android/gms/internal/ads/zzgvo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaA()Lcom/google/android/gms/internal/ads/zzgzp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzgvn;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic zzd()Lcom/google/android/gms/internal/ads/zzgvo;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgvo;->zzb:Lcom/google/android/gms/internal/ads/zzgvo;

    return-object v0
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzgyl;Lcom/google/android/gms/internal/ads/zzgzf;)Lcom/google/android/gms/internal/ads/zzgvo;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgvo;->zzb:Lcom/google/android/gms/internal/ads/zzgvo;

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaG(Lcom/google/android/gms/internal/ads/zzgzu;Lcom/google/android/gms/internal/ads/zzgyl;Lcom/google/android/gms/internal/ads/zzgzf;)Lcom/google/android/gms/internal/ads/zzgzu;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/gms/internal/ads/zzgvo;

    .line 8
    .line 9
    return-object p0
.end method

.method public static zzg()Lcom/google/android/gms/internal/ads/zzhbl;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgvo;->zzb:Lcom/google/android/gms/internal/ads/zzgvo;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzgvo;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/gms/internal/ads/zzhbl;

    .line 10
    .line 11
    return-object v0
.end method

.method public static synthetic zzh(Lcom/google/android/gms/internal/ads/zzgvo;Lcom/google/android/gms/internal/ads/zzgvr;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgvo;->zzg:Lcom/google/android/gms/internal/ads/zzgvr;

    .line 5
    .line 6
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgvo;->zze:I

    .line 7
    .line 8
    or-int/lit8 p1, p1, 0x1

    .line 9
    .line 10
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgvo;->zze:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgvo;->zzf:I

    return v0
.end method

.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

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
    if-eqz p1, :cond_7

    .line 7
    .line 8
    if-eq p1, v0, :cond_6

    .line 9
    .line 10
    if-eq p1, p3, :cond_5

    .line 11
    .line 12
    const/4 p2, 0x4

    .line 13
    const/4 p3, 0x0

    .line 14
    if-eq p1, p2, :cond_4

    .line 15
    .line 16
    const/4 p2, 0x5

    .line 17
    if-eq p1, p2, :cond_3

    .line 18
    .line 19
    const/4 p2, 0x6

    .line 20
    if-eq p1, p2, :cond_0

    .line 21
    .line 22
    return-object p3

    .line 23
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgvo;->zzd:Lcom/google/android/gms/internal/ads/zzhbl;

    .line 24
    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    const-class p2, Lcom/google/android/gms/internal/ads/zzgvo;

    .line 28
    .line 29
    monitor-enter p2

    .line 30
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgvo;->zzd:Lcom/google/android/gms/internal/ads/zzhbl;

    .line 31
    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzq;

    .line 35
    .line 36
    sget-object p3, Lcom/google/android/gms/internal/ads/zzgvo;->zzb:Lcom/google/android/gms/internal/ads/zzgvo;

    .line 37
    .line 38
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzgzq;-><init>(Lcom/google/android/gms/internal/ads/zzgzu;)V

    .line 39
    .line 40
    .line 41
    sput-object p1, Lcom/google/android/gms/internal/ads/zzgvo;->zzd:Lcom/google/android/gms/internal/ads/zzhbl;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    monitor-exit p2

    .line 47
    goto :goto_2

    .line 48
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p1

    .line 50
    :cond_2
    :goto_2
    return-object p1

    .line 51
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgvo;->zzb:Lcom/google/android/gms/internal/ads/zzgvo;

    .line 52
    .line 53
    return-object p1

    .line 54
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgvn;

    .line 55
    .line 56
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzgvn;-><init>(Lcom/google/android/gms/internal/ads/zzgvm;)V

    .line 57
    .line 58
    .line 59
    return-object p1

    .line 60
    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgvo;

    .line 61
    .line 62
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgvo;-><init>()V

    .line 63
    .line 64
    .line 65
    return-object p1

    .line 66
    :cond_6
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 67
    .line 68
    new-array v1, v0, [J

    .line 69
    .line 70
    fill-array-data v1, :array_0

    .line 71
    .line 72
    .line 73
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 81
    .line 82
    new-array v2, v0, [J

    .line 83
    .line 84
    fill-array-data v2, :array_1

    .line 85
    .line 86
    .line 87
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 95
    .line 96
    new-array v3, v0, [J

    .line 97
    .line 98
    fill-array-data v3, :array_2

    .line 99
    .line 100
    .line 101
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    new-array p3, p3, [Ljava/lang/Object;

    .line 109
    .line 110
    const/4 v3, 0x0

    .line 111
    aput-object p1, p3, v3

    .line 112
    .line 113
    aput-object v1, p3, p2

    .line 114
    .line 115
    aput-object v2, p3, v0

    .line 116
    .line 117
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgvo;->zzb:Lcom/google/android/gms/internal/ads/zzgvo;

    .line 118
    .line 119
    const-string p2, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\u1009\u0000"

    .line 120
    .line 121
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaR(Lcom/google/android/gms/internal/ads/zzhbe;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    return-object p1

    .line 126
    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    return-object p1

    .line 131
    :array_0
    .array-data 8
        -0x24dd170f2a250701L    # -1.0486195113348626E131
        0x35a93019d9591328L
    .end array-data

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    :array_1
    .array-data 8
        0x2d5e9e150fda8c77L    # 3.75760531910426E-90
        -0x7631ac898a0d10e2L
    .end array-data

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    :array_2
    .array-data 8
        -0x5c97cbab0cb2bac3L
        -0x5d3e6bb3c15e9c5fL    # -2.883190467220003E-141
    .end array-data
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzgvr;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvo;->zzg:Lcom/google/android/gms/internal/ads/zzgvr;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvr;->zzd()Lcom/google/android/gms/internal/ads/zzgvr;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method
