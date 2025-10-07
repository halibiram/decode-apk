.class public Lcom/trilead/ssh2/auth/AuthenticationManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/trilead/ssh2/transport/MessageHandler;


# static fields
.field public static final PROPERTY_TIMEOUT:Ljava/lang/String;

.field public static final TIMEOUT:J


# instance fields
.field authenticated:Z

.field connMonitors:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/trilead/ssh2/ConnectionMonitor;",
            ">;"
        }
    .end annotation
.end field

.field connectionClosed:Z

.field initDone:Z

.field isPartialSuccess:Z

.field packets:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "[B>;"
        }
    .end annotation
.end field

.field remainingMethods:[Ljava/lang/String;

.field tm:Lcom/trilead/ssh2/transport/TransportManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    new-array v3, v2, [J

    .line 19
    .line 20
    fill-array-data v3, :array_0

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lcom/trilead/ssh2/auth/AuthenticationManager;->PROPERTY_TIMEOUT:Ljava/lang/String;

    .line 31
    .line 32
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    new-array v2, v2, [J

    .line 35
    .line 36
    fill-array-data v2, :array_1

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 55
    .line 56
    .line 57
    move-result-wide v0

    .line 58
    sput-wide v0, Lcom/trilead/ssh2/auth/AuthenticationManager;->TIMEOUT:J

    .line 59
    .line 60
    return-void

    .line 61
    :array_0
    .array-data 8
        -0x77992fe1bcfae977L
        -0x192ca5ad5fcca9dcL
    .end array-data

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
    :array_1
    .array-data 8
        0x2f127b547cbb79e9L    # 6.088698448817466E-82
        -0x63b391815157fa18L    # -2.299080125080598E-172
    .end array-data
.end method

.method public constructor <init>(Lcom/trilead/ssh2/transport/TransportManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Vector;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    .line 10
    .line 11
    new-instance v0, Ljava/util/Vector;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->connMonitors:Ljava/util/Vector;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->connectionClosed:Z

    .line 20
    .line 21
    new-array v1, v0, [Ljava/lang/String;

    .line 22
    .line 23
    iput-object v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->isPartialSuccess:Z

    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticated:Z

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->initDone:Z

    .line 30
    .line 31
    iput-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 32
    .line 33
    return-void
.end method

.method private initialize(Ljava/lang/String;)Z
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    iget-boolean v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->initDone:Z

    .line 3
    .line 4
    if-nez v1, :cond_2

    .line 5
    .line 6
    iget-object v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/16 v3, 0xff

    .line 10
    .line 11
    invoke-virtual {v1, p0, v2, v3}, Lcom/trilead/ssh2/transport/TransportManager;->registerMessageHandler(Lcom/trilead/ssh2/transport/MessageHandler;II)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/trilead/ssh2/packets/PacketServiceRequest;

    .line 15
    .line 16
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    new-array v5, v0, [J

    .line 19
    .line 20
    fill-array-data v5, :array_0

    .line 21
    .line 22
    .line 23
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-direct {v1, v4}, Lcom/trilead/ssh2/packets/PacketServiceRequest;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v4, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/PacketServiceRequest;->getPayload()[B

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v4, v1}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;

    .line 43
    .line 44
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array v0, v0, [J

    .line 47
    .line 48
    fill-array-data v0, :array_1

    .line 49
    .line 50
    .line 51
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-direct {v1, v0, p1}, Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;->getPayload()[B

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p1, v0}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->getNextMessage()[B

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    new-instance v0, Lcom/trilead/ssh2/packets/PacketServiceAccept;

    .line 75
    .line 76
    array-length v1, p1

    .line 77
    invoke-direct {v0, p1, v2, v1}, Lcom/trilead/ssh2/packets/PacketServiceAccept;-><init>([BII)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->getNextMessage()[B

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->initDone:Z

    .line 86
    .line 87
    aget-byte v1, p1, v2

    .line 88
    .line 89
    const/16 v4, 0x34

    .line 90
    .line 91
    if-ne v1, v4, :cond_0

    .line 92
    .line 93
    iput-boolean v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticated:Z

    .line 94
    .line 95
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 96
    .line 97
    invoke-virtual {p1, p0, v2, v3}, Lcom/trilead/ssh2/transport/TransportManager;->removeMessageHandler(Lcom/trilead/ssh2/transport/MessageHandler;II)V

    .line 98
    .line 99
    .line 100
    return v0

    .line 101
    :cond_0
    const/16 v0, 0x33

    .line 102
    .line 103
    if-ne v1, v0, :cond_1

    .line 104
    .line 105
    new-instance v0, Lcom/trilead/ssh2/packets/PacketUserauthFailure;

    .line 106
    .line 107
    array-length v1, p1

    .line 108
    invoke-direct {v0, p1, v2, v1}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;-><init>([BII)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->getAuthThatCanContinue()[Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iput-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->isPartialSuccess()Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    iput-boolean p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->isPartialSuccess:Z

    .line 122
    .line 123
    return v2

    .line 124
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 125
    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 132
    .line 133
    const/4 v4, 0x5

    .line 134
    new-array v4, v4, [J

    .line 135
    .line 136
    fill-array-data v4, :array_2

    .line 137
    .line 138
    .line 139
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    aget-byte p1, p1, v2

    .line 150
    .line 151
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 155
    .line 156
    const/4 v2, 0x2

    .line 157
    new-array v2, v2, [J

    .line 158
    .line 159
    fill-array-data v2, :array_3

    .line 160
    .line 161
    .line 162
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 163
    .line 164
    .line 165
    invoke-static {p1, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw v0

    .line 173
    :cond_2
    iget-boolean p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticated:Z

    .line 174
    .line 175
    return p1

    .line 176
    nop

    .line 177
    :array_0
    .array-data 8
        -0x4ab3e727d6049526L    # -5.866937454946772E-52
        -0x7a4a44ad8800c47aL
        -0x4cc3562a109250a0L    # -6.967691585073695E-62
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
    :array_1
    .array-data 8
        -0x5fac50c52894f337L    # -5.872545818837079E-153
        0x120fddbeb6866ae4L
        0xe70311b1b98756bL    # 3.885251310143682E-239
    .end array-data

    :array_2
    .array-data 8
        0x50ec78be9996ac11L    # 6.751831657362344E81
        0x7bd6e53cfbf3a4eaL    # 3.486304134792227E288
        -0x55f0440fc6789e4eL
        -0x11094fd1cda213d8L    # -3.3592079733855517E226
        -0x39337807dc9cb107L    # -1.1573601318109658E33
    .end array-data

    :array_3
    .array-data 8
        0x3d0ef87ce10eb980L    # 1.3753733931450702E-14
        -0x317975f31c8ec371L    # -1.9445031197663372E70
    .end array-data
.end method


# virtual methods
.method public authenticateInteractive(Ljava/lang/String;[Ljava/lang/String;Lcom/trilead/ssh2/InteractiveCallback;)Z
    .locals 9

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->initialize(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    new-array v3, v0, [J

    .line 9
    .line 10
    fill-array-data v3, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {p0, v2}, Lcom/trilead/ssh2/auth/AuthenticationManager;->methodPossible(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_5

    .line 25
    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    new-array p2, v1, [Ljava/lang/String;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p1

    .line 32
    goto/16 :goto_2

    .line 33
    .line 34
    :cond_0
    :goto_0
    new-instance v2, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;

    .line 35
    .line 36
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    const/4 v4, 0x3

    .line 39
    new-array v4, v4, [J

    .line 40
    .line 41
    fill-array-data v4, :array_1

    .line 42
    .line 43
    .line 44
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-direct {v2, v3, p1, p2}, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;->getPayload()[B

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p1, p2}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 61
    .line 62
    .line 63
    :goto_1
    invoke-virtual {p0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->getNextMessage()[B

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    aget-byte p2, p1, v1

    .line 68
    .line 69
    const/16 v2, 0x34

    .line 70
    .line 71
    if-ne p2, v2, :cond_1

    .line 72
    .line 73
    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticated:Z

    .line 75
    .line 76
    iget-object p2, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 77
    .line 78
    const/16 p3, 0xff

    .line 79
    .line 80
    invoke-virtual {p2, p0, v1, p3}, Lcom/trilead/ssh2/transport/TransportManager;->removeMessageHandler(Lcom/trilead/ssh2/transport/MessageHandler;II)V

    .line 81
    .line 82
    .line 83
    return p1

    .line 84
    :cond_1
    const/16 v2, 0x33

    .line 85
    .line 86
    if-ne p2, v2, :cond_2

    .line 87
    .line 88
    new-instance p2, Lcom/trilead/ssh2/packets/PacketUserauthFailure;

    .line 89
    .line 90
    array-length p3, p1

    .line 91
    invoke-direct {p2, p1, v1, p3}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;-><init>([BII)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->getAuthThatCanContinue()[Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iput-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->isPartialSuccess()Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    iput-boolean p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->isPartialSuccess:Z

    .line 105
    .line 106
    return v1

    .line 107
    :cond_2
    const/16 v2, 0x3c

    .line 108
    .line 109
    if-ne p2, v2, :cond_4

    .line 110
    .line 111
    new-instance p2, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;

    .line 112
    .line 113
    array-length v2, p1

    .line 114
    invoke-direct {p2, p1, v1, v2}, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;-><init>([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .line 116
    .line 117
    :try_start_1
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->getName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->getInstruction()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->getNumPrompts()I

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->getPrompt()[Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->getEcho()[Z

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    move-object v3, p3

    .line 138
    invoke-interface/range {v3 .. v8}, Lcom/trilead/ssh2/InteractiveCallback;->replyToChallenge(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Z)[Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 142
    if-eqz p1, :cond_3

    .line 143
    .line 144
    :try_start_2
    new-instance p2, Lcom/trilead/ssh2/packets/PacketUserauthInfoResponse;

    .line 145
    .line 146
    invoke-direct {p2, p1}, Lcom/trilead/ssh2/packets/PacketUserauthInfoResponse;-><init>([Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 150
    .line 151
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketUserauthInfoResponse;->getPayload()[B

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-virtual {p1, p2}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 160
    .line 161
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 162
    .line 163
    const/4 p3, 0x6

    .line 164
    new-array p3, p3, [J

    .line 165
    .line 166
    fill-array-data p3, :array_2

    .line 167
    .line 168
    .line 169
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw p1

    .line 180
    :catch_1
    move-exception p1

    .line 181
    new-instance p2, Ljava/io/IOException;

    .line 182
    .line 183
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 184
    .line 185
    new-array v0, v0, [J

    .line 186
    .line 187
    fill-array-data v0, :array_3

    .line 188
    .line 189
    .line 190
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p3

    .line 197
    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    .line 199
    .line 200
    throw p2

    .line 201
    :cond_4
    new-instance p2, Ljava/io/IOException;

    .line 202
    .line 203
    new-instance p3, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 209
    .line 210
    const/4 v2, 0x5

    .line 211
    new-array v2, v2, [J

    .line 212
    .line 213
    fill-array-data v2, :array_4

    .line 214
    .line 215
    .line 216
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    aget-byte p1, p1, v1

    .line 227
    .line 228
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 232
    .line 233
    const/4 v0, 0x2

    .line 234
    new-array v0, v0, [J

    .line 235
    .line 236
    fill-array-data v0, :array_5

    .line 237
    .line 238
    .line 239
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    throw p2

    .line 257
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 258
    .line 259
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 260
    .line 261
    const/16 p3, 0xc

    .line 262
    .line 263
    new-array p3, p3, [J

    .line 264
    .line 265
    fill-array-data p3, :array_6

    .line 266
    .line 267
    .line 268
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p2

    .line 275
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 279
    :goto_2
    iget-object p2, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 280
    .line 281
    invoke-virtual {p2, p1, v1}, Lcom/trilead/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 282
    .line 283
    .line 284
    new-instance p2, Ljava/io/IOException;

    .line 285
    .line 286
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 287
    .line 288
    const/4 v0, 0x7

    .line 289
    new-array v0, v0, [J

    .line 290
    .line 291
    fill-array-data v0, :array_7

    .line 292
    .line 293
    .line 294
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p3

    .line 301
    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 302
    .line 303
    .line 304
    throw p2

    .line 305
    :array_0
    .array-data 8
        0x100a84262298be7cL
        -0x6b9a6cc31c0a3f23L    # -2.050816582368734E-210
        0x466b91c384bb0735L    # 1.7474176653171946E31
        0x391b60fafa07cea9L    # 1.3182426942346667E-33
    .end array-data

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
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    :array_1
    .array-data 8
        0x6cb93ca64bfd23a3L    # 5.437423182798453E215
        0x12eb014cf1c21c01L
        0x247d4b34f3f5d0a7L    # 6.448479040867253E-133
    .end array-data

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
    :array_2
    .array-data 8
        0x6b1b0d5a28c8feb9L    # 8.685182013106397E207
        -0x86c6bc36c32c1d3L
        -0x1700a48969d49c43L    # -5.8599718867236606E197
        -0x15d1fd933267d8adL    # -2.9402580997855637E203
        -0x5e1516393fb127dbL
        0x4058b72afb0487bcL    # 98.86199832384494
    .end array-data

    .line 342
    .line 343
    .line 344
    .line 345
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
    :array_3
    .array-data 8
        0x10f4484ee1f23433L    # 5.351108664988943E-227
        0x60477b781aedf0cL
        -0x2f1db70b1d953099L    # -4.336141936082459E81
        0x26aace5243cc4200L
    .end array-data

    .line 370
    .line 371
    .line 372
    .line 373
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
    :array_4
    .array-data 8
        0x92ba39946af5e1fL
        0x7977f4d33ca791bcL
        0x17557b883106072bL
        -0x5c97de9e653f4381L    # -4.052625197742715E-138
        -0x712b30357b6bedd6L
    .end array-data

    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
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
    :array_5
    .array-data 8
        0x2b5af3a2afcc15ffL    # 7.701363647631259E-100
        -0x329e138bd5c8bd24L    # -5.898688740793219E64
    .end array-data

    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    :array_6
    .array-data 8
        0x45e6a3f2733363ceL    # 5.605496049947383E28
        0x7bb908e578be2c75L    # 9.53013727228451E287
        -0x2dce6496d0d031a5L    # -8.756406893795171E87
        0x4d334d78466f41cL
        0x4772f0001fa36d83L    # 1.5732661048017707E36
        -0x6be25411f9f42a33L    # -8.813817164592589E-212
        -0x6884d83c2d2dcb6fL
        -0x43d632cde33989a2L    # -6.993523030810589E-19
        -0x5131d1f039ab7977L    # -3.1070583694433265E-83
        -0xf71a1756bdc096cL    # -1.508764507901325E234
        0x1724314a3ecef577L    # 3.376632391065958E-197
        0x508fc9cc4ee2d02cL    # 1.1778658016557886E80
    .end array-data

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
    .line 475
    .line 476
    .line 477
    :array_7
    .array-data 8
        -0x5bda358990fe3e90L    # -1.499016833118767E-134
        -0xcb7994984307a6fL
        0x6a6bd16b85101329L    # 4.360875697738135E204
        0x2cf00d98b02bfea8L
        0x239a2c69c08e4cc0L
        0x743cb3a1a40f268bL    # 8.219848045615008E251
        -0xf3ba337f371b5fdL    # -1.6185874998545013E235
    .end array-data
.end method

.method public authenticateNone(Ljava/lang/String;)Z
    .locals 3

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->initialize(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticated:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    return p1

    .line 7
    :catch_0
    move-exception p1

    .line 8
    iget-object v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, p1, v1}, Lcom/trilead/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/io/IOException;

    .line 15
    .line 16
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    const/4 v2, 0x5

    .line 19
    new-array v2, v2, [J

    .line 20
    .line 21
    fill-array-data v2, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    throw v0

    .line 35
    :array_0
    .array-data 8
        -0x1a200dc313940a0aL    # -5.302457161630584E182
        -0x14c7c2dbb4ee7acaL    # -3.1127823830566174E208
        -0x410e3749b0f3c031L    # -1.6960174380520166E-5
        -0x221d0fcb73700852L    # -1.8475192593589743E144
        -0x5d53b12036175c03L    # -1.160707542236147E-141
    .end array-data
.end method

.method public authenticatePassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->initialize(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    new-array v4, v1, [J

    .line 10
    .line 11
    fill-array-data v4, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {p0, v3}, Lcom/trilead/ssh2/auth/AuthenticationManager;->methodPossible(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    new-instance v3, Lcom/trilead/ssh2/packets/PacketUserauthRequestPassword;

    .line 28
    .line 29
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    const/4 v5, 0x3

    .line 32
    new-array v5, v5, [J

    .line 33
    .line 34
    fill-array-data v5, :array_1

    .line 35
    .line 36
    .line 37
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-direct {v3, v4, p1, p2}, Lcom/trilead/ssh2/packets/PacketUserauthRequestPassword;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/PacketUserauthRequestPassword;->getPayload()[B

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p1, p2}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->getNextMessage()[B

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    aget-byte p2, p1, v2

    .line 61
    .line 62
    const/16 v3, 0x34

    .line 63
    .line 64
    if-ne p2, v3, :cond_0

    .line 65
    .line 66
    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticated:Z

    .line 68
    .line 69
    iget-object p2, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 70
    .line 71
    const/16 v1, 0xff

    .line 72
    .line 73
    invoke-virtual {p2, p0, v2, v1}, Lcom/trilead/ssh2/transport/TransportManager;->removeMessageHandler(Lcom/trilead/ssh2/transport/MessageHandler;II)V

    .line 74
    .line 75
    .line 76
    return p1

    .line 77
    :catch_0
    move-exception p1

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    const/16 v3, 0x33

    .line 80
    .line 81
    if-ne p2, v3, :cond_1

    .line 82
    .line 83
    new-instance p2, Lcom/trilead/ssh2/packets/PacketUserauthFailure;

    .line 84
    .line 85
    array-length v1, p1

    .line 86
    invoke-direct {p2, p1, v2, v1}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;-><init>([BII)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->getAuthThatCanContinue()[Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iput-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->isPartialSuccess()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    iput-boolean p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->isPartialSuccess:Z

    .line 100
    .line 101
    return v2

    .line 102
    :cond_1
    new-instance p2, Ljava/io/IOException;

    .line 103
    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 110
    .line 111
    new-array v5, v0, [J

    .line 112
    .line 113
    fill-array-data v5, :array_2

    .line 114
    .line 115
    .line 116
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    aget-byte p1, p1, v2

    .line 127
    .line 128
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 132
    .line 133
    new-array v1, v1, [J

    .line 134
    .line 135
    fill-array-data v1, :array_3

    .line 136
    .line 137
    .line 138
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw p2

    .line 156
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 157
    .line 158
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 159
    .line 160
    const/16 v1, 0xb

    .line 161
    .line 162
    new-array v1, v1, [J

    .line 163
    .line 164
    fill-array-data v1, :array_4

    .line 165
    .line 166
    .line 167
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    iget-object p2, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 179
    .line 180
    invoke-virtual {p2, p1, v2}, Lcom/trilead/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 181
    .line 182
    .line 183
    new-instance p2, Ljava/io/IOException;

    .line 184
    .line 185
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 186
    .line 187
    new-array v0, v0, [J

    .line 188
    .line 189
    fill-array-data v0, :array_5

    .line 190
    .line 191
    .line 192
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    .line 201
    .line 202
    throw p2

    .line 203
    :array_0
    .array-data 8
        -0x4d0f0c3a95ba5438L    # -2.575536936427046E-63
        -0x5773217b0b82f209L
    .end array-data

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
    :array_1
    .array-data 8
        0x6ec1223d6e71add0L    # 3.1710215402544487E225
        0x5a5f5223b62c07f4L    # 2.1201755896236526E127
        0x273d718c0f370fa8L
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
    :array_2
    .array-data 8
        0x14bdba8645f90da1L    # 9.042689969950374E-209
        0x4968674dcba889b4L    # 4.353735381330729E45
        -0x495d22e127f8a651L    # -1.6521091596776554E-45
        -0x40adbbb3d0472b23L    # -0.0011149162300061945
        0x10cabb8ebf72d129L    # 8.816074534282211E-228
    .end array-data

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
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    :array_3
    .array-data 8
        -0xed7f55e6a77695bL    # -1.2230625626536885E237
        -0xe0240892173a812L    # -1.2397467306551468E241
    .end array-data

    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    :array_4
    .array-data 8
        0x7a785903f5025be9L    # 8.83922517375894E281
        -0x3997f101a34c44bfL    # -1.5248929563289614E31
        -0x179999ca3eb07b40L    # -8.175622664686512E194
        -0x3409818cd425db7aL    # -8.824798775476155E57
        0x3ace45436152e559L    # 1.9561890514369387E-25
        0x127a9242907c2b44L
        -0x55c5b9748354cafeL
        0x3d6c6594146e3ce9L    # 8.070853359794488E-13
        0x3e77e74a9413c48fL    # 8.904740857511983E-8
        0x77ec81f954852909L    # 4.706396147464456E269
        -0x47008a4776da2609L    # -3.7868413414822316E-34
    .end array-data

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
    :array_5
    .array-data 8
        -0x9695280d12c0c78L    # -1.785236069899918E263
        -0x76432d2ce7305068L    # -9.153580442556026E-262
        0x18730cf5b6b36651L    # 6.680853828822524E-191
        0x34d4b6b446d3d430L    # 3.379078070917748E-54
        0x3836dcd78180b108L    # 6.718732905699718E-38
    .end array-data
.end method

.method public authenticatePublicKey(Ljava/lang/String;Lcom/trilead/ssh2/auth/AgentProxy;)Z
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->initialize(Ljava/lang/String;)Z

    .line 2
    invoke-interface {p2}, Lcom/trilead/ssh2/auth/AgentProxy;->getIdentities()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/trilead/ssh2/auth/AgentIdentity;

    .line 3
    invoke-virtual {p0, p1, p2, v1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticatePublicKey(Ljava/lang/String;Lcom/trilead/ssh2/auth/AgentProxy;Lcom/trilead/ssh2/auth/AgentIdentity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public authenticatePublicKey(Ljava/lang/String;Lcom/trilead/ssh2/auth/AgentProxy;Lcom/trilead/ssh2/auth/AgentIdentity;)Z
    .locals 9

    .line 4
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x3

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/trilead/ssh2/auth/AuthenticationManager;->methodPossible(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 5
    invoke-interface {p3}, Lcom/trilead/ssh2/auth/AgentIdentity;->getPublicKeyBlob()[B

    move-result-object v5

    const/4 p2, 0x0

    if-nez v5, :cond_0

    return p2

    .line 6
    :cond_0
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 7
    iget-object v2, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v2}, Lcom/trilead/ssh2/transport/TransportManager;->getSessionIdentifier()[B

    move-result-object v2

    .line 8
    array-length v3, v2

    invoke-virtual {v1, v2, p2, v3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    const/16 v2, 0x32

    .line 9
    invoke-virtual {v1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 10
    invoke-virtual {v1, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 11
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_1

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 12
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v0, [J

    fill-array-data v3, :array_2

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    const/4 v7, 0x1

    .line 13
    invoke-virtual {v1, v7}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    .line 14
    invoke-interface {p3}, Lcom/trilead/ssh2/auth/AgentIdentity;->getAlgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 15
    array-length v2, v5

    invoke-virtual {v1, v5, p2, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 16
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    .line 17
    invoke-interface {p3, v1}, Lcom/trilead/ssh2/auth/AgentIdentity;->sign([B)[B

    move-result-object v6

    .line 18
    new-instance v8, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_3

    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-interface {p3}, Lcom/trilead/ssh2/auth/AgentIdentity;->getAlgName()Ljava/lang/String;

    move-result-object v4

    move-object v1, v8

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 20
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v8}, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->getPayload()[B

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 21
    invoke-virtual {p0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->getNextMessage()[B

    move-result-object p1

    .line 22
    aget-byte p3, p1, p2

    const/16 v0, 0x34

    if-ne p3, v0, :cond_1

    .line 23
    iput-boolean v7, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticated:Z

    .line 24
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    const/16 p3, 0xff

    invoke-virtual {p1, p0, p2, p3}, Lcom/trilead/ssh2/transport/TransportManager;->removeMessageHandler(Lcom/trilead/ssh2/transport/MessageHandler;II)V

    return v7

    :cond_1
    const/16 v0, 0x33

    if-ne p3, v0, :cond_2

    .line 25
    new-instance p3, Lcom/trilead/ssh2/packets/PacketUserauthFailure;

    array-length v0, p1

    invoke-direct {p3, p1, p2, v0}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;-><init>([BII)V

    .line 26
    invoke-virtual {p3}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->getAuthThatCanContinue()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    .line 27
    invoke-virtual {p3}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->isPartialSuccess()Z

    move-result p1

    iput-boolean p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->isPartialSuccess:Z

    return p2

    .line 28
    :cond_2
    new-instance p3, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x5

    new-array v2, v2, [J

    fill-array-data v2, :array_4

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p1, p1, p2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p2, 0x2

    new-array p2, p2, [J

    fill-array-data p2, :array_5

    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    invoke-static {p1, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 31
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/16 p3, 0xb

    new-array p3, p3, [J

    fill-array-data p3, :array_6

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 8
        -0x2b4e56116319b417L    # -9.658788303607833E99
        0x5b0e474928b683a6L    # 4.1976084307986746E130
        0x19736ddc2403fbf7L    # 4.465357899077811E-186
    .end array-data

    :array_1
    .array-data 8
        -0x6c558ab4ee3dfb39L    # -6.140065505058278E-214
        -0x445d27cf8f486790L    # -1.995237897005678E-21
        0x641d7cce8aa4f453L    # 1.8232904465234447E174
    .end array-data

    :array_2
    .array-data 8
        0x6e49a0002ffa5fa3L    # 1.8525533636548442E223
        0x75509cea9967aa72L    # 1.2472203698858119E257
        -0x282e7853318a6925L    # -1.0792443796084003E115
    .end array-data

    :array_3
    .array-data 8
        0x7e9ee6a51c949d95L    # 8.277660323159014E301
        -0x5e07f5d1f9b665fdL    # -4.812960667633705E-145
        -0x494e9386478636fdL    # -3.0519811659412064E-45
    .end array-data

    :array_4
    .array-data 8
        -0x465d2587b95105d7L    # -4.647721384237871E-31
        0x696d254b36846bb3L    # 6.971742186690551E199
        -0x150550f4c7230bd0L    # -2.141727145252337E207
        0x2bb5b8a3589526ecL    # 3.972337001229334E-98
        0x1c40af07a5c83ff6L    # 1.349103089919042E-172
    .end array-data

    :array_5
    .array-data 8
        -0x770ae4b5ef43ca96L
        -0x4302ed89fd6495e5L    # -6.455305888165323E-15
    .end array-data

    :array_6
    .array-data 8
        -0x48e76a916307bc83L    # -2.7559302227425835E-43
        0x6ef1d7b37fd4d659L    # 2.641766781197834E226
        -0x709e8c76165fd1b9L
        -0x688ac6680c0e3b21L
        -0x1f67bfb0e50ff485L    # -2.0809953676476958E157
        -0x71cd59a2fcb42932L    # -2.796913076836234E-240
        0x2d90b092d713e31cL    # 3.277259861235086E-89
        0x46e25761fd5f1532L    # 2.976052394861375E33
        0x422e7562495668bfL    # 6.540919722720458E10
        0x4ff62a7fd88e7c4cL    # 1.6041556169108085E77
        0x1985bc3b447a76adL    # 9.990745826638882E-186
    .end array-data
.end method

.method public authenticatePublicKey(Ljava/lang/String;[CLjava/lang/String;Ljava/security/SecureRandom;)Z
    .locals 11

    const/4 v0, 0x5

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 35
    :try_start_0
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->initialize(Ljava/lang/String;)Z

    .line 36
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_0

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/trilead/ssh2/auth/AuthenticationManager;->methodPossible(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 37
    invoke-static {p2, p3}, Lcom/trilead/ssh2/crypto/PEMDecoder;->decodeKeyPair([CLjava/lang/String;)Ljava/security/KeyPair;

    move-result-object p2

    .line 38
    invoke-virtual {p2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p3

    .line 39
    invoke-static {}, Lcom/trilead/ssh2/signature/KeyAlgorithmManager;->getSupportedAlgorithms()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/trilead/ssh2/signature/KeyAlgorithm;

    .line 40
    invoke-virtual {v4, p3}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->supportsKey(Ljava/security/PrivateKey;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 41
    invoke-virtual {p2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p3

    invoke-virtual {v4, p3}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->encodePublicKey(Ljava/security/PublicKey;)[B

    move-result-object v9

    .line 42
    new-instance p3, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {p3}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 43
    iget-object v3, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v3}, Lcom/trilead/ssh2/transport/TransportManager;->getSessionIdentifier()[B

    move-result-object v3

    .line 44
    array-length v5, v3

    invoke-virtual {p3, v3, v2, v5}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    const/16 v3, 0x32

    .line 45
    invoke-virtual {p3, v3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 46
    invoke-virtual {p3, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 47
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_1

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 48
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_2

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 49
    invoke-virtual {p3, v3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    .line 50
    invoke-virtual {v4}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->getKeyFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 51
    array-length v5, v9

    invoke-virtual {p3, v9, v2, v5}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 52
    invoke-virtual {p3}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p3

    .line 53
    invoke-virtual {p2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p2

    invoke-virtual {v4, p3, p2, p4}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->generateSignature([BLjava/security/PrivateKey;Ljava/security/SecureRandom;)[B

    move-result-object p2

    .line 54
    invoke-virtual {v4, p2}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->encodeSignature([B)[B

    move-result-object v10

    .line 55
    new-instance p2, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;

    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    new-array p4, v1, [J

    fill-array-data p4, :array_3

    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    .line 56
    invoke-virtual {v4}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->getKeyFormat()Ljava/lang/String;

    move-result-object v8

    move-object v5, p2

    move-object v7, p1

    invoke-direct/range {v5 .. v10}, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 57
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->getPayload()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 58
    invoke-virtual {p0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->getNextMessage()[B

    move-result-object p1

    .line 59
    aget-byte p2, p1, v2

    const/16 p3, 0x34

    if-ne p2, p3, :cond_1

    .line 60
    iput-boolean v3, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticated:Z

    .line 61
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    const/16 p2, 0xff

    invoke-virtual {p1, p0, v2, p2}, Lcom/trilead/ssh2/transport/TransportManager;->removeMessageHandler(Lcom/trilead/ssh2/transport/MessageHandler;II)V

    return v3

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    const/16 p3, 0x33

    if-ne p2, p3, :cond_2

    .line 62
    new-instance p2, Lcom/trilead/ssh2/packets/PacketUserauthFailure;

    array-length p3, p1

    invoke-direct {p2, p1, v2, p3}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;-><init>([BII)V

    .line 63
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->getAuthThatCanContinue()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    .line 64
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->isPartialSuccess()Z

    move-result p1

    iput-boolean p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->isPartialSuccess:Z

    return v2

    .line 65
    :cond_2
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v0, [J

    fill-array-data v1, :array_4

    invoke-direct {p4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p1, p1, v2

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p4, 0x2

    new-array p4, p4, [J

    fill-array-data p4, :array_5

    invoke-direct {p1, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 66
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/16 p3, 0x8

    new-array p3, p3, [J

    fill-array-data p3, :array_6

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/16 p3, 0xb

    new-array p3, p3, [J

    fill-array-data p3, :array_7

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    iget-object p2, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {p2, p1, v2}, Lcom/trilead/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 69
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    new-array p4, v0, [J

    fill-array-data p4, :array_8

    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    nop

    :array_0
    .array-data 8
        -0x7d99676e5be65a5cL    # -4.318822170106577E-297
        -0x21141c36ae2adc44L    # -1.783089428728994E149
        0x2dbf167708e2b7b8L    # 2.4418030264905036E-88
    .end array-data

    :array_1
    .array-data 8
        -0x1f562ce2b5e67d67L    # -4.432027611895551E157
        0x61bae17de1c0dd36L    # 6.046726182229572E162
        0x1b13f2ce384c4d12L
    .end array-data

    :array_2
    .array-data 8
        -0x4979396bb8bb2d00L    # -4.9868052347211875E-46
        -0x7606cf8cc0a053aeL
        0x15fa506553b6ed06L
    .end array-data

    :array_3
    .array-data 8
        -0x713a95942df9d653L
        -0x5647eb3ccc927817L
        -0x3d178b713f0bfbefL    # -2.1511112226409653E14
    .end array-data

    :array_4
    .array-data 8
        0x5f99623e1c97d9c4L    # 3.323638495713719E152
        -0x66d05df918ec4d3eL
        -0x428c465a69a0106L
        -0x66243bb10dadf49cL
        0xa296c68746b7401L
    .end array-data

    :array_5
    .array-data 8
        0x4b03aff59d4bf26aL    # 2.357090867546297E53
        0x6b9c7295030d4934L    # 2.3380964015810938E210
    .end array-data

    :array_6
    .array-data 8
        -0x7b648607528f8e55L
        -0x2231001f6e7dae40L    # -7.560367800272345E143
        -0x52809a6a74bbd00bL    # -1.5412989007189045E-89
        0x57576112a6a7b844L    # 5.622479384816749E112
        -0x5158928c4d50da74L    # -6.029732280910559E-84
        -0x652b6872a2fbb40cL
        -0x4db64e7cc8e4c6a4L    # -1.9060429720558306E-66
        0x7134b95b2a9c619L
    .end array-data

    :array_7
    .array-data 8
        0x90abdbb77a86563L
        0x7322fab4efd3dee7L    # 4.146934651396822E246
        -0x57137b3014b5b8c8L    # -1.482322935051124E-111
        -0x21d2557c4924ac1eL    # -4.630500909879446E145
        -0x4fdfd50c3f3ad547L    # -6.98138447204479E-77
        -0x1dce4892a83b07c7L    # -1.020224781829253E165
        -0x702f4585d48ed81cL
        0x73431610617384e4L    # 1.6681136734827808E247
        -0x37c7b225bd06ed4eL    # -8.270260640865754E39
        -0x35019f2ddef5136dL    # -1.8185338170917105E53
        -0x33845f9efadc4dceL    # -2.7746276498746484E60
    .end array-data

    :array_8
    .array-data 8
        0x695ab97ac96f5a22L    # 3.1962976846461718E199
        -0x5812e58f2f67029fL
        -0x7602e93fb08a2380L
        0xeae8e56bed7829cL    # 5.865568324915078E-238
        0x4b2e9b34f78f00d6L    # 1.4657494677438864E54
    .end array-data
.end method

.method public deQueue()[B
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    sget-wide v3, Lcom/trilead/ssh2/auth/AuthenticationManager;->TIMEOUT:J

    .line 9
    .line 10
    add-long/2addr v1, v3

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    :goto_0
    iget-object v5, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    .line 16
    .line 17
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-nez v5, :cond_1

    .line 22
    .line 23
    cmp-long v5, v3, v1

    .line 24
    .line 25
    if-gez v5, :cond_1

    .line 26
    .line 27
    iget-boolean v3, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->connectionClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    :try_start_1
    iget-object v3, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    .line 32
    .line 33
    sget-wide v4, Lcom/trilead/ssh2/auth/AuthenticationManager;->TIMEOUT:J

    .line 34
    .line 35
    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    .line 38
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v3

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v1

    .line 44
    goto/16 :goto_1

    .line 45
    .line 46
    :catch_0
    move-exception v1

    .line 47
    new-instance v2, Ljava/io/InterruptedIOException;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-direct {v2, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v2

    .line 57
    :cond_0
    new-instance v1, Ljava/io/IOException;

    .line 58
    .line 59
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    const/4 v3, 0x5

    .line 62
    new-array v3, v3, [J

    .line 63
    .line 64
    fill-array-data v3, :array_0

    .line 65
    .line 66
    .line 67
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    iget-object v3, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 75
    .line 76
    invoke-virtual {v3}, Lcom/trilead/ssh2/transport/TransportManager;->getReasonClosedCause()Ljava/lang/Throwable;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-direct {v1, v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    throw v1

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_2

    .line 91
    .line 92
    iget-object v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, [B

    .line 99
    .line 100
    iget-object v2, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    .line 101
    .line 102
    const/4 v3, 0x0

    .line 103
    invoke-virtual {v2, v3}, Ljava/util/Vector;->removeElementAt(I)V

    .line 104
    .line 105
    .line 106
    monitor-exit v0

    .line 107
    return-object v1

    .line 108
    :cond_2
    new-instance v1, Ljava/io/IOException;

    .line 109
    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 116
    .line 117
    const/4 v4, 0x4

    .line 118
    new-array v4, v4, [J

    .line 119
    .line 120
    fill-array-data v4, :array_1

    .line 121
    .line 122
    .line 123
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    sget-wide v3, Lcom/trilead/ssh2/auth/AuthenticationManager;->TIMEOUT:J

    .line 134
    .line 135
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 139
    .line 140
    const/16 v4, 0xa

    .line 141
    .line 142
    new-array v4, v4, [J

    .line 143
    .line 144
    fill-array-data v4, :array_2

    .line 145
    .line 146
    .line 147
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    sget-object v3, Lcom/trilead/ssh2/auth/AuthenticationManager;->PROPERTY_TIMEOUT:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 163
    .line 164
    const/4 v4, 0x3

    .line 165
    new-array v4, v4, [J

    .line 166
    .line 167
    fill-array-data v4, :array_3

    .line 168
    .line 169
    .line 170
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw v1

    .line 188
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    throw v1

    .line 190
    nop

    .line 191
    :array_0
    .array-data 8
        -0x44629eff2756bb9L    # -9.835223078482549E287
        -0x26ed277b34fc36c4L    # -1.21661258629635E121
        -0x5f52359e5d23bbeL    # -7.618735055788068E279
        0x267859e061e458f3L
        0xd8e156205dbbe7L    # 1.4172243989475E-304
    .end array-data

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
    :array_1
    .array-data 8
        0x40ca2ac69fec1f4cL    # 13397.551755442888
        0x2077b9c80fa888e1L
        0x357d446e5ff239d4L    # 4.8890394469202725E-51
        0x5bece5bd99510e67L    # 6.5636771916528024E134
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
    .line 232
    .line 233
    .line 234
    .line 235
    :array_2
    .array-data 8
        -0x5a2bad45938cd1acL
        -0xa908e4ff38ac37L
        0x2efbf7b8d376eb19L    # 2.3034425749753074E-82
        0x365dba3a0aefb4dfL    # 8.136138175230089E-47
        0x78611df6c7aebca2L    # 7.234273776873267E271
        -0x33ad3887d2f8dfe9L    # -4.7151523041018525E59
        0x7dfea9b1276aa4f1L    # 8.0213666439161475E298
        -0x1058c8f1274c8d1dL    # -7.039417312182574E229
        -0x4cc865b7e51c9f61L    # -5.737489484416276E-62
        -0x3112a250d176c27cL    # -1.6214109431348193E72
    .end array-data

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
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
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
    :array_3
    .array-data 8
        0x7d9144bb83fdb5d3L    # 7.058460869431364E296
        -0x6d4f9b774faaaf0dL
        -0x1d105da3db077a1dL    # -3.730823500116567E168
    .end array-data
.end method

.method public getNextMessage()[B
    .locals 4

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->deQueue()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    aget-byte v2, v0, v1

    .line 7
    .line 8
    const/16 v3, 0x35

    .line 9
    .line 10
    if-eq v2, v3, :cond_1

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_1
    new-instance v2, Lcom/trilead/ssh2/packets/PacketUserauthBanner;

    .line 14
    .line 15
    array-length v3, v0

    .line 16
    invoke-direct {v2, v0, v1, v3}, Lcom/trilead/ssh2/packets/PacketUserauthBanner;-><init>([BII)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/PacketUserauthBanner;->getBanner()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->connMonitors:Ljava/util/Vector;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/trilead/ssh2/ConnectionMonitor;

    .line 42
    .line 43
    const/16 v3, 0x65

    .line 44
    .line 45
    invoke-interface {v2, v3, v0}, Lcom/trilead/ssh2/ConnectionMonitor;->onReceiveInfo(ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0
.end method

.method public getPartialSuccess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->isPartialSuccess:Z

    .line 2
    .line 3
    return v0
.end method

.method public getRemainingMethods(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->initialize(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    .line 5
    .line 6
    return-object p1
.end method

.method public handleEndMessage(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    const/4 v0, 0x1

    .line 5
    :try_start_0
    iput-boolean v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->connectionClosed:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

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

.method public handleMessage([BI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-array v1, p2, [B

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {p1, v2, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 p2, 0x5

    .line 27
    if-gt p1, p2, :cond_0

    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->connectionClosed:Z

    .line 35
    .line 36
    new-instance p1, Ljava/io/IOException;

    .line 37
    .line 38
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    const/16 v1, 0x8

    .line 41
    .line 42
    new-array v1, v1, [J

    .line 43
    .line 44
    fill-array-data v1, :array_0

    .line 45
    .line 46
    .line 47
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p1

    .line 60
    nop

    .line 61
    :array_0
    .array-data 8
        -0x2fcc6faf9caa4072L    # -2.2653247790548372E78
        -0x6ee8d67c82647e6dL    # -2.444344285232444E-226
        0x31cb08631224a816L    # 7.833600466672117E-69
        -0x484b3c9a99cadb9eL    # -2.383506041387455E-40
        0x706cc0749d33a057L    # 3.57101261504059E233
        0xa731b668510a350L
        -0x3e30ceba8a635b92L    # -1.046645483223768E9
        0x8b8ba4abe78b3bcL
    .end array-data
.end method

.method public methodPossible(Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    array-length v2, v0

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v2, :cond_2

    .line 10
    .line 11
    aget-object v4, v0, v3

    .line 12
    .line 13
    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-nez v4, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    return v1
.end method

.method public setConnectionMonitors(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lcom/trilead/ssh2/ConnectionMonitor;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/util/Vector;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->connMonitors:Ljava/util/Vector;

    .line 8
    .line 9
    return-void
.end method
