.class public final Lcom/google/android/gms/internal/ads/zzath;
.super Lcom/google/android/gms/internal/ads/zzgzu;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhbf;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzath;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/ads/zzgyl;

.field private zzf:Lcom/google/android/gms/internal/ads/zzgyl;

.field private zzg:Lcom/google/android/gms/internal/ads/zzgyl;

.field private zzh:Lcom/google/android/gms/internal/ads/zzgyl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzath;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzath;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzath;->zzb:Lcom/google/android/gms/internal/ads/zzath;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/zzath;

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
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgyl;->zzb:Lcom/google/android/gms/internal/ads/zzgyl;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzath;->zze:Lcom/google/android/gms/internal/ads/zzgyl;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzath;->zzf:Lcom/google/android/gms/internal/ads/zzgyl;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzath;->zzg:Lcom/google/android/gms/internal/ads/zzgyl;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzath;->zzh:Lcom/google/android/gms/internal/ads/zzgyl;

    .line 13
    .line 14
    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzatg;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzath;->zzb:Lcom/google/android/gms/internal/ads/zzath;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaA()Lcom/google/android/gms/internal/ads/zzgzp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzatg;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic zzc()Lcom/google/android/gms/internal/ads/zzath;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzath;->zzb:Lcom/google/android/gms/internal/ads/zzath;

    return-object v0
.end method

.method public static zzd([BLcom/google/android/gms/internal/ads/zzgzf;)Lcom/google/android/gms/internal/ads/zzath;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzath;->zzb:Lcom/google/android/gms/internal/ads/zzath;

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaI(Lcom/google/android/gms/internal/ads/zzgzu;[BLcom/google/android/gms/internal/ads/zzgzf;)Lcom/google/android/gms/internal/ads/zzgzu;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/gms/internal/ads/zzath;

    .line 8
    .line 9
    return-object p0
.end method

.method public static synthetic zzi(Lcom/google/android/gms/internal/ads/zzath;Lcom/google/android/gms/internal/ads/zzgyl;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzath;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzath;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzath;->zze:Lcom/google/android/gms/internal/ads/zzgyl;

    return-void
.end method

.method public static synthetic zzj(Lcom/google/android/gms/internal/ads/zzath;Lcom/google/android/gms/internal/ads/zzgyl;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzath;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzath;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzath;->zzf:Lcom/google/android/gms/internal/ads/zzgyl;

    return-void
.end method

.method public static synthetic zzk(Lcom/google/android/gms/internal/ads/zzath;Lcom/google/android/gms/internal/ads/zzgyl;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzath;->zzd:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzath;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzath;->zzg:Lcom/google/android/gms/internal/ads/zzgyl;

    return-void
.end method

.method public static synthetic zzl(Lcom/google/android/gms/internal/ads/zzath;Lcom/google/android/gms/internal/ads/zzgyl;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzath;->zzd:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzath;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzath;->zzh:Lcom/google/android/gms/internal/ads/zzgyl;

    return-void
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    const/4 p2, 0x1

    .line 2
    const/4 p3, 0x5

    .line 3
    const/4 v0, 0x4

    .line 4
    const/4 v1, 0x3

    .line 5
    const/4 v2, 0x2

    .line 6
    add-int/lit8 p1, p1, -0x1

    .line 7
    .line 8
    if-eqz p1, :cond_4

    .line 9
    .line 10
    if-eq p1, v2, :cond_3

    .line 11
    .line 12
    if-eq p1, v1, :cond_2

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    if-eq p1, v0, :cond_1

    .line 16
    .line 17
    if-eq p1, p3, :cond_0

    .line 18
    .line 19
    return-object p2

    .line 20
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzath;->zzb:Lcom/google/android/gms/internal/ads/zzath;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzatg;

    .line 24
    .line 25
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzatg;-><init>(Lcom/google/android/gms/internal/ads/zzasf;)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzath;

    .line 30
    .line 31
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzath;-><init>()V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_3
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array v3, v2, [J

    .line 38
    .line 39
    fill-array-data v3, :array_0

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    new-array v4, v2, [J

    .line 52
    .line 53
    fill-array-data v4, :array_1

    .line 54
    .line 55
    .line 56
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 64
    .line 65
    new-array v5, v2, [J

    .line 66
    .line 67
    fill-array-data v5, :array_2

    .line 68
    .line 69
    .line 70
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 78
    .line 79
    new-array v6, v2, [J

    .line 80
    .line 81
    fill-array-data v6, :array_3

    .line 82
    .line 83
    .line 84
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 92
    .line 93
    new-array v7, v2, [J

    .line 94
    .line 95
    fill-array-data v7, :array_4

    .line 96
    .line 97
    .line 98
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    new-array p3, p3, [Ljava/lang/Object;

    .line 106
    .line 107
    const/4 v7, 0x0

    .line 108
    aput-object p1, p3, v7

    .line 109
    .line 110
    aput-object v3, p3, p2

    .line 111
    .line 112
    aput-object v4, p3, v2

    .line 113
    .line 114
    aput-object v5, p3, v1

    .line 115
    .line 116
    aput-object v6, p3, v0

    .line 117
    .line 118
    sget-object p1, Lcom/google/android/gms/internal/ads/zzath;->zzb:Lcom/google/android/gms/internal/ads/zzath;

    .line 119
    .line 120
    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u100a\u0000\u0002\u100a\u0001\u0003\u100a\u0002\u0004\u100a\u0003"

    .line 121
    .line 122
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaR(Lcom/google/android/gms/internal/ads/zzhbe;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    return-object p1

    .line 127
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    return-object p1

    .line 132
    nop

    .line 133
    :array_0
    .array-data 8
        0x65fde831ca8969c6L    # 1.9855936414064635E183
        0x570da9f533877fe8L    # 2.2293416632806103E111
    .end array-data

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
    :array_1
    .array-data 8
        0x255c44be01b060acL
        -0x29682c9dd3018f42L    # -1.39889276134697E109
    .end array-data

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
    .line 156
    .line 157
    :array_2
    .array-data 8
        -0x1d56231baebba213L    # -1.9063565916027734E167
        0x1ec19d4bdb1b1dcfL
    .end array-data

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    :array_3
    .array-data 8
        -0x1ecb2e1920fff79eL    # -1.8294348840706285E160
        0x348a2795fbec0b32L    # 1.333335462274234E-55
    .end array-data

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    :array_4
    .array-data 8
        -0x3c7519b61e5ddf05L    # -2.42289740383264608E17
        0x1d1ae13cf583f505L
    .end array-data
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzgyl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzath;->zze:Lcom/google/android/gms/internal/ads/zzgyl;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzgyl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzath;->zzf:Lcom/google/android/gms/internal/ads/zzgyl;

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzgyl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzath;->zzh:Lcom/google/android/gms/internal/ads/zzgyl;

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/internal/ads/zzgyl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzath;->zzg:Lcom/google/android/gms/internal/ads/zzgyl;

    return-object v0
.end method
