.class public final Lcom/google/android/gms/internal/consent_sdk/zzcw;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(IILjava/lang/String;)I
    .locals 5

    .line 1
    const/4 p2, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x2

    .line 5
    if-ltz p0, :cond_1

    .line 6
    .line 7
    if-lt p0, p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    return p0

    .line 11
    :cond_1
    :goto_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    new-array v4, v2, [J

    .line 14
    .line 15
    fill-array-data v4, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    .line 26
    .line 27
    if-ltz p0, :cond_3

    .line 28
    .line 29
    if-gez p1, :cond_2

    .line 30
    .line 31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    new-array v1, v1, [J

    .line 41
    .line 42
    fill-array-data v1, :array_1

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0, p2, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    new-array v1, v1, [Ljava/lang/Object;

    .line 65
    .line 66
    aput-object v3, v1, v0

    .line 67
    .line 68
    aput-object p0, v1, p2

    .line 69
    .line 70
    aput-object p1, v1, v2

    .line 71
    .line 72
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    const/4 p1, 0x6

    .line 75
    new-array p1, p1, [J

    .line 76
    .line 77
    fill-array-data p1, :array_2

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzcx;->zza(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    goto :goto_1

    .line 92
    :cond_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    new-array p1, v2, [Ljava/lang/Object;

    .line 97
    .line 98
    aput-object v3, p1, v0

    .line 99
    .line 100
    aput-object p0, p1, p2

    .line 101
    .line 102
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 103
    .line 104
    const/4 p2, 0x5

    .line 105
    new-array p2, p2, [J

    .line 106
    .line 107
    fill-array-data p2, :array_3

    .line 108
    .line 109
    .line 110
    invoke-direct {p0, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzcx;->zza(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    :goto_1
    invoke-direct {v4, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v4

    .line 125
    :array_0
    .array-data 8
        0x1fc8fd9599e06e82L
        -0x5ec3fe3751940adeL
    .end array-data

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    :array_1
    .array-data 8
        -0x7d192f2830ca9ca8L
        0x30f8a352ba90f817L    # 8.715376949592778E-73
        -0x35f717bd4a566f1fL    # -4.550251603622494E48
    .end array-data

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
    :array_2
    .array-data 8
        -0x2f3501a474474067L    # -1.6003294879318096E81
        -0x7f8a2e701a77a611L    # -1.94192003206086E-306
        0x112687785a0138ddL    # 4.755089035365549E-226
        -0x7f0524f43951327L    # -2.091945837074979E270
        -0x1c15559ef11eeb0dL    # -2.060999867729473E173
        0x5a466bd2031ff2a7L    # 7.588685017762371E126
    .end array-data

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
    :array_3
    .array-data 8
        0x2925f207f791677eL    # 1.82505423695158E-110
        -0x48e46f31fe2bce09L    # -3.0902155033560645E-43
        0x2bcbac3b6b929L
        -0x29814f4ce99c12c7L    # -4.5048323920064866E108
        -0x15536a56fe4933aL
    .end array-data
.end method

.method public static zzb(IILjava/lang/String;)I
    .locals 2

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    if-gt p0, p1, :cond_0

    .line 4
    .line 5
    return p0

    .line 6
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 7
    .line 8
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    new-array v1, v1, [J

    .line 12
    .line 13
    fill-array-data v1, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzcw;->zzd(IILjava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p2

    .line 31
    :array_0
    .array-data 8
        -0x40b30dfa7607a83cL    # -8.833434148438559E-4
        0x9d3014147fce392L
    .end array-data
.end method

.method public static zzc(III)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    if-ltz p0, :cond_1

    .line 3
    .line 4
    if-lt p1, p0, :cond_1

    .line 5
    .line 6
    if-le p1, p2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    return-void

    .line 10
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 11
    .line 12
    if-ltz p0, :cond_4

    .line 13
    .line 14
    if-gt p0, p2, :cond_4

    .line 15
    .line 16
    if-ltz p1, :cond_3

    .line 17
    .line 18
    if-le p1, p2, :cond_2

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const/4 p2, 0x2

    .line 30
    new-array p2, p2, [Ljava/lang/Object;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    aput-object p1, p2, v0

    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    aput-object p0, p2, p1

    .line 37
    .line 38
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    const/16 p1, 0x8

    .line 41
    .line 42
    new-array p1, p1, [J

    .line 43
    .line 44
    fill-array-data p1, :array_0

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzcx;->zza(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    goto :goto_2

    .line 59
    :cond_3
    :goto_1
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    new-array v0, v0, [J

    .line 62
    .line 63
    fill-array-data v0, :array_1

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/consent_sdk/zzcw;->zzd(IILjava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    goto :goto_2

    .line 78
    :cond_4
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 79
    .line 80
    new-array v0, v0, [J

    .line 81
    .line 82
    fill-array-data v0, :array_2

    .line 83
    .line 84
    .line 85
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {p0, p2, p1}, Lcom/google/android/gms/internal/consent_sdk/zzcw;->zzd(IILjava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    :goto_2
    invoke-direct {v1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw v1

    .line 100
    nop

    .line 101
    :array_0
    .array-data 8
        -0x507ef668a35cf693L    # -7.184493497136081E-80
        -0x48fc315747ef57d7L    # -1.1102354299913963E-43
        -0x6f4a2942fbf30744L
        -0x2a749969d783f19bL    # -1.2274127621611795E104
        -0x13355badf954dbc5L    # -1.1480259926745103E216
        0x6f24894f9467167aL    # 2.432486481725323E227
        0x705810383c5fc12dL    # 1.4943519518966709E233
        0x3ca02253519853L
    .end array-data

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    :array_1
    .array-data 8
        -0x1b89172792f5679L
        -0x5957c8a4cc360e54L
        -0x37183ab99fa9cc23L    # -1.6565693991060081E43
    .end array-data

    :array_2
    .array-data 8
        0x1ed6e5ad7318b381L
        0x2c1053bd80a4d533L    # 1.910956159182188E-96
        0x3334fb0f77f54015L    # 5.100126812421821E-62
    .end array-data
.end method

.method private static zzd(IILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x2

    .line 5
    if-gez p0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    new-array p1, v3, [Ljava/lang/Object;

    .line 12
    .line 13
    aput-object p2, p1, v2

    .line 14
    .line 15
    aput-object p0, p1, v1

    .line 16
    .line 17
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 p2, 0x5

    .line 20
    new-array p2, p2, [J

    .line 21
    .line 22
    fill-array-data p2, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzcx;->zza(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_0
    if-ltz p1, :cond_1

    .line 38
    .line 39
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    new-array v0, v0, [Ljava/lang/Object;

    .line 48
    .line 49
    aput-object p2, v0, v2

    .line 50
    .line 51
    aput-object p0, v0, v1

    .line 52
    .line 53
    aput-object p1, v0, v3

    .line 54
    .line 55
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    const/4 p1, 0x7

    .line 58
    new-array p1, p1, [J

    .line 59
    .line 60
    fill-array-data p1, :array_1

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzcx;->zza(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0

    .line 75
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 76
    .line 77
    new-instance p2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 83
    .line 84
    new-array v0, v0, [J

    .line 85
    .line 86
    fill-array-data v0, :array_2

    .line 87
    .line 88
    .line 89
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-static {v1, p2, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p0

    .line 100
    nop

    .line 101
    :array_0
    .array-data 8
        0x58dc96e1155b2f5bL    # 1.1535140994185604E120
        -0x35bca115dced3072L    # -5.662079534290406E49
        -0x30bf5cb8473f577fL    # -5.879294260782208E73
        0x4f1fb4881aa817f3L    # 1.4004560677642052E73
        -0x4b80362c7df1da9aL    # -8.102690686610369E-56
    .end array-data

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    :array_1
    .array-data 8
        0x388edf5562ee5b09L    # 2.9032262280926158E-36
        0x2428a0a4ce475116L
        0x2b92fb0584d48806L    # 8.677813085706127E-99
        -0x37349e3bf1980afeL    # -4.7705994264733745E42
        0x5a0edb3a637cd57eL    # 6.52728983936282E125
        0xa98124a6ff7c20dL
        -0x10c883c9ed02d8a7L    # -5.5635373026340864E227
    .end array-data

    :array_2
    .array-data 8
        0x15d880ed92858d38L    # 1.953859264361753E-203
        -0x16f37126a5bc97eeL    # -1.0673700665603983E198
        -0x7e4c6ccb09c17ebL
    .end array-data
.end method
