.class final Lcom/google/android/gms/internal/ads/zzamg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public zza:J

.field public zzb:J

.field public zzc:Ljava/lang/CharSequence;

.field public zzd:I

.field public zze:F

.field public zzf:I

.field public zzg:I

.field public zzh:F

.field public zzi:I

.field public zzj:F

.field public zzk:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamg;->zza:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamg;->zzb:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamg;->zzd:I

    const v0, -0x800001

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamg;->zze:F

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzamg;->zzf:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzamg;->zzg:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamg;->zzh:F

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamg;->zzi:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzamg;->zzj:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamg;->zzk:I

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzea;
    .locals 14

    .line 1
    const/4 v0, 0x3

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzamg;->zzh:F

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const/high16 v3, 0x3f000000    # 0.5f

    .line 6
    .line 7
    const/4 v4, 0x5

    .line 8
    const/4 v5, 0x4

    .line 9
    const/high16 v6, 0x3f800000    # 1.0f

    .line 10
    .line 11
    const v7, -0x800001

    .line 12
    .line 13
    .line 14
    cmpl-float v8, v1, v7

    .line 15
    .line 16
    if-eqz v8, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzamg;->zzd:I

    .line 20
    .line 21
    if-eq v1, v5, :cond_2

    .line 22
    .line 23
    if-eq v1, v4, :cond_1

    .line 24
    .line 25
    const/high16 v1, 0x3f000000    # 0.5f

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/4 v1, 0x0

    .line 32
    :goto_0
    iget v8, p0, Lcom/google/android/gms/internal/ads/zzamg;->zzi:I

    .line 33
    .line 34
    const/high16 v9, -0x80000000

    .line 35
    .line 36
    const/4 v10, 0x2

    .line 37
    const/4 v11, 0x1

    .line 38
    if-eq v8, v9, :cond_3

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    iget v8, p0, Lcom/google/android/gms/internal/ads/zzamg;->zzd:I

    .line 42
    .line 43
    if-eq v8, v11, :cond_5

    .line 44
    .line 45
    if-eq v8, v0, :cond_4

    .line 46
    .line 47
    if-eq v8, v5, :cond_5

    .line 48
    .line 49
    if-eq v8, v4, :cond_4

    .line 50
    .line 51
    const/4 v8, 0x1

    .line 52
    goto :goto_1

    .line 53
    :cond_4
    const/4 v8, 0x2

    .line 54
    goto :goto_1

    .line 55
    :cond_5
    const/4 v8, 0x0

    .line 56
    :goto_1
    new-instance v9, Lcom/google/android/gms/internal/ads/zzea;

    .line 57
    .line 58
    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/zzea;-><init>()V

    .line 59
    .line 60
    .line 61
    iget v12, p0, Lcom/google/android/gms/internal/ads/zzamg;->zzd:I

    .line 62
    .line 63
    if-eq v12, v11, :cond_8

    .line 64
    .line 65
    if-eq v12, v10, :cond_7

    .line 66
    .line 67
    if-eq v12, v0, :cond_6

    .line 68
    .line 69
    if-eq v12, v5, :cond_8

    .line 70
    .line 71
    if-eq v12, v4, :cond_6

    .line 72
    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    .line 79
    .line 80
    new-array v5, v5, [J

    .line 81
    .line 82
    fill-array-data v5, :array_0

    .line 83
    .line 84
    .line 85
    invoke-direct {v13, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 86
    .line 87
    .line 88
    invoke-static {v13, v4, v12}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 93
    .line 94
    new-array v0, v0, [J

    .line 95
    .line 96
    fill-array-data v0, :array_1

    .line 97
    .line 98
    .line 99
    invoke-direct {v5, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const/4 v0, 0x0

    .line 110
    goto :goto_2

    .line 111
    :cond_6
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_7
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_8
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 118
    .line 119
    :goto_2
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzea;->zzm(Landroid/text/Layout$Alignment;)Lcom/google/android/gms/internal/ads/zzea;

    .line 120
    .line 121
    .line 122
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzamg;->zze:F

    .line 123
    .line 124
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzamg;->zzf:I

    .line 125
    .line 126
    cmpl-float v5, v0, v7

    .line 127
    .line 128
    if-eqz v5, :cond_a

    .line 129
    .line 130
    if-nez v4, :cond_a

    .line 131
    .line 132
    cmpg-float v2, v0, v2

    .line 133
    .line 134
    if-ltz v2, :cond_9

    .line 135
    .line 136
    cmpl-float v2, v0, v6

    .line 137
    .line 138
    if-lez v2, :cond_a

    .line 139
    .line 140
    :cond_9
    :goto_3
    const/high16 v7, 0x3f800000    # 1.0f

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_a
    if-nez v5, :cond_b

    .line 144
    .line 145
    if-nez v4, :cond_c

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_b
    move v7, v0

    .line 149
    :cond_c
    :goto_4
    invoke-virtual {v9, v7, v4}, Lcom/google/android/gms/internal/ads/zzea;->zze(FI)Lcom/google/android/gms/internal/ads/zzea;

    .line 150
    .line 151
    .line 152
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzamg;->zzg:I

    .line 153
    .line 154
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzea;->zzf(I)Lcom/google/android/gms/internal/ads/zzea;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/ads/zzea;->zzh(F)Lcom/google/android/gms/internal/ads/zzea;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzea;->zzi(I)Lcom/google/android/gms/internal/ads/zzea;

    .line 161
    .line 162
    .line 163
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzamg;->zzj:F

    .line 164
    .line 165
    if-eqz v8, :cond_10

    .line 166
    .line 167
    if-eq v8, v11, :cond_e

    .line 168
    .line 169
    if-ne v8, v10, :cond_d

    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 173
    .line 174
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw v0

    .line 182
    :cond_e
    cmpg-float v2, v1, v3

    .line 183
    .line 184
    if-gtz v2, :cond_f

    .line 185
    .line 186
    add-float/2addr v1, v1

    .line 187
    goto :goto_5

    .line 188
    :cond_f
    sub-float/2addr v6, v1

    .line 189
    add-float v1, v6, v6

    .line 190
    .line 191
    goto :goto_5

    .line 192
    :cond_10
    sub-float v1, v6, v1

    .line 193
    .line 194
    :goto_5
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzea;->zzk(F)Lcom/google/android/gms/internal/ads/zzea;

    .line 199
    .line 200
    .line 201
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzamg;->zzk:I

    .line 202
    .line 203
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzea;->zzo(I)Lcom/google/android/gms/internal/ads/zzea;

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamg;->zzc:Ljava/lang/CharSequence;

    .line 207
    .line 208
    if-eqz v0, :cond_11

    .line 209
    .line 210
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzea;->zzl(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/ads/zzea;

    .line 211
    .line 212
    .line 213
    :cond_11
    return-object v9

    .line 214
    nop

    .line 215
    :array_0
    .array-data 8
        -0x5629ea99e73cef8fL    # -3.761241424258978E-107
        -0x6282bc77fe6265dL    # -8.448149387989458E278
        0x624b19fd2ac5df6cL    # 3.121341412117048E165
        0x4d8a8f9f64a2dcf8L    # 3.4965031326991547E65
    .end array-data

    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    :array_1
    .array-data 8
        0x4536c0776d070983L    # 2.750526541503612E25
        0x50f75c1fe9228dc5L    # 1.1079218036020872E82
        -0x4da1d99057b77cfcL
    .end array-data
.end method
