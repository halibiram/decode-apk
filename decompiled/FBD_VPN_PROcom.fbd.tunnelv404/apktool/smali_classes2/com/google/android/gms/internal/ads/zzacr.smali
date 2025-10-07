.class public final Lcom/google/android/gms/internal/ads/zzacr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:[I

.field private static final zzc:[I

.field private static final zzd:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/gms/internal/ads/zzacr;->zzb:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacr;->zzc:[I

    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacr;->zzd:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x6
        0x6
        0x6
        0x7
        0x8
        0x8
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0x1f40
        0x3e80
        0x7d00
        -0x1
        -0x1
        0x2b11
        0x5622
        0xac44
        -0x1
        -0x1
        0x2ee0
        0x5dc0
        0xbb80
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x40
        0x70
        0x80
        0xc0
        0xe0
        0x100
        0x180
        0x1c0
        0x200
        0x280
        0x300
        0x380
        0x400
        0x480
        0x500
        0x600
        0x780
        0x800
        0x900
        0xa00
        0xa80
        0xb00
        0xb07
        0xb80
        0xc00
        0xf00
        0x1000
        0x1800
        0x1e00
    .end array-data
.end method

.method public static zza([BLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzae;)Lcom/google/android/gms/internal/ads/zzam;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/ads/zzae;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p3, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    aget-byte v1, p0, v0

    .line 4
    .line 5
    const/16 v2, 0x7f

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    const/4 v4, 0x2

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfo;

    .line 12
    .line 13
    array-length v2, p0

    .line 14
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzfo;-><init>([BI)V

    .line 15
    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    array-length v1, p0

    .line 19
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    aget-byte v1, p0, v0

    .line 24
    .line 25
    const/4 v2, -0x2

    .line 26
    if-eq v1, v2, :cond_1

    .line 27
    .line 28
    if-ne v1, v3, :cond_2

    .line 29
    .line 30
    :cond_1
    const/4 v1, 0x0

    .line 31
    :goto_0
    array-length v2, p0

    .line 32
    add-int/2addr v2, v3

    .line 33
    if-ge v1, v2, :cond_2

    .line 34
    .line 35
    aget-byte v2, p0, v1

    .line 36
    .line 37
    add-int/lit8 v5, v1, 0x1

    .line 38
    .line 39
    aget-byte v6, p0, v5

    .line 40
    .line 41
    aput-byte v6, p0, v1

    .line 42
    .line 43
    aput-byte v2, p0, v5

    .line 44
    .line 45
    add-int/2addr v1, v4

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfo;

    .line 48
    .line 49
    array-length v2, p0

    .line 50
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzfo;-><init>([BI)V

    .line 51
    .line 52
    .line 53
    aget-byte v5, p0, v0

    .line 54
    .line 55
    const/16 v6, 0x1f

    .line 56
    .line 57
    if-ne v5, v6, :cond_3

    .line 58
    .line 59
    new-instance v5, Lcom/google/android/gms/internal/ads/zzfo;

    .line 60
    .line 61
    invoke-direct {v5, p0, v2}, Lcom/google/android/gms/internal/ads/zzfo;-><init>([BI)V

    .line 62
    .line 63
    .line 64
    :goto_1
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfo;->zza()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    const/16 v6, 0x10

    .line 69
    .line 70
    if-lt v2, v6, :cond_3

    .line 71
    .line 72
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 73
    .line 74
    .line 75
    const/16 v2, 0xe

    .line 76
    .line 77
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    invoke-virtual {v1, v6, v2}, Lcom/google/android/gms/internal/ads/zzfo;->zzf(II)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    array-length v2, p0

    .line 86
    invoke-virtual {v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzfo;->zzj([BI)V

    .line 87
    .line 88
    .line 89
    :goto_2
    const/16 p0, 0x3c

    .line 90
    .line 91
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 92
    .line 93
    .line 94
    const/4 p0, 0x6

    .line 95
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    sget-object v2, Lcom/google/android/gms/internal/ads/zzacr;->zzb:[I

    .line 100
    .line 101
    aget p0, v2, p0

    .line 102
    .line 103
    const/4 v2, 0x4

    .line 104
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    sget-object v5, Lcom/google/android/gms/internal/ads/zzacr;->zzc:[I

    .line 109
    .line 110
    aget v2, v5, v2

    .line 111
    .line 112
    const/4 v5, 0x5

    .line 113
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    const/16 v6, 0x1d

    .line 118
    .line 119
    if-lt v5, v6, :cond_4

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_4
    sget-object v3, Lcom/google/android/gms/internal/ads/zzacr;->zzd:[I

    .line 123
    .line 124
    aget v3, v3, v5

    .line 125
    .line 126
    mul-int/lit16 v3, v3, 0x3e8

    .line 127
    .line 128
    div-int/2addr v3, v4

    .line 129
    :goto_3
    const/16 v5, 0xa

    .line 130
    .line 131
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-lez v1, :cond_5

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_5
    const/4 p3, 0x0

    .line 142
    :goto_4
    add-int/2addr p0, p3

    .line 143
    new-instance p3, Lcom/google/android/gms/internal/ads/zzak;

    .line 144
    .line 145
    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzak;->zzK(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    .line 149
    .line 150
    .line 151
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 152
    .line 153
    const/4 v0, 0x3

    .line 154
    new-array v0, v0, [J

    .line 155
    .line 156
    fill-array-data v0, :array_0

    .line 157
    .line 158
    .line 159
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzak;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p3, v3}, Lcom/google/android/gms/internal/ads/zzak;->zzx(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/ads/zzak;->zzy(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/ads/zzak;->zzX(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 176
    .line 177
    .line 178
    const/4 p0, 0x0

    .line 179
    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/ads/zzak;->zzE(Lcom/google/android/gms/internal/ads/zzae;)Lcom/google/android/gms/internal/ads/zzak;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzak;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    return-object p0

    .line 190
    nop

    .line 191
    :array_0
    .array-data 8
        -0x1d1ef3a16ac083f1L    # -2.010616011762457E168
        -0x225564b32a54345fL    # -1.622250848642964E143
        -0x514eab7daa1fc870L    # -8.920775861769372E-84
    .end array-data
.end method
