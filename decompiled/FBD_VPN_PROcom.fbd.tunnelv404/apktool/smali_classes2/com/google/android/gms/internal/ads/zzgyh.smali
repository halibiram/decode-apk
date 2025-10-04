.class Lcom/google/android/gms/internal/ads/zzgyh;
.super Lcom/google/android/gms/internal/ads/zzgyg;
.source "SourceFile"


# instance fields
.field protected final zza:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgyg;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgyh;->zza:[B

    .line 8
    .line 9
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
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzgyl;

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyh;->zzd()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    move-object v3, p1

    .line 16
    check-cast v3, Lcom/google/android/gms/internal/ads/zzgyl;

    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgyl;->zzd()I

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyh;->zzd()I

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
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgyh;

    .line 33
    .line 34
    if-eqz v0, :cond_5

    .line 35
    .line 36
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgyh;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyl;->zzr()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgyl;->zzr()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    if-eq v0, v1, :cond_4

    .line 51
    .line 52
    return v2

    .line 53
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyh;->zzd()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgyh;->zzg(Lcom/google/android/gms/internal/ads/zzgyl;II)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    return p1

    .line 62
    :cond_5
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    return p1
.end method

.method public zza(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyh;->zza:[B

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyh;->zza:[B

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyh;->zza:[B

    array-length v0, v0

    return v0
.end method

.method public zze([BIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyh;->zza:[B

    .line 2
    .line 3
    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzgyl;II)Z
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgyl;->zzd()I

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    if-gt p3, v3, :cond_4

    .line 9
    .line 10
    add-int v3, p2, p3

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgyl;->zzd()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-gt v3, v4, :cond_3

    .line 17
    .line 18
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgyh;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgyh;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyh;->zza:[B

    .line 26
    .line 27
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzgyh;->zza:[B

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyh;->zzc()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    add-int/2addr v4, p3

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyh;->zzc()I

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgyh;->zzc()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    add-int/2addr p1, p2

    .line 43
    :goto_0
    if-ge p3, v4, :cond_1

    .line 44
    .line 45
    aget-byte p2, v0, p3

    .line 46
    .line 47
    aget-byte v5, v3, p1

    .line 48
    .line 49
    if-eq p2, v5, :cond_0

    .line 50
    .line 51
    return v1

    .line 52
    :cond_0
    add-int/2addr p3, v2

    .line 53
    add-int/2addr p1, v2

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    return v2

    .line 56
    :cond_2
    invoke-virtual {p1, p2, v3}, Lcom/google/android/gms/internal/ads/zzgyl;->zzk(II)Lcom/google/android/gms/internal/ads/zzgyl;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p0, v1, p3}, Lcom/google/android/gms/internal/ads/zzgyh;->zzk(II)Lcom/google/android/gms/internal/ads/zzgyl;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgyl;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    return p1

    .line 69
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgyl;->zzd()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 81
    .line 82
    new-array v1, v1, [J

    .line 83
    .line 84
    fill-array-data v1, :array_0

    .line 85
    .line 86
    .line 87
    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 101
    .line 102
    new-array v1, v0, [J

    .line 103
    .line 104
    fill-array-data v1, :array_1

    .line 105
    .line 106
    .line 107
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 121
    .line 122
    new-array p3, v0, [J

    .line 123
    .line 124
    fill-array-data p3, :array_2

    .line 125
    .line 126
    .line 127
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 128
    .line 129
    .line 130
    invoke-static {p2, v3, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw v2

    .line 138
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyh;->zzd()I

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 150
    .line 151
    new-array v1, v1, [J

    .line 152
    .line 153
    fill-array-data v1, :array_3

    .line 154
    .line 155
    .line 156
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw p1

    .line 180
    nop

    .line 181
    :array_0
    .array-data 8
        0x2f1b421ad11aaf5L
        -0x5738f8595c023bbeL
        0x5bcd1c96783e9746L    # 1.653085140719286E134
        0x19c96f6b92b29762L
    .end array-data

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
    .line 200
    .line 201
    :array_1
    .array-data 8
        -0x70547d759f60eddfL    # -3.460849862183303E-233
        -0x5d749d14d4989a1cL
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
    :array_2
    .array-data 8
        -0x3735f231db417afbL    # -4.539234233499508E42
        0x49ef6e42d27bfef6L    # 1.4355009352189186E48
    .end array-data

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
    :array_3
    .array-data 8
        0x134f59f21b37b0c2L
        0x432c91eccdc0bf6bL    # 4.0208727990844695E15
        0x2accef4bc9c54fbL    # 8.80995600081183E-296
        0x2f70cd29be976a08L
    .end array-data
.end method

.method public final zzi(III)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyh;->zzc()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/2addr v0, p2

    .line 6
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgyh;->zza:[B

    .line 7
    .line 8
    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/internal/ads/zzhae;->zzb(I[BII)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final zzj(III)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyh;->zzc()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/2addr v0, p2

    .line 6
    add-int/2addr p3, v0

    .line 7
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgyh;->zza:[B

    .line 8
    .line 9
    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/internal/ads/zzhde;->zzf(I[BII)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final zzk(II)Lcom/google/android/gms/internal/ads/zzgyl;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyh;->zzd()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgyl;->zzq(III)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgyl;->zzb:Lcom/google/android/gms/internal/ads/zzgyl;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyh;->zza:[B

    .line 15
    .line 16
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgye;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyh;->zzc()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    add-int/2addr v2, p1

    .line 23
    invoke-direct {v1, v0, v2, p2}, Lcom/google/android/gms/internal/ads/zzgye;-><init>([BII)V

    .line 24
    .line 25
    .line 26
    return-object v1
.end method

.method public final zzl()Lcom/google/android/gms/internal/ads/zzgyt;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyh;->zza:[B

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyh;->zzc()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyh;->zzd()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgyt;->zzI([BIIZ)Lcom/google/android/gms/internal/ads/zzgyt;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public final zzm(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgyh;->zza:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyh;->zzc()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyh;->zzd()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final zzn()Ljava/nio/ByteBuffer;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyh;->zza:[B

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyh;->zzc()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyh;->zzd()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzgya;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyh;->zza:[B

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyh;->zzc()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyh;->zzd()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgya;->zza([BII)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final zzp()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyh;->zzc()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyh;->zzd()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgyh;->zza:[B

    .line 11
    .line 12
    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzhde;->zzj([BII)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method
