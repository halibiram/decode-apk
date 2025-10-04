.class public final Lcom/google/android/gms/internal/ads/zzaci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadu;


# instance fields
.field public final zza:I

.field public final zzb:[I

.field public final zzc:[J

.field public final zzd:[J

.field public final zze:[J

.field private final zzf:J


# direct methods
.method public constructor <init>([I[J[J[J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzb:[I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzc:[J

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzd:[J

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzaci;->zze:[J

    .line 11
    .line 12
    array-length p1, p1

    .line 13
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaci;->zza:I

    .line 14
    .line 15
    if-lez p1, :cond_0

    .line 16
    .line 17
    add-int/lit8 p1, p1, -0x1

    .line 18
    .line 19
    aget-wide p2, p3, p1

    .line 20
    .line 21
    aget-wide v0, p4, p1

    .line 22
    .line 23
    add-long/2addr p2, v0

    .line 24
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzf:J

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    const-wide/16 p1, 0x0

    .line 28
    .line 29
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzf:J

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzd:[J

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaci;->zze:[J

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzc:[J

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzb:[I

    .line 8
    .line 9
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    const/4 v6, 0x4

    .line 33
    new-array v6, v6, [J

    .line 34
    .line 35
    fill-array-data v6, :array_0

    .line 36
    .line 37
    .line 38
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaci;->zza:I

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 54
    .line 55
    const/4 v6, 0x2

    .line 56
    new-array v7, v6, [J

    .line 57
    .line 58
    fill-array-data v7, :array_1

    .line 59
    .line 60
    .line 61
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    const/4 v5, 0x3

    .line 77
    new-array v7, v5, [J

    .line 78
    .line 79
    fill-array-data v7, :array_2

    .line 80
    .line 81
    .line 82
    invoke-direct {v3, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 96
    .line 97
    new-array v3, v5, [J

    .line 98
    .line 99
    fill-array-data v3, :array_3

    .line 100
    .line 101
    .line 102
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 116
    .line 117
    new-array v2, v5, [J

    .line 118
    .line 119
    fill-array-data v2, :array_4

    .line 120
    .line 121
    .line 122
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 136
    .line 137
    new-array v1, v6, [J

    .line 138
    .line 139
    fill-array-data v1, :array_5

    .line 140
    .line 141
    .line 142
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 143
    .line 144
    .line 145
    invoke-static {v0, v4}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    return-object v0

    .line 150
    nop

    .line 151
    :array_0
    .array-data 8
        0x3bb4ce0560554d39L    # 4.405581314224811E-21
        -0xb9d78ffcf13c93bL    # -4.244823208259575E252
        0x67b464628a9dfb78L    # 3.6342920278074554E191
        0x61cd9a1cc0d2c4dfL    # 1.3317685172138727E163
    .end array-data

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
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
    :array_1
    .array-data 8
        0x60c2b40120bb3e16L    # 1.2839328687846852E158
        0x3eb316337cb0dee6L    # 1.1376573521136676E-6
    .end array-data

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
    :array_2
    .array-data 8
        0x4d582dcaec40bf44L    # 3.978645329349658E64
        -0x195aa7d1b039846aL    # -2.9022340781498097E186
        0x2dd9dd05c97d152bL    # 8.125804701834735E-88
    .end array-data

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
        -0x17777ba7ebef0c90L    # -3.579430881514408E195
        -0x483b1f9bb22d2297L    # -4.793016345343851E-40
        0x70914d4e289966eL    # 9.0553508278414E-275
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
    :array_4
    .array-data 8
        -0x50d8b4d3e24a7c00L    # -1.5347886487985119E-81
        0x6558dc8a08389ea3L    # 1.6119234893268688E180
        0x7ca00e6d3bda4399L    # 2.002869942950867E292
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
    :array_5
    .array-data 8
        0x72ad80eb7126c39cL    # 2.518148876933374E244
        0x70876f540ca041dbL    # 1.1642582193519142E234
    .end array-data
.end method

.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzf:J

    return-wide v0
.end method

.method public final zzg(J)Lcom/google/android/gms/internal/ads/zzads;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zze:[J

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/gms/internal/ads/zzfy;->zzc([JJZZ)I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    new-instance v3, Lcom/google/android/gms/internal/ads/zzadv;

    .line 9
    .line 10
    aget-wide v4, v0, v2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzc:[J

    .line 13
    .line 14
    aget-wide v6, v0, v2

    .line 15
    .line 16
    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzadv;-><init>(JJ)V

    .line 17
    .line 18
    .line 19
    iget-wide v4, v3, Lcom/google/android/gms/internal/ads/zzadv;->zzb:J

    .line 20
    .line 21
    cmp-long v0, v4, p1

    .line 22
    .line 23
    if-gez v0, :cond_1

    .line 24
    .line 25
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaci;->zza:I

    .line 26
    .line 27
    add-int/lit8 p1, p1, -0x1

    .line 28
    .line 29
    if-ne v2, p1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaci;->zze:[J

    .line 33
    .line 34
    add-int/2addr v2, v1

    .line 35
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzc:[J

    .line 36
    .line 37
    new-instance v0, Lcom/google/android/gms/internal/ads/zzadv;

    .line 38
    .line 39
    aget-wide v4, p1, v2

    .line 40
    .line 41
    aget-wide p1, p2, v2

    .line 42
    .line 43
    invoke-direct {v0, v4, v5, p1, p2}, Lcom/google/android/gms/internal/ads/zzadv;-><init>(JJ)V

    .line 44
    .line 45
    .line 46
    new-instance p1, Lcom/google/android/gms/internal/ads/zzads;

    .line 47
    .line 48
    invoke-direct {p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzads;-><init>(Lcom/google/android/gms/internal/ads/zzadv;Lcom/google/android/gms/internal/ads/zzadv;)V

    .line 49
    .line 50
    .line 51
    return-object p1

    .line 52
    :cond_1
    :goto_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzads;

    .line 53
    .line 54
    invoke-direct {p1, v3, v3}, Lcom/google/android/gms/internal/ads/zzads;-><init>(Lcom/google/android/gms/internal/ads/zzadv;Lcom/google/android/gms/internal/ads/zzadv;)V

    .line 55
    .line 56
    .line 57
    return-object p1
.end method

.method public final zzh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
