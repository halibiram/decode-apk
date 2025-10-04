.class public final Lcom/google/android/gms/internal/ads/zzatq;
.super Lcom/google/android/gms/internal/ads/zzgzu;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhbf;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzatq;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/ads/zzhad;

.field private zzf:Lcom/google/android/gms/internal/ads/zzgyl;

.field private zzg:I

.field private zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzatq;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzatq;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzatq;->zzb:Lcom/google/android/gms/internal/ads/zzatq;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/zzatq;

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
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaN()Lcom/google/android/gms/internal/ads/zzhad;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatq;->zze:Lcom/google/android/gms/internal/ads/zzhad;

    .line 9
    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgyl;->zzb:Lcom/google/android/gms/internal/ads/zzgyl;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzf:Lcom/google/android/gms/internal/ads/zzgyl;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzg:I

    .line 16
    .line 17
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzh:I

    .line 18
    .line 19
    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzatp;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzatq;->zzb:Lcom/google/android/gms/internal/ads/zzatq;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaA()Lcom/google/android/gms/internal/ads/zzgzp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzatp;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic zzc()Lcom/google/android/gms/internal/ads/zzatq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzatq;->zzb:Lcom/google/android/gms/internal/ads/zzatq;

    return-object v0
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/ads/zzatq;Lcom/google/android/gms/internal/ads/zzgyl;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatq;->zze:Lcom/google/android/gms/internal/ads/zzhad;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhad;->zzc()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaO(Lcom/google/android/gms/internal/ads/zzhad;)Lcom/google/android/gms/internal/ads/zzhad;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatq;->zze:Lcom/google/android/gms/internal/ads/zzhad;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzatq;->zze:Lcom/google/android/gms/internal/ads/zzhad;

    .line 16
    .line 17
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static synthetic zze(Lcom/google/android/gms/internal/ads/zzatq;Lcom/google/android/gms/internal/ads/zzgyl;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzf:Lcom/google/android/gms/internal/ads/zzgyl;

    return-void
.end method

.method public static synthetic zzf(Lcom/google/android/gms/internal/ads/zzatq;I)V
    .locals 1

    const/4 p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzh:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzd:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzd:I

    return-void
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzatq;->zzb:Lcom/google/android/gms/internal/ads/zzatq;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzatp;

    .line 24
    .line 25
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzatp;-><init>(Lcom/google/android/gms/internal/ads/zzasf;)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzatq;

    .line 30
    .line 31
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzatq;-><init>()V

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
    const/4 v7, 0x7

    .line 106
    new-array v7, v7, [Ljava/lang/Object;

    .line 107
    .line 108
    const/4 v8, 0x0

    .line 109
    aput-object p1, v7, v8

    .line 110
    .line 111
    aput-object v3, v7, p2

    .line 112
    .line 113
    aput-object v4, v7, v2

    .line 114
    .line 115
    aput-object v5, v7, v1

    .line 116
    .line 117
    sget-object p1, Lcom/google/android/gms/internal/ads/zzatk;->zza:Lcom/google/android/gms/internal/ads/zzgzy;

    .line 118
    .line 119
    aput-object p1, v7, v0

    .line 120
    .line 121
    aput-object v6, v7, p3

    .line 122
    .line 123
    sget-object p1, Lcom/google/android/gms/internal/ads/zzati;->zza:Lcom/google/android/gms/internal/ads/zzgzy;

    .line 124
    .line 125
    const/4 p2, 0x6

    .line 126
    aput-object p1, v7, p2

    .line 127
    .line 128
    sget-object p1, Lcom/google/android/gms/internal/ads/zzatq;->zzb:Lcom/google/android/gms/internal/ads/zzatq;

    .line 129
    .line 130
    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001c\u0002\u100a\u0000\u0003\u180c\u0001\u0004\u180c\u0002"

    .line 131
    .line 132
    invoke-static {p1, p2, v7}, Lcom/google/android/gms/internal/ads/zzgzu;->zzaR(Lcom/google/android/gms/internal/ads/zzhbe;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    return-object p1

    .line 137
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    return-object p1

    .line 142
    nop

    .line 143
    :array_0
    .array-data 8
        0x87b7a204fdf9980L
        -0x398273a7a8ac47aaL    # -3.745682259441643E31
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
    :array_1
    .array-data 8
        0x297697dba39e118L
        -0x170256bd0ac9d43eL    # -5.543008789568256E197
    .end array-data

    .line 156
    .line 157
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
    :array_2
    .array-data 8
        0x77314cbc19017703L    # 1.3945557783481636E266
        -0x4100f9c8bac3380aL    # -2.9587059841414098E-5
    .end array-data

    .line 168
    .line 169
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
    :array_3
    .array-data 8
        0x23af52034d9c214L
        0x268c04f12bc102bcL    # 5.298209663581648E-123
    .end array-data

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    :array_4
    .array-data 8
        0x21474c793e6f5e84L
        -0x6cc88afca0517f49L    # -4.252821173364878E-216
    .end array-data
.end method
