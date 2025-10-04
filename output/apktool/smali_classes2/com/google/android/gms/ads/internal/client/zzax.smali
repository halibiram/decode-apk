.class abstract Lcom/google/android/gms/ads/internal/client/zzax;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/ads/internal/client/zzce;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x7

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    const-class v2, Lcom/google/android/gms/ads/internal/client/zzaw;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    new-array v4, v0, [J

    .line 12
    .line 13
    fill-array-data v4, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    instance-of v3, v2, Landroid/os/IBinder;

    .line 36
    .line 37
    if-nez v3, :cond_0

    .line 38
    .line 39
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    new-array v0, v0, [J

    .line 42
    .line 43
    fill-array-data v0, :array_1

    .line 44
    .line 45
    .line 46
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    check-cast v2, Landroid/os/IBinder;

    .line 58
    .line 59
    if-nez v2, :cond_1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 63
    .line 64
    const/16 v3, 0x8

    .line 65
    .line 66
    new-array v3, v3, [J

    .line 67
    .line 68
    fill-array-data v3, :array_2

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    instance-of v3, v0, Lcom/google/android/gms/ads/internal/client/zzce;

    .line 83
    .line 84
    if-eqz v3, :cond_2

    .line 85
    .line 86
    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzce;

    .line 87
    .line 88
    :goto_0
    move-object v1, v0

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzcc;

    .line 91
    .line 92
    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/client/zzcc;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catch_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 97
    .line 98
    const/4 v2, 0x6

    .line 99
    new-array v2, v2, [J

    .line 100
    .line 101
    fill-array-data v2, :array_3

    .line 102
    .line 103
    .line 104
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :goto_1
    sput-object v1, Lcom/google/android/gms/ads/internal/client/zzax;->zza:Lcom/google/android/gms/ads/internal/client/zzce;

    .line 115
    .line 116
    return-void

    .line 117
    :array_0
    .array-data 8
        -0x7c3a86b77e34fda1L    # -1.721481424460018E-290
        -0x778385805fce75a9L    # -8.625040233755631E-268
        0x749c9e4274ae6cddL    # 5.245401114083232E253
        -0x443da67f9cb4ec6L
        0x3cb6df9ad4722bd0L    # 3.1743297249479743E-16
        -0x3884e2e3c385d10eL    # -2.252519074628926E36
        -0x77b7d609eab28f50L
    .end array-data

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
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
    :array_1
    .array-data 8
        0x2b7b43c4d8dccbaeL    # 3.1163233928488387E-99
        -0x2a19bef22aded767L    # -6.379973408547551E105
        0x12222b64b787601eL
        -0x1c3e2eb5955f5930L    # -3.44282793417772E172
        0x5f73fb7784c79705L    # 6.54098484633943E151
        0x6265252a7b2aafcdL    # 9.741346771221827E165
        -0x3a4e6ef3eeb21965L    # -5.436596398412775E27
    .end array-data

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
    :array_2
    .array-data 8
        -0x11a45a3cc3dbba27L    # -3.997540096345653E223
        -0x1e4f44e80515f2c3L    # -3.7635291418108E162
        -0x55f7091734b75c55L
        0x1733f238bd7d27c4L    # 6.670870978633123E-197
        -0x55bad57183551fb4L    # -4.614399270014572E-105
        0x2a6c36052d980708L
        -0x20a9b6304b56ad3eL    # -1.823959891104171E151
        -0x7fbacec8ebb7af47L    # -2.357715705906799E-307
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
    :array_3
    .array-data 8
        -0x39358aa3216e7746L    # -1.0732821727976264E33
        0x2569e35588f60bd2L
        -0x33c64eccb154d9bfL    # -1.612724850193356E59
        0x54516b51e0be272L
        -0x4047f551c6605027L    # -0.093912972515397
        0x2460eef460f125e0L    # 1.863788029635793E-133
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zze()Ljava/lang/Object;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzax;->zza:Lcom/google/android/gms/ads/internal/client/zzce;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/client/zzax;->zzb(Lcom/google/android/gms/ads/internal/client/zzce;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object v0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/16 v3, 0x8

    .line 15
    .line 16
    new-array v3, v3, [J

    .line 17
    .line 18
    fill-array-data v3, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    const/4 v2, 0x6

    .line 35
    new-array v2, v2, [J

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
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object v1

    .line 51
    :array_0
    .array-data 8
        0x2a175377954007a6L    # 6.35656679692095E-106
        0x26ecc8f34d63a64bL
        0x3f0fc3320086bb80L    # 6.05821260849437E-5
        -0x6021263b3da54d23L
        -0x31c5d00d591790e3L    # -7.060081122907842E68
        -0xb924dd56c3f1eb1L
        0x2e338388163620a6L    # 3.9237650366165816E-86
        0x3406b2faade58d88L    # 4.520226555026076E-58
    .end array-data

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    :array_1
    .array-data 8
        -0x3a8a2ad62caf961aL    # -4.223052450568359E26
        0x245e540a38b64803L    # 1.669051466545518E-133
        -0x4cbd2e6d086540e5L    # -9.149120229586418E-62
        -0x7b083de50f18058bL    # -9.985689912212673E-285
        -0x58952ec2c3e3e4beL    # -8.308209316698197E-119
        0x6c39c038232d3daL
    .end array-data
.end method

.method private final zzf()Ljava/lang/Object;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/client/zzax;->zzc()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object v0

    .line 6
    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v2, 0x5

    .line 10
    new-array v2, v2, [J

    .line 11
    .line 12
    fill-array-data v2, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    return-object v0

    .line 27
    :array_0
    .array-data 8
        0x25d116ac1e974478L
        -0x6af9220d32c979a5L    # -2.225778403207614E-207
        0x1173c9c776a5cdd2L
        0x649c103f7fb1640cL    # 4.4422073813927524E176
        -0xe14a26f7017cca6L    # -5.702295715622782E240
    .end array-data
.end method


# virtual methods
.method public abstract zza()Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract zzb(Lcom/google/android/gms/ads/internal/client/zzce;)Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract zzc()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public final zzd(Landroid/content/Context;Z)Ljava/lang/Object;
    .locals 9

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x6

    .line 3
    const/4 v2, 0x1

    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 7
    .line 8
    .line 9
    const v3, 0xbdfcb8

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/zzcdv;->zzs(Landroid/content/Context;I)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    new-array v3, v1, [J

    .line 21
    .line 22
    fill-array-data v3, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {p2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzcec;->zze(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 p2, 0x1

    .line 36
    :cond_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    new-array v4, v1, [J

    .line 39
    .line 40
    fill-array-data v4, :array_1

    .line 41
    .line 42
    .line 43
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-static {p1, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    new-array v1, v1, [J

    .line 57
    .line 58
    fill-array-data v1, :array_2

    .line 59
    .line 60
    .line 61
    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {p1, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->getRemoteVersion(Landroid/content/Context;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    const/4 v4, 0x0

    .line 73
    if-le v3, v1, :cond_1

    .line 74
    .line 75
    const/4 v1, 0x0

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    const/4 v1, 0x1

    .line 78
    :goto_0
    xor-int/2addr v1, v2

    .line 79
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbgc;->zza(Landroid/content/Context;)V

    .line 80
    .line 81
    .line 82
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbhv;->zza:Lcom/google/android/gms/internal/ads/zzbhm;

    .line 83
    .line 84
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbhm;->zze()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Ljava/lang/Boolean;

    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_2

    .line 95
    .line 96
    :goto_1
    const/4 p2, 0x0

    .line 97
    goto :goto_2

    .line 98
    :cond_2
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbhv;->zzb:Lcom/google/android/gms/internal/ads/zzbhm;

    .line 99
    .line 100
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbhm;->zze()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Ljava/lang/Boolean;

    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-eqz v3, :cond_3

    .line 111
    .line 112
    const/4 p2, 0x1

    .line 113
    const/4 v4, 0x1

    .line 114
    goto :goto_2

    .line 115
    :cond_3
    or-int/2addr p2, v1

    .line 116
    move v4, p2

    .line 117
    goto :goto_1

    .line 118
    :goto_2
    if-eqz v4, :cond_4

    .line 119
    .line 120
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzax;->zze()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    if-nez p1, :cond_7

    .line 125
    .line 126
    if-nez p2, :cond_7

    .line 127
    .line 128
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzax;->zzf()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    goto/16 :goto_3

    .line 133
    .line 134
    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzax;->zzf()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    if-nez p2, :cond_5

    .line 139
    .line 140
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbij;->zza:Lcom/google/android/gms/internal/ads/zzbhm;

    .line 141
    .line 142
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbhm;->zze()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    check-cast v1, Ljava/lang/Long;

    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zze()Ljava/util/Random;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-nez v1, :cond_5

    .line 161
    .line 162
    new-instance v7, Landroid/os/Bundle;

    .line 163
    .line 164
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 165
    .line 166
    .line 167
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 168
    .line 169
    const/4 v3, 0x2

    .line 170
    new-array v3, v3, [J

    .line 171
    .line 172
    fill-array-data v3, :array_3

    .line 173
    .line 174
    .line 175
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 183
    .line 184
    new-array v4, v0, [J

    .line 185
    .line 186
    fill-array-data v4, :array_4

    .line 187
    .line 188
    .line 189
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-virtual {v7, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 200
    .line 201
    new-array v3, v0, [J

    .line 202
    .line 203
    fill-array-data v3, :array_5

    .line 204
    .line 205
    .line 206
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-virtual {v7, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 214
    .line 215
    .line 216
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzc()Lcom/google/android/gms/internal/ads/zzcei;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzcei;->zza:Ljava/lang/String;

    .line 225
    .line 226
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 227
    .line 228
    new-array v0, v0, [J

    .line 229
    .line 230
    fill-array-data v0, :array_6

    .line 231
    .line 232
    .line 233
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    const/4 v8, 0x1

    .line 241
    move-object v4, p1

    .line 242
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzcdv;->zzn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 243
    .line 244
    .line 245
    :cond_5
    if-nez p2, :cond_6

    .line 246
    .line 247
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzax;->zze()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    goto :goto_3

    .line 252
    :cond_6
    move-object p1, p2

    .line 253
    :cond_7
    :goto_3
    if-nez p1, :cond_8

    .line 254
    .line 255
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/client/zzax;->zza()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    :cond_8
    return-object p1

    .line 260
    nop

    .line 261
    :array_0
    .array-data 8
        0x266a9b478e63ef74L
        0x7af9857314ad5dd4L    # 2.371911603547308E284
        0x62cf90c8a31719cL
        -0x212f163afeb68e0fL    # -5.406580727472849E148
        -0x67379666f821c5e0L    # -2.739585366730488E-189
        -0x46bc80d60b67795bL    # -7.509868742327352E-33
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
    :array_1
    .array-data 8
        -0x7e332bbe66e161acL    # -5.381034880089783E-300
        -0x320b2c530d342830L    # -3.509318585872458E67
        -0x5e9a0593b087c4d5L    # -8.594182243387778E-148
        0x2feeee626ebc7b84L    # 8.347717681281424E-78
        -0x4ce7564386246660L    # -1.4988127535657212E-62
        -0x3758f7f0818df4d3L    # -1.0031627151641371E42
    .end array-data

    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    :array_2
    .array-data 8
        0x3c62f60b7fa11167L    # 8.223071942975418E-18
        0x6b1c4c3bd2d01bedL    # 9.08509580810177E207
        0x67ac7d9ac259513aL    # 2.5388059652367992E191
        -0x790110d3795b51a9L    # -5.584237593366026E-275
        -0x156413bd8f81ea14L
        -0xc73395c8f54d132L    # -4.023980148815943E248
    .end array-data

    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    :array_3
    .array-data 8
        0xbed70eac214c400L
        0x7891e9608222d74dL    # 6.056073961877072E272
    .end array-data

    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    :array_4
    .array-data 8
        -0x18e1c12e50b7ed90L    # -5.2640068932319875E188
        0x5795ae243c9de85bL    # 8.342236013091187E113
        0x4bc1ea93449dca14L    # 8.786132678264616E56
    .end array-data

    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    :array_5
    .array-data 8
        -0x158dc987ea3a6d52L    # -5.710222993324631E204
        -0x2bd2f1c6306de749L    # -3.103116001817694E97
        0x3bbf3ca0ef5f6d33L    # 6.614656187165849E-21
    .end array-data

    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    :array_6
    .array-data 8
        -0x5324a47ae3192521L    # -1.3115285541490419E-92
        -0x1a3bbe29bff8e9e8L
        -0x19d8db095fd9b01dL    # -1.2292863897648477E184
    .end array-data
.end method
