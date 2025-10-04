.class public final Lcom/google/android/gms/internal/ads/zzadk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zzc:Ljava/util/regex/Pattern;


# instance fields
.field public zza:I

.field public zzb:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v1, 0x8

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzadk;->zzc:Ljava/util/regex/Pattern;

    return-void

    nop

    :array_0
    .array-data 8
        -0x192f52de1c25e1baL    # -1.8139987239788366E187
        0x1747bc2f47a601d5L
        0x5e33598721b2cf81L    # 6.040495472460541E145
        -0x3f3ade6ba50e0edaL    # -10819.159025423764
        -0x1785e8be79455e94L
        0x4b67eb63fb31adb7L    # 1.8328259209785526E55
        -0x4d933ab2934105a2L    # -8.537320348212904E-66
        0x2c4d410be05107eeL    # 2.739163391445772E-95
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzadk;->zza:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzb:I

    return-void
.end method

.method private final zzc(Ljava/lang/String;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzadk;->zzc:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sget v2, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 19
    .line 20
    const/16 v2, 0x10

    .line 21
    .line 22
    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v3, 0x2

    .line 27
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-gtz v1, :cond_0

    .line 36
    .line 37
    if-lez p1, :cond_1

    .line 38
    .line 39
    :cond_0
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzadk;->zza:I

    .line 40
    .line 41
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzb:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    return v0

    .line 44
    :catch_0
    :cond_1
    const/4 p1, 0x0

    .line 45
    return p1
.end method


# virtual methods
.method public final zza()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzadk;->zza:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzb:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzby;)Z
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzby;->zza()I

    .line 6
    .line 7
    .line 8
    move-result v4

    .line 9
    if-ge v3, v4, :cond_3

    .line 10
    .line 11
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzby;->zzb(I)Lcom/google/android/gms/internal/ads/zzbx;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    instance-of v5, v4, Lcom/google/android/gms/internal/ads/zzagk;

    .line 16
    .line 17
    if-eqz v5, :cond_1

    .line 18
    .line 19
    check-cast v4, Lcom/google/android/gms/internal/ads/zzagk;

    .line 20
    .line 21
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzagk;->zzb:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    new-array v7, v0, [J

    .line 26
    .line 27
    fill-array-data v7, :array_0

    .line 28
    .line 29
    .line 30
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_2

    .line 42
    .line 43
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzagk;->zzc:Ljava/lang/String;

    .line 44
    .line 45
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzadk;->zzc(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-nez v4, :cond_0

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    return v1

    .line 53
    :cond_1
    instance-of v5, v4, Lcom/google/android/gms/internal/ads/zzagt;

    .line 54
    .line 55
    if-eqz v5, :cond_2

    .line 56
    .line 57
    check-cast v4, Lcom/google/android/gms/internal/ads/zzagt;

    .line 58
    .line 59
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzagt;->zza:Ljava/lang/String;

    .line 60
    .line 61
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    const/4 v7, 0x3

    .line 64
    new-array v7, v7, [J

    .line 65
    .line 66
    fill-array-data v7, :array_1

    .line 67
    .line 68
    .line 69
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-eqz v5, :cond_2

    .line 81
    .line 82
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzagt;->zzb:Ljava/lang/String;

    .line 83
    .line 84
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    new-array v7, v0, [J

    .line 87
    .line 88
    fill-array-data v7, :array_2

    .line 89
    .line 90
    .line 91
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-eqz v5, :cond_2

    .line 103
    .line 104
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzagt;->zzc:Ljava/lang/String;

    .line 105
    .line 106
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzadk;->zzc(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-eqz v4, :cond_2

    .line 111
    .line 112
    return v1

    .line 113
    :cond_2
    :goto_1
    add-int/2addr v3, v1

    .line 114
    goto :goto_0

    .line 115
    :cond_3
    return v2

    .line 116
    nop

    .line 117
    :array_0
    .array-data 8
        -0x5054c721d19b1a03L    # -4.591699049607758E-79
        -0x2fa67770f0d4898dL    # -1.1826278168673758E79
    .end array-data

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    :array_1
    .array-data 8
        0x44eea7e261d0da6cL    # 1.1581433063628856E24
        0xb61c91b19c0fdf9L
        -0x19b12d55d32b99b0L    # -6.548487242923206E184
    .end array-data

    .line 130
    .line 131
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
    .line 144
    .line 145
    :array_2
    .array-data 8
        -0xddb3cb20c2fed46L    # -6.922368580352689E241
        0x154762720bf7d437L    # 3.6418499337137E-206
    .end array-data
.end method
