.class public final Lcom/google/android/gms/internal/ads/zzank;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamy;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfp;

.field private zzb:Lcom/google/android/gms/internal/ads/zzaea;

.field private zzc:Z

.field private zzd:J

.field private zze:I

.field private zzf:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfp;

    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfp;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 12
    .line 13
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzd:J

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfp;)V
    .locals 8

    .line 1
    const/4 v0, 0x3

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzb:Lcom/google/android/gms/internal/ads/zzaea;

    .line 3
    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzc:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzank;->zzf:I

    .line 17
    .line 18
    const/16 v3, 0xa

    .line 19
    .line 20
    if-ge v2, v3, :cond_3

    .line 21
    .line 22
    rsub-int/lit8 v2, v2, 0xa

    .line 23
    .line 24
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzd()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzank;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 37
    .line 38
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzank;->zzf:I

    .line 43
    .line 44
    invoke-static {v4, v5, v6, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    .line 46
    .line 47
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzank;->zzf:I

    .line 48
    .line 49
    add-int/2addr v4, v2

    .line 50
    if-ne v4, v3, :cond_3

    .line 51
    .line 52
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzank;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzank;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    const/16 v5, 0x49

    .line 65
    .line 66
    if-ne v2, v5, :cond_2

    .line 67
    .line 68
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzank;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    const/16 v5, 0x44

    .line 75
    .line 76
    if-ne v2, v5, :cond_2

    .line 77
    .line 78
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzank;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    const/16 v5, 0x33

    .line 85
    .line 86
    if-eq v2, v5, :cond_1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzank;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 90
    .line 91
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzL(I)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzl()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    add-int/2addr v0, v3

    .line 101
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zze:I

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    :goto_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 105
    .line 106
    new-array v0, v0, [J

    .line 107
    .line 108
    fill-array-data v0, :array_0

    .line 109
    .line 110
    .line 111
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 119
    .line 120
    const/4 v1, 0x5

    .line 121
    new-array v1, v1, [J

    .line 122
    .line 123
    fill-array-data v1, :array_1

    .line 124
    .line 125
    .line 126
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzank;->zzc:Z

    .line 137
    .line 138
    return-void

    .line 139
    :cond_3
    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zze:I

    .line 140
    .line 141
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzank;->zzf:I

    .line 142
    .line 143
    sub-int/2addr v0, v2

    .line 144
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzb:Lcom/google/android/gms/internal/ads/zzaea;

    .line 149
    .line 150
    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzaea;->zzr(Lcom/google/android/gms/internal/ads/zzfp;I)V

    .line 151
    .line 152
    .line 153
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzf:I

    .line 154
    .line 155
    add-int/2addr p1, v0

    .line 156
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzf:I

    .line 157
    .line 158
    return-void

    .line 159
    :array_0
    .array-data 8
        -0x4702af1060650fe0L
        0x7f262d2ea149ef15L    # 3.0415747683794784E304
        0x5932bde1226a3f6cL    # 4.839579522172284E121
    .end array-data

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
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    :array_1
    .array-data 8
        -0x5d92559859f9ff8eL    # -7.602314811175684E-143
        -0x39dd00c83aade799L    # -7.525465127509342E29
        0x3634fca6274efa79L    # 1.4359826746606926E-47
        -0x71a22bd929a00a42L
        -0x6cdca76020e1dbd5L
    .end array-data
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzacx;Lcom/google/android/gms/internal/ads/zzaok;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaok;->zzc()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaok;->zza()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x5

    .line 9
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzacx;->zzw(II)Lcom/google/android/gms/internal/ads/zzaea;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzb:Lcom/google/android/gms/internal/ads/zzaea;

    .line 14
    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/zzak;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaok;->zzb()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzak;->zzK(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    .line 25
    .line 26
    .line 27
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/4 v1, 0x3

    .line 30
    new-array v1, v1, [J

    .line 31
    .line 32
    fill-array-data v1, :array_0

    .line 33
    .line 34
    .line 35
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzak;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzaea;->zzl(Lcom/google/android/gms/internal/ads/zzam;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :array_0
    .array-data 8
        0x5d8938d7912ed98L    # 1.6923957200008338E-280
        0x741922ad835a57d9L    # 1.79963006685857E251
        0x172e90cf55acbc46L
    .end array-data
.end method

.method public final zzc(Z)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzb:Lcom/google/android/gms/internal/ads/zzaea;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzc:Z

    .line 7
    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zze:I

    .line 11
    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzf:I

    .line 15
    .line 16
    if-eq v0, p1, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzd:J

    .line 20
    .line 21
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    cmp-long v4, v0, v2

    .line 28
    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzf(Z)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzb:Lcom/google/android/gms/internal/ads/zzaea;

    .line 38
    .line 39
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzank;->zzd:J

    .line 40
    .line 41
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzank;->zze:I

    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v7, 0x0

    .line 45
    const/4 v4, 0x1

    .line 46
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaea;->zzt(JIIILcom/google/android/gms/internal/ads/zzadz;)V

    .line 47
    .line 48
    .line 49
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzc:Z

    .line 50
    .line 51
    :cond_2
    :goto_1
    return-void
.end method

.method public final zzd(JI)V
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzank;->zzc:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzd:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zze:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzank;->zzf:I

    return-void
.end method

.method public final zze()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzc:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzank;->zzd:J

    return-void
.end method
