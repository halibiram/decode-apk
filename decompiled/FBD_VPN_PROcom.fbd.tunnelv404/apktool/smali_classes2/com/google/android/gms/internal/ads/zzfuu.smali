.class final Lcom/google/android/gms/internal/ads/zzfuu;
.super Lcom/google/android/gms/internal/ads/zzfvn;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/os/IBinder;

.field private final zzb:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzc:I

.field private final zzd:F

.field private final zze:I

.field private final zzf:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Landroid/os/IBinder;ZLjava/lang/String;IFILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfut;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfvn;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfuu;->zza:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfuu;->zzb:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzfuu;->zzc:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzfuu;->zzd:F

    iput p8, p0, Lcom/google/android/gms/internal/ads/zzfuu;->zze:I

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzfuu;->zzf:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzfvn;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_4

    .line 9
    .line 10
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfvn;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfuu;->zza:Landroid/os/IBinder;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfvn;->zze()Landroid/os/IBinder;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_4

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfvn;->zzk()Z

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfuu;->zzb:Ljava/lang/String;

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfvn;->zzg()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-nez v1, :cond_4

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfvn;->zzg()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_4

    .line 47
    .line 48
    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfuu;->zzc:I

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfvn;->zzc()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-ne v1, v3, :cond_4

    .line 55
    .line 56
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfuu;->zzd:F

    .line 57
    .line 58
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfvn;->zza()F

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-ne v1, v3, :cond_4

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfvn;->zzb()I

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfvn;->zzi()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfuu;->zze:I

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfvn;->zzd()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-ne v1, v3, :cond_4

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfvn;->zzh()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfuu;->zzf:Ljava/lang/String;

    .line 90
    .line 91
    if-nez v1, :cond_2

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfvn;->zzf()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    if-nez v1, :cond_4

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfvn;->zzf()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-nez v1, :cond_3

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfvn;->zzj()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    return v0

    .line 115
    :cond_4
    :goto_2
    return v2
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfuu;->zza:Landroid/os/IBinder;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, 0xf4243

    .line 8
    .line 9
    .line 10
    xor-int/2addr v0, v1

    .line 11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfuu;->zzb:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    :goto_0
    mul-int v0, v0, v1

    .line 23
    .line 24
    xor-int/lit16 v0, v0, 0x4d5

    .line 25
    .line 26
    mul-int v0, v0, v1

    .line 27
    .line 28
    xor-int/2addr v0, v2

    .line 29
    mul-int v0, v0, v1

    .line 30
    .line 31
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfuu;->zzc:I

    .line 32
    .line 33
    xor-int/2addr v0, v2

    .line 34
    mul-int v0, v0, v1

    .line 35
    .line 36
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfuu;->zzd:F

    .line 37
    .line 38
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    xor-int/2addr v0, v2

    .line 43
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfuu;->zze:I

    .line 44
    .line 45
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfuu;->zzf:Ljava/lang/String;

    .line 46
    .line 47
    if-nez v4, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    :goto_1
    const v4, 0x22cd8cdb

    .line 55
    .line 56
    .line 57
    mul-int v0, v0, v4

    .line 58
    .line 59
    xor-int/2addr v0, v2

    .line 60
    const v2, -0x2aff6277

    .line 61
    .line 62
    .line 63
    mul-int v0, v0, v2

    .line 64
    .line 65
    xor-int/2addr v0, v3

    .line 66
    mul-int v0, v0, v1

    .line 67
    .line 68
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfuu;->zza:Landroid/os/IBinder;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/4 v3, 0x6

    .line 15
    new-array v4, v3, [J

    .line 16
    .line 17
    fill-array-data v4, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    new-array v2, v3, [J

    .line 36
    .line 37
    fill-array-data v2, :array_1

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfuu;->zzb:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    const/4 v2, 0x3

    .line 58
    new-array v2, v2, [J

    .line 59
    .line 60
    fill-array-data v2, :array_2

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfuu;->zzc:I

    .line 74
    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 79
    .line 80
    const/4 v2, 0x4

    .line 81
    new-array v2, v2, [J

    .line 82
    .line 83
    fill-array-data v2, :array_3

    .line 84
    .line 85
    .line 86
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfuu;->zzd:F

    .line 97
    .line 98
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 102
    .line 103
    const/16 v2, 0x8

    .line 104
    .line 105
    new-array v2, v2, [J

    .line 106
    .line 107
    fill-array-data v2, :array_4

    .line 108
    .line 109
    .line 110
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfuu;->zze:I

    .line 121
    .line 122
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 126
    .line 127
    new-array v2, v3, [J

    .line 128
    .line 129
    fill-array-data v2, :array_5

    .line 130
    .line 131
    .line 132
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfuu;->zzf:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 148
    .line 149
    const/4 v2, 0x5

    .line 150
    new-array v2, v2, [J

    .line 151
    .line 152
    fill-array-data v2, :array_6

    .line 153
    .line 154
    .line 155
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 156
    .line 157
    .line 158
    invoke-static {v0, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    return-object v0

    .line 163
    :array_0
    .array-data 8
        0x5a4ac3b98187c282L    # 9.058746929941E126
        0x6a1e534c8726ba7eL
        0x3e12cecab26d8dc3L    # 1.0947569046707863E-9
        0x313eae2f635d71b2L    # 1.736449701692244E-71
        -0x4672d5ab3d62606eL    # -1.797453828724997E-31
        0x4ddd0df304600767L    # 1.2239179446428945E67
    .end array-data

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
    :array_1
    .array-data 8
        0x571c0fc5d4fcf6fcL    # 4.217849070399761E111
        -0x5f4326fb8eb9a01aL
        0x34791e6a453531b4L    # 6.402651444093309E-56
        0x61f2bbcb6ec3fd40L    # 6.742458358348686E163
        0x6af3dcc707339b9fL    # 1.5942228099860446E207
        -0x620b50653826afc9L
    .end array-data

    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
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
    :array_2
    .array-data 8
        0x7a1af02546195c49L    # 1.5280671584350673E280
        0x3781d875164c2790L    # 2.5607089195967403E-41
        -0x42b0fe632b6a0be2L    # -2.2031300724870726E-13
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
    :array_3
    .array-data 8
        -0x3f916005fe9121a8L    # -244.9992682614709
        0x60e680b5dd848e85L    # 6.179079898825011E158
        0x5fdf0210d2228f34L
        -0x402fc7fe4d45ad6bL    # -0.253418373621835
    .end array-data

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
    :array_4
    .array-data 8
        -0x3eb70231385f09dL    # -5.009570086496713E289
        0x10016cf985e15642L
        0x4a092e9fbce52dd7L    # 4.600464597789048E48
        0x3e542f7978e5fc16L    # 1.8799162720871553E-8
        -0x6ede652770307580L    # -3.715745946801833E-226
        -0x1805c4de09d65491L    # -7.479832522372104E192
        0x6493493a2455965fL    # 3.052815912477952E176
        0x435d190e01d8d39cL    # 3.2761289103330928E16
    .end array-data

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
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
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
    .line 290
    :array_5
    .array-data 8
        -0x67e4f84338c5f038L
        0x3e90e0e38bca1478L    # 2.5150883312841084E-7
        0x364228f91f49ac74L    # 2.485122265964641E-47
        -0xb630c0448874b7bL    # -5.306776916656831E253
        -0x73302f6773a3c7e0L    # -5.687784640719496E-247
        -0x44ded1d4dbfb2b49L    # -7.105624470944911E-24
    .end array-data

    :array_6
    .array-data 8
        0x7cd1da0a30ddb982L    # 1.781458918996001E293
        0x3f4d0be0c49b19e1L    # 8.864257335623981E-4
        0x6586c8414d515fd8L    # 1.1816910781813768E181
        0x24759dbf75c06869L
        -0x7bedaf21582263dbL    # -4.698642197501109E-289
    .end array-data
.end method

.method public final zza()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfuu;->zzd:F

    return v0
.end method

.method public final zzb()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfuu;->zzc:I

    return v0
.end method

.method public final zzd()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfuu;->zze:I

    return v0
.end method

.method public final zze()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfuu;->zza:Landroid/os/IBinder;

    return-object v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfuu;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfuu;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzj()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzk()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
