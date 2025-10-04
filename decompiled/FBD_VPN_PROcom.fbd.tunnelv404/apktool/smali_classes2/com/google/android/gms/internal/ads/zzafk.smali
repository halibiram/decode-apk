.class final Lcom/google/android/gms/internal/ads/zzafk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzacu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfp;

.field private zzb:Lcom/google/android/gms/internal/ads/zzacx;

.field private zzc:I

.field private zzd:I

.field private zze:I

.field private zzf:J

.field private zzg:Lcom/google/android/gms/internal/ads/zzahe;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzh:Lcom/google/android/gms/internal/ads/zzacv;

.field private zzi:Lcom/google/android/gms/internal/ads/zzafn;

.field private zzj:Lcom/google/android/gms/internal/ads/zzajh;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


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
    const/4 v1, 0x6

    .line 7
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfp;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzafk;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 11
    .line 12
    const-wide/16 v0, -0x1

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzafk;->zzf:J

    .line 15
    .line 16
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzacv;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafk;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzH(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafk;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast p1, Lcom/google/android/gms/internal/ads/zzack;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {p1, v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzack;->zzm([BIIZ)Z

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafk;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzq()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method private final zzf()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzbx;

    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzafk;->zzg([Lcom/google/android/gms/internal/ads/zzbx;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafk;->zzb:Lcom/google/android/gms/internal/ads/zzacx;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzacx;->zzD()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafk;->zzb:Lcom/google/android/gms/internal/ads/zzacx;

    .line 16
    .line 17
    new-instance v1, Lcom/google/android/gms/internal/ads/zzadt;

    .line 18
    .line 19
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    const-wide/16 v4, 0x0

    .line 25
    .line 26
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzadt;-><init>(JJ)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzacx;->zzO(Lcom/google/android/gms/internal/ads/zzadu;)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x6

    .line 33
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzafk;->zzc:I

    .line 34
    .line 35
    return-void
.end method

.method private final varargs zzg([Lcom/google/android/gms/internal/ads/zzbx;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafk;->zzb:Lcom/google/android/gms/internal/ads/zzacx;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x400

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzacx;->zzw(II)Lcom/google/android/gms/internal/ads/zzaea;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/google/android/gms/internal/ads/zzak;

    .line 14
    .line 15
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v3, 0x3

    .line 21
    new-array v3, v3, [J

    .line 22
    .line 23
    fill-array-data v3, :array_0

    .line 24
    .line 25
    .line 26
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzak;->zzB(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    .line 34
    .line 35
    .line 36
    new-instance v2, Lcom/google/android/gms/internal/ads/zzby;

    .line 37
    .line 38
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    invoke-direct {v2, v3, v4, p1}, Lcom/google/android/gms/internal/ads/zzby;-><init>(J[Lcom/google/android/gms/internal/ads/zzbx;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzak;->zzP(Lcom/google/android/gms/internal/ads/zzby;)Lcom/google/android/gms/internal/ads/zzak;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaea;->zzl(Lcom/google/android/gms/internal/ads/zzam;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :array_0
    .array-data 8
        -0x6eac9c053ad32132L
        0x58643c98d7213c32L    # 6.378934886885638E117
        -0x549f540e908bb90cL    # -9.527744449031126E-100
    .end array-data
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzacv;Lcom/google/android/gms/internal/ads/zzadr;)I
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x5

    .line 8
    const/4 v4, -0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x1

    .line 11
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzafk;->zzc:I

    .line 12
    .line 13
    const/4 v8, 0x4

    .line 14
    const-wide/16 v9, -0x1

    .line 15
    .line 16
    const/4 v11, 0x2

    .line 17
    if-eqz v7, :cond_18

    .line 18
    .line 19
    if-eq v7, v6, :cond_17

    .line 20
    .line 21
    if-eq v7, v11, :cond_a

    .line 22
    .line 23
    if-eq v7, v8, :cond_5

    .line 24
    .line 25
    if-eq v7, v3, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x6

    .line 28
    if-ne v7, v1, :cond_0

    .line 29
    .line 30
    return v4

    .line 31
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 34
    .line 35
    .line 36
    throw v1

    .line 37
    :cond_1
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzafk;->zzi:Lcom/google/android/gms/internal/ads/zzafn;

    .line 38
    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzafk;->zzh:Lcom/google/android/gms/internal/ads/zzacv;

    .line 42
    .line 43
    if-eq v1, v3, :cond_3

    .line 44
    .line 45
    :cond_2
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzafk;->zzh:Lcom/google/android/gms/internal/ads/zzacv;

    .line 46
    .line 47
    new-instance v3, Lcom/google/android/gms/internal/ads/zzafn;

    .line 48
    .line 49
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzafk;->zzf:J

    .line 50
    .line 51
    invoke-direct {v3, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzafn;-><init>(Lcom/google/android/gms/internal/ads/zzacv;J)V

    .line 52
    .line 53
    .line 54
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzafk;->zzi:Lcom/google/android/gms/internal/ads/zzafn;

    .line 55
    .line 56
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafk;->zzj:Lcom/google/android/gms/internal/ads/zzajh;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzafk;->zzi:Lcom/google/android/gms/internal/ads/zzafn;

    .line 62
    .line 63
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzajh;->zzb(Lcom/google/android/gms/internal/ads/zzacv;Lcom/google/android/gms/internal/ads/zzadr;)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-ne v1, v6, :cond_4

    .line 68
    .line 69
    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzadr;->zza:J

    .line 70
    .line 71
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzafk;->zzf:J

    .line 72
    .line 73
    add-long/2addr v3, v5

    .line 74
    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzadr;->zza:J

    .line 75
    .line 76
    :cond_4
    return v1

    .line 77
    :cond_5
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    .line 78
    .line 79
    .line 80
    move-result-wide v7

    .line 81
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzafk;->zzf:J

    .line 82
    .line 83
    cmp-long v4, v7, v9

    .line 84
    .line 85
    if-nez v4, :cond_9

    .line 86
    .line 87
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafk;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-interface {v1, v2, v5, v6, v6}, Lcom/google/android/gms/internal/ads/zzacv;->zzm([BIIZ)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-nez v2, :cond_6

    .line 98
    .line 99
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafk;->zzf()V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_6
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzj()V

    .line 104
    .line 105
    .line 106
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafk;->zzj:Lcom/google/android/gms/internal/ads/zzajh;

    .line 107
    .line 108
    if-nez v2, :cond_7

    .line 109
    .line 110
    new-instance v2, Lcom/google/android/gms/internal/ads/zzajh;

    .line 111
    .line 112
    sget-object v4, Lcom/google/android/gms/internal/ads/zzakp;->zza:Lcom/google/android/gms/internal/ads/zzakp;

    .line 113
    .line 114
    const/16 v7, 0x8

    .line 115
    .line 116
    invoke-direct {v2, v4, v7}, Lcom/google/android/gms/internal/ads/zzajh;-><init>(Lcom/google/android/gms/internal/ads/zzakp;I)V

    .line 117
    .line 118
    .line 119
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzafk;->zzj:Lcom/google/android/gms/internal/ads/zzajh;

    .line 120
    .line 121
    :cond_7
    new-instance v2, Lcom/google/android/gms/internal/ads/zzafn;

    .line 122
    .line 123
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzafk;->zzf:J

    .line 124
    .line 125
    invoke-direct {v2, v1, v7, v8}, Lcom/google/android/gms/internal/ads/zzafn;-><init>(Lcom/google/android/gms/internal/ads/zzacv;J)V

    .line 126
    .line 127
    .line 128
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzafk;->zzi:Lcom/google/android/gms/internal/ads/zzafn;

    .line 129
    .line 130
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafk;->zzj:Lcom/google/android/gms/internal/ads/zzajh;

    .line 131
    .line 132
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzajh;->zze(Lcom/google/android/gms/internal/ads/zzacv;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_8

    .line 137
    .line 138
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafk;->zzj:Lcom/google/android/gms/internal/ads/zzajh;

    .line 139
    .line 140
    new-instance v2, Lcom/google/android/gms/internal/ads/zzafp;

    .line 141
    .line 142
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzafk;->zzf:J

    .line 143
    .line 144
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzafk;->zzb:Lcom/google/android/gms/internal/ads/zzacx;

    .line 145
    .line 146
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    invoke-direct {v2, v7, v8, v4}, Lcom/google/android/gms/internal/ads/zzafp;-><init>(JLcom/google/android/gms/internal/ads/zzacx;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzajh;->zzc(Lcom/google/android/gms/internal/ads/zzacx;)V

    .line 153
    .line 154
    .line 155
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafk;->zzg:Lcom/google/android/gms/internal/ads/zzahe;

    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    new-array v2, v6, [Lcom/google/android/gms/internal/ads/zzbx;

    .line 161
    .line 162
    aput-object v1, v2, v5

    .line 163
    .line 164
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzafk;->zzg([Lcom/google/android/gms/internal/ads/zzbx;)V

    .line 165
    .line 166
    .line 167
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzafk;->zzc:I

    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafk;->zzf()V

    .line 171
    .line 172
    .line 173
    :goto_0
    return v5

    .line 174
    :cond_9
    iput-wide v9, v2, Lcom/google/android/gms/internal/ads/zzadr;->zza:J

    .line 175
    .line 176
    return v6

    .line 177
    :cond_a
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzafk;->zzd:I

    .line 178
    .line 179
    const v6, 0xffe1

    .line 180
    .line 181
    .line 182
    if-ne v2, v6, :cond_16

    .line 183
    .line 184
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfp;

    .line 185
    .line 186
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzafk;->zze:I

    .line 187
    .line 188
    invoke-direct {v2, v6}, Lcom/google/android/gms/internal/ads/zzfp;-><init>(I)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzafk;->zze:I

    .line 196
    .line 197
    move-object v8, v1

    .line 198
    check-cast v8, Lcom/google/android/gms/internal/ads/zzack;

    .line 199
    .line 200
    invoke-virtual {v8, v6, v5, v7, v5}, Lcom/google/android/gms/internal/ads/zzack;->zzn([BIIZ)Z

    .line 201
    .line 202
    .line 203
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzafk;->zzg:Lcom/google/android/gms/internal/ads/zzahe;

    .line 204
    .line 205
    if-nez v6, :cond_15

    .line 206
    .line 207
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzfp;->zzx(C)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 212
    .line 213
    new-array v3, v3, [J

    .line 214
    .line 215
    fill-array-data v3, :array_0

    .line 216
    .line 217
    .line 218
    invoke-direct {v7, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    if-eqz v3, :cond_15

    .line 230
    .line 231
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzfp;->zzx(C)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    if-eqz v2, :cond_15

    .line 236
    .line 237
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzd()J

    .line 238
    .line 239
    .line 240
    move-result-wide v6

    .line 241
    cmp-long v3, v6, v9

    .line 242
    .line 243
    if-nez v3, :cond_c

    .line 244
    .line 245
    :cond_b
    :goto_1
    const/4 v1, 0x0

    .line 246
    goto/16 :goto_5

    .line 247
    .line 248
    :cond_c
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzafq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzafm;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    if-nez v2, :cond_d

    .line 253
    .line 254
    goto :goto_1

    .line 255
    :cond_d
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzafm;->zzb:Ljava/util/List;

    .line 256
    .line 257
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    if-ge v3, v11, :cond_e

    .line 262
    .line 263
    goto :goto_1

    .line 264
    :cond_e
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzafm;->zzb:Ljava/util/List;

    .line 265
    .line 266
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    add-int/2addr v3, v4

    .line 271
    move-wide v12, v9

    .line 272
    move-wide v14, v12

    .line 273
    move-wide/from16 v18, v14

    .line 274
    .line 275
    move-wide/from16 v20, v18

    .line 276
    .line 277
    const/4 v8, 0x0

    .line 278
    :goto_2
    if-ltz v3, :cond_13

    .line 279
    .line 280
    iget-object v11, v2, Lcom/google/android/gms/internal/ads/zzafm;->zzb:Ljava/util/List;

    .line 281
    .line 282
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v11

    .line 286
    check-cast v11, Lcom/google/android/gms/internal/ads/zzafl;

    .line 287
    .line 288
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzafl;->zza:Ljava/lang/String;

    .line 289
    .line 290
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 291
    .line 292
    const/4 v9, 0x3

    .line 293
    new-array v9, v9, [J

    .line 294
    .line 295
    fill-array-data v9, :array_1

    .line 296
    .line 297
    .line 298
    invoke-direct {v5, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v5

    .line 305
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    or-int/2addr v1, v8

    .line 310
    if-nez v3, :cond_f

    .line 311
    .line 312
    iget-wide v8, v11, Lcom/google/android/gms/internal/ads/zzafl;->zzd:J

    .line 313
    .line 314
    sub-long/2addr v6, v8

    .line 315
    const-wide/16 v8, 0x0

    .line 316
    .line 317
    :goto_3
    move-wide/from16 v22, v6

    .line 318
    .line 319
    move-wide v6, v8

    .line 320
    move-wide/from16 v8, v22

    .line 321
    .line 322
    goto :goto_4

    .line 323
    :cond_f
    iget-wide v8, v11, Lcom/google/android/gms/internal/ads/zzafl;->zzc:J

    .line 324
    .line 325
    sub-long v8, v6, v8

    .line 326
    .line 327
    goto :goto_3

    .line 328
    :goto_4
    if-eqz v1, :cond_10

    .line 329
    .line 330
    cmp-long v5, v6, v8

    .line 331
    .line 332
    if-eqz v5, :cond_10

    .line 333
    .line 334
    sub-long v20, v8, v6

    .line 335
    .line 336
    move-wide/from16 v18, v6

    .line 337
    .line 338
    const/4 v1, 0x0

    .line 339
    :cond_10
    if-nez v3, :cond_11

    .line 340
    .line 341
    move-wide v14, v8

    .line 342
    :cond_11
    if-nez v3, :cond_12

    .line 343
    .line 344
    move-wide v12, v6

    .line 345
    :cond_12
    add-int/2addr v3, v4

    .line 346
    move v8, v1

    .line 347
    const/4 v5, 0x0

    .line 348
    const-wide/16 v9, -0x1

    .line 349
    .line 350
    goto :goto_2

    .line 351
    :cond_13
    move-wide v5, v9

    .line 352
    cmp-long v1, v18, v5

    .line 353
    .line 354
    if-eqz v1, :cond_b

    .line 355
    .line 356
    cmp-long v1, v20, v5

    .line 357
    .line 358
    if-eqz v1, :cond_b

    .line 359
    .line 360
    cmp-long v1, v12, v5

    .line 361
    .line 362
    if-eqz v1, :cond_b

    .line 363
    .line 364
    cmp-long v1, v14, v5

    .line 365
    .line 366
    if-nez v1, :cond_14

    .line 367
    .line 368
    goto :goto_1

    .line 369
    :cond_14
    iget-wide v1, v2, Lcom/google/android/gms/internal/ads/zzafm;->zza:J

    .line 370
    .line 371
    new-instance v3, Lcom/google/android/gms/internal/ads/zzahe;

    .line 372
    .line 373
    move-object v11, v3

    .line 374
    move-wide/from16 v16, v1

    .line 375
    .line 376
    invoke-direct/range {v11 .. v21}, Lcom/google/android/gms/internal/ads/zzahe;-><init>(JJJJJ)V

    .line 377
    .line 378
    .line 379
    move-object v1, v3

    .line 380
    :goto_5
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzafk;->zzg:Lcom/google/android/gms/internal/ads/zzahe;

    .line 381
    .line 382
    if-eqz v1, :cond_15

    .line 383
    .line 384
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzahe;->zzd:J

    .line 385
    .line 386
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzafk;->zzf:J

    .line 387
    .line 388
    :cond_15
    const/4 v3, 0x0

    .line 389
    goto :goto_6

    .line 390
    :cond_16
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzafk;->zze:I

    .line 391
    .line 392
    check-cast v1, Lcom/google/android/gms/internal/ads/zzack;

    .line 393
    .line 394
    const/4 v3, 0x0

    .line 395
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzack;->zzo(IZ)Z

    .line 396
    .line 397
    .line 398
    :goto_6
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzafk;->zzc:I

    .line 399
    .line 400
    return v3

    .line 401
    :cond_17
    const/4 v3, 0x0

    .line 402
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafk;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 403
    .line 404
    invoke-virtual {v2, v11}, Lcom/google/android/gms/internal/ads/zzfp;->zzH(I)V

    .line 405
    .line 406
    .line 407
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafk;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 408
    .line 409
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    check-cast v1, Lcom/google/android/gms/internal/ads/zzack;

    .line 414
    .line 415
    invoke-virtual {v1, v2, v3, v11, v3}, Lcom/google/android/gms/internal/ads/zzack;->zzn([BIIZ)Z

    .line 416
    .line 417
    .line 418
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafk;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 419
    .line 420
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzq()I

    .line 421
    .line 422
    .line 423
    move-result v1

    .line 424
    add-int/lit8 v1, v1, -0x2

    .line 425
    .line 426
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzafk;->zze:I

    .line 427
    .line 428
    iput v11, v0, Lcom/google/android/gms/internal/ads/zzafk;->zzc:I

    .line 429
    .line 430
    return v3

    .line 431
    :cond_18
    const/4 v3, 0x0

    .line 432
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafk;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 433
    .line 434
    invoke-virtual {v2, v11}, Lcom/google/android/gms/internal/ads/zzfp;->zzH(I)V

    .line 435
    .line 436
    .line 437
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafk;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 438
    .line 439
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 440
    .line 441
    .line 442
    move-result-object v2

    .line 443
    check-cast v1, Lcom/google/android/gms/internal/ads/zzack;

    .line 444
    .line 445
    invoke-virtual {v1, v2, v3, v11, v3}, Lcom/google/android/gms/internal/ads/zzack;->zzn([BIIZ)Z

    .line 446
    .line 447
    .line 448
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafk;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 449
    .line 450
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzq()I

    .line 451
    .line 452
    .line 453
    move-result v1

    .line 454
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzafk;->zzd:I

    .line 455
    .line 456
    const v2, 0xffda

    .line 457
    .line 458
    .line 459
    if-ne v1, v2, :cond_1b

    .line 460
    .line 461
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzafk;->zzf:J

    .line 462
    .line 463
    const-wide/16 v3, -0x1

    .line 464
    .line 465
    cmp-long v5, v1, v3

    .line 466
    .line 467
    if-eqz v5, :cond_1a

    .line 468
    .line 469
    iput v8, v0, Lcom/google/android/gms/internal/ads/zzafk;->zzc:I

    .line 470
    .line 471
    :cond_19
    :goto_7
    const/4 v1, 0x0

    .line 472
    goto :goto_8

    .line 473
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafk;->zzf()V

    .line 474
    .line 475
    .line 476
    goto :goto_7

    .line 477
    :cond_1b
    const v2, 0xffd0

    .line 478
    .line 479
    .line 480
    if-lt v1, v2, :cond_1c

    .line 481
    .line 482
    const v2, 0xffd9

    .line 483
    .line 484
    .line 485
    if-le v1, v2, :cond_19

    .line 486
    .line 487
    :cond_1c
    const v2, 0xff01

    .line 488
    .line 489
    .line 490
    if-eq v1, v2, :cond_19

    .line 491
    .line 492
    iput v6, v0, Lcom/google/android/gms/internal/ads/zzafk;->zzc:I

    .line 493
    .line 494
    goto :goto_7

    .line 495
    :goto_8
    return v1

    .line 496
    nop

    .line 497
    :array_0
    .array-data 8
        0x1c69056741d266L
        -0x2ef5ff6083334bf8L    # -2.4665097094667112E82
        -0x2896c2995fa5ccf6L    # -1.2139900096888059E113
        -0x10f8b42b5797ab6aL    # -6.89845908651688E226
        0x743577f7a3a80fe9L    # 6.148378149083616E251
    .end array-data

    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    :array_1
    .array-data 8
        -0x495017e9795edbeeL    # -2.794416298670598E-45
        -0x5bf4347c4af687c3L    # -4.780114472600053E-135
        0x72faa8286fa1a2dbL    # 7.280573396040854E245
    .end array-data
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzacx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafk;->zzb:Lcom/google/android/gms/internal/ads/zzacx;

    return-void
.end method

.method public final zzd(JJ)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzafk;->zzc:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafk;->zzj:Lcom/google/android/gms/internal/ads/zzajh;

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzafk;->zzc:I

    .line 15
    .line 16
    const/4 v1, 0x5

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafk;->zzj:Lcom/google/android/gms/internal/ads/zzajh;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzajh;->zzd(JJ)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzacv;)Z
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzafk;->zza(Lcom/google/android/gms/internal/ads/zzacv;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0xffd8

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    return v2

    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzafk;->zza(Lcom/google/android/gms/internal/ads/zzacv;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzafk;->zzd:I

    .line 17
    .line 18
    const v1, 0xffe0

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafk;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfp;->zzH(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafk;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    move-object v1, p1

    .line 36
    check-cast v1, Lcom/google/android/gms/internal/ads/zzack;

    .line 37
    .line 38
    invoke-virtual {v1, v0, v2, v3, v2}, Lcom/google/android/gms/internal/ads/zzack;->zzm([BIIZ)Z

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafk;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzq()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    add-int/lit8 v0, v0, -0x2

    .line 48
    .line 49
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzack;->zzl(IZ)Z

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzafk;->zza(Lcom/google/android/gms/internal/ads/zzacv;)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzafk;->zzd:I

    .line 57
    .line 58
    :cond_1
    const v1, 0xffe1

    .line 59
    .line 60
    .line 61
    if-ne v0, v1, :cond_2

    .line 62
    .line 63
    check-cast p1, Lcom/google/android/gms/internal/ads/zzack;

    .line 64
    .line 65
    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/ads/zzack;->zzl(IZ)Z

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafk;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 69
    .line 70
    const/4 v1, 0x6

    .line 71
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzH(I)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafk;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p1, v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzack;->zzm([BIIZ)Z

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafk;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzu()J

    .line 86
    .line 87
    .line 88
    move-result-wide v0

    .line 89
    const-wide/32 v3, 0x45786966    # 5.758429993E-315

    .line 90
    .line 91
    .line 92
    cmp-long p1, v0, v3

    .line 93
    .line 94
    if-nez p1, :cond_2

    .line 95
    .line 96
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafk;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzq()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-nez p1, :cond_2

    .line 103
    .line 104
    const/4 p1, 0x1

    .line 105
    return p1

    .line 106
    :cond_2
    return v2
.end method
