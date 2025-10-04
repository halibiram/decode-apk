.class public final Lcom/google/android/gms/internal/ads/zztu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzvi;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzadb;

.field private zzb:Lcom/google/android/gms/internal/ads/zzacu;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzc:Lcom/google/android/gms/internal/ads/zzacv;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzadb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztu;->zza:Lcom/google/android/gms/internal/ads/zzadb;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzadr;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztu;->zzb:Lcom/google/android/gms/internal/ads/zzacu;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztu;->zzc:Lcom/google/android/gms/internal/ads/zzacv;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzacu;->zzb(Lcom/google/android/gms/internal/ads/zzacv;Lcom/google/android/gms/internal/ads/zzadr;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public final zzb()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztu;->zzc:Lcom/google/android/gms/internal/ads/zzacv;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final zzc()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztu;->zzb:Lcom/google/android/gms/internal/ads/zzacu;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzaig;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    check-cast v0, Lcom/google/android/gms/internal/ads/zzaig;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaig;->zza()V

    .line 13
    .line 14
    .line 15
    :cond_1
    :goto_0
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzu;Landroid/net/Uri;Ljava/util/Map;JJLcom/google/android/gms/internal/ads/zzacx;)V
    .locals 11

    .line 1
    move-object v1, p0

    .line 2
    move-object v0, p2

    .line 3
    const/4 v8, 0x1

    .line 4
    new-instance v9, Lcom/google/android/gms/internal/ads/zzack;

    .line 5
    .line 6
    move-object v2, v9

    .line 7
    move-object v3, p1

    .line 8
    move-wide v4, p4

    .line 9
    move-wide/from16 v6, p6

    .line 10
    .line 11
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzack;-><init>(Lcom/google/android/gms/internal/ads/zzu;JJ)V

    .line 12
    .line 13
    .line 14
    iput-object v9, v1, Lcom/google/android/gms/internal/ads/zztu;->zzc:Lcom/google/android/gms/internal/ads/zzacv;

    .line 15
    .line 16
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zztu;->zzb:Lcom/google/android/gms/internal/ads/zzacu;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zztu;->zza:Lcom/google/android/gms/internal/ads/zzadb;

    .line 22
    .line 23
    move-object v3, p3

    .line 24
    invoke-interface {v2, p2, p3}, Lcom/google/android/gms/internal/ads/zzadb;->zza(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzacu;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    array-length v3, v2

    .line 29
    const/4 v4, 0x0

    .line 30
    if-ne v3, v8, :cond_1

    .line 31
    .line 32
    aget-object v0, v2, v4

    .line 33
    .line 34
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zztu;->zzb:Lcom/google/android/gms/internal/ads/zzacu;

    .line 35
    .line 36
    goto/16 :goto_9

    .line 37
    .line 38
    :cond_1
    const/4 v5, 0x0

    .line 39
    :goto_0
    if-ge v5, v3, :cond_7

    .line 40
    .line 41
    aget-object v6, v2, v5

    .line 42
    .line 43
    :try_start_0
    invoke-interface {v6, v9}, Lcom/google/android/gms/internal/ads/zzacu;->zze(Lcom/google/android/gms/internal/ads/zzacv;)Z

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    if-eqz v7, :cond_2

    .line 48
    .line 49
    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zztu;->zzb:Lcom/google/android/gms/internal/ads/zzacu;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzek;->zzf(Z)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzacv;->zzj()V

    .line 55
    .line 56
    .line 57
    goto :goto_7

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    goto :goto_3

    .line 60
    :catch_0
    nop

    .line 61
    goto :goto_5

    .line 62
    :cond_2
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zztu;->zzb:Lcom/google/android/gms/internal/ads/zzacu;

    .line 63
    .line 64
    if-nez v6, :cond_3

    .line 65
    .line 66
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    .line 67
    .line 68
    .line 69
    move-result-wide v6

    .line 70
    cmp-long v10, v6, p4

    .line 71
    .line 72
    if-nez v10, :cond_4

    .line 73
    .line 74
    :cond_3
    :goto_1
    const/4 v6, 0x1

    .line 75
    goto :goto_2

    .line 76
    :cond_4
    const/4 v6, 0x0

    .line 77
    :goto_2
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzek;->zzf(Z)V

    .line 78
    .line 79
    .line 80
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzacv;->zzj()V

    .line 81
    .line 82
    .line 83
    goto :goto_6

    .line 84
    :goto_3
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zztu;->zzb:Lcom/google/android/gms/internal/ads/zzacu;

    .line 85
    .line 86
    if-nez v2, :cond_6

    .line 87
    .line 88
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    .line 89
    .line 90
    .line 91
    move-result-wide v2

    .line 92
    cmp-long v5, v2, p4

    .line 93
    .line 94
    if-nez v5, :cond_5

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_5
    const/4 v8, 0x0

    .line 98
    :cond_6
    :goto_4
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzek;->zzf(Z)V

    .line 99
    .line 100
    .line 101
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzacv;->zzj()V

    .line 102
    .line 103
    .line 104
    throw v0

    .line 105
    :goto_5
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zztu;->zzb:Lcom/google/android/gms/internal/ads/zzacu;

    .line 106
    .line 107
    if-nez v6, :cond_3

    .line 108
    .line 109
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    .line 110
    .line 111
    .line 112
    move-result-wide v6

    .line 113
    cmp-long v10, v6, p4

    .line 114
    .line 115
    if-nez v10, :cond_4

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :goto_6
    add-int/2addr v5, v8

    .line 119
    goto :goto_0

    .line 120
    :cond_7
    :goto_7
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zztu;->zzb:Lcom/google/android/gms/internal/ads/zzacu;

    .line 121
    .line 122
    if-nez v3, :cond_a

    .line 123
    .line 124
    new-instance v3, Lcom/google/android/gms/internal/ads/zzwt;

    .line 125
    .line 126
    new-instance v5, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    :goto_8
    array-length v6, v2

    .line 132
    if-ge v4, v6, :cond_9

    .line 133
    .line 134
    aget-object v7, v2, v4

    .line 135
    .line 136
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    add-int/lit8 v6, v6, -0x1

    .line 148
    .line 149
    if-ge v4, v6, :cond_8

    .line 150
    .line 151
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 152
    .line 153
    const/4 v7, 0x2

    .line 154
    new-array v7, v7, [J

    .line 155
    .line 156
    fill-array-data v7, :array_0

    .line 157
    .line 158
    .line 159
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    :cond_8
    add-int/2addr v4, v8

    .line 170
    goto :goto_8

    .line 171
    :cond_9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 181
    .line 182
    const/4 v6, 0x6

    .line 183
    new-array v6, v6, [J

    .line 184
    .line 185
    fill-array-data v6, :array_1

    .line 186
    .line 187
    .line 188
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 202
    .line 203
    const/4 v5, 0x4

    .line 204
    new-array v5, v5, [J

    .line 205
    .line 206
    fill-array-data v5, :array_2

    .line 207
    .line 208
    .line 209
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 210
    .line 211
    .line 212
    invoke-static {v2, v4}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-direct {v3, v2, p2}, Lcom/google/android/gms/internal/ads/zzwt;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 217
    .line 218
    .line 219
    throw v3

    .line 220
    :cond_a
    :goto_9
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zztu;->zzb:Lcom/google/android/gms/internal/ads/zzacu;

    .line 221
    .line 222
    move-object/from16 v2, p8

    .line 223
    .line 224
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzacu;->zzc(Lcom/google/android/gms/internal/ads/zzacx;)V

    .line 225
    .line 226
    .line 227
    return-void

    .line 228
    nop

    .line 229
    :array_0
    .array-data 8
        -0x3abc56e63b5a2833L    # -4.753629169370769E25
        -0x12c88cc123da8bf1L    # -1.2934302689619211E218
    .end array-data

    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    :array_1
    .array-data 8
        -0x3631df934c7b84cbL    # -3.439856323691806E47
        0xcac9f2797cf0475L
        0x1217934aa2dc154eL
        0x2642e55681b48189L
        -0x3b44e39bfb433304L    # -1.2802761096443658E23
        -0xc0253695e21d970L    # -5.311473767282917E250
    .end array-data

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    :array_2
    .array-data 8
        -0x31227fc9adcc0647L    # -8.144289516417461E71
        -0x3f693283b5efcda7L    # -1459.3713762789469
        -0x429b0f69c4320559L    # -5.951446946423762E-13
        0x7dcc418f1699d085L    # 9.239698247088547E297
    .end array-data
.end method

.method public final zze()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztu;->zzb:Lcom/google/android/gms/internal/ads/zzacu;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zztu;->zzb:Lcom/google/android/gms/internal/ads/zzacu;

    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zztu;->zzc:Lcom/google/android/gms/internal/ads/zzacv;

    return-void
.end method

.method public final zzf(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztu;->zzb:Lcom/google/android/gms/internal/ads/zzacu;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzacu;->zzd(JJ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
