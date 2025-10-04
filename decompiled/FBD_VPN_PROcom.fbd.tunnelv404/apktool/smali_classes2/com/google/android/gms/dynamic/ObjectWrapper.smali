.class public final Lcom/google/android/gms/dynamic/ObjectWrapper;
.super Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/util/RetainForClient;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;"
    }
.end annotation


# instance fields
.field private final zza:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/dynamic/ObjectWrapper;->zza:Ljava/lang/Object;

    .line 5
    .line 6
    return-void
.end method

.method public static unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;
    .locals 9
    .param p0    # Lcom/google/android/gms/dynamic/IObjectWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            ")TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x7

    .line 2
    const/4 v1, 0x1

    .line 3
    instance-of v2, p0, Lcom/google/android/gms/dynamic/ObjectWrapper;

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    check-cast p0, Lcom/google/android/gms/dynamic/ObjectWrapper;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/google/android/gms/dynamic/ObjectWrapper;->zza:Ljava/lang/Object;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    array-length v3, v2

    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x0

    .line 27
    move-object v6, v5

    .line 28
    const/4 v5, 0x0

    .line 29
    :goto_0
    if-ge v4, v3, :cond_2

    .line 30
    .line 31
    aget-object v7, v2, v4

    .line 32
    .line 33
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->isSynthetic()Z

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    if-nez v8, :cond_1

    .line 38
    .line 39
    add-int/2addr v5, v1

    .line 40
    move-object v6, v7

    .line 41
    :cond_1
    add-int/2addr v4, v1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    if-ne v5, v1, :cond_4

    .line 44
    .line 45
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_3

    .line 53
    .line 54
    invoke-virtual {v6, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 55
    .line 56
    .line 57
    :try_start_0
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    return-object p0

    .line 62
    :catch_0
    move-exception p0

    .line 63
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 66
    .line 67
    new-array v0, v0, [J

    .line 68
    .line 69
    fill-array-data v0, :array_0

    .line 70
    .line 71
    .line 72
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-direct {v1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    throw v1

    .line 83
    :catch_1
    move-exception p0

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 85
    .line 86
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 87
    .line 88
    const/4 v2, 0x4

    .line 89
    new-array v2, v2, [J

    .line 90
    .line 91
    fill-array-data v2, :array_1

    .line 92
    .line 93
    .line 94
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    throw v0

    .line 105
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 106
    .line 107
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 108
    .line 109
    new-array v0, v0, [J

    .line 110
    .line 111
    fill-array-data v0, :array_2

    .line 112
    .line 113
    .line 114
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p0

    .line 125
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 126
    .line 127
    array-length v0, v2

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 134
    .line 135
    const/16 v3, 0x8

    .line 136
    .line 137
    new-array v3, v3, [J

    .line 138
    .line 139
    fill-array-data v3, :array_3

    .line 140
    .line 141
    .line 142
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 143
    .line 144
    .line 145
    invoke-static {v2, v1, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw p0

    .line 153
    :array_0
    .array-data 8
        0x5cef07c3042690d4L    # 4.6190669438384197E139
        -0x1fe230f1c5684388L    # -9.99177026759685E154
        -0xda7da0fcef35b9bL    # -6.440820853708004E242
        -0x6f0aba3a4cb56657L    # -5.612324693955286E-227
        0x472212cb26682c42L    # 4.692126101492534E34
        -0x5bdd5ed0c9becc15L    # -1.281551603140868E-134
        -0x448cea098c73d60cL    # -2.5259835122538086E-22
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
    .line 182
    .line 183
    .line 184
    .line 185
    :array_1
    .array-data 8
        0x197ca2f0a36d5948L
        -0x74bfc38e3f144702L
        0x7a100fa7cf5396cfL    # 9.110720844854902E279
        0x1520e83845ef2f9L
    .end array-data

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
    .line 202
    .line 203
    .line 204
    .line 205
    :array_2
    .array-data 8
        0x28aeaa7c25211bf8L    # 9.962037088186422E-113
        -0x4d6adf7ee8d773c5L    # -5.0153143164494636E-65
        -0x4db47673225de8a6L
        0x105807accaca6cc9L    # 6.191227134333023E-230
        -0x27d14fd9699f4aa9L    # -6.045861324713451E116
        -0x7387a3abee559d09L
        -0x6cc0c77034ebf46cL
    .end array-data

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
    :array_3
    .array-data 8
        0x6c9646104d7eeae6L    # 1.199745195567575E215
        0x5e6343e7c0b151e7L    # 4.81130255332605E146
        0x2706f5edaed25c66L
        0x24c00434acd9913aL
        0x27f6201704b4025L
        -0x2b0f8fbd0fbbd507L    # -1.4382067139535698E101
        0x37359d2b5d59eb11L    # 9.692027216884884E-43
        0x455bd0147d7bd321L    # 1.3449450933986465E26
    .end array-data
.end method

.method public static wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/dynamic/ObjectWrapper;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
