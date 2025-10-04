.class public abstract Lcom/google/android/gms/internal/measurement/zzjb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# static fields
.field private static final zza:Ljava/util/Comparator;

.field public static final zzb:Lcom/google/android/gms/internal/measurement/zzjb;

.field private static final zzd:Lcom/google/android/gms/internal/measurement/zzja;


# instance fields
.field private zzc:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zziy;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:[B

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zziy;-><init>([B)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:Lcom/google/android/gms/internal/measurement/zzjb;

    .line 9
    .line 10
    sget v0, Lcom/google/android/gms/internal/measurement/zzin;->zza:I

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzja;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzja;-><init>(Lcom/google/android/gms/internal/measurement/zziz;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzjb;->zzd:Lcom/google/android/gms/internal/measurement/zzja;

    .line 19
    .line 20
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzit;

    .line 21
    .line 22
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzit;-><init>()V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Ljava/util/Comparator;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzc:I

    return-void
.end method

.method public static zzj(III)I
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    sub-int v1, p1, p0

    .line 3
    .line 4
    or-int v2, p0, p1

    .line 5
    .line 6
    or-int/2addr v2, v1

    .line 7
    sub-int v3, p2, p1

    .line 8
    .line 9
    or-int/2addr v2, v3

    .line 10
    if-gez v2, :cond_2

    .line 11
    .line 12
    if-ltz p0, :cond_1

    .line 13
    .line 14
    if-ge p1, p0, :cond_0

    .line 15
    .line 16
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/4 v3, 0x7

    .line 26
    new-array v3, v3, [J

    .line 27
    .line 28
    fill-array-data v3, :array_0

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array v0, v0, [J

    .line 47
    .line 48
    fill-array-data v0, :array_1

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-static {p0, v1, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p2

    .line 62
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 63
    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    const/4 v3, 0x3

    .line 72
    new-array v3, v3, [J

    .line 73
    .line 74
    fill-array-data v3, :array_2

    .line 75
    .line 76
    .line 77
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 91
    .line 92
    new-array v0, v0, [J

    .line 93
    .line 94
    fill-array-data v0, :array_3

    .line 95
    .line 96
    .line 97
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 98
    .line 99
    .line 100
    invoke-static {p1, v1, p2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p0

    .line 108
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 109
    .line 110
    new-instance p2, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 116
    .line 117
    const/4 v2, 0x4

    .line 118
    new-array v2, v2, [J

    .line 119
    .line 120
    fill-array-data v2, :array_4

    .line 121
    .line 122
    .line 123
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 137
    .line 138
    new-array v0, v0, [J

    .line 139
    .line 140
    fill-array-data v0, :array_5

    .line 141
    .line 142
    .line 143
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 144
    .line 145
    .line 146
    invoke-static {p0, p2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p1

    .line 154
    :cond_2
    return v1

    .line 155
    :array_0
    .array-data 8
        -0x6b3363fd881653b3L
        0x448ca337637e0d7cL    # 1.6904633997081985E22
        0x1e11026841586147L    # 7.384335943060784E-164
        -0x2ed5e43d88ebd09cL    # -9.906259090684449E82
        0x11698b64ab108c9bL    # 8.626422720731894E-225
        0xc3a8a3e6d141229L
        0x826f208587a4725L
    .end array-data

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
    :array_1
    .array-data 8
        -0x4fdc37be28c92209L    # -8.542144277455188E-77
        -0x1b4d3e911e761918L    # -1.18754038342876E177
    .end array-data

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
    :array_2
    .array-data 8
        -0x794039961fdbf131L
        0x7f8438af6273c2eL
        0x450b3ac9e5364d30L    # 4.1148273372042243E24
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
    :array_3
    .array-data 8
        -0x363d33f8ca5759d1L    # -2.14623627880939E47
        -0x2f74095de068ffb2L    # -1.0361413815707634E80
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
    :array_4
    .array-data 8
        -0x3b2d874e3ef0d4beL    # -3.489160580639698E23
        0x435a49c7ce95e902L    # 2.9597887630910472E16
        0x4dcf652f9ed8187aL    # 6.612613109932873E66
        -0x53462370fa1a53e5L    # -3.099531304448714E-93
    .end array-data

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
    .line 246
    .line 247
    :array_5
    .array-data 8
        -0x2bb24ae3840ab1aeL    # -1.2690952399905032E98
        -0x1cf6ead686dc6c3aL    # -1.1832628969418628E169
    .end array-data
.end method

.method public static zzl([BII)Lcom/google/android/gms/internal/measurement/zzjb;
    .locals 3

    .line 1
    add-int v0, p1, p2

    .line 2
    .line 3
    array-length v1, p0

    .line 4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjb;->zzj(III)I

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/google/android/gms/internal/measurement/zziy;

    .line 8
    .line 9
    new-array v1, p2, [B

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {p0, p1, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zziy;-><init>([B)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public static zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzjb;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zziy;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zziy;-><init>([B)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzc:I

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzd()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v0, v1, v0}, Lcom/google/android/gms/internal/measurement/zzjb;->zze(III)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    :cond_0
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzc:I

    .line 18
    .line 19
    :cond_1
    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzis;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzis;-><init>(Lcom/google/android/gms/internal/measurement/zzjb;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 4
    .line 5
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzd()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzd()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    const/16 v6, 0x32

    .line 26
    .line 27
    if-gt v5, v6, :cond_0

    .line 28
    .line 29
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzmj;->zza(Lcom/google/android/gms/internal/measurement/zzjb;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/16 v5, 0x2f

    .line 35
    .line 36
    invoke-virtual {p0, v1, v5}, Lcom/google/android/gms/internal/measurement/zzjb;->zzf(II)Lcom/google/android/gms/internal/measurement/zzjb;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzmj;->zza(Lcom/google/android/gms/internal/measurement/zzjb;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array v7, v0, [J

    .line 47
    .line 48
    fill-array-data v7, :array_0

    .line 49
    .line 50
    .line 51
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    :goto_0
    const/4 v6, 0x3

    .line 63
    new-array v6, v6, [Ljava/lang/Object;

    .line 64
    .line 65
    aput-object v3, v6, v1

    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    aput-object v4, v6, v1

    .line 69
    .line 70
    aput-object v5, v6, v0

    .line 71
    .line 72
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    const/4 v1, 0x6

    .line 75
    new-array v1, v1, [J

    .line 76
    .line 77
    fill-array-data v1, :array_1

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v2, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    return-object v0

    .line 92
    nop

    .line 93
    :array_0
    .array-data 8
        -0x4ab4fa35302d7f1eL    # -5.6425875713377576E-52
        -0x7a160a75e8efc9b7L
    .end array-data

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    :array_1
    .array-data 8
        0x3d1a1643d354e5e0L    # 2.316988595226917E-14
        -0x3b141a1f5c23606aL    # -1.0539550916353887E24
        -0x3ce7aa78e7345c1dL    # -1.7123595415001528E15
        0x24ec7e76de7a5b80L    # 8.028701926208949E-131
        0x5815bacaf1c80787L    # 2.1404804147980585E116
        -0x1ad15787ffc21736L    # -2.4846911075830845E179
    .end array-data
.end method

.method public abstract zza(I)B
.end method

.method public abstract zzb(I)B
.end method

.method public abstract zzd()I
.end method

.method public abstract zze(III)I
.end method

.method public abstract zzf(II)Lcom/google/android/gms/internal/measurement/zzjb;
.end method

.method public abstract zzg(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public abstract zzh(Lcom/google/android/gms/internal/measurement/zzir;)V
.end method

.method public abstract zzi()Z
.end method

.method public final zzk()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzc:I

    return v0
.end method

.method public final zzn(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzd()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    new-array v0, v0, [J

    .line 11
    .line 12
    const-wide v1, -0x21b67d0d2099b5e6L    # -1.592810914291239E146

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    aput-wide v1, v0, v3

    .line 19
    .line 20
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjb;->zzg(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :goto_0
    return-object p1
.end method
