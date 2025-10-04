.class public final Lcom/google/android/gms/internal/ads/zzafa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzacu;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzadb;


# instance fields
.field private final zzb:[B

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfp;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzadc;

.field private zze:Lcom/google/android/gms/internal/ads/zzacx;

.field private zzf:Lcom/google/android/gms/internal/ads/zzaea;

.field private zzg:I

.field private zzh:Lcom/google/android/gms/internal/ads/zzby;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzi:Lcom/google/android/gms/internal/ads/zzadh;

.field private zzj:I

.field private zzk:I

.field private zzl:Lcom/google/android/gms/internal/ads/zzaey;

.field private zzm:I

.field private zzn:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaez;->zza:Lcom/google/android/gms/internal/ads/zzaez;

    .line 2
    .line 3
    sput-object v0, Lcom/google/android/gms/internal/ads/zzafa;->zza:Lcom/google/android/gms/internal/ads/zzadb;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzafa;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x2a

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzb:[B

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfp;

    const v0, 0x8000

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfp;-><init>([BI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzc:Lcom/google/android/gms/internal/ads/zzfp;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzadc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzadc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzd:Lcom/google/android/gms/internal/ads/zzadc;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzg:I

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzfp;Z)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzi:Lcom/google/android/gms/internal/ads/zzadh;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzd()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zze()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/lit8 v1, v1, -0x10

    .line 15
    .line 16
    if-gt v0, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzi:Lcom/google/android/gms/internal/ads/zzadh;

    .line 22
    .line 23
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzk:I

    .line 24
    .line 25
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzd:Lcom/google/android/gms/internal/ads/zzadc;

    .line 26
    .line 27
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzadd;->zzc(Lcom/google/android/gms/internal/ads/zzfp;Lcom/google/android/gms/internal/ads/zzadh;ILcom/google/android/gms/internal/ads/zzadc;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzd:Lcom/google/android/gms/internal/ads/zzadc;

    .line 37
    .line 38
    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/zzadc;->zza:J

    .line 39
    .line 40
    return-wide p1

    .line 41
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    if-eqz p2, :cond_5

    .line 45
    .line 46
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zze()I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzj:I

    .line 51
    .line 52
    sub-int/2addr p2, v1

    .line 53
    if-gt v0, p2, :cond_4

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 56
    .line 57
    .line 58
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzi:Lcom/google/android/gms/internal/ads/zzadh;

    .line 59
    .line 60
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzk:I

    .line 61
    .line 62
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzd:Lcom/google/android/gms/internal/ads/zzadc;

    .line 63
    .line 64
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzadd;->zzc(Lcom/google/android/gms/internal/ads/zzfp;Lcom/google/android/gms/internal/ads/zzadh;ILcom/google/android/gms/internal/ads/zzadc;)Z

    .line 65
    .line 66
    .line 67
    move-result p2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_2

    .line 69
    :catch_0
    const/4 p2, 0x0

    .line 70
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzd()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zze()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-le v1, v2, :cond_2

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_2
    if-eqz p2, :cond_3

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzd:Lcom/google/android/gms/internal/ads/zzadc;

    .line 87
    .line 88
    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/zzadc;->zza:J

    .line 89
    .line 90
    return-wide p1

    .line 91
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zze()I

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 99
    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 103
    .line 104
    .line 105
    :goto_4
    const-wide/16 p1, -0x1

    .line 106
    .line 107
    return-wide p1
.end method

.method private final zzf()V
    .locals 11

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzn:J

    .line 2
    .line 3
    const-wide/32 v2, 0xf4240

    .line 4
    .line 5
    .line 6
    mul-long v0, v0, v2

    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzi:Lcom/google/android/gms/internal/ads/zzadh;

    .line 9
    .line 10
    sget v3, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 11
    .line 12
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzadh;->zze:I

    .line 13
    .line 14
    int-to-long v2, v2

    .line 15
    div-long v5, v0, v2

    .line 16
    .line 17
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzf:Lcom/google/android/gms/internal/ads/zzaea;

    .line 18
    .line 19
    iget v8, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzm:I

    .line 20
    .line 21
    const/4 v9, 0x0

    .line 22
    const/4 v10, 0x0

    .line 23
    const/4 v7, 0x1

    .line 24
    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzaea;->zzt(JIIILcom/google/android/gms/internal/ads/zzadz;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzacv;Lcom/google/android/gms/internal/ads/zzadr;)I
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x6

    .line 6
    const/4 v3, 0x7

    .line 7
    const/4 v4, 0x2

    .line 8
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzg:I

    .line 9
    .line 10
    const/4 v6, 0x1

    .line 11
    const/4 v7, 0x0

    .line 12
    if-eqz v5, :cond_17

    .line 13
    .line 14
    if-eq v5, v6, :cond_16

    .line 15
    .line 16
    const/4 v8, 0x0

    .line 17
    const/4 v9, 0x3

    .line 18
    const/4 v10, 0x4

    .line 19
    if-eq v5, v4, :cond_14

    .line 20
    .line 21
    if-eq v5, v9, :cond_d

    .line 22
    .line 23
    const-wide/16 v11, -0x1

    .line 24
    .line 25
    if-eq v5, v10, :cond_9

    .line 26
    .line 27
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzf:Lcom/google/android/gms/internal/ads/zzaea;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzi:Lcom/google/android/gms/internal/ads/zzadh;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzl:Lcom/google/android/gms/internal/ads/zzaey;

    .line 38
    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzacg;->zze()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    move-object/from16 v4, p2

    .line 48
    .line 49
    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzacg;->zza(Lcom/google/android/gms/internal/ads/zzacv;Lcom/google/android/gms/internal/ads/zzadr;)I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    goto/16 :goto_2

    .line 54
    .line 55
    :cond_0
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzn:J

    .line 56
    .line 57
    cmp-long v5, v3, v11

    .line 58
    .line 59
    if-nez v5, :cond_1

    .line 60
    .line 61
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzadd;->zzb(Lcom/google/android/gms/internal/ads/zzacv;Lcom/google/android/gms/internal/ads/zzadh;)J

    .line 62
    .line 63
    .line 64
    move-result-wide v1

    .line 65
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzn:J

    .line 66
    .line 67
    goto/16 :goto_2

    .line 68
    .line 69
    :cond_1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzc:Lcom/google/android/gms/internal/ads/zzfp;

    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfp;->zze()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    const v4, 0x8000

    .line 76
    .line 77
    .line 78
    if-ge v3, v4, :cond_4

    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    sub-int/2addr v4, v3

    .line 85
    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzacv;->zza([BII)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    const/4 v2, -0x1

    .line 90
    if-ne v1, v2, :cond_2

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    const/4 v6, 0x0

    .line 94
    :goto_0
    if-nez v6, :cond_3

    .line 95
    .line 96
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzc:Lcom/google/android/gms/internal/ads/zzfp;

    .line 97
    .line 98
    add-int/2addr v3, v1

    .line 99
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfp;->zzJ(I)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzc:Lcom/google/android/gms/internal/ads/zzfp;

    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_5

    .line 110
    .line 111
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafa;->zzf()V

    .line 112
    .line 113
    .line 114
    const/4 v7, -0x1

    .line 115
    goto :goto_2

    .line 116
    :cond_4
    const/4 v6, 0x0

    .line 117
    :cond_5
    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzc:Lcom/google/android/gms/internal/ads/zzfp;

    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzd()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzm:I

    .line 124
    .line 125
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzj:I

    .line 126
    .line 127
    if-ge v3, v4, :cond_6

    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    sub-int/2addr v4, v3

    .line 134
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfp;->zzL(I)V

    .line 139
    .line 140
    .line 141
    :cond_6
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzc:Lcom/google/android/gms/internal/ads/zzfp;

    .line 142
    .line 143
    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/ads/zzafa;->zza(Lcom/google/android/gms/internal/ads/zzfp;Z)J

    .line 144
    .line 145
    .line 146
    move-result-wide v3

    .line 147
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzc:Lcom/google/android/gms/internal/ads/zzfp;

    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzd()I

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    sub-int/2addr v5, v2

    .line 154
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 155
    .line 156
    .line 157
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzf:Lcom/google/android/gms/internal/ads/zzaea;

    .line 158
    .line 159
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzc:Lcom/google/android/gms/internal/ads/zzfp;

    .line 160
    .line 161
    invoke-static {v1, v2, v5}, Lcom/google/android/gms/internal/ads/zzady;->zzb(Lcom/google/android/gms/internal/ads/zzaea;Lcom/google/android/gms/internal/ads/zzfp;I)V

    .line 162
    .line 163
    .line 164
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzm:I

    .line 165
    .line 166
    add-int/2addr v1, v5

    .line 167
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzm:I

    .line 168
    .line 169
    cmp-long v1, v3, v11

    .line 170
    .line 171
    if-eqz v1, :cond_7

    .line 172
    .line 173
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafa;->zzf()V

    .line 174
    .line 175
    .line 176
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzm:I

    .line 177
    .line 178
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzn:J

    .line 179
    .line 180
    :cond_7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzc:Lcom/google/android/gms/internal/ads/zzfp;

    .line 181
    .line 182
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    const/16 v3, 0x10

    .line 187
    .line 188
    if-lt v2, v3, :cond_8

    .line 189
    .line 190
    :goto_2
    return v7

    .line 191
    :cond_8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzd()I

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-static {v3, v4, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    .line 209
    .line 210
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzc:Lcom/google/android/gms/internal/ads/zzfp;

    .line 211
    .line 212
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 213
    .line 214
    .line 215
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzc:Lcom/google/android/gms/internal/ads/zzfp;

    .line 216
    .line 217
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzJ(I)V

    .line 218
    .line 219
    .line 220
    return v7

    .line 221
    :cond_9
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzj()V

    .line 222
    .line 223
    .line 224
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfp;

    .line 225
    .line 226
    invoke-direct {v2, v4}, Lcom/google/android/gms/internal/ads/zzfp;-><init>(I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    move-object v6, v1

    .line 234
    check-cast v6, Lcom/google/android/gms/internal/ads/zzack;

    .line 235
    .line 236
    invoke-virtual {v6, v5, v7, v4, v7}, Lcom/google/android/gms/internal/ads/zzack;->zzm([BIIZ)Z

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzq()I

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    shr-int/lit8 v4, v2, 0x2

    .line 244
    .line 245
    const/16 v5, 0x3ffe

    .line 246
    .line 247
    if-ne v4, v5, :cond_c

    .line 248
    .line 249
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzj()V

    .line 250
    .line 251
    .line 252
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzk:I

    .line 253
    .line 254
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafa;->zze:Lcom/google/android/gms/internal/ads/zzacx;

    .line 255
    .line 256
    sget v3, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 257
    .line 258
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    .line 259
    .line 260
    .line 261
    move-result-wide v3

    .line 262
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzd()J

    .line 263
    .line 264
    .line 265
    move-result-wide v18

    .line 266
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzi:Lcom/google/android/gms/internal/ads/zzadh;

    .line 267
    .line 268
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzadh;->zzk:Lcom/google/android/gms/internal/ads/zzadg;

    .line 272
    .line 273
    if-eqz v1, :cond_a

    .line 274
    .line 275
    new-instance v1, Lcom/google/android/gms/internal/ads/zzadf;

    .line 276
    .line 277
    invoke-direct {v1, v14, v3, v4}, Lcom/google/android/gms/internal/ads/zzadf;-><init>(Lcom/google/android/gms/internal/ads/zzadh;J)V

    .line 278
    .line 279
    .line 280
    goto :goto_3

    .line 281
    :cond_a
    const-wide/16 v5, 0x0

    .line 282
    .line 283
    cmp-long v1, v18, v11

    .line 284
    .line 285
    if-eqz v1, :cond_b

    .line 286
    .line 287
    iget-wide v8, v14, Lcom/google/android/gms/internal/ads/zzadh;->zzj:J

    .line 288
    .line 289
    cmp-long v1, v8, v5

    .line 290
    .line 291
    if-lez v1, :cond_b

    .line 292
    .line 293
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaey;

    .line 294
    .line 295
    iget v15, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzk:I

    .line 296
    .line 297
    move-object v13, v1

    .line 298
    move-wide/from16 v16, v3

    .line 299
    .line 300
    invoke-direct/range {v13 .. v19}, Lcom/google/android/gms/internal/ads/zzaey;-><init>(Lcom/google/android/gms/internal/ads/zzadh;IJJ)V

    .line 301
    .line 302
    .line 303
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzl:Lcom/google/android/gms/internal/ads/zzaey;

    .line 304
    .line 305
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzacg;->zzb()Lcom/google/android/gms/internal/ads/zzadu;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    goto :goto_3

    .line 310
    :cond_b
    new-instance v1, Lcom/google/android/gms/internal/ads/zzadt;

    .line 311
    .line 312
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzadh;->zza()J

    .line 313
    .line 314
    .line 315
    move-result-wide v3

    .line 316
    invoke-direct {v1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzadt;-><init>(JJ)V

    .line 317
    .line 318
    .line 319
    :goto_3
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzacx;->zzO(Lcom/google/android/gms/internal/ads/zzadu;)V

    .line 320
    .line 321
    .line 322
    const/4 v1, 0x5

    .line 323
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzg:I

    .line 324
    .line 325
    return v7

    .line 326
    :cond_c
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzj()V

    .line 327
    .line 328
    .line 329
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 330
    .line 331
    new-array v2, v3, [J

    .line 332
    .line 333
    fill-array-data v2, :array_0

    .line 334
    .line 335
    .line 336
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    invoke-static {v1, v8}, Lcom/google/android/gms/internal/ads/zzcc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    throw v1

    .line 348
    :cond_d
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzi:Lcom/google/android/gms/internal/ads/zzadh;

    .line 349
    .line 350
    :cond_e
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzj()V

    .line 351
    .line 352
    .line 353
    new-instance v5, Lcom/google/android/gms/internal/ads/zzfo;

    .line 354
    .line 355
    new-array v6, v10, [B

    .line 356
    .line 357
    invoke-direct {v5, v6, v10}, Lcom/google/android/gms/internal/ads/zzfo;-><init>([BI)V

    .line 358
    .line 359
    .line 360
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzfo;->zza:[B

    .line 361
    .line 362
    move-object v8, v1

    .line 363
    check-cast v8, Lcom/google/android/gms/internal/ads/zzack;

    .line 364
    .line 365
    invoke-virtual {v8, v6, v7, v10, v7}, Lcom/google/android/gms/internal/ads/zzack;->zzm([BIIZ)Z

    .line 366
    .line 367
    .line 368
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 369
    .line 370
    .line 371
    move-result v6

    .line 372
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 373
    .line 374
    .line 375
    move-result v11

    .line 376
    const/16 v12, 0x18

    .line 377
    .line 378
    invoke-virtual {v5, v12}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 379
    .line 380
    .line 381
    move-result v5

    .line 382
    add-int/2addr v5, v10

    .line 383
    if-nez v11, :cond_f

    .line 384
    .line 385
    const/16 v4, 0x26

    .line 386
    .line 387
    new-array v5, v4, [B

    .line 388
    .line 389
    invoke-virtual {v8, v5, v7, v4, v7}, Lcom/google/android/gms/internal/ads/zzack;->zzn([BIIZ)Z

    .line 390
    .line 391
    .line 392
    new-instance v4, Lcom/google/android/gms/internal/ads/zzadh;

    .line 393
    .line 394
    invoke-direct {v4, v5, v10}, Lcom/google/android/gms/internal/ads/zzadh;-><init>([BI)V

    .line 395
    .line 396
    .line 397
    goto :goto_4

    .line 398
    :cond_f
    if-eqz v4, :cond_13

    .line 399
    .line 400
    if-ne v11, v9, :cond_10

    .line 401
    .line 402
    new-instance v11, Lcom/google/android/gms/internal/ads/zzfp;

    .line 403
    .line 404
    invoke-direct {v11, v5}, Lcom/google/android/gms/internal/ads/zzfp;-><init>(I)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 408
    .line 409
    .line 410
    move-result-object v12

    .line 411
    invoke-virtual {v8, v12, v7, v5, v7}, Lcom/google/android/gms/internal/ads/zzack;->zzn([BIIZ)Z

    .line 412
    .line 413
    .line 414
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzade;->zzb(Lcom/google/android/gms/internal/ads/zzfp;)Lcom/google/android/gms/internal/ads/zzadg;

    .line 415
    .line 416
    .line 417
    move-result-object v5

    .line 418
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzadh;->zzf(Lcom/google/android/gms/internal/ads/zzadg;)Lcom/google/android/gms/internal/ads/zzadh;

    .line 419
    .line 420
    .line 421
    move-result-object v4

    .line 422
    goto :goto_4

    .line 423
    :cond_10
    if-ne v11, v10, :cond_11

    .line 424
    .line 425
    new-instance v11, Lcom/google/android/gms/internal/ads/zzfp;

    .line 426
    .line 427
    invoke-direct {v11, v5}, Lcom/google/android/gms/internal/ads/zzfp;-><init>(I)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 431
    .line 432
    .line 433
    move-result-object v12

    .line 434
    invoke-virtual {v8, v12, v7, v5, v7}, Lcom/google/android/gms/internal/ads/zzack;->zzn([BIIZ)Z

    .line 435
    .line 436
    .line 437
    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/ads/zzfp;->zzL(I)V

    .line 438
    .line 439
    .line 440
    invoke-static {v11, v7, v7}, Lcom/google/android/gms/internal/ads/zzaeg;->zzc(Lcom/google/android/gms/internal/ads/zzfp;ZZ)Lcom/google/android/gms/internal/ads/zzaed;

    .line 441
    .line 442
    .line 443
    move-result-object v5

    .line 444
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzaed;->zzb:[Ljava/lang/String;

    .line 445
    .line 446
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 447
    .line 448
    .line 449
    move-result-object v5

    .line 450
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzadh;->zzg(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzadh;

    .line 451
    .line 452
    .line 453
    move-result-object v4

    .line 454
    goto :goto_4

    .line 455
    :cond_11
    if-ne v11, v2, :cond_12

    .line 456
    .line 457
    new-instance v11, Lcom/google/android/gms/internal/ads/zzfp;

    .line 458
    .line 459
    invoke-direct {v11, v5}, Lcom/google/android/gms/internal/ads/zzfp;-><init>(I)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 463
    .line 464
    .line 465
    move-result-object v12

    .line 466
    invoke-virtual {v8, v12, v7, v5, v7}, Lcom/google/android/gms/internal/ads/zzack;->zzn([BIIZ)Z

    .line 467
    .line 468
    .line 469
    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/ads/zzfp;->zzL(I)V

    .line 470
    .line 471
    .line 472
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzafw;->zzb(Lcom/google/android/gms/internal/ads/zzfp;)Lcom/google/android/gms/internal/ads/zzafw;

    .line 473
    .line 474
    .line 475
    move-result-object v5

    .line 476
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgaa;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgaa;

    .line 477
    .line 478
    .line 479
    move-result-object v5

    .line 480
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzadh;->zze(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzadh;

    .line 481
    .line 482
    .line 483
    move-result-object v4

    .line 484
    goto :goto_4

    .line 485
    :cond_12
    invoke-virtual {v8, v5, v7}, Lcom/google/android/gms/internal/ads/zzack;->zzo(IZ)Z

    .line 486
    .line 487
    .line 488
    :goto_4
    sget v5, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 489
    .line 490
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzi:Lcom/google/android/gms/internal/ads/zzadh;

    .line 491
    .line 492
    if-eqz v6, :cond_e

    .line 493
    .line 494
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 495
    .line 496
    .line 497
    iget v1, v4, Lcom/google/android/gms/internal/ads/zzadh;->zzc:I

    .line 498
    .line 499
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 500
    .line 501
    .line 502
    move-result v1

    .line 503
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzj:I

    .line 504
    .line 505
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzf:Lcom/google/android/gms/internal/ads/zzaea;

    .line 506
    .line 507
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzi:Lcom/google/android/gms/internal/ads/zzadh;

    .line 508
    .line 509
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzb:[B

    .line 510
    .line 511
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzh:Lcom/google/android/gms/internal/ads/zzby;

    .line 512
    .line 513
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzadh;->zzc([BLcom/google/android/gms/internal/ads/zzby;)Lcom/google/android/gms/internal/ads/zzam;

    .line 514
    .line 515
    .line 516
    move-result-object v2

    .line 517
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzaea;->zzl(Lcom/google/android/gms/internal/ads/zzam;)V

    .line 518
    .line 519
    .line 520
    iput v10, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzg:I

    .line 521
    .line 522
    return v7

    .line 523
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 524
    .line 525
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 526
    .line 527
    .line 528
    throw v1

    .line 529
    :cond_14
    new-instance v3, Lcom/google/android/gms/internal/ads/zzfp;

    .line 530
    .line 531
    invoke-direct {v3, v10}, Lcom/google/android/gms/internal/ads/zzfp;-><init>(I)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 535
    .line 536
    .line 537
    move-result-object v4

    .line 538
    check-cast v1, Lcom/google/android/gms/internal/ads/zzack;

    .line 539
    .line 540
    invoke-virtual {v1, v4, v7, v10, v7}, Lcom/google/android/gms/internal/ads/zzack;->zzn([BIIZ)Z

    .line 541
    .line 542
    .line 543
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfp;->zzu()J

    .line 544
    .line 545
    .line 546
    move-result-wide v3

    .line 547
    const-wide/32 v5, 0x664c6143

    .line 548
    .line 549
    .line 550
    cmp-long v1, v3, v5

    .line 551
    .line 552
    if-nez v1, :cond_15

    .line 553
    .line 554
    iput v9, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzg:I

    .line 555
    .line 556
    return v7

    .line 557
    :cond_15
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 558
    .line 559
    new-array v2, v2, [J

    .line 560
    .line 561
    fill-array-data v2, :array_1

    .line 562
    .line 563
    .line 564
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v1

    .line 571
    invoke-static {v1, v8}, Lcom/google/android/gms/internal/ads/zzcc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 572
    .line 573
    .line 574
    move-result-object v1

    .line 575
    throw v1

    .line 576
    :cond_16
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzb:[B

    .line 577
    .line 578
    move-object v3, v1

    .line 579
    check-cast v3, Lcom/google/android/gms/internal/ads/zzack;

    .line 580
    .line 581
    const/16 v5, 0x2a

    .line 582
    .line 583
    invoke-virtual {v3, v2, v7, v5, v7}, Lcom/google/android/gms/internal/ads/zzack;->zzm([BIIZ)Z

    .line 584
    .line 585
    .line 586
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzj()V

    .line 587
    .line 588
    .line 589
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzg:I

    .line 590
    .line 591
    return v7

    .line 592
    :cond_17
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzj()V

    .line 593
    .line 594
    .line 595
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zze()J

    .line 596
    .line 597
    .line 598
    move-result-wide v2

    .line 599
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/zzade;->zza(Lcom/google/android/gms/internal/ads/zzacv;Z)Lcom/google/android/gms/internal/ads/zzby;

    .line 600
    .line 601
    .line 602
    move-result-object v4

    .line 603
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zze()J

    .line 604
    .line 605
    .line 606
    move-result-wide v8

    .line 607
    sub-long/2addr v8, v2

    .line 608
    check-cast v1, Lcom/google/android/gms/internal/ads/zzack;

    .line 609
    .line 610
    long-to-int v2, v8

    .line 611
    invoke-virtual {v1, v2, v7}, Lcom/google/android/gms/internal/ads/zzack;->zzo(IZ)Z

    .line 612
    .line 613
    .line 614
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzh:Lcom/google/android/gms/internal/ads/zzby;

    .line 615
    .line 616
    iput v6, v0, Lcom/google/android/gms/internal/ads/zzafa;->zzg:I

    .line 617
    .line 618
    return v7

    .line 619
    :array_0
    .array-data 8
        0x6566788e2bc27474L    # 2.913857178628937E180
        0x279ab9566cfe3a1aL
        -0x5940109438c72dc2L    # -4.830943191304381E-122
        0x7fdbd18974713b03L    # 7.813927035007301E307
        0x493e09cea3ad0484L    # 6.698766822594125E44
        -0xb7c195a5e78aaa5L    # -1.82381382270578E253
        0x2675935fe930959cL
    .end array-data

    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    :array_1
    .array-data 8
        0x63914191a505d0efL    # 4.167934782338921E171
        -0x5786de867890c510L
        0x672cfd61a6a025bcL    # 1.0090950775344802E189
        0x2b568ae2df44d392L    # 6.441455258983045E-100
        -0x612422cd3b2c27d2L
        -0x1b5fe0321451ebc5L    # -5.104657569375035E176
    .end array-data
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzacx;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafa;->zze:Lcom/google/android/gms/internal/ads/zzacx;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzacx;->zzw(II)Lcom/google/android/gms/internal/ads/zzaea;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzf:Lcom/google/android/gms/internal/ads/zzaea;

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacx;->zzD()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final zzd(JJ)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    cmp-long v3, p1, v1

    .line 5
    .line 6
    if-nez v3, :cond_0

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzg:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzl:Lcom/google/android/gms/internal/ads/zzaey;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzacg;->zzd(J)V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    cmp-long p1, p3, v1

    .line 19
    .line 20
    if-nez p1, :cond_2

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    const-wide/16 v1, -0x1

    .line 24
    .line 25
    :goto_1
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzn:J

    .line 26
    .line 27
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzm:I

    .line 28
    .line 29
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafa;->zzc:Lcom/google/android/gms/internal/ads/zzfp;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzH(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzacv;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzade;->zza(Lcom/google/android/gms/internal/ads/zzacv;Z)Lcom/google/android/gms/internal/ads/zzby;

    .line 3
    .line 4
    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfp;

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfp;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast p1, Lcom/google/android/gms/internal/ads/zzack;

    .line 16
    .line 17
    invoke-virtual {p1, v3, v0, v2, v0}, Lcom/google/android/gms/internal/ads/zzack;->zzm([BIIZ)Z

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzu()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    const-wide/32 v3, 0x664c6143

    .line 25
    .line 26
    .line 27
    cmp-long p1, v1, v3

    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    return p1

    .line 33
    :cond_0
    return v0
.end method
