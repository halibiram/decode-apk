.class public final Lcom/google/android/gms/internal/ads/zzbwq;
.super Lcom/google/android/gms/dynamic/RemoteCreator;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/RemoteCreator;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 8
        -0x672782924b0eb984L    # -5.496556836705172E-189
        -0x41af8a8f4093ac6aL    # -1.532840695612494E-8
        -0x59ab4ce71a73729eL
        0x5c01f33db5692315L    # 1.630858956125876E135
        0xac72c9846bd7928L
        0x25dc2344f041cbdcL    # 2.597954349306373E-126
        -0x4e35925e265337e0L    # -7.658424277433921E-69
    .end array-data
.end method


# virtual methods
.method public final synthetic getRemoteCreator(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    new-array v1, v1, [J

    .line 10
    .line 11
    fill-array-data v1, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbww;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    move-object p1, v0

    .line 30
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbww;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbwu;

    .line 34
    .line 35
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbwu;-><init>(Landroid/os/IBinder;)V

    .line 36
    .line 37
    .line 38
    move-object p1, v0

    .line 39
    :goto_0
    return-object p1

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        -0x5f5aa49f2b6d379cL    # -2.038878492360542E-151
        -0x374e83f9bb78f788L    # -1.523112205521078E42
        0x3011a873560274abL    # 3.812438743359071E-77
        0x557a2b6871c161d2L    # 5.861313988996694E103
        -0x1051c7976e70b759L    # -9.163600250821349E229
        0x14db8da11f33b69fL
        -0x40a44e76ee5385fcL    # -0.0016902769627403788
        -0x1fd88cc41fcfcae3L    # -1.5720743544955787E155
        0x5e45da6bb76e461eL    # 1.3644042907317637E146
        -0x7d7b4d521d0fe53cL
    .end array-data
.end method

.method public final zza(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzbwt;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/dynamic/RemoteCreator;->getRemoteCreatorInstance(Landroid/content/Context;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbww;

    .line 12
    .line 13
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/zzbww;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;)Landroid/os/IBinder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/16 v3, 0x9

    .line 23
    .line 24
    new-array v3, v3, [J

    .line 25
    .line 26
    fill-array-data v3, :array_0

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {p1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/zzbwt;

    .line 41
    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    check-cast v2, Lcom/google/android/gms/internal/ads/zzbwt;

    .line 45
    .line 46
    :goto_0
    move-object v1, v2

    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception p1

    .line 49
    goto :goto_2

    .line 50
    :catch_1
    move-exception p1

    .line 51
    goto :goto_3

    .line 52
    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbwr;

    .line 53
    .line 54
    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzbwr;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :goto_1
    return-object v1

    .line 59
    :goto_2
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    new-array v0, v0, [J

    .line 62
    .line 63
    fill-array-data v0, :array_1

    .line 64
    .line 65
    .line 66
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    return-object v1

    .line 77
    :goto_3
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 78
    .line 79
    new-array v0, v0, [J

    .line 80
    .line 81
    fill-array-data v0, :array_2

    .line 82
    .line 83
    .line 84
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    return-object v1

    .line 95
    :array_0
    .array-data 8
        0x2409c50ee020954eL    # 4.431821904000718E-135
        0x175985a6ab3c74cbL
        -0x25f802ce55de1786L    # -5.074591188370375E125
        0x417e23a46c995b33L    # 3.160327078744049E7
        -0x32fd5d5ed9c4351dL    # -9.58263252747382E62
        0x6e22824bee81dec5L    # 3.3452539404313106E222
        -0x7a1c759468bf1aabL
        -0x5ff3c3ebcdb63beL    # -4.754895082935242E279
        0x4e764f7313df5ac9L    # 9.62377340654393E69
    .end array-data

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
    :array_1
    .array-data 8
        -0x2c31ab21d3fa8666L    # -5.0615408578241073E95
        0xaa0dc81419c91a3L
        -0x758c120053a44893L    # -2.592412514608757E-258
        -0x3338ec00ecae41b3L    # -7.417018876631627E61
        0x5ac140fb69c55284L    # 1.4949746533365554E129
        0x64a08cca749bf030L    # 5.239435899317361E176
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
    .line 160
    .line 161
    .line 162
    .line 163
    :array_2
    .array-data 8
        0x6e798471cb754ce2L    # 1.475817158633424E224
        0x5e5f5f19a5549d3dL    # 3.917355522064963E146
        -0x1792e3843d746d54L    # -1.0625472855117755E195
        -0x6a142adb096b8037L    # -4.438606447816514E-203
        -0x5c707eb405c76dbeL    # -2.116471272836335E-137
        0x19f071bd4cb09f2eL    # 9.67515442938395E-184
    .end array-data
.end method
