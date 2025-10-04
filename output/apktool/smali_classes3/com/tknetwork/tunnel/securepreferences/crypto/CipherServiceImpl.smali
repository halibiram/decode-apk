.class public final Lcom/tknetwork/tunnel/securepreferences/crypto/CipherServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tknetwork/tunnel/securepreferences/crypto/CipherService;


# instance fields
.field private final ivSize:I

.field private final mCipher:Ljavax/crypto/Cipher;

.field private final mEncryptionAlgorithm:Ljava/lang/String;

.field private final mLogger:Ljava/util/logging/Logger;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/tknetwork/tunnel/securepreferences/crypto/CipherServiceImpl;->mEncryptionAlgorithm:Ljava/lang/String;

    .line 7
    .line 8
    iput p4, p0, Lcom/tknetwork/tunnel/securepreferences/crypto/CipherServiceImpl;->ivSize:I

    .line 9
    .line 10
    const-class p4, Lcom/tknetwork/tunnel/securepreferences/crypto/CipherService;

    .line 11
    .line 12
    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p4

    .line 16
    invoke-static {p4}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 17
    .line 18
    .line 19
    move-result-object p4

    .line 20
    iput-object p4, p0, Lcom/tknetwork/tunnel/securepreferences/crypto/CipherServiceImpl;->mLogger:Ljava/util/logging/Logger;

    .line 21
    .line 22
    :try_start_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    new-array v3, v1, [J

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
    const/4 v3, 0x3

    .line 37
    new-array v3, v3, [Ljava/lang/Object;

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    aput-object p1, v3, v4

    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    aput-object p2, v3, p1

    .line 44
    .line 45
    aput-object p3, v3, v1

    .line 46
    .line 47
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-instance p2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 57
    .line 58
    new-array v1, v0, [J

    .line 59
    .line 60
    fill-array-data v1, :array_1

    .line 61
    .line 62
    .line 63
    invoke-direct {p3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {p4, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iput-object p1, p0, Lcom/tknetwork/tunnel/securepreferences/crypto/CipherServiceImpl;->mCipher:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    return-void

    .line 90
    :catch_0
    move-exception p1

    .line 91
    goto :goto_0

    .line 92
    :catch_1
    move-exception p1

    .line 93
    :goto_0
    iget-object p2, p0, Lcom/tknetwork/tunnel/securepreferences/crypto/CipherServiceImpl;->mLogger:Ljava/util/logging/Logger;

    .line 94
    .line 95
    sget-object p3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 96
    .line 97
    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    .line 98
    .line 99
    new-array v0, v0, [J

    .line 100
    .line 101
    fill-array-data v0, :array_2

    .line 102
    .line 103
    .line 104
    invoke-direct {p4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p4

    .line 111
    invoke-virtual {p2, p3, p4, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 115
    .line 116
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 117
    .line 118
    const/16 p3, 0x8

    .line 119
    .line 120
    new-array p3, p3, [J

    .line 121
    .line 122
    fill-array-data p3, :array_3

    .line 123
    .line 124
    .line 125
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p1

    .line 136
    nop

    .line 137
    :array_0
    .array-data 8
        0x288cded74cd8341aL
        -0x4e513dcb0b2fb86bL    # -2.2283215727974243E-69
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
    :array_1
    .array-data 8
        0x6c257a41c7014b51L    # 9.037993356530471E212
        -0x3547c0a0ac3d3455L    # -9.072084884967082E51
        -0x6dec29c38d009bb7L
        -0x76486e687115006dL    # -7.484792357549877E-262
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
    :array_2
    .array-data 8
        -0x20ae9955f96f662fL    # -1.4240093585371875E151
        -0x62504a85975ec82aL
        0x4ef30d0c3df830a3L    # 2.103759186175426E72
        -0x619029d6cbf79afcL
    .end array-data

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
    :array_3
    .array-data 8
        0x781cf1acdb996627L    # 3.8227450188389916E270
        0x5ac331ee182fe277L    # 1.663171990584398E129
        -0x270240eb28ac0276L    # -4.800791758853069E120
        0xc2efcfc81f48b10L
        0x5460c70265131148L    # 2.866901344048981E98
        -0x2f9c1146cd528facL    # -1.8464218959536214E79
        0x29b8243c970122a2L
        0x600038765517de4cL    # 2.7185261765406145E154
    .end array-data
.end method

.method private generateIvParameterSpec([B)Ljavax/crypto/spec/IvParameterSpec;
    .locals 1

    .line 1
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private generateSecretKeySpec([B)Ljavax/crypto/SecretKey;
    .locals 2

    .line 1
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tknetwork/tunnel/securepreferences/crypto/CipherServiceImpl;->mEncryptionAlgorithm:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static getInstance(Lcom/tknetwork/tunnel/securepreferences/model/EncryptionAlgorithm;)Lcom/tknetwork/tunnel/securepreferences/crypto/CipherService;
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    sget-object v2, Lcom/tknetwork/tunnel/securepreferences/crypto/CipherServiceImpl$1;->$SwitchMap$com$tknetwork$tunnel$securepreferences$model$EncryptionAlgorithm:[I

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    aget p0, v2, p0

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq p0, v2, :cond_1

    .line 13
    .line 14
    if-ne p0, v1, :cond_0

    .line 15
    .line 16
    new-instance p0, Lcom/tknetwork/tunnel/securepreferences/crypto/CipherServiceImpl;

    .line 17
    .line 18
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    new-array v3, v1, [J

    .line 21
    .line 22
    fill-array-data v3, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    new-array v1, v1, [J

    .line 35
    .line 36
    fill-array-data v1, :array_1

    .line 37
    .line 38
    .line 39
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    new-array v0, v0, [J

    .line 49
    .line 50
    fill-array-data v0, :array_2

    .line 51
    .line 52
    .line 53
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const/16 v3, 0x8

    .line 61
    .line 62
    invoke-direct {p0, v2, v1, v0, v3}, Lcom/tknetwork/tunnel/securepreferences/crypto/CipherServiceImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    return-object p0

    .line 66
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    const/4 v1, 0x4

    .line 71
    new-array v1, v1, [J

    .line 72
    .line 73
    fill-array-data v1, :array_3

    .line 74
    .line 75
    .line 76
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p0

    .line 87
    :cond_1
    new-instance p0, Lcom/tknetwork/tunnel/securepreferences/crypto/CipherServiceImpl;

    .line 88
    .line 89
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 90
    .line 91
    new-array v3, v1, [J

    .line 92
    .line 93
    fill-array-data v3, :array_4

    .line 94
    .line 95
    .line 96
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 104
    .line 105
    new-array v1, v1, [J

    .line 106
    .line 107
    fill-array-data v1, :array_5

    .line 108
    .line 109
    .line 110
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 118
    .line 119
    new-array v0, v0, [J

    .line 120
    .line 121
    fill-array-data v0, :array_6

    .line 122
    .line 123
    .line 124
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    const/16 v3, 0xc

    .line 132
    .line 133
    invoke-direct {p0, v2, v1, v0, v3}, Lcom/tknetwork/tunnel/securepreferences/crypto/CipherServiceImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 134
    .line 135
    .line 136
    return-object p0

    .line 137
    :array_0
    .array-data 8
        -0x2e169253065af416L    # -3.951920140725392E86
        -0x5de8aacf006a29ddL
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
    :array_1
    .array-data 8
        -0x43a981122ef747ceL    # -4.8780025792128724E-18
        0xf4e5298d6af766bL    # 5.960469517929889E-235
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
    :array_2
    .array-data 8
        0x236e9d01e2b6e779L
        0x3a33b58f69181bf3L    # 2.487653240397759E-28
        0x4f0bb78c2f543ef1L    # 6.121458713418362E72
    .end array-data

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
    :array_3
    .array-data 8
        0x30b9f484785cc6e7L    # 5.73831727655131E-74
        -0x7fac69e0038a9edbL    # -4.358124351776216E-307
        0x3abd4650b1a4f303L    # 9.459155649720035E-26
        -0x55691eb99da99adaL
    .end array-data

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
    :array_4
    .array-data 8
        -0x4e9d147606041c00L    # -8.56670596181073E-71
        0x3f3d1374d96a4ad7L    # 4.436645771558728E-4
    .end array-data

    :array_5
    .array-data 8
        0x50526cde399778e4L    # 8.53400012580116E78
        -0x62476ba324c39dccL    # -1.667309318950491E-165
    .end array-data

    :array_6
    .array-data 8
        0x6b16ebbd8be4ca1L
        -0x2b73c92e2ba873f1L    # -1.9284811409198658E99
        0x744d5f7d310dbbd4L    # 1.6824212799923083E252
    .end array-data
.end method


# virtual methods
.method public decrypt([B[B[B)[B
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/tknetwork/tunnel/securepreferences/crypto/CipherServiceImpl;->mCipher:Ljavax/crypto/Cipher;

    .line 3
    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/tknetwork/tunnel/securepreferences/crypto/CipherServiceImpl;->mCipher:Ljavax/crypto/Cipher;

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/securepreferences/crypto/CipherServiceImpl;->generateSecretKeySpec([B)Ljavax/crypto/SecretKey;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p2}, Lcom/tknetwork/tunnel/securepreferences/crypto/CipherServiceImpl;->generateIvParameterSpec([B)Ljavax/crypto/spec/IvParameterSpec;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {v2, v0, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/tknetwork/tunnel/securepreferences/crypto/CipherServiceImpl;->mCipher:Ljavax/crypto/Cipher;

    .line 19
    .line 20
    invoke-virtual {p1, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 21
    .line 22
    .line 23
    move-result-object p1
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :try_start_1
    monitor-exit v1

    .line 25
    return-object p1

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_1

    .line 28
    :catch_0
    move-exception p1

    .line 29
    goto :goto_0

    .line 30
    :catch_1
    move-exception p1

    .line 31
    goto :goto_0

    .line 32
    :catch_2
    move-exception p1

    .line 33
    goto :goto_0

    .line 34
    :catch_3
    move-exception p1

    .line 35
    :goto_0
    iget-object p2, p0, Lcom/tknetwork/tunnel/securepreferences/crypto/CipherServiceImpl;->mLogger:Ljava/util/logging/Logger;

    .line 36
    .line 37
    sget-object p3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 38
    .line 39
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    const/4 v3, 0x4

    .line 42
    new-array v3, v3, [J

    .line 43
    .line 44
    fill-array-data v3, :array_0

    .line 45
    .line 46
    .line 47
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {p2, p3, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    new-array v2, v0, [J

    .line 62
    .line 63
    fill-array-data v2, :array_1

    .line 64
    .line 65
    .line 66
    invoke-direct {p3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    new-array v0, v0, [Ljava/lang/Object;

    .line 86
    .line 87
    const/4 v3, 0x0

    .line 88
    aput-object v2, v0, v3

    .line 89
    .line 90
    const/4 v2, 0x1

    .line 91
    aput-object p1, v0, v2

    .line 92
    .line 93
    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p2

    .line 101
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    throw p1

    .line 103
    :array_0
    .array-data 8
        -0x553589674ee6eb34L
        0xfdd8a70cf532e85L
        -0x1e8eadc6b58e2855L    # -2.435203929047476E161
        -0x1c1dcf26e6f97008L    # -1.4059815611147484E173
    .end array-data

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
    :array_1
    .array-data 8
        0x310d0385552b47b1L    # 2.0526502989278415E-72
        0x1f02ad1e0da164c4L    # 2.656817630781879E-159
    .end array-data
.end method

.method public encrypt([B[B[B)[B
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/tknetwork/tunnel/securepreferences/crypto/CipherServiceImpl;->mCipher:Ljavax/crypto/Cipher;

    .line 4
    .line 5
    monitor-enter v2

    .line 6
    :try_start_0
    iget-object v3, p0, Lcom/tknetwork/tunnel/securepreferences/crypto/CipherServiceImpl;->mCipher:Ljavax/crypto/Cipher;

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/securepreferences/crypto/CipherServiceImpl;->generateSecretKeySpec([B)Ljavax/crypto/SecretKey;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p0, p2}, Lcom/tknetwork/tunnel/securepreferences/crypto/CipherServiceImpl;->generateIvParameterSpec([B)Ljavax/crypto/spec/IvParameterSpec;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {v3, v1, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/tknetwork/tunnel/securepreferences/crypto/CipherServiceImpl;->mCipher:Ljavax/crypto/Cipher;

    .line 20
    .line 21
    invoke-virtual {p1, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 22
    .line 23
    .line 24
    move-result-object p1
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :try_start_1
    monitor-exit v2

    .line 26
    return-object p1

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :catch_0
    move-exception p1

    .line 30
    goto :goto_0

    .line 31
    :catch_1
    move-exception p1

    .line 32
    goto :goto_0

    .line 33
    :catch_2
    move-exception p1

    .line 34
    goto :goto_0

    .line 35
    :catch_3
    move-exception p1

    .line 36
    :goto_0
    iget-object p2, p0, Lcom/tknetwork/tunnel/securepreferences/crypto/CipherServiceImpl;->mLogger:Ljava/util/logging/Logger;

    .line 37
    .line 38
    sget-object p3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 39
    .line 40
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    const/4 v4, 0x4

    .line 43
    new-array v4, v4, [J

    .line 44
    .line 45
    fill-array-data v4, :array_0

    .line 46
    .line 47
    .line 48
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {p2, p3, v3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 61
    .line 62
    new-array v3, v0, [J

    .line 63
    .line 64
    fill-array-data v3, :array_1

    .line 65
    .line 66
    .line 67
    invoke-direct {p3, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    new-array v0, v0, [Ljava/lang/Object;

    .line 87
    .line 88
    const/4 v4, 0x0

    .line 89
    aput-object v3, v0, v4

    .line 90
    .line 91
    aput-object p1, v0, v1

    .line 92
    .line 93
    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p2

    .line 101
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    throw p1

    .line 103
    :array_0
    .array-data 8
        -0x37df51b58796abe5L    # -2.8380951071016306E39
        -0x6813459a184164afL
        0xf5f46b80ecc842L
        -0x1513bcd982f32156L    # -1.1342130329034755E207
    .end array-data

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
    :array_1
    .array-data 8
        -0x6a025cbc8873294cL    # -9.452966859730447E-203
        -0x7b773339a0a13f31L    # -8.143368809493898E-287
    .end array-data
.end method

.method public getIVSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tknetwork/tunnel/securepreferences/crypto/CipherServiceImpl;->ivSize:I

    .line 2
    .line 3
    return v0
.end method
