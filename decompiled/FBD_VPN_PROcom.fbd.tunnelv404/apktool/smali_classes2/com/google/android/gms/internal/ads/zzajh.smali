.class public final Lcom/google/android/gms/internal/ads/zzajh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzacu;
.implements Lcom/google/android/gms/internal/ads/zzadu;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzadb;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private zzA:Lcom/google/android/gms/internal/ads/zzahe;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/ads/zzakp;

.field private final zzc:I

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfp;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfp;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfp;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfp;

.field private final zzh:Ljava/util/ArrayDeque;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzajk;

.field private final zzj:Ljava/util/List;

.field private zzk:I

.field private zzl:I

.field private zzm:J

.field private zzn:I

.field private zzo:Lcom/google/android/gms/internal/ads/zzfp;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzp:I

.field private zzq:I

.field private zzr:I

.field private zzs:I

.field private zzt:Z

.field private zzu:Lcom/google/android/gms/internal/ads/zzacx;

.field private zzv:[Lcom/google/android/gms/internal/ads/zzajg;

.field private zzw:[[J

.field private zzx:I

.field private zzy:J

.field private zzz:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzajf;->zza:Lcom/google/android/gms/internal/ads/zzajf;

    .line 2
    .line 3
    sput-object v0, Lcom/google/android/gms/internal/ads/zzajh;->zza:Lcom/google/android/gms/internal/ads/zzadb;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzakp;->zza:Lcom/google/android/gms/internal/ads/zzakp;

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzajh;-><init>(Lcom/google/android/gms/internal/ads/zzakp;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzakp;I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzb:Lcom/google/android/gms/internal/ads/zzakp;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzc:I

    const/4 p1, 0x4

    and-int/2addr p2, p1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzk:I

    new-instance p2, Lcom/google/android/gms/internal/ads/zzajk;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzajk;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzi:Lcom/google/android/gms/internal/ads/zzajk;

    new-instance p2, Ljava/util/ArrayList;

    .line 3
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzj:Ljava/util/List;

    .line 4
    new-instance p2, Lcom/google/android/gms/internal/ads/zzfp;

    const/16 v1, 0x10

    invoke-direct {p2, v1}, Lcom/google/android/gms/internal/ads/zzfp;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzg:Lcom/google/android/gms/internal/ads/zzfp;

    new-instance p2, Ljava/util/ArrayDeque;

    .line 5
    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzh:Ljava/util/ArrayDeque;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfp;

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgm;->zza:[B

    invoke-direct {p2, v1}, Lcom/google/android/gms/internal/ads/zzfp;-><init>([B)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzd:Lcom/google/android/gms/internal/ads/zzfp;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfp;

    .line 7
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzfp;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzajh;->zze:Lcom/google/android/gms/internal/ads/zzfp;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfp;

    .line 8
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfp;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzf:Lcom/google/android/gms/internal/ads/zzfp;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzp:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zzacx;->zza:Lcom/google/android/gms/internal/ads/zzacx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzu:Lcom/google/android/gms/internal/ads/zzacx;

    new-array p1, v0, [Lcom/google/android/gms/internal/ads/zzajg;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzv:[Lcom/google/android/gms/internal/ads/zzajg;

    return-void
.end method

.method private static zzf(I)I
    .locals 1

    const v0, 0x68656963

    if-eq p0, v0, :cond_1

    const v0, 0x71742020

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method private static zzi(Lcom/google/android/gms/internal/ads/zzajp;J)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzajp;->zza(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzajp;->zzb(J)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_0
    return v0
.end method

.method private static zzj(Lcom/google/android/gms/internal/ads/zzajp;JJ)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzajh;->zzi(Lcom/google/android/gms/internal/ads/zzajp;J)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, -0x1

    .line 6
    if-ne p1, p2, :cond_0

    .line 7
    .line 8
    return-wide p3

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzajp;->zzc:[J

    .line 10
    .line 11
    aget-wide p1, p0, p1

    .line 12
    .line 13
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    .line 14
    .line 15
    .line 16
    move-result-wide p0

    .line 17
    return-wide p0
.end method

.method private final zzk()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzk:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzn:I

    return-void
.end method

.method private final zzl(J)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 4
    const/4 v4, 0x1

    .line 5
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzh:Ljava/util/ArrayDeque;

    .line 6
    .line 7
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v5

    .line 11
    if-nez v5, :cond_1a

    .line 12
    .line 13
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzh:Ljava/util/ArrayDeque;

    .line 14
    .line 15
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    check-cast v5, Lcom/google/android/gms/internal/ads/zzaim;

    .line 20
    .line 21
    iget-wide v5, v5, Lcom/google/android/gms/internal/ads/zzaim;->zza:J

    .line 22
    .line 23
    cmp-long v7, v5, p1

    .line 24
    .line 25
    if-nez v7, :cond_1a

    .line 26
    .line 27
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzh:Ljava/util/ArrayDeque;

    .line 28
    .line 29
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    move-object v6, v5

    .line 34
    check-cast v6, Lcom/google/android/gms/internal/ads/zzaim;

    .line 35
    .line 36
    iget v5, v6, Lcom/google/android/gms/internal/ads/zzaio;->zzd:I

    .line 37
    .line 38
    const v7, 0x6d6f6f76

    .line 39
    .line 40
    .line 41
    if-ne v5, v7, :cond_19

    .line 42
    .line 43
    new-instance v5, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzz:I

    .line 49
    .line 50
    new-instance v14, Lcom/google/android/gms/internal/ads/zzadk;

    .line 51
    .line 52
    invoke-direct {v14}, Lcom/google/android/gms/internal/ads/zzadk;-><init>()V

    .line 53
    .line 54
    .line 55
    const v8, 0x75647461

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/zzaim;->zzb(I)Lcom/google/android/gms/internal/ads/zzain;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    if-eqz v8, :cond_1

    .line 63
    .line 64
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzaiw;->zzb(Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzby;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    invoke-virtual {v14, v8}, Lcom/google/android/gms/internal/ads/zzadk;->zzb(Lcom/google/android/gms/internal/ads/zzby;)Z

    .line 69
    .line 70
    .line 71
    move-object/from16 v16, v8

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    const/16 v16, 0x0

    .line 75
    .line 76
    :goto_1
    const v8, 0x6d657461

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/zzaim;->zza(I)Lcom/google/android/gms/internal/ads/zzaim;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    if-eqz v8, :cond_2

    .line 84
    .line 85
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzaiw;->zza(Lcom/google/android/gms/internal/ads/zzaim;)Lcom/google/android/gms/internal/ads/zzby;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    move-object v13, v8

    .line 90
    goto :goto_2

    .line 91
    :cond_2
    const/4 v13, 0x0

    .line 92
    :goto_2
    new-instance v12, Lcom/google/android/gms/internal/ads/zzby;

    .line 93
    .line 94
    const v8, 0x6d766864

    .line 95
    .line 96
    .line 97
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/zzaim;->zzb(I)Lcom/google/android/gms/internal/ads/zzain;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    if-ne v7, v4, :cond_3

    .line 105
    .line 106
    const/16 v17, 0x1

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_3
    const/16 v17, 0x0

    .line 110
    .line 111
    :goto_3
    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzain;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 112
    .line 113
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzaiw;->zzc(Lcom/google/android/gms/internal/ads/zzfp;)Lcom/google/android/gms/internal/ads/zzgi;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    new-array v8, v4, [Lcom/google/android/gms/internal/ads/zzbx;

    .line 118
    .line 119
    aput-object v7, v8, v3

    .line 120
    .line 121
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    invoke-direct {v12, v10, v11, v8}, Lcom/google/android/gms/internal/ads/zzby;-><init>(J[Lcom/google/android/gms/internal/ads/zzbx;)V

    .line 127
    .line 128
    .line 129
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzc:I

    .line 130
    .line 131
    and-int/2addr v7, v4

    .line 132
    if-eq v4, v7, :cond_4

    .line 133
    .line 134
    const/16 v18, 0x0

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_4
    const/16 v18, 0x1

    .line 138
    .line 139
    :goto_4
    const/16 v19, 0x0

    .line 140
    .line 141
    sget-object v20, Lcom/google/android/gms/internal/ads/zzaje;->zza:Lcom/google/android/gms/internal/ads/zzaje;

    .line 142
    .line 143
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    move-object v7, v14

    .line 149
    move-wide v3, v10

    .line 150
    move-object/from16 v10, v19

    .line 151
    .line 152
    move/from16 v11, v18

    .line 153
    .line 154
    move-object/from16 v18, v12

    .line 155
    .line 156
    move/from16 v12, v17

    .line 157
    .line 158
    move-object v15, v13

    .line 159
    move-object/from16 v13, v20

    .line 160
    .line 161
    invoke-static/range {v6 .. v13}, Lcom/google/android/gms/internal/ads/zzaiw;->zzd(Lcom/google/android/gms/internal/ads/zzaim;Lcom/google/android/gms/internal/ads/zzadk;JLcom/google/android/gms/internal/ads/zzae;ZZLcom/google/android/gms/internal/ads/zzfws;)Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 166
    .line 167
    .line 168
    move-result v7

    .line 169
    move-wide v10, v3

    .line 170
    const/4 v9, 0x0

    .line 171
    const/4 v12, -0x1

    .line 172
    :goto_5
    const-wide/16 v19, 0x0

    .line 173
    .line 174
    if-ge v9, v7, :cond_13

    .line 175
    .line 176
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v13

    .line 180
    check-cast v13, Lcom/google/android/gms/internal/ads/zzajp;

    .line 181
    .line 182
    iget v8, v13, Lcom/google/android/gms/internal/ads/zzajp;->zzb:I

    .line 183
    .line 184
    if-nez v8, :cond_5

    .line 185
    .line 186
    move-object/from16 v22, v6

    .line 187
    .line 188
    move/from16 v23, v7

    .line 189
    .line 190
    move-object/from16 v26, v14

    .line 191
    .line 192
    const/4 v1, 0x1

    .line 193
    const/4 v2, 0x3

    .line 194
    const/4 v7, -0x1

    .line 195
    goto/16 :goto_d

    .line 196
    .line 197
    :cond_5
    iget-object v8, v13, Lcom/google/android/gms/internal/ads/zzajp;->zza:Lcom/google/android/gms/internal/ads/zzajm;

    .line 198
    .line 199
    iget-wide v1, v8, Lcom/google/android/gms/internal/ads/zzajm;->zze:J

    .line 200
    .line 201
    cmp-long v21, v1, v3

    .line 202
    .line 203
    if-eqz v21, :cond_6

    .line 204
    .line 205
    goto :goto_6

    .line 206
    :cond_6
    iget-wide v1, v13, Lcom/google/android/gms/internal/ads/zzajp;->zzh:J

    .line 207
    .line 208
    :goto_6
    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 209
    .line 210
    .line 211
    move-result-wide v10

    .line 212
    new-instance v3, Lcom/google/android/gms/internal/ads/zzajg;

    .line 213
    .line 214
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzu:Lcom/google/android/gms/internal/ads/zzacx;

    .line 215
    .line 216
    move-object/from16 v22, v6

    .line 217
    .line 218
    iget v6, v8, Lcom/google/android/gms/internal/ads/zzajm;->zzb:I

    .line 219
    .line 220
    invoke-interface {v4, v9, v6}, Lcom/google/android/gms/internal/ads/zzacx;->zzw(II)Lcom/google/android/gms/internal/ads/zzaea;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    invoke-direct {v3, v8, v13, v4}, Lcom/google/android/gms/internal/ads/zzajg;-><init>(Lcom/google/android/gms/internal/ads/zzajm;Lcom/google/android/gms/internal/ads/zzajp;Lcom/google/android/gms/internal/ads/zzaea;)V

    .line 225
    .line 226
    .line 227
    iget-object v4, v8, Lcom/google/android/gms/internal/ads/zzajm;->zzf:Lcom/google/android/gms/internal/ads/zzam;

    .line 228
    .line 229
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 230
    .line 231
    move/from16 v23, v7

    .line 232
    .line 233
    move-wide/from16 v24, v10

    .line 234
    .line 235
    const/4 v7, 0x3

    .line 236
    new-array v10, v7, [J

    .line 237
    .line 238
    fill-array-data v10, :array_0

    .line 239
    .line 240
    .line 241
    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    .line 249
    .line 250
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    if-eqz v4, :cond_7

    .line 255
    .line 256
    iget v4, v13, Lcom/google/android/gms/internal/ads/zzajp;->zze:I

    .line 257
    .line 258
    mul-int/lit8 v4, v4, 0x10

    .line 259
    .line 260
    goto :goto_7

    .line 261
    :cond_7
    iget v4, v13, Lcom/google/android/gms/internal/ads/zzajp;->zze:I

    .line 262
    .line 263
    add-int/lit8 v4, v4, 0x1e

    .line 264
    .line 265
    :goto_7
    iget-object v6, v8, Lcom/google/android/gms/internal/ads/zzajm;->zzf:Lcom/google/android/gms/internal/ads/zzam;

    .line 266
    .line 267
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzam;->zzb()Lcom/google/android/gms/internal/ads/zzak;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzak;->zzO(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 272
    .line 273
    .line 274
    iget v4, v8, Lcom/google/android/gms/internal/ads/zzajm;->zzb:I

    .line 275
    .line 276
    const/4 v7, 0x2

    .line 277
    if-ne v4, v7, :cond_a

    .line 278
    .line 279
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzc:I

    .line 280
    .line 281
    and-int/lit8 v4, v4, 0x8

    .line 282
    .line 283
    if-eqz v4, :cond_9

    .line 284
    .line 285
    iget-object v4, v8, Lcom/google/android/gms/internal/ads/zzajm;->zzf:Lcom/google/android/gms/internal/ads/zzam;

    .line 286
    .line 287
    const/4 v7, -0x1

    .line 288
    if-ne v12, v7, :cond_8

    .line 289
    .line 290
    const/4 v7, 0x1

    .line 291
    goto :goto_8

    .line 292
    :cond_8
    const/4 v7, 0x2

    .line 293
    :goto_8
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzam;->zzf:I

    .line 294
    .line 295
    or-int/2addr v4, v7

    .line 296
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzak;->zzU(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 297
    .line 298
    .line 299
    :cond_9
    cmp-long v4, v1, v19

    .line 300
    .line 301
    if-lez v4, :cond_a

    .line 302
    .line 303
    iget v4, v13, Lcom/google/android/gms/internal/ads/zzajp;->zzb:I

    .line 304
    .line 305
    const/4 v7, 0x1

    .line 306
    if-le v4, v7, :cond_a

    .line 307
    .line 308
    long-to-float v1, v1

    .line 309
    int-to-float v2, v4

    .line 310
    const v4, 0x49742400    # 1000000.0f

    .line 311
    .line 312
    .line 313
    div-float/2addr v1, v4

    .line 314
    div-float/2addr v2, v1

    .line 315
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzak;->zzH(F)Lcom/google/android/gms/internal/ads/zzak;

    .line 316
    .line 317
    .line 318
    :cond_a
    iget v1, v8, Lcom/google/android/gms/internal/ads/zzajm;->zzb:I

    .line 319
    .line 320
    sget v2, Lcom/google/android/gms/internal/ads/zzajd;->zzb:I

    .line 321
    .line 322
    const/4 v2, 0x1

    .line 323
    if-ne v1, v2, :cond_b

    .line 324
    .line 325
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzadk;->zza()Z

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    if-eqz v1, :cond_b

    .line 330
    .line 331
    iget v1, v14, Lcom/google/android/gms/internal/ads/zzadk;->zza:I

    .line 332
    .line 333
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzak;->zzF(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 334
    .line 335
    .line 336
    iget v1, v14, Lcom/google/android/gms/internal/ads/zzadk;->zzb:I

    .line 337
    .line 338
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzak;->zzG(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 339
    .line 340
    .line 341
    :cond_b
    iget v1, v8, Lcom/google/android/gms/internal/ads/zzajm;->zzb:I

    .line 342
    .line 343
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzj:Ljava/util/List;

    .line 344
    .line 345
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    if-eqz v2, :cond_c

    .line 350
    .line 351
    const/4 v2, 0x3

    .line 352
    const/4 v4, 0x0

    .line 353
    goto :goto_9

    .line 354
    :cond_c
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzj:Ljava/util/List;

    .line 355
    .line 356
    new-instance v4, Lcom/google/android/gms/internal/ads/zzby;

    .line 357
    .line 358
    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/zzby;-><init>(Ljava/util/List;)V

    .line 359
    .line 360
    .line 361
    const/4 v2, 0x3

    .line 362
    :goto_9
    new-array v7, v2, [Lcom/google/android/gms/internal/ads/zzby;

    .line 363
    .line 364
    const/4 v2, 0x0

    .line 365
    aput-object v4, v7, v2

    .line 366
    .line 367
    const/4 v4, 0x1

    .line 368
    aput-object v16, v7, v4

    .line 369
    .line 370
    const/4 v4, 0x2

    .line 371
    aput-object v18, v7, v4

    .line 372
    .line 373
    new-instance v4, Lcom/google/android/gms/internal/ads/zzby;

    .line 374
    .line 375
    new-array v10, v2, [Lcom/google/android/gms/internal/ads/zzbx;

    .line 376
    .line 377
    move-object/from16 v26, v14

    .line 378
    .line 379
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    invoke-direct {v4, v13, v14, v10}, Lcom/google/android/gms/internal/ads/zzby;-><init>(J[Lcom/google/android/gms/internal/ads/zzbx;)V

    .line 385
    .line 386
    .line 387
    if-eqz v15, :cond_f

    .line 388
    .line 389
    const/4 v2, 0x0

    .line 390
    :goto_a
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzby;->zza()I

    .line 391
    .line 392
    .line 393
    move-result v10

    .line 394
    if-ge v2, v10, :cond_f

    .line 395
    .line 396
    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/ads/zzby;->zzb(I)Lcom/google/android/gms/internal/ads/zzbx;

    .line 397
    .line 398
    .line 399
    move-result-object v10

    .line 400
    instance-of v11, v10, Lcom/google/android/gms/internal/ads/zzgc;

    .line 401
    .line 402
    if-eqz v11, :cond_d

    .line 403
    .line 404
    check-cast v10, Lcom/google/android/gms/internal/ads/zzgc;

    .line 405
    .line 406
    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzgc;->zza:Ljava/lang/String;

    .line 407
    .line 408
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    .line 409
    .line 410
    const/4 v14, 0x4

    .line 411
    new-array v14, v14, [J

    .line 412
    .line 413
    fill-array-data v14, :array_1

    .line 414
    .line 415
    .line 416
    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v13

    .line 423
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result v11

    .line 427
    if-eqz v11, :cond_e

    .line 428
    .line 429
    const/4 v11, 0x2

    .line 430
    if-ne v1, v11, :cond_d

    .line 431
    .line 432
    const/4 v11, 0x1

    .line 433
    new-array v13, v11, [Lcom/google/android/gms/internal/ads/zzbx;

    .line 434
    .line 435
    const/4 v14, 0x0

    .line 436
    aput-object v10, v13, v14

    .line 437
    .line 438
    invoke-virtual {v4, v13}, Lcom/google/android/gms/internal/ads/zzby;->zzc([Lcom/google/android/gms/internal/ads/zzbx;)Lcom/google/android/gms/internal/ads/zzby;

    .line 439
    .line 440
    .line 441
    move-result-object v4

    .line 442
    goto :goto_b

    .line 443
    :cond_d
    const/4 v11, 0x1

    .line 444
    goto :goto_b

    .line 445
    :cond_e
    const/4 v11, 0x1

    .line 446
    const/4 v14, 0x0

    .line 447
    new-array v13, v11, [Lcom/google/android/gms/internal/ads/zzbx;

    .line 448
    .line 449
    aput-object v10, v13, v14

    .line 450
    .line 451
    invoke-virtual {v4, v13}, Lcom/google/android/gms/internal/ads/zzby;->zzc([Lcom/google/android/gms/internal/ads/zzbx;)Lcom/google/android/gms/internal/ads/zzby;

    .line 452
    .line 453
    .line 454
    move-result-object v4

    .line 455
    :goto_b
    add-int/2addr v2, v11

    .line 456
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    goto :goto_a

    .line 462
    :cond_f
    const/4 v11, 0x1

    .line 463
    const/4 v1, 0x0

    .line 464
    const/4 v2, 0x3

    .line 465
    :goto_c
    if-ge v1, v2, :cond_10

    .line 466
    .line 467
    aget-object v10, v7, v1

    .line 468
    .line 469
    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/ads/zzby;->zzd(Lcom/google/android/gms/internal/ads/zzby;)Lcom/google/android/gms/internal/ads/zzby;

    .line 470
    .line 471
    .line 472
    move-result-object v4

    .line 473
    add-int/2addr v1, v11

    .line 474
    goto :goto_c

    .line 475
    :cond_10
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzby;->zza()I

    .line 476
    .line 477
    .line 478
    move-result v1

    .line 479
    if-lez v1, :cond_11

    .line 480
    .line 481
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzak;->zzP(Lcom/google/android/gms/internal/ads/zzby;)Lcom/google/android/gms/internal/ads/zzak;

    .line 482
    .line 483
    .line 484
    :cond_11
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzajg;->zzc:Lcom/google/android/gms/internal/ads/zzaea;

    .line 485
    .line 486
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    .line 487
    .line 488
    .line 489
    move-result-object v4

    .line 490
    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zzaea;->zzl(Lcom/google/android/gms/internal/ads/zzam;)V

    .line 491
    .line 492
    .line 493
    iget v1, v8, Lcom/google/android/gms/internal/ads/zzajm;->zzb:I

    .line 494
    .line 495
    const/4 v4, 0x2

    .line 496
    const/4 v7, -0x1

    .line 497
    if-ne v1, v4, :cond_12

    .line 498
    .line 499
    if-ne v12, v7, :cond_12

    .line 500
    .line 501
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 502
    .line 503
    .line 504
    move-result v12

    .line 505
    :cond_12
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    .line 507
    .line 508
    move-wide/from16 v10, v24

    .line 509
    .line 510
    const/4 v1, 0x1

    .line 511
    :goto_d
    add-int/2addr v9, v1

    .line 512
    move-object/from16 v6, v22

    .line 513
    .line 514
    move/from16 v7, v23

    .line 515
    .line 516
    move-object/from16 v14, v26

    .line 517
    .line 518
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    goto/16 :goto_5

    .line 524
    .line 525
    :cond_13
    const/4 v2, 0x3

    .line 526
    const/4 v7, -0x1

    .line 527
    iput v12, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzx:I

    .line 528
    .line 529
    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzy:J

    .line 530
    .line 531
    const/4 v1, 0x0

    .line 532
    new-array v3, v1, [Lcom/google/android/gms/internal/ads/zzajg;

    .line 533
    .line 534
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    check-cast v1, [Lcom/google/android/gms/internal/ads/zzajg;

    .line 539
    .line 540
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzv:[Lcom/google/android/gms/internal/ads/zzajg;

    .line 541
    .line 542
    array-length v3, v1

    .line 543
    new-array v4, v3, [[J

    .line 544
    .line 545
    new-array v5, v3, [I

    .line 546
    .line 547
    new-array v6, v3, [J

    .line 548
    .line 549
    new-array v3, v3, [Z

    .line 550
    .line 551
    const/4 v8, 0x0

    .line 552
    :goto_e
    array-length v9, v1

    .line 553
    if-ge v8, v9, :cond_14

    .line 554
    .line 555
    aget-object v9, v1, v8

    .line 556
    .line 557
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzajg;->zzb:Lcom/google/android/gms/internal/ads/zzajp;

    .line 558
    .line 559
    iget v9, v9, Lcom/google/android/gms/internal/ads/zzajp;->zzb:I

    .line 560
    .line 561
    new-array v9, v9, [J

    .line 562
    .line 563
    aput-object v9, v4, v8

    .line 564
    .line 565
    aget-object v9, v1, v8

    .line 566
    .line 567
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzajg;->zzb:Lcom/google/android/gms/internal/ads/zzajp;

    .line 568
    .line 569
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzajp;->zzf:[J

    .line 570
    .line 571
    const/4 v10, 0x0

    .line 572
    aget-wide v11, v9, v10

    .line 573
    .line 574
    aput-wide v11, v6, v8

    .line 575
    .line 576
    const/4 v9, 0x1

    .line 577
    add-int/2addr v8, v9

    .line 578
    goto :goto_e

    .line 579
    :cond_14
    const/4 v10, 0x0

    .line 580
    const/4 v8, 0x0

    .line 581
    :goto_f
    array-length v9, v1

    .line 582
    if-ge v8, v9, :cond_18

    .line 583
    .line 584
    const-wide v11, 0x7fffffffffffffffL

    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    move-wide v12, v11

    .line 590
    const/4 v9, 0x0

    .line 591
    const/4 v11, -0x1

    .line 592
    :goto_10
    array-length v14, v1

    .line 593
    if-ge v9, v14, :cond_16

    .line 594
    .line 595
    aget-boolean v14, v3, v9

    .line 596
    .line 597
    if-nez v14, :cond_15

    .line 598
    .line 599
    aget-wide v14, v6, v9

    .line 600
    .line 601
    cmp-long v16, v14, v12

    .line 602
    .line 603
    if-gtz v16, :cond_15

    .line 604
    .line 605
    move v11, v9

    .line 606
    move-wide v12, v14

    .line 607
    :cond_15
    const/4 v14, 0x1

    .line 608
    add-int/2addr v9, v14

    .line 609
    goto :goto_10

    .line 610
    :cond_16
    const/4 v14, 0x1

    .line 611
    aget v9, v5, v11

    .line 612
    .line 613
    aget-object v12, v4, v11

    .line 614
    .line 615
    aput-wide v19, v12, v9

    .line 616
    .line 617
    aget-object v13, v1, v11

    .line 618
    .line 619
    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzajg;->zzb:Lcom/google/android/gms/internal/ads/zzajp;

    .line 620
    .line 621
    iget-object v15, v13, Lcom/google/android/gms/internal/ads/zzajp;->zzd:[I

    .line 622
    .line 623
    aget v15, v15, v9

    .line 624
    .line 625
    move/from16 v16, v8

    .line 626
    .line 627
    int-to-long v7, v15

    .line 628
    add-long v19, v19, v7

    .line 629
    .line 630
    add-int/2addr v9, v14

    .line 631
    aput v9, v5, v11

    .line 632
    .line 633
    array-length v7, v12

    .line 634
    if-ge v9, v7, :cond_17

    .line 635
    .line 636
    iget-object v7, v13, Lcom/google/android/gms/internal/ads/zzajp;->zzf:[J

    .line 637
    .line 638
    aget-wide v8, v7, v9

    .line 639
    .line 640
    aput-wide v8, v6, v11

    .line 641
    .line 642
    move/from16 v8, v16

    .line 643
    .line 644
    :goto_11
    const/4 v7, -0x1

    .line 645
    goto :goto_f

    .line 646
    :cond_17
    aput-boolean v14, v3, v11

    .line 647
    .line 648
    add-int/lit8 v8, v16, 0x1

    .line 649
    .line 650
    goto :goto_11

    .line 651
    :cond_18
    const/4 v14, 0x1

    .line 652
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzw:[[J

    .line 653
    .line 654
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzu:Lcom/google/android/gms/internal/ads/zzacx;

    .line 655
    .line 656
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacx;->zzD()V

    .line 657
    .line 658
    .line 659
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzu:Lcom/google/android/gms/internal/ads/zzacx;

    .line 660
    .line 661
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzacx;->zzO(Lcom/google/android/gms/internal/ads/zzadu;)V

    .line 662
    .line 663
    .line 664
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzh:Ljava/util/ArrayDeque;

    .line 665
    .line 666
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 667
    .line 668
    .line 669
    const/4 v1, 0x2

    .line 670
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzk:I

    .line 671
    .line 672
    goto/16 :goto_0

    .line 673
    .line 674
    :cond_19
    const/4 v2, 0x3

    .line 675
    const/4 v10, 0x0

    .line 676
    const/4 v14, 0x1

    .line 677
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzh:Ljava/util/ArrayDeque;

    .line 678
    .line 679
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 680
    .line 681
    .line 682
    move-result v1

    .line 683
    if-nez v1, :cond_0

    .line 684
    .line 685
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzh:Ljava/util/ArrayDeque;

    .line 686
    .line 687
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 688
    .line 689
    .line 690
    move-result-object v1

    .line 691
    check-cast v1, Lcom/google/android/gms/internal/ads/zzaim;

    .line 692
    .line 693
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzaim;->zzc(Lcom/google/android/gms/internal/ads/zzaim;)V

    .line 694
    .line 695
    .line 696
    goto/16 :goto_0

    .line 697
    .line 698
    :cond_1a
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzk:I

    .line 699
    .line 700
    const/4 v2, 0x2

    .line 701
    if-eq v1, v2, :cond_1b

    .line 702
    .line 703
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajh;->zzk()V

    .line 704
    .line 705
    .line 706
    :cond_1b
    return-void

    .line 707
    :array_0
    .array-data 8
        -0x78a5e9ef4923fa90L
        -0x9c51d077f244d65L
        0x125db48735ca6232L
    .end array-data

    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    :array_1
    .array-data 8
        0x429da660e6d5183fL    # 8.150106879302062E12
        -0x6ca30b5b11557e3bL    # -2.099888846199769E-215
        0x6e8b945bcc20e078L    # 3.1901681909274665E224
        -0xfed0364f7149791L    # -7.369314590889184E231
    .end array-data
.end method


# virtual methods
.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzy:J

    return-wide v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzacv;Lcom/google/android/gms/internal/ads/zzadr;)I
    .locals 33

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
    :cond_0
    :goto_0
    const/4 v5, 0x1

    .line 8
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzk:I

    .line 9
    .line 10
    const v8, 0x66747970

    .line 11
    .line 12
    .line 13
    const-wide/16 v10, 0x0

    .line 14
    .line 15
    const/4 v12, 0x2

    .line 16
    const/4 v13, -0x1

    .line 17
    const/16 v14, 0x8

    .line 18
    .line 19
    if-eqz v7, :cond_22

    .line 20
    .line 21
    const-wide/32 v15, 0x40000

    .line 22
    .line 23
    .line 24
    if-eq v7, v5, :cond_19

    .line 25
    .line 26
    if-eq v7, v12, :cond_2

    .line 27
    .line 28
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzi:Lcom/google/android/gms/internal/ads/zzajk;

    .line 29
    .line 30
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzj:Ljava/util/List;

    .line 31
    .line 32
    invoke-virtual {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzajk;->zza(Lcom/google/android/gms/internal/ads/zzacv;Lcom/google/android/gms/internal/ads/zzadr;Ljava/util/List;)I

    .line 33
    .line 34
    .line 35
    iget-wide v1, v2, Lcom/google/android/gms/internal/ads/zzadr;->zza:J

    .line 36
    .line 37
    cmp-long v3, v1, v10

    .line 38
    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajh;->zzk()V

    .line 42
    .line 43
    .line 44
    :cond_1
    return v5

    .line 45
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    .line 46
    .line 47
    .line 48
    move-result-wide v7

    .line 49
    iget v14, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzp:I

    .line 50
    .line 51
    if-ne v14, v13, :cond_c

    .line 52
    .line 53
    const-wide v17, 0x7fffffffffffffffL

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    move-wide/from16 v19, v17

    .line 59
    .line 60
    move-wide/from16 v22, v19

    .line 61
    .line 62
    move-wide/from16 v24, v22

    .line 63
    .line 64
    const/4 v14, 0x0

    .line 65
    const/16 v21, 0x1

    .line 66
    .line 67
    const/16 v26, -0x1

    .line 68
    .line 69
    const/16 v27, -0x1

    .line 70
    .line 71
    const/16 v28, 0x1

    .line 72
    .line 73
    :goto_1
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzv:[Lcom/google/android/gms/internal/ads/zzajg;

    .line 74
    .line 75
    array-length v9, v4

    .line 76
    if-ge v14, v9, :cond_a

    .line 77
    .line 78
    aget-object v4, v4, v14

    .line 79
    .line 80
    iget v9, v4, Lcom/google/android/gms/internal/ads/zzajg;->zze:I

    .line 81
    .line 82
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzajg;->zzb:Lcom/google/android/gms/internal/ads/zzajp;

    .line 83
    .line 84
    iget v6, v4, Lcom/google/android/gms/internal/ads/zzajp;->zzb:I

    .line 85
    .line 86
    if-ne v9, v6, :cond_3

    .line 87
    .line 88
    goto :goto_5

    .line 89
    :cond_3
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzajp;->zzc:[J

    .line 90
    .line 91
    aget-wide v29, v4, v9

    .line 92
    .line 93
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzw:[[J

    .line 94
    .line 95
    sget v6, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 96
    .line 97
    aget-object v4, v4, v14

    .line 98
    .line 99
    aget-wide v31, v4, v9

    .line 100
    .line 101
    sub-long v29, v29, v7

    .line 102
    .line 103
    cmp-long v4, v29, v10

    .line 104
    .line 105
    if-ltz v4, :cond_4

    .line 106
    .line 107
    cmp-long v4, v29, v15

    .line 108
    .line 109
    if-ltz v4, :cond_5

    .line 110
    .line 111
    :cond_4
    const/4 v4, 0x1

    .line 112
    goto :goto_2

    .line 113
    :cond_5
    const/4 v4, 0x0

    .line 114
    :goto_2
    if-nez v4, :cond_6

    .line 115
    .line 116
    if-nez v28, :cond_7

    .line 117
    .line 118
    const/4 v6, 0x0

    .line 119
    goto :goto_3

    .line 120
    :cond_6
    move/from16 v6, v28

    .line 121
    .line 122
    :goto_3
    if-ne v4, v6, :cond_8

    .line 123
    .line 124
    cmp-long v9, v29, v24

    .line 125
    .line 126
    if-gez v9, :cond_8

    .line 127
    .line 128
    :cond_7
    move/from16 v28, v4

    .line 129
    .line 130
    move/from16 v27, v14

    .line 131
    .line 132
    move-wide/from16 v24, v29

    .line 133
    .line 134
    move-wide/from16 v22, v31

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_8
    move/from16 v28, v6

    .line 138
    .line 139
    :goto_4
    cmp-long v6, v31, v19

    .line 140
    .line 141
    if-gez v6, :cond_9

    .line 142
    .line 143
    move/from16 v21, v4

    .line 144
    .line 145
    move/from16 v26, v14

    .line 146
    .line 147
    move-wide/from16 v19, v31

    .line 148
    .line 149
    :cond_9
    :goto_5
    add-int/2addr v14, v5

    .line 150
    goto :goto_1

    .line 151
    :cond_a
    cmp-long v4, v19, v17

    .line 152
    .line 153
    if-eqz v4, :cond_b

    .line 154
    .line 155
    if-eqz v21, :cond_b

    .line 156
    .line 157
    const-wide/32 v17, 0xa00000

    .line 158
    .line 159
    .line 160
    add-long v19, v19, v17

    .line 161
    .line 162
    cmp-long v4, v22, v19

    .line 163
    .line 164
    if-ltz v4, :cond_b

    .line 165
    .line 166
    move/from16 v14, v26

    .line 167
    .line 168
    goto :goto_6

    .line 169
    :cond_b
    move/from16 v14, v27

    .line 170
    .line 171
    :goto_6
    iput v14, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzp:I

    .line 172
    .line 173
    if-ne v14, v13, :cond_c

    .line 174
    .line 175
    const/4 v3, -0x1

    .line 176
    goto/16 :goto_c

    .line 177
    .line 178
    :cond_c
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzv:[Lcom/google/android/gms/internal/ads/zzajg;

    .line 179
    .line 180
    aget-object v4, v4, v14

    .line 181
    .line 182
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzajg;->zzc:Lcom/google/android/gms/internal/ads/zzaea;

    .line 183
    .line 184
    iget v9, v4, Lcom/google/android/gms/internal/ads/zzajg;->zze:I

    .line 185
    .line 186
    iget-object v14, v4, Lcom/google/android/gms/internal/ads/zzajg;->zzb:Lcom/google/android/gms/internal/ads/zzajp;

    .line 187
    .line 188
    iget-object v13, v14, Lcom/google/android/gms/internal/ads/zzajp;->zzc:[J

    .line 189
    .line 190
    aget-wide v12, v13, v9

    .line 191
    .line 192
    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzajp;->zzd:[I

    .line 193
    .line 194
    aget v14, v14, v9

    .line 195
    .line 196
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzajg;->zzd:Lcom/google/android/gms/internal/ads/zzaeb;

    .line 197
    .line 198
    sub-long v7, v12, v7

    .line 199
    .line 200
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzq:I

    .line 201
    .line 202
    move-wide/from16 v18, v12

    .line 203
    .line 204
    int-to-long v12, v5

    .line 205
    add-long/2addr v7, v12

    .line 206
    cmp-long v5, v7, v10

    .line 207
    .line 208
    if-ltz v5, :cond_d

    .line 209
    .line 210
    cmp-long v5, v7, v15

    .line 211
    .line 212
    if-ltz v5, :cond_e

    .line 213
    .line 214
    :cond_d
    move-wide/from16 v3, v18

    .line 215
    .line 216
    goto/16 :goto_b

    .line 217
    .line 218
    :cond_e
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzajg;->zza:Lcom/google/android/gms/internal/ads/zzajm;

    .line 219
    .line 220
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzajm;->zzg:I

    .line 221
    .line 222
    const/4 v5, 0x1

    .line 223
    if-ne v2, v5, :cond_f

    .line 224
    .line 225
    const-wide/16 v10, 0x8

    .line 226
    .line 227
    add-long/2addr v7, v10

    .line 228
    add-int/lit8 v14, v14, -0x8

    .line 229
    .line 230
    :cond_f
    long-to-int v2, v7

    .line 231
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzacv;->zzk(I)V

    .line 232
    .line 233
    .line 234
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzajg;->zza:Lcom/google/android/gms/internal/ads/zzajm;

    .line 235
    .line 236
    iget v5, v2, Lcom/google/android/gms/internal/ads/zzajm;->zzj:I

    .line 237
    .line 238
    if-eqz v5, :cond_12

    .line 239
    .line 240
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zze:Lcom/google/android/gms/internal/ads/zzfp;

    .line 241
    .line 242
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    const/4 v7, 0x0

    .line 247
    aput-byte v7, v2, v7

    .line 248
    .line 249
    const/4 v8, 0x1

    .line 250
    aput-byte v7, v2, v8

    .line 251
    .line 252
    const/4 v8, 0x2

    .line 253
    aput-byte v7, v2, v8

    .line 254
    .line 255
    const/4 v7, 0x4

    .line 256
    rsub-int/lit8 v8, v5, 0x4

    .line 257
    .line 258
    :goto_7
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzr:I

    .line 259
    .line 260
    if-ge v7, v14, :cond_16

    .line 261
    .line 262
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzs:I

    .line 263
    .line 264
    if-nez v7, :cond_11

    .line 265
    .line 266
    invoke-interface {v1, v2, v8, v5}, Lcom/google/android/gms/internal/ads/zzacv;->zzi([BII)V

    .line 267
    .line 268
    .line 269
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzq:I

    .line 270
    .line 271
    add-int/2addr v7, v5

    .line 272
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzq:I

    .line 273
    .line 274
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzajh;->zze:Lcom/google/android/gms/internal/ads/zzfp;

    .line 275
    .line 276
    const/4 v10, 0x0

    .line 277
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 278
    .line 279
    .line 280
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzajh;->zze:Lcom/google/android/gms/internal/ads/zzfp;

    .line 281
    .line 282
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfp;->zzg()I

    .line 283
    .line 284
    .line 285
    move-result v7

    .line 286
    if-ltz v7, :cond_10

    .line 287
    .line 288
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzs:I

    .line 289
    .line 290
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzd:Lcom/google/android/gms/internal/ads/zzfp;

    .line 291
    .line 292
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 293
    .line 294
    .line 295
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzd:Lcom/google/android/gms/internal/ads/zzfp;

    .line 296
    .line 297
    const/4 v10, 0x4

    .line 298
    invoke-interface {v6, v7, v10}, Lcom/google/android/gms/internal/ads/zzaea;->zzr(Lcom/google/android/gms/internal/ads/zzfp;I)V

    .line 299
    .line 300
    .line 301
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzr:I

    .line 302
    .line 303
    add-int/2addr v7, v10

    .line 304
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzr:I

    .line 305
    .line 306
    add-int/2addr v14, v8

    .line 307
    goto :goto_7

    .line 308
    :cond_10
    const/4 v10, 0x4

    .line 309
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 310
    .line 311
    new-array v2, v10, [J

    .line 312
    .line 313
    fill-array-data v2, :array_0

    .line 314
    .line 315
    .line 316
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    const/4 v2, 0x0

    .line 324
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    throw v1

    .line 329
    :cond_11
    const/4 v10, 0x0

    .line 330
    invoke-interface {v6, v1, v7, v10}, Lcom/google/android/gms/internal/ads/zzaea;->zzf(Lcom/google/android/gms/internal/ads/zzu;IZ)I

    .line 331
    .line 332
    .line 333
    move-result v7

    .line 334
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzq:I

    .line 335
    .line 336
    add-int/2addr v10, v7

    .line 337
    iput v10, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzq:I

    .line 338
    .line 339
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzr:I

    .line 340
    .line 341
    add-int/2addr v10, v7

    .line 342
    iput v10, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzr:I

    .line 343
    .line 344
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzs:I

    .line 345
    .line 346
    sub-int/2addr v10, v7

    .line 347
    iput v10, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzs:I

    .line 348
    .line 349
    goto :goto_7

    .line 350
    :cond_12
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzajm;->zzf:Lcom/google/android/gms/internal/ads/zzam;

    .line 351
    .line 352
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 353
    .line 354
    const/4 v7, 0x3

    .line 355
    new-array v7, v7, [J

    .line 356
    .line 357
    fill-array-data v7, :array_1

    .line 358
    .line 359
    .line 360
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v5

    .line 367
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    .line 368
    .line 369
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    move-result v2

    .line 373
    if-eqz v2, :cond_14

    .line 374
    .line 375
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzr:I

    .line 376
    .line 377
    if-nez v2, :cond_13

    .line 378
    .line 379
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzf:Lcom/google/android/gms/internal/ads/zzfp;

    .line 380
    .line 381
    invoke-static {v14, v2}, Lcom/google/android/gms/internal/ads/zzaby;->zzb(ILcom/google/android/gms/internal/ads/zzfp;)V

    .line 382
    .line 383
    .line 384
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzf:Lcom/google/android/gms/internal/ads/zzfp;

    .line 385
    .line 386
    const/4 v5, 0x7

    .line 387
    invoke-interface {v6, v2, v5}, Lcom/google/android/gms/internal/ads/zzaea;->zzr(Lcom/google/android/gms/internal/ads/zzfp;I)V

    .line 388
    .line 389
    .line 390
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzr:I

    .line 391
    .line 392
    add-int/2addr v2, v5

    .line 393
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzr:I

    .line 394
    .line 395
    goto :goto_8

    .line 396
    :cond_13
    const/4 v5, 0x7

    .line 397
    :goto_8
    add-int/2addr v14, v5

    .line 398
    goto :goto_9

    .line 399
    :cond_14
    if-eqz v3, :cond_15

    .line 400
    .line 401
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzaeb;->zzd(Lcom/google/android/gms/internal/ads/zzacv;)V

    .line 402
    .line 403
    .line 404
    :cond_15
    :goto_9
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzr:I

    .line 405
    .line 406
    if-ge v2, v14, :cond_16

    .line 407
    .line 408
    sub-int v2, v14, v2

    .line 409
    .line 410
    const/4 v5, 0x0

    .line 411
    invoke-interface {v6, v1, v2, v5}, Lcom/google/android/gms/internal/ads/zzaea;->zzf(Lcom/google/android/gms/internal/ads/zzu;IZ)I

    .line 412
    .line 413
    .line 414
    move-result v2

    .line 415
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzq:I

    .line 416
    .line 417
    add-int/2addr v5, v2

    .line 418
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzq:I

    .line 419
    .line 420
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzr:I

    .line 421
    .line 422
    add-int/2addr v5, v2

    .line 423
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzr:I

    .line 424
    .line 425
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzs:I

    .line 426
    .line 427
    sub-int/2addr v5, v2

    .line 428
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzs:I

    .line 429
    .line 430
    goto :goto_9

    .line 431
    :cond_16
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzajg;->zzb:Lcom/google/android/gms/internal/ads/zzajp;

    .line 432
    .line 433
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzajp;->zzf:[J

    .line 434
    .line 435
    aget-wide v7, v2, v9

    .line 436
    .line 437
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzajp;->zzg:[I

    .line 438
    .line 439
    aget v1, v1, v9

    .line 440
    .line 441
    if-eqz v3, :cond_17

    .line 442
    .line 443
    const/16 v23, 0x0

    .line 444
    .line 445
    const/16 v24, 0x0

    .line 446
    .line 447
    move-object/from16 v17, v3

    .line 448
    .line 449
    move-object/from16 v18, v6

    .line 450
    .line 451
    move-wide/from16 v19, v7

    .line 452
    .line 453
    move/from16 v21, v1

    .line 454
    .line 455
    move/from16 v22, v14

    .line 456
    .line 457
    invoke-virtual/range {v17 .. v24}, Lcom/google/android/gms/internal/ads/zzaeb;->zzc(Lcom/google/android/gms/internal/ads/zzaea;JIIILcom/google/android/gms/internal/ads/zzadz;)V

    .line 458
    .line 459
    .line 460
    const/4 v1, 0x1

    .line 461
    add-int/2addr v9, v1

    .line 462
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzajg;->zzb:Lcom/google/android/gms/internal/ads/zzajp;

    .line 463
    .line 464
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzajp;->zzb:I

    .line 465
    .line 466
    if-ne v9, v1, :cond_18

    .line 467
    .line 468
    const/4 v1, 0x0

    .line 469
    invoke-virtual {v3, v6, v1}, Lcom/google/android/gms/internal/ads/zzaeb;->zza(Lcom/google/android/gms/internal/ads/zzaea;Lcom/google/android/gms/internal/ads/zzadz;)V

    .line 470
    .line 471
    .line 472
    goto :goto_a

    .line 473
    :cond_17
    const/16 v22, 0x0

    .line 474
    .line 475
    const/16 v23, 0x0

    .line 476
    .line 477
    move-object/from16 v17, v6

    .line 478
    .line 479
    move-wide/from16 v18, v7

    .line 480
    .line 481
    move/from16 v20, v1

    .line 482
    .line 483
    move/from16 v21, v14

    .line 484
    .line 485
    invoke-interface/range {v17 .. v23}, Lcom/google/android/gms/internal/ads/zzaea;->zzt(JIIILcom/google/android/gms/internal/ads/zzadz;)V

    .line 486
    .line 487
    .line 488
    :cond_18
    :goto_a
    iget v1, v4, Lcom/google/android/gms/internal/ads/zzajg;->zze:I

    .line 489
    .line 490
    const/4 v2, 0x1

    .line 491
    add-int/2addr v1, v2

    .line 492
    iput v1, v4, Lcom/google/android/gms/internal/ads/zzajg;->zze:I

    .line 493
    .line 494
    const/4 v1, -0x1

    .line 495
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzp:I

    .line 496
    .line 497
    const/4 v1, 0x0

    .line 498
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzq:I

    .line 499
    .line 500
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzr:I

    .line 501
    .line 502
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzs:I

    .line 503
    .line 504
    const/4 v3, 0x0

    .line 505
    goto :goto_c

    .line 506
    :goto_b
    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzadr;->zza:J

    .line 507
    .line 508
    const/4 v3, 0x1

    .line 509
    :goto_c
    return v3

    .line 510
    :cond_19
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzm:J

    .line 511
    .line 512
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzn:I

    .line 513
    .line 514
    int-to-long v5, v5

    .line 515
    sub-long/2addr v3, v5

    .line 516
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    .line 517
    .line 518
    .line 519
    move-result-wide v5

    .line 520
    add-long/2addr v5, v3

    .line 521
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzo:Lcom/google/android/gms/internal/ads/zzfp;

    .line 522
    .line 523
    if-eqz v7, :cond_1f

    .line 524
    .line 525
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 526
    .line 527
    .line 528
    move-result-object v9

    .line 529
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzn:I

    .line 530
    .line 531
    long-to-int v4, v3

    .line 532
    invoke-interface {v1, v9, v10, v4}, Lcom/google/android/gms/internal/ads/zzacv;->zzi([BII)V

    .line 533
    .line 534
    .line 535
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzl:I

    .line 536
    .line 537
    if-ne v3, v8, :cond_1e

    .line 538
    .line 539
    const/4 v3, 0x1

    .line 540
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzt:Z

    .line 541
    .line 542
    invoke-virtual {v7, v14}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfp;->zzg()I

    .line 546
    .line 547
    .line 548
    move-result v3

    .line 549
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzajh;->zzf(I)I

    .line 550
    .line 551
    .line 552
    move-result v3

    .line 553
    if-eqz v3, :cond_1a

    .line 554
    .line 555
    goto :goto_d

    .line 556
    :cond_1a
    const/4 v3, 0x4

    .line 557
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/zzfp;->zzL(I)V

    .line 558
    .line 559
    .line 560
    :cond_1b
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 561
    .line 562
    .line 563
    move-result v3

    .line 564
    if-lez v3, :cond_1c

    .line 565
    .line 566
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfp;->zzg()I

    .line 567
    .line 568
    .line 569
    move-result v3

    .line 570
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzajh;->zzf(I)I

    .line 571
    .line 572
    .line 573
    move-result v3

    .line 574
    if-eqz v3, :cond_1b

    .line 575
    .line 576
    goto :goto_d

    .line 577
    :cond_1c
    const/4 v3, 0x0

    .line 578
    :goto_d
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzz:I

    .line 579
    .line 580
    :cond_1d
    :goto_e
    const/4 v3, 0x0

    .line 581
    goto :goto_f

    .line 582
    :cond_1e
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzh:Ljava/util/ArrayDeque;

    .line 583
    .line 584
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 585
    .line 586
    .line 587
    move-result v3

    .line 588
    if-nez v3, :cond_1d

    .line 589
    .line 590
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzh:Ljava/util/ArrayDeque;

    .line 591
    .line 592
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v3

    .line 596
    check-cast v3, Lcom/google/android/gms/internal/ads/zzaim;

    .line 597
    .line 598
    new-instance v4, Lcom/google/android/gms/internal/ads/zzain;

    .line 599
    .line 600
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzl:I

    .line 601
    .line 602
    invoke-direct {v4, v8, v7}, Lcom/google/android/gms/internal/ads/zzain;-><init>(ILcom/google/android/gms/internal/ads/zzfp;)V

    .line 603
    .line 604
    .line 605
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzaim;->zzd(Lcom/google/android/gms/internal/ads/zzain;)V

    .line 606
    .line 607
    .line 608
    goto :goto_e

    .line 609
    :cond_1f
    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzt:Z

    .line 610
    .line 611
    if-nez v7, :cond_20

    .line 612
    .line 613
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzl:I

    .line 614
    .line 615
    const v8, 0x6d646174

    .line 616
    .line 617
    .line 618
    if-ne v7, v8, :cond_20

    .line 619
    .line 620
    const/4 v7, 0x1

    .line 621
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzz:I

    .line 622
    .line 623
    :cond_20
    cmp-long v7, v3, v15

    .line 624
    .line 625
    if-gez v7, :cond_21

    .line 626
    .line 627
    long-to-int v4, v3

    .line 628
    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zzacv;->zzk(I)V

    .line 629
    .line 630
    .line 631
    goto :goto_e

    .line 632
    :cond_21
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    .line 633
    .line 634
    .line 635
    move-result-wide v7

    .line 636
    add-long/2addr v7, v3

    .line 637
    iput-wide v7, v2, Lcom/google/android/gms/internal/ads/zzadr;->zza:J

    .line 638
    .line 639
    const/4 v3, 0x1

    .line 640
    :goto_f
    invoke-direct {v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzajh;->zzl(J)V

    .line 641
    .line 642
    .line 643
    if-eqz v3, :cond_0

    .line 644
    .line 645
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzk:I

    .line 646
    .line 647
    const/4 v4, 0x2

    .line 648
    if-eq v3, v4, :cond_0

    .line 649
    .line 650
    const/4 v3, 0x1

    .line 651
    return v3

    .line 652
    :cond_22
    const/4 v3, 0x1

    .line 653
    const/4 v4, 0x2

    .line 654
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzn:I

    .line 655
    .line 656
    if-nez v5, :cond_26

    .line 657
    .line 658
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzg:Lcom/google/android/gms/internal/ads/zzfp;

    .line 659
    .line 660
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 661
    .line 662
    .line 663
    move-result-object v5

    .line 664
    const/4 v6, 0x0

    .line 665
    invoke-interface {v1, v5, v6, v14, v3}, Lcom/google/android/gms/internal/ads/zzacv;->zzn([BIIZ)Z

    .line 666
    .line 667
    .line 668
    move-result v5

    .line 669
    if-nez v5, :cond_25

    .line 670
    .line 671
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzz:I

    .line 672
    .line 673
    if-ne v1, v4, :cond_24

    .line 674
    .line 675
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzc:I

    .line 676
    .line 677
    and-int/2addr v1, v4

    .line 678
    if-eqz v1, :cond_24

    .line 679
    .line 680
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzu:Lcom/google/android/gms/internal/ads/zzacx;

    .line 681
    .line 682
    const/4 v3, 0x4

    .line 683
    invoke-interface {v1, v6, v3}, Lcom/google/android/gms/internal/ads/zzacx;->zzw(II)Lcom/google/android/gms/internal/ads/zzaea;

    .line 684
    .line 685
    .line 686
    move-result-object v1

    .line 687
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzA:Lcom/google/android/gms/internal/ads/zzahe;

    .line 688
    .line 689
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    if-nez v2, :cond_23

    .line 695
    .line 696
    const/4 v9, 0x0

    .line 697
    goto :goto_10

    .line 698
    :cond_23
    new-instance v9, Lcom/google/android/gms/internal/ads/zzby;

    .line 699
    .line 700
    const/4 v5, 0x1

    .line 701
    new-array v5, v5, [Lcom/google/android/gms/internal/ads/zzbx;

    .line 702
    .line 703
    aput-object v2, v5, v6

    .line 704
    .line 705
    invoke-direct {v9, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzby;-><init>(J[Lcom/google/android/gms/internal/ads/zzbx;)V

    .line 706
    .line 707
    .line 708
    :goto_10
    new-instance v2, Lcom/google/android/gms/internal/ads/zzak;

    .line 709
    .line 710
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    .line 711
    .line 712
    .line 713
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzak;->zzP(Lcom/google/android/gms/internal/ads/zzby;)Lcom/google/android/gms/internal/ads/zzak;

    .line 714
    .line 715
    .line 716
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    .line 717
    .line 718
    .line 719
    move-result-object v2

    .line 720
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzaea;->zzl(Lcom/google/android/gms/internal/ads/zzam;)V

    .line 721
    .line 722
    .line 723
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzu:Lcom/google/android/gms/internal/ads/zzacx;

    .line 724
    .line 725
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacx;->zzD()V

    .line 726
    .line 727
    .line 728
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzu:Lcom/google/android/gms/internal/ads/zzacx;

    .line 729
    .line 730
    new-instance v2, Lcom/google/android/gms/internal/ads/zzadt;

    .line 731
    .line 732
    invoke-direct {v2, v3, v4, v10, v11}, Lcom/google/android/gms/internal/ads/zzadt;-><init>(JJ)V

    .line 733
    .line 734
    .line 735
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzacx;->zzO(Lcom/google/android/gms/internal/ads/zzadu;)V

    .line 736
    .line 737
    .line 738
    :cond_24
    const/4 v1, -0x1

    .line 739
    return v1

    .line 740
    :cond_25
    const/4 v3, 0x4

    .line 741
    iput v14, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzn:I

    .line 742
    .line 743
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzg:Lcom/google/android/gms/internal/ads/zzfp;

    .line 744
    .line 745
    const/4 v5, 0x0

    .line 746
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 747
    .line 748
    .line 749
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzg:Lcom/google/android/gms/internal/ads/zzfp;

    .line 750
    .line 751
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfp;->zzu()J

    .line 752
    .line 753
    .line 754
    move-result-wide v4

    .line 755
    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzm:J

    .line 756
    .line 757
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzg:Lcom/google/android/gms/internal/ads/zzfp;

    .line 758
    .line 759
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfp;->zzg()I

    .line 760
    .line 761
    .line 762
    move-result v4

    .line 763
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzl:I

    .line 764
    .line 765
    goto :goto_11

    .line 766
    :cond_26
    const/4 v3, 0x4

    .line 767
    :goto_11
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzm:J

    .line 768
    .line 769
    const-wide/16 v6, 0x1

    .line 770
    .line 771
    cmp-long v9, v4, v6

    .line 772
    .line 773
    if-nez v9, :cond_27

    .line 774
    .line 775
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzg:Lcom/google/android/gms/internal/ads/zzfp;

    .line 776
    .line 777
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 778
    .line 779
    .line 780
    move-result-object v4

    .line 781
    invoke-interface {v1, v4, v14, v14}, Lcom/google/android/gms/internal/ads/zzacv;->zzi([BII)V

    .line 782
    .line 783
    .line 784
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzn:I

    .line 785
    .line 786
    add-int/2addr v4, v14

    .line 787
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzn:I

    .line 788
    .line 789
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzg:Lcom/google/android/gms/internal/ads/zzfp;

    .line 790
    .line 791
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfp;->zzv()J

    .line 792
    .line 793
    .line 794
    move-result-wide v4

    .line 795
    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzm:J

    .line 796
    .line 797
    goto :goto_13

    .line 798
    :cond_27
    cmp-long v6, v4, v10

    .line 799
    .line 800
    if-nez v6, :cond_2a

    .line 801
    .line 802
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzd()J

    .line 803
    .line 804
    .line 805
    move-result-wide v4

    .line 806
    const-wide/16 v6, -0x1

    .line 807
    .line 808
    cmp-long v9, v4, v6

    .line 809
    .line 810
    if-nez v9, :cond_29

    .line 811
    .line 812
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzh:Ljava/util/ArrayDeque;

    .line 813
    .line 814
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 815
    .line 816
    .line 817
    move-result-object v4

    .line 818
    check-cast v4, Lcom/google/android/gms/internal/ads/zzaim;

    .line 819
    .line 820
    if-eqz v4, :cond_28

    .line 821
    .line 822
    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/zzaim;->zza:J

    .line 823
    .line 824
    goto :goto_12

    .line 825
    :cond_28
    move-wide v4, v6

    .line 826
    :cond_29
    :goto_12
    cmp-long v9, v4, v6

    .line 827
    .line 828
    if-eqz v9, :cond_2a

    .line 829
    .line 830
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    .line 831
    .line 832
    .line 833
    move-result-wide v6

    .line 834
    sub-long/2addr v4, v6

    .line 835
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzn:I

    .line 836
    .line 837
    int-to-long v6, v6

    .line 838
    add-long/2addr v4, v6

    .line 839
    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzm:J

    .line 840
    .line 841
    :cond_2a
    :goto_13
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzm:J

    .line 842
    .line 843
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzn:I

    .line 844
    .line 845
    int-to-long v9, v6

    .line 846
    cmp-long v7, v4, v9

    .line 847
    .line 848
    if-ltz v7, :cond_34

    .line 849
    .line 850
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzl:I

    .line 851
    .line 852
    const v5, 0x6d6f6f76

    .line 853
    .line 854
    .line 855
    const v7, 0x6d657461

    .line 856
    .line 857
    .line 858
    if-eq v4, v5, :cond_2b

    .line 859
    .line 860
    const v5, 0x7472616b

    .line 861
    .line 862
    .line 863
    if-eq v4, v5, :cond_2b

    .line 864
    .line 865
    const v5, 0x6d646961

    .line 866
    .line 867
    .line 868
    if-eq v4, v5, :cond_2b

    .line 869
    .line 870
    const v5, 0x6d696e66

    .line 871
    .line 872
    .line 873
    if-eq v4, v5, :cond_2b

    .line 874
    .line 875
    const v5, 0x7374626c

    .line 876
    .line 877
    .line 878
    if-eq v4, v5, :cond_2b

    .line 879
    .line 880
    const v5, 0x65647473

    .line 881
    .line 882
    .line 883
    if-eq v4, v5, :cond_2b

    .line 884
    .line 885
    if-ne v4, v7, :cond_2c

    .line 886
    .line 887
    :cond_2b
    const/4 v4, 0x1

    .line 888
    goto/16 :goto_17

    .line 889
    .line 890
    :cond_2c
    const v5, 0x6d646864

    .line 891
    .line 892
    .line 893
    if-eq v4, v5, :cond_2f

    .line 894
    .line 895
    const v5, 0x6d766864

    .line 896
    .line 897
    .line 898
    if-eq v4, v5, :cond_2f

    .line 899
    .line 900
    const v5, 0x68646c72    # 4.3148E24f

    .line 901
    .line 902
    .line 903
    if-eq v4, v5, :cond_2f

    .line 904
    .line 905
    const v5, 0x73747364

    .line 906
    .line 907
    .line 908
    if-eq v4, v5, :cond_2f

    .line 909
    .line 910
    const v5, 0x73747473

    .line 911
    .line 912
    .line 913
    if-eq v4, v5, :cond_2f

    .line 914
    .line 915
    const v5, 0x73747373

    .line 916
    .line 917
    .line 918
    if-eq v4, v5, :cond_2f

    .line 919
    .line 920
    const v5, 0x63747473

    .line 921
    .line 922
    .line 923
    if-eq v4, v5, :cond_2f

    .line 924
    .line 925
    const v5, 0x656c7374

    .line 926
    .line 927
    .line 928
    if-eq v4, v5, :cond_2f

    .line 929
    .line 930
    const v5, 0x73747363

    .line 931
    .line 932
    .line 933
    if-eq v4, v5, :cond_2f

    .line 934
    .line 935
    const v5, 0x7374737a

    .line 936
    .line 937
    .line 938
    if-eq v4, v5, :cond_2f

    .line 939
    .line 940
    const v5, 0x73747a32

    .line 941
    .line 942
    .line 943
    if-eq v4, v5, :cond_2f

    .line 944
    .line 945
    const v5, 0x7374636f

    .line 946
    .line 947
    .line 948
    if-eq v4, v5, :cond_2f

    .line 949
    .line 950
    const v5, 0x636f3634

    .line 951
    .line 952
    .line 953
    if-eq v4, v5, :cond_2f

    .line 954
    .line 955
    const v5, 0x746b6864

    .line 956
    .line 957
    .line 958
    if-eq v4, v5, :cond_2f

    .line 959
    .line 960
    if-eq v4, v8, :cond_2f

    .line 961
    .line 962
    const v5, 0x75647461

    .line 963
    .line 964
    .line 965
    if-eq v4, v5, :cond_2f

    .line 966
    .line 967
    const v5, 0x6b657973

    .line 968
    .line 969
    .line 970
    if-eq v4, v5, :cond_2f

    .line 971
    .line 972
    const v5, 0x696c7374

    .line 973
    .line 974
    .line 975
    if-ne v4, v5, :cond_2d

    .line 976
    .line 977
    goto :goto_14

    .line 978
    :cond_2d
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    .line 979
    .line 980
    .line 981
    move-result-wide v4

    .line 982
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzn:I

    .line 983
    .line 984
    int-to-long v6, v6

    .line 985
    sub-long v11, v4, v6

    .line 986
    .line 987
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzl:I

    .line 988
    .line 989
    const v5, 0x6d707664

    .line 990
    .line 991
    .line 992
    if-ne v4, v5, :cond_2e

    .line 993
    .line 994
    add-long v15, v11, v6

    .line 995
    .line 996
    new-instance v4, Lcom/google/android/gms/internal/ads/zzahe;

    .line 997
    .line 998
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzm:J

    .line 999
    .line 1000
    sub-long v17, v8, v6

    .line 1001
    .line 1002
    const-wide/16 v9, 0x0

    .line 1003
    .line 1004
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    move-object v8, v4

    .line 1010
    invoke-direct/range {v8 .. v18}, Lcom/google/android/gms/internal/ads/zzahe;-><init>(JJJJJ)V

    .line 1011
    .line 1012
    .line 1013
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzA:Lcom/google/android/gms/internal/ads/zzahe;

    .line 1014
    .line 1015
    :cond_2e
    const/4 v4, 0x0

    .line 1016
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzo:Lcom/google/android/gms/internal/ads/zzfp;

    .line 1017
    .line 1018
    const/4 v4, 0x1

    .line 1019
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzk:I

    .line 1020
    .line 1021
    goto/16 :goto_0

    .line 1022
    .line 1023
    :cond_2f
    :goto_14
    if-ne v6, v14, :cond_30

    .line 1024
    .line 1025
    const/4 v4, 0x1

    .line 1026
    goto :goto_15

    .line 1027
    :cond_30
    const/4 v4, 0x0

    .line 1028
    :goto_15
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzek;->zzf(Z)V

    .line 1029
    .line 1030
    .line 1031
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzm:J

    .line 1032
    .line 1033
    const-wide/32 v6, 0x7fffffff

    .line 1034
    .line 1035
    .line 1036
    cmp-long v8, v4, v6

    .line 1037
    .line 1038
    if-gtz v8, :cond_31

    .line 1039
    .line 1040
    const/4 v4, 0x1

    .line 1041
    goto :goto_16

    .line 1042
    :cond_31
    const/4 v4, 0x0

    .line 1043
    :goto_16
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzek;->zzf(Z)V

    .line 1044
    .line 1045
    .line 1046
    new-instance v4, Lcom/google/android/gms/internal/ads/zzfp;

    .line 1047
    .line 1048
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzm:J

    .line 1049
    .line 1050
    long-to-int v6, v5

    .line 1051
    invoke-direct {v4, v6}, Lcom/google/android/gms/internal/ads/zzfp;-><init>(I)V

    .line 1052
    .line 1053
    .line 1054
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzg:Lcom/google/android/gms/internal/ads/zzfp;

    .line 1055
    .line 1056
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 1057
    .line 1058
    .line 1059
    move-result-object v5

    .line 1060
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 1061
    .line 1062
    .line 1063
    move-result-object v6

    .line 1064
    const/4 v7, 0x0

    .line 1065
    invoke-static {v5, v7, v6, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1066
    .line 1067
    .line 1068
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzo:Lcom/google/android/gms/internal/ads/zzfp;

    .line 1069
    .line 1070
    const/4 v4, 0x1

    .line 1071
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzk:I

    .line 1072
    .line 1073
    goto/16 :goto_0

    .line 1074
    .line 1075
    :goto_17
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    .line 1076
    .line 1077
    .line 1078
    move-result-wide v5

    .line 1079
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzm:J

    .line 1080
    .line 1081
    add-long/2addr v5, v8

    .line 1082
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzn:I

    .line 1083
    .line 1084
    int-to-long v10, v10

    .line 1085
    cmp-long v12, v8, v10

    .line 1086
    .line 1087
    if-eqz v12, :cond_32

    .line 1088
    .line 1089
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzl:I

    .line 1090
    .line 1091
    if-ne v8, v7, :cond_32

    .line 1092
    .line 1093
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzf:Lcom/google/android/gms/internal/ads/zzfp;

    .line 1094
    .line 1095
    invoke-virtual {v7, v14}, Lcom/google/android/gms/internal/ads/zzfp;->zzH(I)V

    .line 1096
    .line 1097
    .line 1098
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzf:Lcom/google/android/gms/internal/ads/zzfp;

    .line 1099
    .line 1100
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 1101
    .line 1102
    .line 1103
    move-result-object v7

    .line 1104
    const/4 v8, 0x0

    .line 1105
    invoke-interface {v1, v7, v8, v14}, Lcom/google/android/gms/internal/ads/zzacv;->zzh([BII)V

    .line 1106
    .line 1107
    .line 1108
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzf:Lcom/google/android/gms/internal/ads/zzfp;

    .line 1109
    .line 1110
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzaiw;->zze(Lcom/google/android/gms/internal/ads/zzfp;)V

    .line 1111
    .line 1112
    .line 1113
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzf:Lcom/google/android/gms/internal/ads/zzfp;

    .line 1114
    .line 1115
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfp;->zzd()I

    .line 1116
    .line 1117
    .line 1118
    move-result v7

    .line 1119
    invoke-interface {v1, v7}, Lcom/google/android/gms/internal/ads/zzacv;->zzk(I)V

    .line 1120
    .line 1121
    .line 1122
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzj()V

    .line 1123
    .line 1124
    .line 1125
    goto :goto_18

    .line 1126
    :cond_32
    const/4 v8, 0x0

    .line 1127
    :goto_18
    sub-long/2addr v5, v10

    .line 1128
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzh:Ljava/util/ArrayDeque;

    .line 1129
    .line 1130
    new-instance v9, Lcom/google/android/gms/internal/ads/zzaim;

    .line 1131
    .line 1132
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzl:I

    .line 1133
    .line 1134
    invoke-direct {v9, v10, v5, v6}, Lcom/google/android/gms/internal/ads/zzaim;-><init>(IJ)V

    .line 1135
    .line 1136
    .line 1137
    invoke-virtual {v7, v9}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 1138
    .line 1139
    .line 1140
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzm:J

    .line 1141
    .line 1142
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzn:I

    .line 1143
    .line 1144
    int-to-long v11, v7

    .line 1145
    cmp-long v7, v9, v11

    .line 1146
    .line 1147
    if-nez v7, :cond_33

    .line 1148
    .line 1149
    invoke-direct {v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzajh;->zzl(J)V

    .line 1150
    .line 1151
    .line 1152
    goto/16 :goto_0

    .line 1153
    .line 1154
    :cond_33
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajh;->zzk()V

    .line 1155
    .line 1156
    .line 1157
    goto/16 :goto_0

    .line 1158
    .line 1159
    :cond_34
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 1160
    .line 1161
    const/4 v2, 0x7

    .line 1162
    new-array v2, v2, [J

    .line 1163
    .line 1164
    fill-array-data v2, :array_2

    .line 1165
    .line 1166
    .line 1167
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1168
    .line 1169
    .line 1170
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v1

    .line 1174
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcc;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v1

    .line 1178
    throw v1

    .line 1179
    :array_0
    .array-data 8
        0x6f498ea109c3ae56L    # 1.2108743166299376E228
        -0x417f4cf99da0d033L    # -1.2441960100942812E-7
        0x4e47683abcae6194L    # 1.2621108293860729E69
        0x2e18a48073a3b422L    # 1.2387609915206267E-86
    .end array-data

    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    :array_1
    .array-data 8
        0x13a60dab7231fd15L    # 5.117862259917377E-214
        0x6cc8c1eb984bf91L
        0x20ac805a0ce57c71L
    .end array-data

    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    :array_2
    .array-data 8
        0x6a917735bbd7f021L    # 2.1903935545379528E205
        0x43b1d51ffb0b4088L
        0x6a666c6c5f256362L    # 3.515208003979327E204
        0x3c57e70e7c9b4270L    # 5.183042536864406E-18
        0x124e725052ba0368L
        -0x2cf21881474089baL    # -1.218321776949142E92
        0x7a5c1b0a7f02039fL    # 2.550875574329848E281
    .end array-data
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzacx;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzc:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzb:Lcom/google/android/gms/internal/ads/zzakp;

    .line 8
    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaks;

    .line 10
    .line 11
    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzaks;-><init>(Lcom/google/android/gms/internal/ads/zzacx;Lcom/google/android/gms/internal/ads/zzakp;)V

    .line 12
    .line 13
    .line 14
    move-object p1, v1

    .line 15
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzu:Lcom/google/android/gms/internal/ads/zzacx;

    .line 16
    .line 17
    return-void
.end method

.method public final zzd(JJ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzh:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzn:I

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzp:I

    .line 11
    .line 12
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzq:I

    .line 13
    .line 14
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzr:I

    .line 15
    .line 16
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzs:I

    .line 17
    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    cmp-long v4, p1, v2

    .line 21
    .line 22
    if-nez v4, :cond_1

    .line 23
    .line 24
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzk:I

    .line 25
    .line 26
    const/4 p2, 0x3

    .line 27
    if-eq p1, p2, :cond_0

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzajh;->zzk()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzi:Lcom/google/android/gms/internal/ads/zzajk;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzajk;->zzb()V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzj:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzv:[Lcom/google/android/gms/internal/ads/zzajg;

    .line 45
    .line 46
    array-length p2, p1

    .line 47
    :goto_0
    if-ge v0, p2, :cond_4

    .line 48
    .line 49
    aget-object v2, p1, v0

    .line 50
    .line 51
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzajg;->zzb:Lcom/google/android/gms/internal/ads/zzajp;

    .line 52
    .line 53
    invoke-virtual {v3, p3, p4}, Lcom/google/android/gms/internal/ads/zzajp;->zza(J)I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-ne v4, v1, :cond_2

    .line 58
    .line 59
    invoke-virtual {v3, p3, p4}, Lcom/google/android/gms/internal/ads/zzajp;->zzb(J)I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    :cond_2
    iput v4, v2, Lcom/google/android/gms/internal/ads/zzajg;->zze:I

    .line 64
    .line 65
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzajg;->zzd:Lcom/google/android/gms/internal/ads/zzaeb;

    .line 66
    .line 67
    if-eqz v2, :cond_3

    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaeb;->zzb()V

    .line 70
    .line 71
    .line 72
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzacv;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzc:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzajl;->zzb(Lcom/google/android/gms/internal/ads/zzacv;Z)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final zzg(J)Lcom/google/android/gms/internal/ads/zzads;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzv:[Lcom/google/android/gms/internal/ads/zzajg;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzads;

    .line 7
    .line 8
    sget-object p2, Lcom/google/android/gms/internal/ads/zzadv;->zza:Lcom/google/android/gms/internal/ads/zzadv;

    .line 9
    .line 10
    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzads;-><init>(Lcom/google/android/gms/internal/ads/zzadv;Lcom/google/android/gms/internal/ads/zzadv;)V

    .line 11
    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzx:I

    .line 16
    .line 17
    const/4 v2, -0x1

    .line 18
    const-wide/16 v3, -0x1

    .line 19
    .line 20
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    if-eq v1, v2, :cond_3

    .line 26
    .line 27
    aget-object v0, v0, v1

    .line 28
    .line 29
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzajg;->zzb:Lcom/google/android/gms/internal/ads/zzajp;

    .line 30
    .line 31
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzajh;->zzi(Lcom/google/android/gms/internal/ads/zzajp;J)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-ne v1, v2, :cond_1

    .line 36
    .line 37
    new-instance p1, Lcom/google/android/gms/internal/ads/zzads;

    .line 38
    .line 39
    sget-object p2, Lcom/google/android/gms/internal/ads/zzadv;->zza:Lcom/google/android/gms/internal/ads/zzadv;

    .line 40
    .line 41
    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzads;-><init>(Lcom/google/android/gms/internal/ads/zzadv;Lcom/google/android/gms/internal/ads/zzadv;)V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_3

    .line 45
    .line 46
    :cond_1
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzf:[J

    .line 47
    .line 48
    aget-wide v8, v7, v1

    .line 49
    .line 50
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzc:[J

    .line 51
    .line 52
    aget-wide v10, v7, v1

    .line 53
    .line 54
    cmp-long v7, v8, p1

    .line 55
    .line 56
    if-gez v7, :cond_2

    .line 57
    .line 58
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzb:I

    .line 59
    .line 60
    add-int/2addr v7, v2

    .line 61
    if-ge v1, v7, :cond_2

    .line 62
    .line 63
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzajp;->zzb(J)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eq p1, v2, :cond_2

    .line 68
    .line 69
    if-eq p1, v1, :cond_2

    .line 70
    .line 71
    iget-object p2, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzf:[J

    .line 72
    .line 73
    aget-wide v1, p2, p1

    .line 74
    .line 75
    iget-object p2, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzc:[J

    .line 76
    .line 77
    aget-wide v3, p2, p1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    move-wide v1, v5

    .line 81
    :goto_0
    move-wide p1, v8

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    const-wide v10, 0x7fffffffffffffffL

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    move-wide v1, v5

    .line 89
    :goto_1
    const/4 v0, 0x0

    .line 90
    :goto_2
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzv:[Lcom/google/android/gms/internal/ads/zzajg;

    .line 91
    .line 92
    array-length v8, v7

    .line 93
    if-ge v0, v8, :cond_6

    .line 94
    .line 95
    iget v8, p0, Lcom/google/android/gms/internal/ads/zzajh;->zzx:I

    .line 96
    .line 97
    if-eq v0, v8, :cond_5

    .line 98
    .line 99
    aget-object v7, v7, v0

    .line 100
    .line 101
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzajg;->zzb:Lcom/google/android/gms/internal/ads/zzajp;

    .line 102
    .line 103
    invoke-static {v7, p1, p2, v10, v11}, Lcom/google/android/gms/internal/ads/zzajh;->zzj(Lcom/google/android/gms/internal/ads/zzajp;JJ)J

    .line 104
    .line 105
    .line 106
    move-result-wide v8

    .line 107
    cmp-long v10, v1, v5

    .line 108
    .line 109
    if-eqz v10, :cond_4

    .line 110
    .line 111
    invoke-static {v7, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzajh;->zzj(Lcom/google/android/gms/internal/ads/zzajp;JJ)J

    .line 112
    .line 113
    .line 114
    move-result-wide v3

    .line 115
    :cond_4
    move-wide v10, v8

    .line 116
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzadv;

    .line 120
    .line 121
    invoke-direct {v0, p1, p2, v10, v11}, Lcom/google/android/gms/internal/ads/zzadv;-><init>(JJ)V

    .line 122
    .line 123
    .line 124
    cmp-long p1, v1, v5

    .line 125
    .line 126
    if-nez p1, :cond_7

    .line 127
    .line 128
    new-instance p1, Lcom/google/android/gms/internal/ads/zzads;

    .line 129
    .line 130
    invoke-direct {p1, v0, v0}, Lcom/google/android/gms/internal/ads/zzads;-><init>(Lcom/google/android/gms/internal/ads/zzadv;Lcom/google/android/gms/internal/ads/zzadv;)V

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_7
    new-instance p1, Lcom/google/android/gms/internal/ads/zzadv;

    .line 135
    .line 136
    invoke-direct {p1, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzadv;-><init>(JJ)V

    .line 137
    .line 138
    .line 139
    new-instance p2, Lcom/google/android/gms/internal/ads/zzads;

    .line 140
    .line 141
    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzads;-><init>(Lcom/google/android/gms/internal/ads/zzadv;Lcom/google/android/gms/internal/ads/zzadv;)V

    .line 142
    .line 143
    .line 144
    move-object p1, p2

    .line 145
    :goto_3
    return-object p1
.end method

.method public final zzh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
