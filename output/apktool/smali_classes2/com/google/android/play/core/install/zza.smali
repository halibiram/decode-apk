.class final Lcom/google/android/play/core/install/zza;
.super Lcom/google/android/play/core/install/InstallState;
.source "SourceFile"


# instance fields
.field private final zza:I

.field private final zzb:J

.field private final zzc:J

.field private final zzd:I

.field private final zze:Ljava/lang/String;


# direct methods
.method public constructor <init>(IJJILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/play/core/install/InstallState;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/android/play/core/install/zza;->zza:I

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/google/android/play/core/install/zza;->zzb:J

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/google/android/play/core/install/zza;->zzc:J

    .line 9
    .line 10
    iput p6, p0, Lcom/google/android/play/core/install/zza;->zzd:I

    .line 11
    .line 12
    if-eqz p7, :cond_0

    .line 13
    .line 14
    iput-object p7, p0, Lcom/google/android/play/core/install/zza;->zze:Ljava/lang/String;

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 18
    .line 19
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 p3, 0x3

    .line 22
    new-array p3, p3, [J

    .line 23
    .line 24
    fill-array-data p3, :array_0

    .line 25
    .line 26
    .line 27
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        0x6d19f23542738a8eL    # 3.577745101229948E217
        -0x13a0a926ed94f644L    # -1.05503176168982E214
        -0x69c466f0076fa154L
    .end array-data
.end method


# virtual methods
.method public final bytesDownloaded()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/play/core/install/zza;->zzb:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/play/core/install/InstallState;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    check-cast p1, Lcom/google/android/play/core/install/InstallState;

    .line 11
    .line 12
    iget v1, p0, Lcom/google/android/play/core/install/zza;->zza:I

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->installStatus()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ne v1, v3, :cond_1

    .line 19
    .line 20
    iget-wide v3, p0, Lcom/google/android/play/core/install/zza;->zzb:J

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->bytesDownloaded()J

    .line 23
    .line 24
    .line 25
    move-result-wide v5

    .line 26
    cmp-long v1, v3, v5

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    iget-wide v3, p0, Lcom/google/android/play/core/install/zza;->zzc:J

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->totalBytesToDownload()J

    .line 33
    .line 34
    .line 35
    move-result-wide v5

    .line 36
    cmp-long v1, v3, v5

    .line 37
    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    iget v1, p0, Lcom/google/android/play/core/install/zza;->zzd:I

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->installErrorCode()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-ne v1, v3, :cond_1

    .line 47
    .line 48
    iget-object v1, p0, Lcom/google/android/play/core/install/zza;->zze:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->packageName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    return v0

    .line 61
    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/android/play/core/install/zza;->zza:I

    .line 2
    .line 3
    const v1, 0xf4243

    .line 4
    .line 5
    .line 6
    xor-int/2addr v0, v1

    .line 7
    iget-wide v2, p0, Lcom/google/android/play/core/install/zza;->zzb:J

    .line 8
    .line 9
    const/16 v4, 0x20

    .line 10
    .line 11
    ushr-long v5, v2, v4

    .line 12
    .line 13
    xor-long/2addr v2, v5

    .line 14
    iget-wide v5, p0, Lcom/google/android/play/core/install/zza;->zzc:J

    .line 15
    .line 16
    ushr-long v7, v5, v4

    .line 17
    .line 18
    xor-long v4, v7, v5

    .line 19
    .line 20
    mul-int v0, v0, v1

    .line 21
    .line 22
    long-to-int v3, v2

    .line 23
    xor-int/2addr v0, v3

    .line 24
    mul-int v0, v0, v1

    .line 25
    .line 26
    long-to-int v2, v4

    .line 27
    xor-int/2addr v0, v2

    .line 28
    mul-int v0, v0, v1

    .line 29
    .line 30
    iget v2, p0, Lcom/google/android/play/core/install/zza;->zzd:I

    .line 31
    .line 32
    xor-int/2addr v0, v2

    .line 33
    iget-object v2, p0, Lcom/google/android/play/core/install/zza;->zze:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    mul-int v0, v0, v1

    .line 40
    .line 41
    xor-int/2addr v0, v2

    .line 42
    return v0
.end method

.method public final installErrorCode()I
    .locals 1
    .annotation build Lcom/google/android/play/core/install/model/InstallErrorCode;
    .end annotation

    iget v0, p0, Lcom/google/android/play/core/install/zza;->zzd:I

    return v0
.end method

.method public final installStatus()I
    .locals 1
    .annotation build Lcom/google/android/play/core/install/model/InstallStatus;
    .end annotation

    iget v0, p0, Lcom/google/android/play/core/install/zza;->zza:I

    return v0
.end method

.method public final packageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/install/zza;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    .line 1
    iget v0, p0, Lcom/google/android/play/core/install/zza;->zza:I

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/google/android/play/core/install/zza;->zzb:J

    .line 4
    .line 5
    iget-wide v3, p0, Lcom/google/android/play/core/install/zza;->zzc:J

    .line 6
    .line 7
    iget v5, p0, Lcom/google/android/play/core/install/zza;->zzd:I

    .line 8
    .line 9
    iget-object v6, p0, Lcom/google/android/play/core/install/zza;->zze:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v7, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    const/4 v9, 0x5

    .line 19
    new-array v9, v9, [J

    .line 20
    .line 21
    fill-array-data v9, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    const/4 v8, 0x4

    .line 40
    new-array v9, v8, [J

    .line 41
    .line 42
    fill-array-data v9, :array_1

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    new-array v1, v8, [J

    .line 61
    .line 62
    fill-array-data v1, :array_2

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 79
    .line 80
    new-array v1, v8, [J

    .line 81
    .line 82
    fill-array-data v1, :array_3

    .line 83
    .line 84
    .line 85
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 99
    .line 100
    const/4 v1, 0x3

    .line 101
    new-array v1, v1, [J

    .line 102
    .line 103
    fill-array-data v1, :array_4

    .line 104
    .line 105
    .line 106
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 120
    .line 121
    const/4 v1, 0x2

    .line 122
    new-array v1, v1, [J

    .line 123
    .line 124
    fill-array-data v1, :array_5

    .line 125
    .line 126
    .line 127
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 128
    .line 129
    .line 130
    invoke-static {v0, v7}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    return-object v0

    .line 135
    :array_0
    .array-data 8
        0x5a94aac12005547cL    # 2.2383902541556058E128
        -0x7985f6b6d9746cebL
        -0x6a5b6b0342fa02c3L
        0x6c6cf022d61822ccL    # 1.9483901277192084E214
        0x610e181db1a4e2bdL    # 3.3054498396535918E159
    .end array-data

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
    .line 158
    .line 159
    :array_1
    .array-data 8
        0x120b362d2d14f0f7L    # 9.409958561557297E-222
        0x1382439377a337bdL
        0x3153396760934776L    # 4.352212264398046E-71
        -0x555fa67927b2dec6L    # -2.281191009237266E-103
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
    .line 176
    .line 177
    .line 178
    .line 179
    :array_2
    .array-data 8
        0x7d7162e65a57c5dfL    # 1.7766570533037507E296
        -0x61817753dacc00c8L
        0x763a2db1f1d8e370L    # 3.2200376780054366E261
        0x5e7f1a4bdba6650fL    # 1.5535179372010125E147
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
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    :array_3
    .array-data 8
        -0x4ece556b595b8c5bL    # -9.998788851403828E-72
        0x7fd785abf44faae1L    # 6.60712760586547E307
        -0x4b78f98df8bbac19L    # -1.1737991655756289E-55
        0x7e413bd67c1212dbL    # 1.442664248373354E300
    .end array-data

    .line 200
    .line 201
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
    :array_4
    .array-data 8
        0x42220a5141ddacf3L    # 3.874125438283779E10
        0x528b5cec290ffa3L    # 8.30864330349249E-284
        -0x1bcdedee7782247aL    # -4.469403814895862E174
    .end array-data

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
    :array_5
    .array-data 8
        0x28d1474bdffd77c9L    # 4.490427583327048E-112
        -0x7e21477bf3385e12L
    .end array-data
.end method

.method public final totalBytesToDownload()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/play/core/install/zza;->zzc:J

    return-wide v0
.end method
