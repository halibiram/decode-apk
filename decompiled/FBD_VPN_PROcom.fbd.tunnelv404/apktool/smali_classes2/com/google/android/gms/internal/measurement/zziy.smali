.class Lcom/google/android/gms/internal/measurement/zziy;
.super Lcom/google/android/gms/internal/measurement/zzix;
.source "SourceFile"


# instance fields
.field protected final zza:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzix;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zziy;->zza:[B

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzjb;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zziy;->zzd()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    move-object v3, p1

    .line 16
    check-cast v3, Lcom/google/android/gms/internal/measurement/zzjb;

    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzjb;->zzd()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eq v1, v3, :cond_2

    .line 23
    .line 24
    return v2

    .line 25
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zziy;->zzd()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_3

    .line 30
    .line 31
    return v0

    .line 32
    :cond_3
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zziy;

    .line 33
    .line 34
    if-eqz v1, :cond_a

    .line 35
    .line 36
    check-cast p1, Lcom/google/android/gms/internal/measurement/zziy;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzk()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjb;->zzk()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v1, :cond_5

    .line 47
    .line 48
    if-eqz v3, :cond_5

    .line 49
    .line 50
    if-ne v1, v3, :cond_4

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_4
    return v2

    .line 54
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zziy;->zzd()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziy;->zzd()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-gt v1, v3, :cond_9

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziy;->zzd()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-gt v1, v3, :cond_8

    .line 69
    .line 70
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zziy;->zza:[B

    .line 71
    .line 72
    iget-object v4, p1, Lcom/google/android/gms/internal/measurement/zziy;->zza:[B

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziy;->zzc()I

    .line 75
    .line 76
    .line 77
    const/4 p1, 0x0

    .line 78
    const/4 v5, 0x0

    .line 79
    :goto_1
    if-ge p1, v1, :cond_7

    .line 80
    .line 81
    aget-byte v6, v3, p1

    .line 82
    .line 83
    aget-byte v7, v4, v5

    .line 84
    .line 85
    if-eq v6, v7, :cond_6

    .line 86
    .line 87
    const/4 v0, 0x0

    .line 88
    goto :goto_2

    .line 89
    :cond_6
    add-int/2addr p1, v0

    .line 90
    add-int/2addr v5, v0

    .line 91
    goto :goto_1

    .line 92
    :cond_7
    :goto_2
    return v0

    .line 93
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziy;->zzd()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 105
    .line 106
    const/4 v4, 0x5

    .line 107
    new-array v4, v4, [J

    .line 108
    .line 109
    fill-array-data v4, :array_0

    .line 110
    .line 111
    .line 112
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 126
    .line 127
    const/4 v3, 0x2

    .line 128
    new-array v3, v3, [J

    .line 129
    .line 130
    fill-array-data v3, :array_1

    .line 131
    .line 132
    .line 133
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 134
    .line 135
    .line 136
    invoke-static {v1, v2, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v0

    .line 144
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zziy;->zzd()I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 156
    .line 157
    const/4 v4, 0x4

    .line 158
    new-array v4, v4, [J

    .line 159
    .line 160
    fill-array-data v4, :array_2

    .line 161
    .line 162
    .line 163
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw p1

    .line 187
    :cond_a
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    return p1

    .line 192
    nop

    .line 193
    :array_0
    .array-data 8
        -0x44bc7141f36feef6L    # -3.235531428215359E-23
        -0x1c4ed3fe07a26315L    # -1.6590367863966E172
        0x6cef76f8b25af1L
        0x133b5b15a9ce37c3L    # 4.959667143770279E-216
        0x27ba5f853c5cbf62L    # 2.614588351653821E-117
    .end array-data

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
    :array_1
    .array-data 8
        -0x1b6d5c58e053c042L    # -2.9504370235047613E176
        -0x7446ab2c1997b4bbL    # -3.455111927079285E-252
    .end array-data

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
    :array_2
    .array-data 8
        -0x540bc7b4ba160959L    # -5.916438816205301E-97
        0x4dcb5c00e4eecae5L    # 5.762559833807608E66
        0x7114ebc19f320662L    # 5.321541509523404E236
        0x4cc97bf2f9a996d9L    # 8.190298471114855E61
    .end array-data
.end method

.method public zza(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zziy;->zza:[B

    .line 2
    .line 3
    aget-byte p1, v0, p1

    .line 4
    .line 5
    return p1
.end method

.method public zzb(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zziy;->zza:[B

    .line 2
    .line 3
    aget-byte p1, v0, p1

    .line 4
    .line 5
    return p1
.end method

.method public zzc()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public zzd()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zziy;->zza:[B

    array-length v0, v0

    return v0
.end method

.method public final zze(III)I
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zziy;->zza:[B

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/internal/measurement/zzkk;->zzd(I[BII)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    return p1
.end method

.method public final zzf(II)Lcom/google/android/gms/internal/measurement/zzjb;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zziy;->zzd()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/measurement/zzjb;->zzj(III)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:Lcom/google/android/gms/internal/measurement/zzjb;

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_0
    new-instance p2, Lcom/google/android/gms/internal/measurement/zziv;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zziy;->zza:[B

    .line 18
    .line 19
    invoke-direct {p2, v1, v0, p1}, Lcom/google/android/gms/internal/measurement/zziv;-><init>([BII)V

    .line 20
    .line 21
    .line 22
    return-object p2
.end method

.method public final zzg(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zziy;->zza:[B

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zziy;->zzd()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final zzh(Lcom/google/android/gms/internal/measurement/zzir;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zziy;->zza:[B

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zziy;->zzd()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjg;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/gms/internal/measurement/zzjg;->zzc([BII)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final zzi()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zziy;->zza:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zziy;->zzd()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzna;->zzf([BII)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method
