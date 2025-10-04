.class public final Lcom/google/android/gms/internal/ads/zzarp;
.super Lcom/google/android/gms/internal/ads/zzhgm;
.source "SourceFile"


# instance fields
.field private zza:Ljava/util/Date;

.field private zzh:Ljava/util/Date;

.field private zzi:J

.field private zzj:J

.field private zzk:D

.field private zzl:F

.field private zzm:Lcom/google/android/gms/internal/ads/zzhgw;

.field private zzn:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhgm;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 20
    .line 21
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzarp;->zzk:D

    .line 22
    .line 23
    const/high16 v0, 0x3f800000    # 1.0f

    .line 24
    .line 25
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzarp;->zzl:F

    .line 26
    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhgw;->zza:Lcom/google/android/gms/internal/ads/zzhgw;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzarp;->zzm:Lcom/google/android/gms/internal/ads/zzhgw;

    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :array_0
    .array-data 8
        0x456990590c9a950cL    # 2.4723847145858938E26
        -0x253e7c7bc8a17638L    # -1.517493925670827E129
    .end array-data
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x5

    .line 9
    new-array v2, v2, [J

    .line 10
    .line 11
    fill-array-data v2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzarp;->zza:Ljava/util/Date;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    const/4 v2, 0x4

    .line 32
    new-array v2, v2, [J

    .line 33
    .line 34
    fill-array-data v2, :array_1

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzarp;->zzh:Ljava/util/Date;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    const/4 v2, 0x3

    .line 55
    new-array v3, v2, [J

    .line 56
    .line 57
    fill-array-data v3, :array_2

    .line 58
    .line 59
    .line 60
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzarp;->zzi:J

    .line 71
    .line 72
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 76
    .line 77
    new-array v3, v2, [J

    .line 78
    .line 79
    fill-array-data v3, :array_3

    .line 80
    .line 81
    .line 82
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzarp;->zzj:J

    .line 93
    .line 94
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 98
    .line 99
    const/4 v3, 0x2

    .line 100
    new-array v4, v3, [J

    .line 101
    .line 102
    fill-array-data v4, :array_4

    .line 103
    .line 104
    .line 105
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzarp;->zzk:D

    .line 116
    .line 117
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 121
    .line 122
    new-array v4, v3, [J

    .line 123
    .line 124
    fill-array-data v4, :array_5

    .line 125
    .line 126
    .line 127
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzarp;->zzl:F

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 143
    .line 144
    new-array v4, v3, [J

    .line 145
    .line 146
    fill-array-data v4, :array_6

    .line 147
    .line 148
    .line 149
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzarp;->zzm:Lcom/google/android/gms/internal/ads/zzhgw;

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 165
    .line 166
    new-array v2, v2, [J

    .line 167
    .line 168
    fill-array-data v2, :array_7

    .line 169
    .line 170
    .line 171
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzarp;->zzn:J

    .line 182
    .line 183
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 187
    .line 188
    new-array v2, v3, [J

    .line 189
    .line 190
    fill-array-data v2, :array_8

    .line 191
    .line 192
    .line 193
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 194
    .line 195
    .line 196
    invoke-static {v1, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    return-object v0

    .line 201
    :array_0
    .array-data 8
        -0x15a8120cfaa1edd3L    # -1.875644424430767E204
        -0x71c4a382b67d6adL
        0x60ec0f397d424b2eL    # 7.704903625548476E158
        -0x24fc25579b8edc81L    # -2.752447499895448E130
        0xe1936db69f4a4c9L    # 9.453445903596792E-241
    .end array-data

    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
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
    :array_1
    .array-data 8
        -0x4948e9fa191915a7L    # -4.043801870334142E-45
        0x4e245d45fb0e757dL    # 2.7451088242700587E68
        -0x3f682959f1bca079L    # -1525.6621637847
        -0x7ccb7b33f6b0e56eL    # -3.212734858126589E-293
    .end array-data

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
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    :array_2
    .array-data 8
        -0x5c5a05d8f26bd444L    # -5.905593093676137E-137
        -0x1b5c029e0566a0e1L    # -6.328421625622126E176
        0x49f3ad74f771bf7bL    # 1.7974246846577352E48
    .end array-data

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
    :array_3
    .array-data 8
        0x7ad9d30d5fabe968L    # 6.0002114656484545E283
        -0x6f09ac451151d0eL
        0x547b6a3d5c8b7285L    # 9.369293125015319E98
    .end array-data

    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    :array_4
    .array-data 8
        -0x14940f7e1ea5799L
        0x51edfe1fea6bb100L    # 4.661266858890451E86
    .end array-data

    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    :array_5
    .array-data 8
        -0x2c62618435ac1c3dL    # -6.1783167174355225E94
        -0x6724065c45b78fc5L    # -6.27877941778877E-189
    .end array-data

    .line 290
    :array_6
    .array-data 8
        -0x4d86c4112ed22bf2L
        -0x7c7f034694168548L    # -8.511304349792818E-292
    .end array-data

    :array_7
    .array-data 8
        0x27e37eeaad3fbec9L
        -0x68618a5bd28b7518L    # -6.5196774071899915E-195
        0x1eb5933c60676181L    # 9.591266251702227E-161
    .end array-data

    :array_8
    .array-data 8
        -0xb221225c27c3f15L    # -8.777082304706172E254
        0x3d276a77737bded8L    # 4.159496778881332E-14
    .end array-data
.end method

.method public final zzd()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzarp;->zzj:J

    return-wide v0
.end method

.method public final zze()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzarp;->zzi:J

    return-wide v0
.end method

.method public final zzf(Ljava/nio/ByteBuffer;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzhgm;->zzi(Ljava/nio/ByteBuffer;)J

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhgm;->zzh()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzarl;->zzf(Ljava/nio/ByteBuffer;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzhgr;->zza(J)Ljava/util/Date;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzarp;->zza:Ljava/util/Date;

    .line 22
    .line 23
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzarl;->zzf(Ljava/nio/ByteBuffer;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzhgr;->zza(J)Ljava/util/Date;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzarp;->zzh:Ljava/util/Date;

    .line 32
    .line 33
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzarl;->zze(Ljava/nio/ByteBuffer;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzarp;->zzi:J

    .line 38
    .line 39
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzarl;->zzf(Ljava/nio/ByteBuffer;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzarp;->zzj:J

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzarl;->zze(Ljava/nio/ByteBuffer;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v3

    .line 50
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzhgr;->zza(J)Ljava/util/Date;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzarp;->zza:Ljava/util/Date;

    .line 55
    .line 56
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzarl;->zze(Ljava/nio/ByteBuffer;)J

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzhgr;->zza(J)Ljava/util/Date;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzarp;->zzh:Ljava/util/Date;

    .line 65
    .line 66
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzarl;->zze(Ljava/nio/ByteBuffer;)J

    .line 67
    .line 68
    .line 69
    move-result-wide v3

    .line 70
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzarp;->zzi:J

    .line 71
    .line 72
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzarl;->zze(Ljava/nio/ByteBuffer;)J

    .line 73
    .line 74
    .line 75
    move-result-wide v3

    .line 76
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzarp;->zzj:J

    .line 77
    .line 78
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzarl;->zzb(Ljava/nio/ByteBuffer;)D

    .line 79
    .line 80
    .line 81
    move-result-wide v3

    .line 82
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzarp;->zzk:D

    .line 83
    .line 84
    const/4 v1, 0x2

    .line 85
    new-array v1, v1, [B

    .line 86
    .line 87
    move-object/from16 v3, p1

    .line 88
    .line 89
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 90
    .line 91
    .line 92
    const/4 v4, 0x0

    .line 93
    aget-byte v4, v1, v4

    .line 94
    .line 95
    shl-int/lit8 v4, v4, 0x8

    .line 96
    .line 97
    aget-byte v1, v1, v2

    .line 98
    .line 99
    and-int/lit16 v1, v1, 0xff

    .line 100
    .line 101
    const v2, 0xff00

    .line 102
    .line 103
    .line 104
    and-int/2addr v2, v4

    .line 105
    int-to-short v2, v2

    .line 106
    or-int/2addr v1, v2

    .line 107
    int-to-short v1, v1

    .line 108
    int-to-float v1, v1

    .line 109
    const/high16 v2, 0x43800000    # 256.0f

    .line 110
    .line 111
    div-float/2addr v1, v2

    .line 112
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzarp;->zzl:F

    .line 113
    .line 114
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzarl;->zzd(Ljava/nio/ByteBuffer;)I

    .line 115
    .line 116
    .line 117
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzarl;->zze(Ljava/nio/ByteBuffer;)J

    .line 118
    .line 119
    .line 120
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzarl;->zze(Ljava/nio/ByteBuffer;)J

    .line 121
    .line 122
    .line 123
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzarl;->zzb(Ljava/nio/ByteBuffer;)D

    .line 124
    .line 125
    .line 126
    move-result-wide v5

    .line 127
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzarl;->zzb(Ljava/nio/ByteBuffer;)D

    .line 128
    .line 129
    .line 130
    move-result-wide v7

    .line 131
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzarl;->zza(Ljava/nio/ByteBuffer;)D

    .line 132
    .line 133
    .line 134
    move-result-wide v13

    .line 135
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzarl;->zzb(Ljava/nio/ByteBuffer;)D

    .line 136
    .line 137
    .line 138
    move-result-wide v9

    .line 139
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzarl;->zzb(Ljava/nio/ByteBuffer;)D

    .line 140
    .line 141
    .line 142
    move-result-wide v11

    .line 143
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzarl;->zza(Ljava/nio/ByteBuffer;)D

    .line 144
    .line 145
    .line 146
    move-result-wide v15

    .line 147
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzarl;->zzb(Ljava/nio/ByteBuffer;)D

    .line 148
    .line 149
    .line 150
    move-result-wide v19

    .line 151
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzarl;->zzb(Ljava/nio/ByteBuffer;)D

    .line 152
    .line 153
    .line 154
    move-result-wide v21

    .line 155
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzarl;->zza(Ljava/nio/ByteBuffer;)D

    .line 156
    .line 157
    .line 158
    move-result-wide v17

    .line 159
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhgw;

    .line 160
    .line 161
    move-object v4, v1

    .line 162
    invoke-direct/range {v4 .. v22}, Lcom/google/android/gms/internal/ads/zzhgw;-><init>(DDDDDDDDD)V

    .line 163
    .line 164
    .line 165
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzarp;->zzm:Lcom/google/android/gms/internal/ads/zzhgw;

    .line 166
    .line 167
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 168
    .line 169
    .line 170
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 171
    .line 172
    .line 173
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 174
    .line 175
    .line 176
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 177
    .line 178
    .line 179
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 180
    .line 181
    .line 182
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 183
    .line 184
    .line 185
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzarl;->zze(Ljava/nio/ByteBuffer;)J

    .line 186
    .line 187
    .line 188
    move-result-wide v1

    .line 189
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzarp;->zzn:J

    .line 190
    .line 191
    return-void
.end method
