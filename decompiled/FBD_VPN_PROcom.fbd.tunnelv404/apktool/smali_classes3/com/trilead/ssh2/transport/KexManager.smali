.class public Lcom/trilead/ssh2/transport/KexManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/trilead/ssh2/transport/MessageHandler;


# static fields
.field private static final DEFAULT_KEY_ALGORITHMS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lcom/trilead/ssh2/log/Logger;


# instance fields
.field final accessLock:Ljava/lang/Object;

.field connectionClosed:Z

.field csh:Lcom/trilead/ssh2/transport/ClientServerHello;

.field final hostname:Ljava/lang/String;

.field ignore_next_kex_packet:Z

.field kexCount:I

.field km:Lcom/trilead/ssh2/crypto/KeyMaterial;

.field kxs:Lcom/trilead/ssh2/transport/KexState;

.field lastConnInfo:Lcom/trilead/ssh2/ConnectionInfo;

.field nextKEXcryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

.field nextKEXdhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

.field final port:I

.field final rnd:Ljava/security/SecureRandom;

.field sessionId:[B

.field final tm:Lcom/trilead/ssh2/transport/TransportManager;

.field verifier:Lcom/trilead/ssh2/ServerHostKeyVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/trilead/ssh2/transport/KexManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/trilead/ssh2/transport/KexManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 8
    .line 9
    invoke-static {}, Lcom/trilead/ssh2/transport/KexManager;->buildDefaultKeyAlgorithms()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/trilead/ssh2/transport/KexManager;->DEFAULT_KEY_ALGORITHMS:Ljava/util/List;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/trilead/ssh2/transport/TransportManager;Lcom/trilead/ssh2/transport/ClientServerHello;Lcom/trilead/ssh2/crypto/CryptoWishList;Ljava/lang/String;ILcom/trilead/ssh2/ServerHostKeyVerifier;Ljava/security/SecureRandom;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kexCount:I

    .line 6
    .line 7
    new-instance v1, Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->accessLock:Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->lastConnInfo:Lcom/trilead/ssh2/ConnectionInfo;

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/trilead/ssh2/transport/KexManager;->connectionClosed:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/trilead/ssh2/transport/KexManager;->ignore_next_kex_packet:Z

    .line 20
    .line 21
    iput-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 22
    .line 23
    iput-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->csh:Lcom/trilead/ssh2/transport/ClientServerHello;

    .line 24
    .line 25
    iput-object p3, p0, Lcom/trilead/ssh2/transport/KexManager;->nextKEXcryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    .line 26
    .line 27
    new-instance p1, Lcom/trilead/ssh2/DHGexParameters;

    .line 28
    .line 29
    invoke-direct {p1}, Lcom/trilead/ssh2/DHGexParameters;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->nextKEXdhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    .line 33
    .line 34
    iput-object p4, p0, Lcom/trilead/ssh2/transport/KexManager;->hostname:Ljava/lang/String;

    .line 35
    .line 36
    iput p5, p0, Lcom/trilead/ssh2/transport/KexManager;->port:I

    .line 37
    .line 38
    iput-object p6, p0, Lcom/trilead/ssh2/transport/KexManager;->verifier:Lcom/trilead/ssh2/ServerHostKeyVerifier;

    .line 39
    .line 40
    iput-object p7, p0, Lcom/trilead/ssh2/transport/KexManager;->rnd:Ljava/security/SecureRandom;

    .line 41
    .line 42
    return-void
.end method

.method private static buildDefaultKeyAlgorithms()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/trilead/ssh2/signature/KeyAlgorithmManager;->getSupportedAlgorithms()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/trilead/ssh2/signature/KeyAlgorithm;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-virtual {v2}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->getKeyFormat()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-object v0
.end method

.method public static checkKexAlgorithmList([Ljava/lang/String;)V
    .locals 7

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x6

    .line 3
    array-length v2, p0

    .line 4
    const/4 v3, 0x0

    .line 5
    :goto_0
    if-ge v3, v2, :cond_4

    .line 6
    .line 7
    aget-object v4, p0, v3

    .line 8
    .line 9
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    new-array v6, v1, [J

    .line 12
    .line 13
    fill-array-data v6, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    new-array v6, v0, [J

    .line 33
    .line 34
    fill-array-data v6, :array_1

    .line 35
    .line 36
    .line 37
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    new-array v6, v0, [J

    .line 54
    .line 55
    fill-array-data v6, :array_2

    .line 56
    .line 57
    .line 58
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_2

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    new-array v6, v1, [J

    .line 75
    .line 76
    fill-array-data v6, :array_3

    .line 77
    .line 78
    .line 79
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-eqz v5, :cond_3

    .line 91
    .line 92
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 96
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 103
    .line 104
    const/4 v2, 0x4

    .line 105
    new-array v2, v2, [J

    .line 106
    .line 107
    fill-array-data v2, :array_4

    .line 108
    .line 109
    .line 110
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 124
    .line 125
    const/4 v2, 0x2

    .line 126
    new-array v2, v2, [J

    .line 127
    .line 128
    fill-array-data v2, :array_5

    .line 129
    .line 130
    .line 131
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 132
    .line 133
    .line 134
    invoke-static {v1, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw p0

    .line 142
    :cond_4
    return-void

    .line 143
    :array_0
    .array-data 8
        0x27fe89587e94938eL
        0x25ed71110b3d8235L
        0x60115bf846b2fbe2L    # 5.818739639725503E154
        -0x18b1df4714f9eebaL    # -4.194836337449104E189
        -0x977f7d7d97e52bfL    # -9.459183819049482E262
        -0x3933c302e97d7562L    # -1.1454789711468403E33
    .end array-data

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
        -0x33e7ae47039a6853L    # -3.8163568500458424E58
        -0x6d7a1720602b5265L
        0x67014270e434e17eL    # 1.5019531997706258E188
        0x67dab24ad2b40d7eL    # 1.9031404223585274E192
        0xb03faf79823a7d0L
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
    .line 184
    .line 185
    .line 186
    .line 187
    :array_2
    .array-data 8
        -0x6390aa9e6e15c8abL
        0x3ca8501608437e41L    # 1.68704190797113E-16
        -0x77dd61e04399abe7L    # -1.762054181399275E-269
        -0x29bf160ece6e2f1L
        -0x4381e1241c947b1cL    # -2.612540629152726E-17
    .end array-data

    :array_3
    .array-data 8
        0x51991ce80eaedbf1L    # 1.2196520134918672E85
        -0xb35d9c8e20ff6dbL
        0x7dcb00798e99bb2L
        0x83e3848b5c522f0L
        -0x3df2ab9d51e39264L    # -1.574622560355352E10
        0x1244dcbf4aa73b01L
    .end array-data

    :array_4
    .array-data 8
        -0x48e5ae5be21b23e4L    # -2.9504519063067738E-43
        0x9fc3a42fcee2d63L
        -0x371a8d96f219df9L    # -9.461665254851314E291
        0x7d976b3287b41ab3L    # 9.57236528076072E296
    .end array-data

    :array_5
    .array-data 8
        -0x765bbc5f12d1fe0fL    # -3.217678862289904E-262
        0x7c6af1e18e78f68dL    # 2.1006880356225647E291
    .end array-data
.end method

.method public static checkServerHostkeyAlgorithmsList([Ljava/lang/String;)V
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_2

    .line 4
    .line 5
    aget-object v2, p0, v1

    .line 6
    .line 7
    invoke-static {}, Lcom/trilead/ssh2/signature/KeyAlgorithmManager;->getSupportedAlgorithms()Ljava/util/Collection;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_1

    .line 20
    .line 21
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Lcom/trilead/ssh2/signature/KeyAlgorithm;

    .line 26
    .line 27
    invoke-virtual {v4}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->getKeyFormat()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    const/4 v3, 0x6

    .line 50
    new-array v3, v3, [J

    .line 51
    .line 52
    fill-array-data v3, :array_0

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    const/4 v2, 0x2

    .line 71
    new-array v2, v2, [J

    .line 72
    .line 73
    fill-array-data v2, :array_1

    .line 74
    .line 75
    .line 76
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-static {v1, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

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
    :cond_2
    return-void

    .line 88
    nop

    .line 89
    :array_0
    .array-data 8
        0x50922b48e331d1aaL    # 1.3464549374649436E80
        -0x15389c504af2ff1eL    # -2.346638140852121E206
        0x1abcfb54499cdb2fL    # 6.984370680107318E-180
        0x2e4e3bac1f7be6daL    # 1.2158327994712583E-85
        0x7d00dc8f6bd620e7L    # 1.346119519365179E294
        0x12a509bcd32b1f86L    # 7.449693166030797E-219
    .end array-data

    .line 90
    .line 91
    .line 92
    .line 93
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
    :array_1
    .array-data 8
        -0x78bf766b54dceaf6L    # -9.55304516877232E-274
        -0xb6d4cd2d57c4743L    # -3.427487145467729E253
    .end array-data
.end method

.method private compareFirstOfNameList([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    if-eqz p2, :cond_3

    .line 4
    .line 5
    array-length v0, p1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    array-length v0, p2

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_0
    array-length v0, p1

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    array-length v0, p2

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    aget-object p1, p1, v1

    .line 22
    .line 23
    aget-object p2, p2, v1

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :cond_2
    :goto_0
    return v1

    .line 31
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 34
    .line 35
    .line 36
    throw p1
.end method

.method private establishKeyMaterial()Z
    .locals 11

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_client_to_server:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/trilead/ssh2/crypto/digest/MessageMac;->getKeyLength(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v7

    .line 11
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_client_to_server:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->getKeySize(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_client_to_server:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->getBlockSize(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_server_to_client:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/trilead/ssh2/crypto/digest/MessageMac;->getKeyLength(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v10

    .line 41
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_server_to_client:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->getKeySize(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_server_to_client:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->getBlockSize(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/trilead/ssh2/transport/KexState;->getHashAlgorithm()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    .line 68
    .line 69
    iget-object v2, v0, Lcom/trilead/ssh2/transport/KexState;->H:[B

    .line 70
    .line 71
    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexState;->K:Ljava/math/BigInteger;

    .line 72
    .line 73
    iget-object v4, p0, Lcom/trilead/ssh2/transport/KexManager;->sessionId:[B

    .line 74
    .line 75
    invoke-static/range {v1 .. v10}, Lcom/trilead/ssh2/crypto/KeyMaterial;->create(Ljava/lang/String;[BLjava/math/BigInteger;[BIIIIII)Lcom/trilead/ssh2/crypto/KeyMaterial;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->km:Lcom/trilead/ssh2/crypto/KeyMaterial;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    const/4 v0, 0x1

    .line 82
    return v0

    .line 83
    :catch_0
    const/4 v0, 0x0

    .line 84
    return v0
.end method

.method private finishKex()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->sessionId:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->H:[B

    .line 8
    .line 9
    iput-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->sessionId:[B

    .line 10
    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/trilead/ssh2/transport/KexManager;->establishKeyMaterial()Z

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/trilead/ssh2/packets/PacketNewKeys;

    .line 15
    .line 16
    invoke-direct {v0}, Lcom/trilead/ssh2/packets/PacketNewKeys;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketNewKeys;->getPayload()[B

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v1, v0}, Lcom/trilead/ssh2/transport/TransportManager;->sendKexMessage([B)V

    .line 26
    .line 27
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_client_to_server:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->km:Lcom/trilead/ssh2/crypto/KeyMaterial;

    .line 35
    .line 36
    iget-object v2, v1, Lcom/trilead/ssh2/crypto/KeyMaterial;->enc_key_client_to_server:[B

    .line 37
    .line 38
    iget-object v1, v1, Lcom/trilead/ssh2/crypto/KeyMaterial;->initial_iv_client_to_server:[B

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    invoke-static {v0, v3, v2, v1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->createCipher(Ljava/lang/String;Z[B[B)Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v1, Lcom/trilead/ssh2/crypto/digest/MessageMac;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    .line 48
    .line 49
    iget-object v2, v2, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    .line 50
    .line 51
    iget-object v2, v2, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_client_to_server:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v3, p0, Lcom/trilead/ssh2/transport/KexManager;->km:Lcom/trilead/ssh2/crypto/KeyMaterial;

    .line 54
    .line 55
    iget-object v3, v3, Lcom/trilead/ssh2/crypto/KeyMaterial;->integrity_key_client_to_server:[B

    .line 56
    .line 57
    invoke-direct {v1, v2, v3}, Lcom/trilead/ssh2/crypto/digest/MessageMac;-><init>(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 61
    .line 62
    invoke-virtual {v2, v0, v1}, Lcom/trilead/ssh2/transport/TransportManager;->changeSendCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Lcom/trilead/ssh2/crypto/digest/MAC;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/trilead/ssh2/transport/TransportManager;->kexFinished()V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :catch_0
    new-instance v0, Ljava/io/IOException;

    .line 72
    .line 73
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    const/4 v2, 0x5

    .line 76
    new-array v2, v2, [J

    .line 77
    .line 78
    fill-array-data v2, :array_0

    .line 79
    .line 80
    .line 81
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v0

    .line 92
    nop

    .line 93
    :array_0
    .array-data 8
        0x43a657b74f5dbfcbL    # 8.0497847165569574E17
        -0x2cfd278620f20716L    # -7.677836953720572E91
        0x7f5058b556dcec2aL
        -0x41385b1e3d848a29L    # -2.818592765281855E-6
        0x4315b7a8894e2357L    # 1.5282272492279898E15
    .end array-data
.end method

.method public static getDefaultKexAlgorithmList()[Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    new-array v1, v1, [J

    .line 19
    .line 20
    fill-array-data v1, :array_1

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    const/4 v3, 0x5

    .line 33
    new-array v4, v3, [J

    .line 34
    .line 35
    fill-array-data v4, :array_2

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array v3, v3, [J

    .line 48
    .line 49
    fill-array-data v3, :array_3

    .line 50
    .line 51
    .line 52
    invoke-direct {v4, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    return-object v0

    .line 64
    nop

    .line 65
    :array_0
    .array-data 8
        0x55a35caaa24fc99dL    # 3.4692711937050065E104
        0x12499aa5c199a59fL
        0x1a411da0f1a97ac0L    # 3.222465214672381E-182
        0x6df3ecde34b034a5L    # 4.5015382529406745E221
        -0x3bf19d376f0f308eL    # -7.0065052598286565E19
        -0x206a6eb514ad3acfL    # -2.8239605491548427E152
    .end array-data

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
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    :array_1
    .array-data 8
        0x24c248aa1e97534aL
        0x74848e099f18dffaL
        -0x2bd791622a04f474L    # -2.609332003443183E97
        0x2341abdffea20974L
        0x5ec0cfdf162530dbL    # 2.68712088050627E148
        0x3baa5f3b1ccf1246L    # 2.792243659123191E-21
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
    :array_2
    .array-data 8
        -0x3838181b70ae33fL
        -0x27f8e440a5d48fbcL    # -1.1381460862044546E116
        0xf077131696e7571L    # 2.8799904141370474E-236
        -0x27b03fe48eb242b3L    # -2.5020603919207E117
        0xa305f17d85aee9L
    .end array-data

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
    :array_3
    .array-data 8
        -0x5289cf1aaff86ef2L    # -1.0893768834048722E-89
        -0x405fca5eae175011L    # -0.03165916561951564
        -0x492af89026904f24L    # -1.4733988040947067E-44
        -0x53191f53e672cf07L    # -2.1935235247756404E-92
        -0x1f6d761b038860f5L    # -1.5908010402003686E157
    .end array-data
.end method

.method public static getDefaultServerHostkeyAlgorithmList()[Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/trilead/ssh2/transport/KexManager;->DEFAULT_KEY_ALGORITHMS:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/String;

    .line 5
    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, [Ljava/lang/String;

    .line 11
    .line 12
    return-object v0
.end method

.method private getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    if-eqz p2, :cond_4

    .line 4
    .line 5
    array-length v0, p1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    return-object p1

    .line 10
    :cond_0
    array-length v0, p1

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v0, :cond_3

    .line 14
    .line 15
    aget-object v3, p1, v2

    .line 16
    .line 17
    array-length v4, p2

    .line 18
    const/4 v5, 0x0

    .line 19
    :goto_1
    if-ge v5, v4, :cond_2

    .line 20
    .line 21
    aget-object v6, p2, v5

    .line 22
    .line 23
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-eqz v6, :cond_1

    .line 28
    .line 29
    return-object v3

    .line 30
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    new-instance p1, Lcom/trilead/ssh2/transport/NegotiateException;

    .line 37
    .line 38
    invoke-direct {p1}, Lcom/trilead/ssh2/transport/NegotiateException;-><init>()V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 45
    .line 46
    .line 47
    throw p1
.end method

.method private isGuessOK(Lcom/trilead/ssh2/transport/KexParameters;Lcom/trilead/ssh2/transport/KexParameters;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    iget-object v0, p1, Lcom/trilead/ssh2/transport/KexParameters;->kex_algorithms:[Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p2, Lcom/trilead/ssh2/transport/KexParameters;->kex_algorithms:[Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0, v0, v1}, Lcom/trilead/ssh2/transport/KexManager;->compareFirstOfNameList([Ljava/lang/String;[Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_0
    iget-object p1, p1, Lcom/trilead/ssh2/transport/KexParameters;->server_host_key_algorithms:[Ljava/lang/String;

    .line 18
    .line 19
    iget-object p2, p2, Lcom/trilead/ssh2/transport/KexParameters;->server_host_key_algorithms:[Ljava/lang/String;

    .line 20
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/trilead/ssh2/transport/KexManager;->compareFirstOfNameList([Ljava/lang/String;[Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method private mergeKexParameters(Lcom/trilead/ssh2/transport/KexParameters;Lcom/trilead/ssh2/transport/KexParameters;)Lcom/trilead/ssh2/transport/NegotiatedParameters;
    .locals 8

    .line 1
    const/4 v0, 0x5

    .line 2
    new-instance v1, Lcom/trilead/ssh2/transport/NegotiatedParameters;

    .line 3
    .line 4
    invoke-direct {v1}, Lcom/trilead/ssh2/transport/NegotiatedParameters;-><init>()V

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    iget-object v3, p1, Lcom/trilead/ssh2/transport/KexParameters;->kex_algorithms:[Ljava/lang/String;

    .line 9
    .line 10
    iget-object v4, p2, Lcom/trilead/ssh2/transport/KexParameters;->kex_algorithms:[Ljava/lang/String;

    .line 11
    .line 12
    invoke-direct {p0, v3, v4}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    iput-object v3, v1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    .line 17
    .line 18
    sget-object v3, Lcom/trilead/ssh2/transport/KexManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 19
    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    const/4 v6, 0x3

    .line 28
    new-array v6, v6, [J

    .line 29
    .line 30
    fill-array-data v6, :array_0

    .line 31
    .line 32
    .line 33
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object v5, v1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    const/16 v5, 0x1e

    .line 53
    .line 54
    invoke-virtual {v3, v5, v4}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v4, p1, Lcom/trilead/ssh2/transport/KexParameters;->server_host_key_algorithms:[Ljava/lang/String;

    .line 58
    .line 59
    iget-object v6, p2, Lcom/trilead/ssh2/transport/KexParameters;->server_host_key_algorithms:[Ljava/lang/String;

    .line 60
    .line 61
    invoke-direct {p0, v4, v6}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    iput-object v4, v1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    .line 66
    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    const/4 v7, 0x4

    .line 75
    new-array v7, v7, [J

    .line 76
    .line 77
    fill-array-data v7, :array_1

    .line 78
    .line 79
    .line 80
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object v6, v1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v3, v5, v4}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v4, p1, Lcom/trilead/ssh2/transport/KexParameters;->encryption_algorithms_client_to_server:[Ljava/lang/String;

    .line 103
    .line 104
    iget-object v6, p2, Lcom/trilead/ssh2/transport/KexParameters;->encryption_algorithms_client_to_server:[Ljava/lang/String;

    .line 105
    .line 106
    invoke-direct {p0, v4, v6}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    iput-object v4, v1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_client_to_server:Ljava/lang/String;

    .line 111
    .line 112
    iget-object v4, p1, Lcom/trilead/ssh2/transport/KexParameters;->encryption_algorithms_server_to_client:[Ljava/lang/String;

    .line 113
    .line 114
    iget-object v6, p2, Lcom/trilead/ssh2/transport/KexParameters;->encryption_algorithms_server_to_client:[Ljava/lang/String;

    .line 115
    .line 116
    invoke-direct {p0, v4, v6}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    iput-object v4, v1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_server_to_client:Ljava/lang/String;

    .line 121
    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 128
    .line 129
    new-array v7, v0, [J

    .line 130
    .line 131
    fill-array-data v7, :array_2

    .line 132
    .line 133
    .line 134
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iget-object v6, v1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_client_to_server:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-virtual {v3, v5, v4}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 154
    .line 155
    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 162
    .line 163
    new-array v7, v0, [J

    .line 164
    .line 165
    fill-array-data v7, :array_3

    .line 166
    .line 167
    .line 168
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    iget-object v6, v1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_server_to_client:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    invoke-virtual {v3, v5, v4}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget-object v4, p1, Lcom/trilead/ssh2/transport/KexParameters;->mac_algorithms_client_to_server:[Ljava/lang/String;

    .line 191
    .line 192
    iget-object v6, p2, Lcom/trilead/ssh2/transport/KexParameters;->mac_algorithms_client_to_server:[Ljava/lang/String;

    .line 193
    .line 194
    invoke-direct {p0, v4, v6}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    iput-object v4, v1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_client_to_server:Ljava/lang/String;

    .line 199
    .line 200
    iget-object v4, p1, Lcom/trilead/ssh2/transport/KexParameters;->mac_algorithms_server_to_client:[Ljava/lang/String;

    .line 201
    .line 202
    iget-object v6, p2, Lcom/trilead/ssh2/transport/KexParameters;->mac_algorithms_server_to_client:[Ljava/lang/String;

    .line 203
    .line 204
    invoke-direct {p0, v4, v6}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    iput-object v4, v1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_server_to_client:Ljava/lang/String;

    .line 209
    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .line 214
    .line 215
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 216
    .line 217
    new-array v7, v0, [J

    .line 218
    .line 219
    fill-array-data v7, :array_4

    .line 220
    .line 221
    .line 222
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    iget-object v6, v1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_client_to_server:Ljava/lang/String;

    .line 233
    .line 234
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    invoke-virtual {v3, v5, v4}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 242
    .line 243
    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 250
    .line 251
    new-array v7, v0, [J

    .line 252
    .line 253
    fill-array-data v7, :array_5

    .line 254
    .line 255
    .line 256
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v6

    .line 263
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    iget-object v6, v1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_server_to_client:Ljava/lang/String;

    .line 267
    .line 268
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    invoke-virtual {v3, v5, v4}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 276
    .line 277
    .line 278
    iget-object v4, p1, Lcom/trilead/ssh2/transport/KexParameters;->compression_algorithms_client_to_server:[Ljava/lang/String;

    .line 279
    .line 280
    iget-object v6, p2, Lcom/trilead/ssh2/transport/KexParameters;->compression_algorithms_client_to_server:[Ljava/lang/String;

    .line 281
    .line 282
    invoke-direct {p0, v4, v6}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v4

    .line 286
    iput-object v4, v1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->comp_algo_client_to_server:Ljava/lang/String;

    .line 287
    .line 288
    iget-object v4, p1, Lcom/trilead/ssh2/transport/KexParameters;->compression_algorithms_server_to_client:[Ljava/lang/String;

    .line 289
    .line 290
    iget-object v6, p2, Lcom/trilead/ssh2/transport/KexParameters;->compression_algorithms_server_to_client:[Ljava/lang/String;

    .line 291
    .line 292
    invoke-direct {p0, v4, v6}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    iput-object v4, v1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->comp_algo_server_to_client:Ljava/lang/String;

    .line 297
    .line 298
    new-instance v4, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .line 302
    .line 303
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 304
    .line 305
    new-array v7, v0, [J

    .line 306
    .line 307
    fill-array-data v7, :array_6

    .line 308
    .line 309
    .line 310
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v6

    .line 317
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    iget-object v6, v1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->comp_algo_client_to_server:Ljava/lang/String;

    .line 321
    .line 322
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    invoke-virtual {v3, v5, v4}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 330
    .line 331
    .line 332
    new-instance v4, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .line 336
    .line 337
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 338
    .line 339
    new-array v0, v0, [J

    .line 340
    .line 341
    fill-array-data v0, :array_7

    .line 342
    .line 343
    .line 344
    invoke-direct {v6, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    iget-object v0, v1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->comp_algo_server_to_client:Ljava/lang/String;

    .line 355
    .line 356
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    invoke-virtual {v3, v5, v0}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/trilead/ssh2/transport/NegotiateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 364
    .line 365
    .line 366
    :try_start_1
    iget-object v0, p1, Lcom/trilead/ssh2/transport/KexParameters;->languages_client_to_server:[Ljava/lang/String;

    .line 367
    .line 368
    iget-object v3, p2, Lcom/trilead/ssh2/transport/KexParameters;->languages_client_to_server:[Ljava/lang/String;

    .line 369
    .line 370
    invoke-direct {p0, v0, v3}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    iput-object v0, v1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->lang_client_to_server:Ljava/lang/String;
    :try_end_1
    .catch Lcom/trilead/ssh2/transport/NegotiateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 375
    .line 376
    goto :goto_0

    .line 377
    :catch_0
    iput-object v2, v1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->lang_client_to_server:Ljava/lang/String;

    .line 378
    .line 379
    :goto_0
    :try_start_2
    iget-object v0, p1, Lcom/trilead/ssh2/transport/KexParameters;->languages_server_to_client:[Ljava/lang/String;

    .line 380
    .line 381
    iget-object v3, p2, Lcom/trilead/ssh2/transport/KexParameters;->languages_server_to_client:[Ljava/lang/String;

    .line 382
    .line 383
    invoke-direct {p0, v0, v3}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    iput-object v0, v1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->lang_server_to_client:Ljava/lang/String;
    :try_end_2
    .catch Lcom/trilead/ssh2/transport/NegotiateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 388
    .line 389
    goto :goto_1

    .line 390
    :catch_1
    iput-object v2, v1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->lang_server_to_client:Ljava/lang/String;

    .line 391
    .line 392
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/trilead/ssh2/transport/KexManager;->isGuessOK(Lcom/trilead/ssh2/transport/KexParameters;Lcom/trilead/ssh2/transport/KexParameters;)Z

    .line 393
    .line 394
    .line 395
    move-result p1

    .line 396
    if-eqz p1, :cond_0

    .line 397
    .line 398
    const/4 p1, 0x1

    .line 399
    iput-boolean p1, v1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->guessOK:Z

    .line 400
    .line 401
    :cond_0
    return-object v1

    .line 402
    :catch_2
    return-object v2

    .line 403
    :array_0
    .array-data 8
        -0x459cae1345e29a43L    # -1.950823323870362E-27
        -0x338c489e6cab82f8L    # -1.980182812686853E60
        0x6935521b77e61f45L    # 6.374986350830546E198
    .end array-data

    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    :array_1
    .array-data 8
        -0x11e93161517c039dL    # -2.0610429946387434E222
        0x4823abf8e253c377L    # 3.346977619429485E39
        -0x3b01a7ce93d8aea9L    # -2.292765907667383E24
        -0x15962f8c986b24ecL    # -4.0467536662352547E204
    .end array-data

    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    :array_2
    .array-data 8
        0x9f29d7707245844L
        -0x5acc6282396573ccL    # -1.768620373166708E-129
        -0x7ea622f707a0ba17L    # -3.771466747762976E-302
        0x770a2a6457ee2d12L    # 2.6365547205630835E265
        -0x738f7e0c818d3a0fL    # -9.222487966518065E-249
    .end array-data

    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    :array_3
    .array-data 8
        0xb5ecb24e71f2297L
        0x6ec47e5ba32deafeL    # 3.792841755561659E225
        0xe95514d9887a75aL
        0x1dd8dc46e14d93fL
        -0x65db3d32411c200cL    # -9.77192001441832E-183
    .end array-data

    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    :array_4
    .array-data 8
        0x2b6646b0f568cec1L    # 1.273067224416243E-99
        0xbd5863e5489a614L
        -0x39ea4b03677ac894L    # -4.29951021032763E29
        0xfcf9c922d83e7f3L
        -0x350fda6274276850L    # -9.66605711569775E52
    .end array-data

    :array_5
    .array-data 8
        0x3335c14b84a1f577L    # 5.288361789800901E-62
        0x47fab59097e37324L    # 5.68042661162086E38
        0x5ecc45067e88182eL
        0x7ee478caf635f94bL    # 1.7548608170139988E303
        -0x734f3031c0c572a3L
    .end array-data

    :array_6
    .array-data 8
        -0x45aa6f9609526ff6L    # -1.0887096805822021E-27
        -0x43d2f392104ee8dcL    # -7.873625930591788E-19
        0x27df12a634dfaaeL
        -0x360b4bcd7de3ba11L    # -1.8911735910527694E48
        0x29a283a12199411dL    # 3.941631195762223E-108
    .end array-data

    :array_7
    .array-data 8
        0x2200b2271322f92bL    # 6.685319326773828E-145
        0x5456383ce2f49252L    # 1.8984378561467716E98
        0x11ecfbca1853d978L
        0x7728eb3776a97e1eL    # 1.0043696378003393E266
        -0x20608cc661325b27L    # -4.117938212023868E152
    .end array-data
.end method

.method private verifySignature([B[B)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/trilead/ssh2/signature/KeyAlgorithmManager;->getSupportedAlgorithms()Ljava/util/Collection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/trilead/ssh2/signature/KeyAlgorithm;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->getKeyFormat()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v3, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    .line 26
    .line 27
    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    .line 28
    .line 29
    iget-object v3, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1, p2}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->decodePublicKey([B)Ljava/security/PublicKey;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {v1, p1}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->decodeSignature([B)[B

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->H:[B

    .line 48
    .line 49
    invoke-virtual {v1, v0, p1, p2}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->verifySignature([B[BLjava/security/PublicKey;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    return p1

    .line 54
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 55
    .line 56
    new-instance p2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    const/4 v1, 0x6

    .line 64
    new-array v1, v1, [J

    .line 65
    .line 66
    fill-array-data v1, :array_0

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    .line 80
    .line 81
    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    .line 82
    .line 83
    iget-object v0, v0, Lcom/trilead/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 89
    .line 90
    const/4 v1, 0x2

    .line 91
    new-array v1, v1, [J

    .line 92
    .line 93
    fill-array-data v1, :array_1

    .line 94
    .line 95
    .line 96
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 97
    .line 98
    .line 99
    invoke-static {v0, p2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p1

    .line 107
    :array_0
    .array-data 8
        0x199c08da80d7ca4cL
        -0x5eab1dd27c70db27L    # -4.083058233095714E-148
        0x52172a52398df2cdL    # 2.8801626245256968E87
        0x3643aa9cd95a2c47L    # 2.691267026181778E-47
        -0x3db82a7aaad299f8L
        0x7c1a80635b947b12L    # 6.456639899130051E289
    .end array-data

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
        0x3b4fa5b89f941070L    # 5.2356146035309544E-23
        -0x561769a6138828a0L
    .end array-data
.end method


# virtual methods
.method public getOrWaitForConnectionInfo(I)Lcom/trilead/ssh2/ConnectionInfo;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->accessLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->lastConnInfo:Lcom/trilead/ssh2/ConnectionInfo;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget v2, v1, Lcom/trilead/ssh2/ConnectionInfo;->keyExchangeCounter:I

    .line 9
    .line 10
    if-lt v2, p1, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-object v1

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-boolean v1, p0, Lcom/trilead/ssh2/transport/KexManager;->connectionClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    :try_start_1
    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->accessLock:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    :try_start_2
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 33
    .line 34
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/16 v2, 0x8

    .line 37
    .line 38
    new-array v2, v2, [J

    .line 39
    .line 40
    fill-array-data v2, :array_0

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-object v2, p0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/trilead/ssh2/transport/TransportManager;->getReasonClosedCause()Ljava/lang/Throwable;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-direct {p1, v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    throw p1

    .line 62
    nop

    .line 63
    :array_0
    .array-data 8
        0x460e5a614e45e64eL    # 3.00602020218795E29
        -0x56fe6fcd7679b615L    # -3.651548005792467E-111
        0x1d9eaf6384b57f6fL    # 5.203674453714072E-166
        0x260736cd429dfbL
        -0x1c8a3d071b732f1fL    # -1.3140399933538117E171
        0x2cd35571846acb87L    # 9.268676904008889E-93
        -0x62d79d8e787ae592L
        -0x6570ef77e46f8628L    # -9.357892602947136E-181
    .end array-data
.end method

.method public handleEndMessage(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->accessLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    const/4 v0, 0x1

    .line 5
    :try_start_0
    iput-boolean v0, p0, Lcom/trilead/ssh2/transport/KexManager;->connectionClosed:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->accessLock:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 10
    .line 11
    .line 12
    monitor-exit p1

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw v0
.end method

.method public declared-synchronized handleMessage([BI)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/16 v8, 0x9

    const/4 v9, 0x2

    const/4 v10, 0x5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v11, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    const/16 v12, 0x14

    const/4 v13, 0x0

    if-nez v11, :cond_1

    aget-byte v14, v2, v13

    if-ne v14, v12, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v10, [J

    fill-array-data v6, :array_0

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, v2, v13

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v9, [J

    fill-array-data v5, :array_1

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_a

    .line 3
    :cond_1
    :goto_0
    iget-boolean v14, v1, Lcom/trilead/ssh2/transport/KexManager;->ignore_next_kex_packet:Z

    if-eqz v14, :cond_2

    .line 4
    iput-boolean v13, v1, Lcom/trilead/ssh2/transport/KexManager;->ignore_next_kex_packet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_2
    :try_start_1
    aget-byte v14, v2, v13

    const/4 v15, 0x1

    if-ne v14, v12, :cond_f

    if-eqz v11, :cond_4

    .line 7
    iget v4, v11, Lcom/trilead/ssh2/transport/KexState;->state:I

    if-nez v4, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v8, [J

    fill-array-data v4, :array_2

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    :goto_1
    if-nez v11, :cond_5

    .line 9
    new-instance v4, Lcom/trilead/ssh2/transport/KexState;

    invoke-direct {v4}, Lcom/trilead/ssh2/transport/KexState;-><init>()V

    iput-object v4, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    .line 10
    iget-object v8, v1, Lcom/trilead/ssh2/transport/KexManager;->nextKEXdhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    iput-object v8, v4, Lcom/trilead/ssh2/transport/KexState;->dhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    .line 11
    new-instance v4, Lcom/trilead/ssh2/packets/PacketKexInit;

    iget-object v8, v1, Lcom/trilead/ssh2/transport/KexManager;->nextKEXcryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    iget-object v11, v1, Lcom/trilead/ssh2/transport/KexManager;->rnd:Ljava/security/SecureRandom;

    invoke-direct {v4, v8, v11}, Lcom/trilead/ssh2/packets/PacketKexInit;-><init>(Lcom/trilead/ssh2/crypto/CryptoWishList;Ljava/security/SecureRandom;)V

    .line 12
    iget-object v8, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iput-object v4, v8, Lcom/trilead/ssh2/transport/KexState;->localKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    .line 13
    iget-object v8, v1, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v4}, Lcom/trilead/ssh2/packets/PacketKexInit;->getPayload()[B

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/trilead/ssh2/transport/TransportManager;->sendKexMessage([B)V

    .line 14
    :cond_5
    new-instance v4, Lcom/trilead/ssh2/packets/PacketKexInit;

    invoke-direct {v4, v2, v13, v3}, Lcom/trilead/ssh2/packets/PacketKexInit;-><init>([BII)V

    .line 15
    iget-object v2, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iput-object v4, v2, Lcom/trilead/ssh2/transport/KexState;->remoteKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    .line 16
    iget-object v3, v2, Lcom/trilead/ssh2/transport/KexState;->localKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/PacketKexInit;->getKexParameters()Lcom/trilead/ssh2/transport/KexParameters;

    move-result-object v3

    iget-object v4, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->remoteKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    invoke-virtual {v4}, Lcom/trilead/ssh2/packets/PacketKexInit;->getKexParameters()Lcom/trilead/ssh2/transport/KexParameters;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/trilead/ssh2/transport/KexManager;->mergeKexParameters(Lcom/trilead/ssh2/transport/KexParameters;Lcom/trilead/ssh2/transport/KexParameters;)Lcom/trilead/ssh2/transport/NegotiatedParameters;

    move-result-object v3

    iput-object v3, v2, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    .line 17
    iget-object v2, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v2, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    if-eqz v3, :cond_e

    .line 18
    iget-object v2, v2, Lcom/trilead/ssh2/transport/KexState;->remoteKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/PacketKexInit;->isFirst_kex_packet_follows()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v2, v2, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-boolean v2, v2, Lcom/trilead/ssh2/transport/NegotiatedParameters;->guessOK:Z

    if-nez v2, :cond_6

    .line 19
    iput-boolean v15, v1, Lcom/trilead/ssh2/transport/KexManager;->ignore_next_kex_packet:Z

    .line 20
    :cond_6
    iget-object v2, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v2, v2, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v2, v2, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v7, [J

    fill-array-data v4, :array_3

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v2, v2, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v2, v2, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v7, [J

    fill-array-data v4, :array_4

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto/16 :goto_4

    .line 22
    :cond_7
    iget-object v2, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v2, v2, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v2, v2, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v10, [J

    fill-array-data v4, :array_5

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v2, v2, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v2, v2, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v10, [J

    fill-array-data v4, :array_6

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_2

    .line 24
    :cond_8
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v5, [J

    fill-array-data v4, :array_7

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 25
    :cond_9
    :goto_2
    iget-object v2, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    new-instance v3, Lcom/trilead/ssh2/crypto/dh/DhExchange;

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v9, [J

    fill-array-data v5, :array_8

    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/trilead/ssh2/crypto/dh/DhExchange;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/trilead/ssh2/transport/KexState;->dhx:Lcom/trilead/ssh2/crypto/dh/DhExchange;

    .line 26
    iget-object v2, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v2, v2, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v2, v2, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v10, [J

    fill-array-data v4, :array_9

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 27
    iget-object v2, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v2, v2, Lcom/trilead/ssh2/transport/KexState;->dhx:Lcom/trilead/ssh2/crypto/dh/DhExchange;

    iget-object v3, v1, Lcom/trilead/ssh2/transport/KexManager;->rnd:Ljava/security/SecureRandom;

    invoke-virtual {v2, v15, v3}, Lcom/trilead/ssh2/crypto/dh/DhExchange;->init(ILjava/security/SecureRandom;)V

    goto :goto_3

    .line 28
    :cond_a
    iget-object v2, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v2, v2, Lcom/trilead/ssh2/transport/KexState;->dhx:Lcom/trilead/ssh2/crypto/dh/DhExchange;

    iget-object v3, v1, Lcom/trilead/ssh2/transport/KexManager;->rnd:Ljava/security/SecureRandom;

    const/16 v4, 0xe

    invoke-virtual {v2, v4, v3}, Lcom/trilead/ssh2/crypto/dh/DhExchange;->init(ILjava/security/SecureRandom;)V

    .line 29
    :goto_3
    new-instance v2, Lcom/trilead/ssh2/packets/PacketKexDHInit;

    iget-object v3, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->dhx:Lcom/trilead/ssh2/crypto/dh/DhExchange;

    invoke-virtual {v3}, Lcom/trilead/ssh2/crypto/dh/DhExchange;->getE()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/trilead/ssh2/packets/PacketKexDHInit;-><init>(Ljava/math/BigInteger;)V

    .line 30
    iget-object v3, v1, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/PacketKexDHInit;->getPayload()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/trilead/ssh2/transport/TransportManager;->sendKexMessage([B)V

    .line 31
    iget-object v2, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iput v15, v2, Lcom/trilead/ssh2/transport/KexState;->state:I

    .line 32
    iget-object v3, v2, Lcom/trilead/ssh2/transport/KexState;->dhx:Lcom/trilead/ssh2/crypto/dh/DhExchange;

    invoke-virtual {v3}, Lcom/trilead/ssh2/crypto/dh/DhExchange;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/trilead/ssh2/transport/KexState;->setHashAlgorithm(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    monitor-exit p0

    return-void

    .line 34
    :cond_b
    :goto_4
    :try_start_2
    iget-object v2, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v2, v2, Lcom/trilead/ssh2/transport/KexState;->dhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    invoke-virtual {v2}, Lcom/trilead/ssh2/DHGexParameters;->getMin_group_len()I

    move-result v2

    if-nez v2, :cond_c

    .line 35
    new-instance v2, Lcom/trilead/ssh2/packets/PacketKexDhGexRequestOld;

    iget-object v3, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->dhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    invoke-direct {v2, v3}, Lcom/trilead/ssh2/packets/PacketKexDhGexRequestOld;-><init>(Lcom/trilead/ssh2/DHGexParameters;)V

    .line 36
    iget-object v3, v1, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/PacketKexDhGexRequestOld;->getPayload()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/trilead/ssh2/transport/TransportManager;->sendKexMessage([B)V

    goto :goto_5

    .line 37
    :cond_c
    new-instance v2, Lcom/trilead/ssh2/packets/PacketKexDhGexRequest;

    iget-object v3, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->dhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    invoke-direct {v2, v3}, Lcom/trilead/ssh2/packets/PacketKexDhGexRequest;-><init>(Lcom/trilead/ssh2/DHGexParameters;)V

    .line 38
    iget-object v3, v1, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/PacketKexDhGexRequest;->getPayload()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/trilead/ssh2/transport/TransportManager;->sendKexMessage([B)V

    .line 39
    :goto_5
    iget-object v2, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iput v15, v2, Lcom/trilead/ssh2/transport/KexState;->state:I

    .line 40
    iget-object v2, v2, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v2, v2, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v9, [J

    fill-array-data v4, :array_a

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 41
    iget-object v2, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v9, [J

    fill-array-data v4, :array_b

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/trilead/ssh2/transport/KexState;->setHashAlgorithm(Ljava/lang/String;)V

    goto :goto_6

    .line 42
    :cond_d
    iget-object v2, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v9, [J

    fill-array-data v4, :array_c

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/trilead/ssh2/transport/KexState;->setHashAlgorithm(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    :goto_6
    monitor-exit p0

    return-void

    .line 44
    :cond_e
    :try_start_3
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v6, [J

    fill-array-data v4, :array_d

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f
    const/16 v12, 0x15

    if-ne v14, v12, :cond_11

    .line 45
    iget-object v2, v1, Lcom/trilead/ssh2/transport/KexManager;->km:Lcom/trilead/ssh2/crypto/KeyMaterial;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_10

    .line 46
    :try_start_4
    iget-object v3, v11, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_server_to_client:Ljava/lang/String;

    iget-object v4, v2, Lcom/trilead/ssh2/crypto/KeyMaterial;->enc_key_server_to_client:[B

    iget-object v2, v2, Lcom/trilead/ssh2/crypto/KeyMaterial;->initial_iv_server_to_client:[B

    invoke-static {v3, v13, v4, v2}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->createCipher(Ljava/lang/String;Z[B[B)Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

    move-result-object v2

    .line 47
    new-instance v3, Lcom/trilead/ssh2/crypto/digest/MessageMac;

    iget-object v4, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_server_to_client:Ljava/lang/String;

    iget-object v5, v1, Lcom/trilead/ssh2/transport/KexManager;->km:Lcom/trilead/ssh2/crypto/KeyMaterial;

    iget-object v5, v5, Lcom/trilead/ssh2/crypto/KeyMaterial;->integrity_key_server_to_client:[B

    invoke-direct {v3, v4, v5}, Lcom/trilead/ssh2/crypto/digest/MessageMac;-><init>(Ljava/lang/String;[B)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 48
    :try_start_5
    iget-object v4, v1, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v4, v2, v3}, Lcom/trilead/ssh2/transport/TransportManager;->changeRecvCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Lcom/trilead/ssh2/crypto/digest/MAC;)V

    .line 49
    new-instance v2, Lcom/trilead/ssh2/ConnectionInfo;

    invoke-direct {v2}, Lcom/trilead/ssh2/ConnectionInfo;-><init>()V

    .line 50
    iget v3, v1, Lcom/trilead/ssh2/transport/KexManager;->kexCount:I

    add-int/2addr v3, v15

    iput v3, v1, Lcom/trilead/ssh2/transport/KexManager;->kexCount:I

    .line 51
    iget-object v4, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v5, v4, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v6, v5, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    iput-object v6, v2, Lcom/trilead/ssh2/ConnectionInfo;->keyExchangeAlgorithm:Ljava/lang/String;

    .line 52
    iput v3, v2, Lcom/trilead/ssh2/ConnectionInfo;->keyExchangeCounter:I

    .line 53
    iget-object v3, v5, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_client_to_server:Ljava/lang/String;

    iput-object v3, v2, Lcom/trilead/ssh2/ConnectionInfo;->clientToServerCryptoAlgorithm:Ljava/lang/String;

    .line 54
    iget-object v3, v5, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_server_to_client:Ljava/lang/String;

    iput-object v3, v2, Lcom/trilead/ssh2/ConnectionInfo;->serverToClientCryptoAlgorithm:Ljava/lang/String;

    .line 55
    iget-object v3, v5, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_client_to_server:Ljava/lang/String;

    iput-object v3, v2, Lcom/trilead/ssh2/ConnectionInfo;->clientToServerMACAlgorithm:Ljava/lang/String;

    .line 56
    iget-object v3, v5, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_server_to_client:Ljava/lang/String;

    iput-object v3, v2, Lcom/trilead/ssh2/ConnectionInfo;->serverToClientMACAlgorithm:Ljava/lang/String;

    .line 57
    iget-object v3, v5, Lcom/trilead/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    iput-object v3, v2, Lcom/trilead/ssh2/ConnectionInfo;->serverHostKeyAlgorithm:Ljava/lang/String;

    .line 58
    iget-object v3, v4, Lcom/trilead/ssh2/transport/KexState;->hostkey:[B

    iput-object v3, v2, Lcom/trilead/ssh2/ConnectionInfo;->serverHostKey:[B

    .line 59
    iget-object v3, v1, Lcom/trilead/ssh2/transport/KexManager;->accessLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 60
    :try_start_6
    iput-object v2, v1, Lcom/trilead/ssh2/transport/KexManager;->lastConnInfo:Lcom/trilead/ssh2/ConnectionInfo;

    .line 61
    iget-object v2, v1, Lcom/trilead/ssh2/transport/KexManager;->accessLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 62
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v2, 0x0

    .line 63
    :try_start_7
    iput-object v2, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 65
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v2

    .line 66
    :catch_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v10, [J

    fill-array-data v4, :array_e

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_10
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v8, [J

    fill-array-data v4, :array_f

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_11
    if-eqz v11, :cond_1e

    .line 68
    iget v12, v11, Lcom/trilead/ssh2/transport/KexState;->state:I

    if-eqz v12, :cond_1e

    .line 69
    iget-object v11, v11, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v11, v11, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v7, [J

    fill-array-data v14, :array_10

    invoke-direct {v12, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, -0x1

    if-nez v11, :cond_18

    iget-object v11, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v11, v11, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v11, v11, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v7, [J

    fill-array-data v7, :array_11

    invoke-direct {v14, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    .line 70
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    goto/16 :goto_8

    .line 71
    :cond_12
    iget-object v7, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v7, v7, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v7, v7, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v10, [J

    fill-array-data v14, :array_12

    invoke-direct {v11, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    iget-object v7, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v7, v7, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v7, v7, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v10, [J

    fill-array-data v10, :array_13

    invoke-direct {v11, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    .line 72
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 73
    :cond_13
    iget-object v7, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget v7, v7, Lcom/trilead/ssh2/transport/KexState;->state:I

    if-ne v7, v15, :cond_17

    .line 74
    new-instance v5, Lcom/trilead/ssh2/packets/PacketKexDHReply;

    invoke-direct {v5, v2, v13, v3}, Lcom/trilead/ssh2/packets/PacketKexDHReply;-><init>([BII)V

    .line 75
    iget-object v2, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/PacketKexDHReply;->getHostKey()[B

    move-result-object v3

    iput-object v3, v2, Lcom/trilead/ssh2/transport/KexState;->hostkey:[B

    .line 76
    iget-object v2, v1, Lcom/trilead/ssh2/transport/KexManager;->verifier:Lcom/trilead/ssh2/ServerHostKeyVerifier;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v2, :cond_15

    .line 77
    :try_start_a
    iget-object v3, v1, Lcom/trilead/ssh2/transport/KexManager;->hostname:Ljava/lang/String;

    iget v7, v1, Lcom/trilead/ssh2/transport/KexManager;->port:I

    iget-object v9, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v10, v9, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v10, v10, Lcom/trilead/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    iget-object v9, v9, Lcom/trilead/ssh2/transport/KexState;->hostkey:[B

    invoke-interface {v2, v3, v7, v10, v9}, Lcom/trilead/ssh2/ServerHostKeyVerifier;->verifyServerHostKey(Ljava/lang/String;ILjava/lang/String;[B)Z

    move-result v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v2, :cond_14

    goto :goto_7

    .line 78
    :cond_14
    :try_start_b
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v8, [J

    fill-array-data v4, :array_14

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 79
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v8, [J

    fill-array-data v5, :array_15

    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 80
    :cond_15
    :goto_7
    iget-object v2, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v2, v2, Lcom/trilead/ssh2/transport/KexState;->dhx:Lcom/trilead/ssh2/crypto/dh/DhExchange;

    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/PacketKexDHReply;->getF()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/trilead/ssh2/crypto/dh/DhExchange;->setF(Ljava/math/BigInteger;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 81
    :try_start_c
    iget-object v2, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v13, v2, Lcom/trilead/ssh2/transport/KexState;->dhx:Lcom/trilead/ssh2/crypto/dh/DhExchange;

    iget-object v3, v1, Lcom/trilead/ssh2/transport/KexManager;->csh:Lcom/trilead/ssh2/transport/ClientServerHello;

    invoke-virtual {v3}, Lcom/trilead/ssh2/transport/ClientServerHello;->getClientString()[B

    move-result-object v14

    iget-object v3, v1, Lcom/trilead/ssh2/transport/KexManager;->csh:Lcom/trilead/ssh2/transport/ClientServerHello;

    invoke-virtual {v3}, Lcom/trilead/ssh2/transport/ClientServerHello;->getServerString()[B

    move-result-object v15

    iget-object v3, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->localKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/PacketKexInit;->getPayload()[B

    move-result-object v16

    iget-object v3, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->remoteKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    .line 82
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/PacketKexInit;->getPayload()[B

    move-result-object v17

    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/PacketKexDHReply;->getHostKey()[B

    move-result-object v18

    .line 83
    invoke-virtual/range {v13 .. v18}, Lcom/trilead/ssh2/crypto/dh/DhExchange;->calculateH([B[B[B[B[B)[B

    move-result-object v3

    iput-object v3, v2, Lcom/trilead/ssh2/transport/KexState;->H:[B
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 84
    :try_start_d
    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/PacketKexDHReply;->getSignature()[B

    move-result-object v2

    iget-object v3, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->hostkey:[B

    invoke-direct {v1, v2, v3}, Lcom/trilead/ssh2/transport/KexManager;->verifySignature([B[B)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 85
    iget-object v2, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v2, Lcom/trilead/ssh2/transport/KexState;->dhx:Lcom/trilead/ssh2/crypto/dh/DhExchange;

    invoke-virtual {v3}, Lcom/trilead/ssh2/crypto/dh/DhExchange;->getK()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, v2, Lcom/trilead/ssh2/transport/KexState;->K:Ljava/math/BigInteger;

    .line 86
    invoke-direct/range {p0 .. p0}, Lcom/trilead/ssh2/transport/KexManager;->finishKex()V

    .line 87
    iget-object v2, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iput v12, v2, Lcom/trilead/ssh2/transport/KexState;->state:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 89
    :cond_16
    :try_start_e
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v6, [J

    fill-array-data v4, :array_16

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 90
    new-instance v3, Ljava/io/IOException;

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v4, [J

    fill-array-data v4, :array_17

    invoke-direct {v5, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 91
    :cond_17
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v5, [J

    fill-array-data v5, :array_18

    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v9, [J

    fill-array-data v5, :array_19

    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :cond_18
    :goto_8
    iget-object v5, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget v5, v5, Lcom/trilead/ssh2/transport/KexState;->state:I

    if-ne v5, v15, :cond_19

    .line 93
    new-instance v4, Lcom/trilead/ssh2/packets/PacketKexDhGexGroup;

    invoke-direct {v4, v2, v13, v3}, Lcom/trilead/ssh2/packets/PacketKexDhGexGroup;-><init>([BII)V

    .line 94
    iget-object v2, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    new-instance v3, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;

    invoke-virtual {v2}, Lcom/trilead/ssh2/transport/KexState;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/trilead/ssh2/packets/PacketKexDhGexGroup;->getP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v4}, Lcom/trilead/ssh2/packets/PacketKexDhGexGroup;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v5, v6, v4}, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;-><init>(Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v3, v2, Lcom/trilead/ssh2/transport/KexState;->dhgx:Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;

    .line 95
    iget-object v2, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v2, v2, Lcom/trilead/ssh2/transport/KexState;->dhgx:Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;

    iget-object v3, v1, Lcom/trilead/ssh2/transport/KexManager;->rnd:Ljava/security/SecureRandom;

    invoke-virtual {v2, v3}, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->init(Ljava/security/SecureRandom;)V

    .line 96
    new-instance v2, Lcom/trilead/ssh2/packets/PacketKexDhGexInit;

    iget-object v3, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->dhgx:Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;

    invoke-virtual {v3}, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->getE()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/trilead/ssh2/packets/PacketKexDhGexInit;-><init>(Ljava/math/BigInteger;)V

    .line 97
    iget-object v3, v1, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/PacketKexDhGexInit;->getPayload()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/trilead/ssh2/transport/TransportManager;->sendKexMessage([B)V

    .line 98
    iget-object v2, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iput v9, v2, Lcom/trilead/ssh2/transport/KexState;->state:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    :cond_19
    if-ne v5, v9, :cond_1d

    .line 100
    :try_start_f
    new-instance v5, Lcom/trilead/ssh2/packets/PacketKexDhGexReply;

    invoke-direct {v5, v2, v13, v3}, Lcom/trilead/ssh2/packets/PacketKexDhGexReply;-><init>([BII)V

    .line 101
    iget-object v2, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/PacketKexDhGexReply;->getHostKey()[B

    move-result-object v3

    iput-object v3, v2, Lcom/trilead/ssh2/transport/KexState;->hostkey:[B

    .line 102
    iget-object v2, v1, Lcom/trilead/ssh2/transport/KexManager;->verifier:Lcom/trilead/ssh2/ServerHostKeyVerifier;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v2, :cond_1b

    .line 103
    :try_start_10
    iget-object v3, v1, Lcom/trilead/ssh2/transport/KexManager;->hostname:Ljava/lang/String;

    iget v7, v1, Lcom/trilead/ssh2/transport/KexManager;->port:I

    iget-object v9, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v10, v9, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v10, v10, Lcom/trilead/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    iget-object v9, v9, Lcom/trilead/ssh2/transport/KexState;->hostkey:[B

    invoke-interface {v2, v3, v7, v10, v9}, Lcom/trilead/ssh2/ServerHostKeyVerifier;->verifyServerHostKey(Ljava/lang/String;ILjava/lang/String;[B)Z

    move-result v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-eqz v2, :cond_1a

    goto :goto_9

    .line 104
    :cond_1a
    :try_start_11
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v8, [J

    fill-array-data v4, :array_1a

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 105
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v8, [J

    fill-array-data v5, :array_1b

    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 106
    :cond_1b
    :goto_9
    iget-object v2, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v2, v2, Lcom/trilead/ssh2/transport/KexState;->dhgx:Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;

    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/PacketKexDhGexReply;->getF()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->setF(Ljava/math/BigInteger;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 107
    :try_start_12
    iget-object v2, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v13, v2, Lcom/trilead/ssh2/transport/KexState;->dhgx:Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;

    iget-object v3, v1, Lcom/trilead/ssh2/transport/KexManager;->csh:Lcom/trilead/ssh2/transport/ClientServerHello;

    invoke-virtual {v3}, Lcom/trilead/ssh2/transport/ClientServerHello;->getClientString()[B

    move-result-object v14

    iget-object v3, v1, Lcom/trilead/ssh2/transport/KexManager;->csh:Lcom/trilead/ssh2/transport/ClientServerHello;

    invoke-virtual {v3}, Lcom/trilead/ssh2/transport/ClientServerHello;->getServerString()[B

    move-result-object v15

    iget-object v3, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->localKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    .line 108
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/PacketKexInit;->getPayload()[B

    move-result-object v16

    iget-object v3, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->remoteKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/PacketKexInit;->getPayload()[B

    move-result-object v17

    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/PacketKexDhGexReply;->getHostKey()[B

    move-result-object v18

    iget-object v3, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->dhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    move-object/from16 v19, v3

    .line 109
    invoke-virtual/range {v13 .. v19}, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->calculateH([B[B[B[B[BLcom/trilead/ssh2/DHGexParameters;)[B

    move-result-object v3

    iput-object v3, v2, Lcom/trilead/ssh2/transport/KexState;->H:[B
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 110
    :try_start_13
    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/PacketKexDhGexReply;->getSignature()[B

    move-result-object v2

    iget-object v3, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->hostkey:[B

    invoke-direct {v1, v2, v3}, Lcom/trilead/ssh2/transport/KexManager;->verifySignature([B[B)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 111
    iget-object v2, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v2, Lcom/trilead/ssh2/transport/KexState;->dhgx:Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;

    invoke-virtual {v3}, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->getK()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, v2, Lcom/trilead/ssh2/transport/KexState;->K:Ljava/math/BigInteger;

    .line 112
    invoke-direct/range {p0 .. p0}, Lcom/trilead/ssh2/transport/KexManager;->finishKex()V

    .line 113
    iget-object v2, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iput v12, v2, Lcom/trilead/ssh2/transport/KexState;->state:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    .line 115
    :cond_1c
    :try_start_14
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v6, [J

    fill-array-data v4, :array_1c

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 116
    new-instance v3, Ljava/io/IOException;

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v4, [J

    fill-array-data v4, :array_1d

    invoke-direct {v5, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 117
    :cond_1d
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v10, [J

    fill-array-data v4, :array_1e

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    :cond_1e
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v10, [J

    fill-array-data v4, :array_1f

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_a
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    throw v2

    nop

    :array_0
    .array-data 8
        0x26e6f31a76b53971L    # 2.777328835990304E-121
        0x7f807f6e6861014L
        -0x50162a78ba77c3c3L    # -6.972112554580648E-78
        0x610ecccf1461073cL    # 3.3829761074765085E159
        0x55249e974abe15bbL    # 1.4432002445113584E102
    .end array-data

    :array_1
    .array-data 8
        0x8df13e6cc226404L
        0x7218d1e348621770L    # 4.137482002948636E241
    .end array-data

    :array_2
    .array-data 8
        0x2e2af25ee308c60cL    # 2.7091797030236984E-86
        -0x2527dc2bfc12a9c9L    # -4.18325740312718E129
        -0x16561781d6534401L    # -9.915713012890273E200
        -0x4df4c310e25930c0L    # -1.2628930592037854E-67
        -0x1b766495ea957793L    # -2.0266915909053546E176
        -0x136b9db7fd11d33eL    # -1.0979547513081175E215
        -0x43d6c7a16e38d58cL    # -6.835947014400579E-19
        0xf3dd54935a9a408L    # 2.932125041570063E-235
        0x471ee56cdbc6be5aL    # 4.0105550553578994E34
    .end array-data

    :array_3
    .array-data 8
        0x40c974bf66c2f2c7L    # 13033.495323532623
        -0xb60d071fe8ea539L    # -5.716006406342388E253
        -0x537cb4c7e51fc82eL    # -2.8904781940562296E-94
        -0x59a7ec5388f580a3L    # -5.69090673999041E-124
        -0x49057a35d8eead65L    # -7.433220173218857E-44
        0x3d1624f02abdec47L    # 1.9668080192927176E-14
    .end array-data

    :array_4
    .array-data 8
        -0x7475cc29d106e13dL    # -4.46741366500606E-253
        -0x2fed81b9adff14bdL    # -5.353433176139235E77
        0x2b3b7d696f11400fL
        -0x996f17a3f7d0714L
        -0x20c1e791042b7e9eL    # -6.157133876138345E150
        -0x28795eba72b9554L    # -2.494832112969382E296
    .end array-data

    :array_5
    .array-data 8
        -0x631c0518f718cd63L    # -1.654435507850653E-169
        0x350954f021a9063dL    # 3.305952733979166E-53
        0x73b5573cb675bb6L
        0x5579fd934121cc30L    # 5.821214882450615E103
        -0x61d979406c9fc28dL
    .end array-data

    :array_6
    .array-data 8
        0x664e3c2f6a6f864L
        -0x7d59a643581501bcL
        0x42970f6c87379607L    # 6.338753187301507E12
        0x7687e1adeff015daL    # 9.400023306202384E262
        -0xa013ead099cf38bL
    .end array-data

    :array_7
    .array-data 8
        0x75e83d3ecf2fa7b5L    # 9.317196776760486E259
        0x6b4e6e1c0dda6083L    # 7.815749189818656E208
        0xfea1851f10e880eL    # 5.252555602135145E-232
        -0x7288155349589845L    # -8.756786044347277E-244
    .end array-data

    :array_8
    .array-data 8
        -0x3125961ca3572878L    # -7.292005736989502E71
        0x63ca50f7f06b2daaL
    .end array-data

    :array_9
    .array-data 8
        0x7aff3911a53d1f25L    # 2.9018136342674957E284
        -0x58cf062b90183a93L    # -6.574072450314939E-120
        -0xa3c16f0cb057b03L    # -1.913312961948847E259
        0xcc0c882578f08bbL    # 3.000470381667412E-247
        0x61608e2ee4b25286L    # 1.1637707983034318E161
    .end array-data

    :array_a
    .array-data 8
        -0x10ac10bbb9e60acaL    # -1.8889698680160238E228
        -0x4827ee5f8a9bb619L    # -1.1051876045221979E-39
    .end array-data

    :array_b
    .array-data 8
        0xc376720b1cbad44L
        -0x6ffe86f2a2190038L    # -1.406816150639834E-231
    .end array-data

    :array_c
    .array-data 8
        -0x5fae96255137b22aL    # -5.195030589593265E-153
        0x5c7319792367ac5eL    # 2.2211615378826217E137
    .end array-data

    :array_d
    .array-data 8
        0x7dd8523dd06054f5L    # 1.5906027116033022E298
        0x265d7a14c94b829eL    # 6.96728063355198E-124
        0x1673e91a8d7d9ce6L
        -0x7ad26a6c7a0529c9L    # -9.947527196613057E-284
        -0xcdb48b1c9732c3dL    # -4.526402271802238E246
        -0x354e8a691aa4f29aL    # -6.532312280649856E51
        -0x42893ef5402b0afeL    # -1.2934191472573222E-12
    .end array-data

    :array_e
    .array-data 8
        -0x755a765bce757723L    # -2.241260132117442E-257
        -0x4b797fdd67c8993eL    # -1.1470530863522964E-55
        -0x5124cdc2f8e2a269L    # -5.599769228619008E-83
        -0x60cfe6f7f603e700L
        -0x6609fe13d59076L
    .end array-data

    :array_f
    .array-data 8
        0x3e0de4eebf3f9100L    # 8.700377072406768E-10
        -0x465ace0e8f19f9dcL    # -5.224993174288552E-31
        0x696dd6ca9141bda9L    # 7.137593671800252E199
        -0x3fb3440ff414a4adL    # -57.468263139648705
        0xa3160d671190199L
        -0x5547d3d36e8ff9e1L    # -6.745343174678798E-103
        0x32ea2fe8042671dL
        -0x2d9618ebda5ebd66L    # -1.0305592248649068E89
        0x286af6dfacc6a964L    # 5.474716261667258E-114
    .end array-data

    :array_10
    .array-data 8
        0x31ad768c960038adL    # 2.134465770747854E-69
        -0x5a922f6c6142d094L
        -0x6990204f0e7428b3L
        0x4f1027c00457c6aeL    # 7.135974477774308E72
        0x217c226d70235a54L    # 2.200295765182353E-147
        0x40b9adf0e7af2a7L    # 3.5407999732948447E-289
    .end array-data

    :array_11
    .array-data 8
        0x1760c837acfb0b31L    # 4.490132162621548E-196
        0x4881c956f6a268a7L    # 1.936776513497174E41
        0x1454ecebaaa31425L    # 9.9453091031495E-211
        -0x695db832067fe94dL
        0x7a9fa050a0b72900L    # 4.592650310694298E282
        -0x3ca8bb1166f1767L
    .end array-data

    :array_12
    .array-data 8
        0x459965b5678d53ccL    # 1.9650208529616127E27
        0x28aba35d4215d7ddL    # 8.97843152245313E-113
        -0x53d9bb22655787cfL    # -5.212814037778535E-96
        -0x47dcfe089cc7705cL    # -2.79292771719548E-38
        -0xe69ce977f23d7daL    # -1.445148925209795E239
    .end array-data

    :array_13
    .array-data 8
        -0x676c8129ebc0191dL
        0x2801f054e429669aL    # 5.69095239984923E-116
        0x1a8a4d170c013f01L    # 7.922952836632861E-181
        0x1e9e4d4af548670cL    # 3.367693448265202E-161
        -0x78d93eb23309233cL    # -3.286189329309921E-274
    .end array-data

    :array_14
    .array-data 8
        0x4ffb84b46ddb997L    # 1.33320183063688E-284
        0x62a60acb31cbdbbaL    # 1.6247323228977565E167
        -0x647282e5085d1b3cL    # -5.821676456109999E-176
        0x269623f4e8e4ba31L    # 8.373139651314712E-123
        0x55f791d99851c6d9L    # 1.3514283768825406E106
        0x56e60985a5cdde34L    # 4.1404233726360163E110
        -0x2bb952db7c79e297L    # -9.687272971406264E97
        0x1834db5c64b07560L
        -0x116321189650810L
    .end array-data

    :array_15
    .array-data 8
        0x4a007eb3c080093bL    # 3.0134209546170123E48
        -0x4a05903c0b9f1fdfL    # -1.1305402909193985E-48
        0x6bcf6683e2a770fcL    # 2.0646329237704383E211
        -0x7cc57456e0cc559fL    # -4.156386726293451E-293
        0x2ae64e05fa8eaed5L
        0x3e088c99b0b9ee04L    # 7.144763404629829E-10
        -0x608a1d9341249096L
        -0x6d4790a001c8727bL
        -0x34f2fbc5d15a061eL    # -3.4740372236324773E53
    .end array-data

    :array_16
    .array-data 8
        0x425ac8fe200595feL    # 4.601649889503436E11
        -0x7226d62b5c336326L    # -5.896480018942698E-242
        -0x3332dd09bdcfa3e2L    # -9.364132596920076E61
        0x4b47f0981ad116acL    # 4.585958603875582E54
        -0x152852c8f5eaff3dL    # -4.750909599039758E206
        0x4f88fc3c38c85ebeL    # 1.412646182745225E75
        0x468e7e80a91653c6L    # 7.7311856885188185E31
    .end array-data

    :array_17
    .array-data 8
        0x314d1d3bda7c41f3L    # 3.2956100300565655E-71
        0x773f03b214e04805L    # 2.5001155023349968E266
        -0x75c97eeb1d266137L
    .end array-data

    :array_18
    .array-data 8
        -0x25325e9f8fb823b2L
        -0xcf3b6ee76aac065L
        -0x2e3b83a5e0807d01L    # -7.959405917230479E85
        -0x6ea862e1952fff41L
    .end array-data

    :array_19
    .array-data 8
        0x693aaf9b5e39478L
        -0x18c2289266675c0fL    # -2.0774863465216405E189
    .end array-data

    :array_1a
    .array-data 8
        -0x7b567f81c9c349f3L    # -3.349554979683718E-286
        -0x56073be4a3564f6aL    # -1.687245030486278E-106
        -0x4876fc7085fd2a78L    # -3.589319772996373E-41
        -0x3aea7966e2cdd54fL    # -6.505765944061485E24
        0x21c0ed8ae473932fL
        0x7c041c417b0270d1L    # 2.449773887624443E289
        0x49ce172385769578L    # 3.435714692189376E47
        0x60934deb27510821L    # 1.6565073743544906E157
        0x36b8e7e362f01a64L    # 4.362559757419556E-45
    .end array-data

    :array_1b
    .array-data 8
        0x11f30a05420d415aL    # 3.291930049752066E-222
        0x1422047192d675b7L
        0x4854546a425a9827L    # 2.7671416877393457E40
        -0x1ee576c639183a3eL    # -5.829264978801172E159
        -0x4302bc3eb8f173f0L    # -6.4980616291356556E-15
        0x3c1a922f5aff293fL    # 3.6010467458024948E-19
        0x6eda71de46f9e190L    # 9.788519677201483E225
        -0x46628a1e33a534dfL    # -3.6312841069832746E-31
        0x4cb8ef6d1b642ee5L    # 4.0069415672765657E61
    .end array-data

    :array_1c
    .array-data 8
        -0x2a16c72bfb8b433bL    # -7.230823498201018E105
        0x461525bd2ce207dL
        -0x568c9261ae4ab8ecL    # -5.170280164216967E-109
        0x70970e31d86f44c6L    # 2.2908160174158355E234
        -0x109fd1ad3c925b53L    # -3.0665549558966416E228
        -0x5c84d8252c08cc12L    # -9.121425633390607E-138
        0xb1fc066021e9e13L    # 4.22930207775207E-255
    .end array-data

    :array_1d
    .array-data 8
        -0x92ac4789947550cL
        0x2016f1a71ff18254L    # 4.278096108557242E-154
        -0x2e1ada794c26929cL    # -3.2864652845622516E86
    .end array-data

    :array_1e
    .array-data 8
        -0x61261c7ee44dbafaL    # -4.60354476069702E-160
        0x7e8be1a7c343d2c8L    # 3.734403864256919E301
        -0x57126919ea250abbL
        0x20929efceb7ef6b2L    # 8.888455132433162E-152
        -0x61a5ed41ea230e54L
    .end array-data

    :array_1f
    .array-data 8
        0x29968a2e3e7791d4L
        0xc5f793e7fc5d1aaL
        0x59d31479c18ec634L    # 5.045174619073025E124
        0x563033009d6c540fL    # 1.4861162921396057E107
        0x56914cf4cbbedddbL    # 1.0157804992754829E109
    .end array-data
.end method

.method public declared-synchronized initiateKEX(Lcom/trilead/ssh2/crypto/CryptoWishList;Lcom/trilead/ssh2/DHGexParameters;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->nextKEXcryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->nextKEXdhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    .line 5
    .line 6
    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    new-instance p1, Lcom/trilead/ssh2/transport/KexState;

    .line 11
    .line 12
    invoke-direct {p1}, Lcom/trilead/ssh2/transport/KexState;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    .line 16
    .line 17
    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->nextKEXdhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    .line 18
    .line 19
    iput-object p2, p1, Lcom/trilead/ssh2/transport/KexState;->dhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    .line 20
    .line 21
    new-instance p1, Lcom/trilead/ssh2/packets/PacketKexInit;

    .line 22
    .line 23
    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->nextKEXcryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->rnd:Ljava/security/SecureRandom;

    .line 26
    .line 27
    invoke-direct {p1, p2, v0}, Lcom/trilead/ssh2/packets/PacketKexInit;-><init>(Lcom/trilead/ssh2/crypto/CryptoWishList;Ljava/security/SecureRandom;)V

    .line 28
    .line 29
    .line 30
    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    .line 31
    .line 32
    iput-object p1, p2, Lcom/trilead/ssh2/transport/KexState;->localKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    .line 33
    .line 34
    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/PacketKexInit;->getPayload()[B

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p2, p1}, Lcom/trilead/ssh2/transport/TransportManager;->sendKexMessage([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    :goto_0
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p1
.end method
