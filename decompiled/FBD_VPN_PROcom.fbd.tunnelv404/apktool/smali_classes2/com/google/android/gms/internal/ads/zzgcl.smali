.class public final Lcom/google/android/gms/internal/ads/zzgcl;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static zza(DLjava/math/RoundingMode;)J
    .locals 10

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzgcm;->zza(D)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_9

    .line 7
    .line 8
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgck;->zza:[I

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    aget v1, v1, v2

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    const-wide/16 v3, 0x0

    .line 18
    .line 19
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 20
    .line 21
    packed-switch v1, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    new-instance p0, Ljava/lang/AssertionError;

    .line 25
    .line 26
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :pswitch_0
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    sub-double v7, p0, v3

    .line 35
    .line 36
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    .line 37
    .line 38
    .line 39
    move-result-wide v7

    .line 40
    cmpl-double v1, v7, v5

    .line 41
    .line 42
    if-nez v1, :cond_5

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :pswitch_1
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    .line 46
    .line 47
    .line 48
    move-result-wide v3

    .line 49
    sub-double v7, p0, v3

    .line 50
    .line 51
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    .line 52
    .line 53
    .line 54
    move-result-wide v7

    .line 55
    cmpl-double v1, v7, v5

    .line 56
    .line 57
    if-nez v1, :cond_5

    .line 58
    .line 59
    invoke-static {v5, v6, p0, p1}, Ljava/lang/Math;->copySign(DD)D

    .line 60
    .line 61
    .line 62
    move-result-wide v3

    .line 63
    add-double/2addr v3, p0

    .line 64
    goto :goto_3

    .line 65
    :pswitch_2
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    .line 66
    .line 67
    .line 68
    move-result-wide v3

    .line 69
    goto :goto_3

    .line 70
    :pswitch_3
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzgcl;->zzb(D)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_0

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_0
    double-to-long v5, p0

    .line 78
    cmpl-double v1, p0, v3

    .line 79
    .line 80
    if-lez v1, :cond_1

    .line 81
    .line 82
    const/4 v1, 0x1

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    const/4 v1, -0x1

    .line 85
    :goto_0
    int-to-long v3, v1

    .line 86
    add-long/2addr v5, v3

    .line 87
    long-to-double v3, v5

    .line 88
    goto :goto_3

    .line 89
    :pswitch_4
    cmpl-double v1, p0, v3

    .line 90
    .line 91
    if-lez v1, :cond_4

    .line 92
    .line 93
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzgcl;->zzb(D)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_2

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_2
    double-to-long v3, p0

    .line 101
    const-wide/16 v5, 0x1

    .line 102
    .line 103
    :goto_1
    add-long/2addr v3, v5

    .line 104
    long-to-double v3, v3

    .line 105
    goto :goto_3

    .line 106
    :pswitch_5
    cmpl-double v1, p0, v3

    .line 107
    .line 108
    if-gez v1, :cond_4

    .line 109
    .line 110
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzgcl;->zzb(D)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_3

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_3
    double-to-long v3, p0

    .line 118
    const-wide/16 v5, -0x1

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :pswitch_6
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzgcl;->zzb(D)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgcr;->zzb(Z)V

    .line 126
    .line 127
    .line 128
    :cond_4
    :goto_2
    :pswitch_7
    move-wide v3, p0

    .line 129
    :cond_5
    :goto_3
    const-wide/high16 v5, -0x3c20000000000000L    # -9.223372036854776E18

    .line 130
    .line 131
    sub-double/2addr v5, v3

    .line 132
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 133
    .line 134
    const/4 v1, 0x0

    .line 135
    cmpg-double v9, v5, v7

    .line 136
    .line 137
    if-gez v9, :cond_6

    .line 138
    .line 139
    const/4 v5, 0x1

    .line 140
    goto :goto_4

    .line 141
    :cond_6
    const/4 v5, 0x0

    .line 142
    :goto_4
    const-wide/high16 v6, 0x43e0000000000000L    # 9.223372036854776E18

    .line 143
    .line 144
    cmpg-double v8, v3, v6

    .line 145
    .line 146
    if-gez v8, :cond_7

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_7
    const/4 v2, 0x0

    .line 150
    :goto_5
    and-int v1, v5, v2

    .line 151
    .line 152
    if-eqz v1, :cond_8

    .line 153
    .line 154
    double-to-long p0, v3

    .line 155
    return-wide p0

    .line 156
    :cond_8
    new-instance v1, Ljava/lang/ArithmeticException;

    .line 157
    .line 158
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 168
    .line 169
    const/4 v4, 0x6

    .line 170
    new-array v4, v4, [J

    .line 171
    .line 172
    fill-array-data v4, :array_0

    .line 173
    .line 174
    .line 175
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 189
    .line 190
    new-array p1, v0, [J

    .line 191
    .line 192
    fill-array-data p1, :array_1

    .line 193
    .line 194
    .line 195
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 196
    .line 197
    .line 198
    invoke-static {p0, v2, p2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    invoke-direct {v1, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw v1

    .line 206
    :cond_9
    new-instance p0, Ljava/lang/ArithmeticException;

    .line 207
    .line 208
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 209
    .line 210
    new-array p2, v0, [J

    .line 211
    .line 212
    fill-array-data p2, :array_2

    .line 213
    .line 214
    .line 215
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    throw p0

    .line 226
    nop

    .line 227
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

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
    :array_0
    .array-data 8
        0x1143518f43f380d4L
        0x76b75857b82bb600L    # 7.351090061214082E263
        0x26b72e047ad851b3L    # 3.506474028168637E-122
        -0x244706fc08925a6aL    # -7.090288125932309E133
        0x47df51f8d9e3a743L    # 1.6652676486168795E38
        -0x2964d9c36eeaf698L
    .end array-data

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    :array_1
    .array-data 8
        -0xebb739beb3793baL    # -4.1814282804321544E237
        0x28f8fd74f7159790L
        -0x3f1581012e23b04bL    # -54263.96311774795
        0x37cbdcd48cb4ed33L    # 6.39694342813666E-40
    .end array-data

    :array_2
    .array-data 8
        -0x22f1e9f7b14636a9L    # -1.7914033412341325E140
        0x1e79f25ea8aaf6dfL    # 7.209172609349941E-162
        -0x15f4d3625b152f35L    # -6.656181451161434E202
        -0x45b75011a9708c02L    # -6.231933120183592E-28
    .end array-data
.end method

.method public static zzb(D)Z
    .locals 7

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzgcm;->zza(D)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    cmpl-double v4, p0, v2

    .line 12
    .line 13
    if-eqz v4, :cond_2

    .line 14
    .line 15
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzgcm;->zza(D)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 v4, 0x4

    .line 22
    new-array v4, v4, [J

    .line 23
    .line 24
    fill-array-data v4, :array_0

    .line 25
    .line 26
    .line 27
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfxe;->zzf(ZLjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 42
    .line 43
    .line 44
    move-result-wide v3

    .line 45
    const-wide v5, 0xfffffffffffffL

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    and-long/2addr v3, v5

    .line 51
    const/16 v5, -0x3ff

    .line 52
    .line 53
    if-ne v2, v5, :cond_0

    .line 54
    .line 55
    add-long/2addr v3, v3

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const-wide/high16 v5, 0x10000000000000L

    .line 58
    .line 59
    or-long/2addr v3, v5

    .line 60
    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    rsub-int/lit8 v2, v2, 0x34

    .line 65
    .line 66
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-le v2, p0, :cond_1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    return v0

    .line 74
    :cond_2
    const/4 v1, 0x1

    .line 75
    :cond_3
    :goto_1
    return v1

    .line 76
    nop

    .line 77
    :array_0
    .array-data 8
        0x754a2ca4116f94ccL    # 9.825229346354708E256
        -0x799e61c112359364L    # -6.211754135610757E-278
        0x6a2d716accc5e0c7L    # 2.8847599424440912E203
        -0x3ac76a6fdc89d479L    # -2.972051116312299E25
    .end array-data
.end method
