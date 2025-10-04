.class public Lcom/trilead/ssh2/KnownHosts;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;
    }
.end annotation


# static fields
.field public static final HOSTKEY_HAS_CHANGED:I = 0x2

.field public static final HOSTKEY_IS_NEW:I = 0x1

.field public static final HOSTKEY_IS_OK:I

.field private static final LOGGER:Lcom/trilead/ssh2/log/Logger;

.field private static final SECURE_RANDOM:Ljava/security/SecureRandom;


# instance fields
.field private final publicKeys:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/trilead/ssh2/KnownHosts;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/trilead/ssh2/KnownHosts;->LOGGER:Lcom/trilead/ssh2/log/Logger;

    .line 8
    .line 9
    invoke-static {}, Lcom/trilead/ssh2/RandomFactory;->create()Ljava/security/SecureRandom;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/trilead/ssh2/KnownHosts;->SECURE_RANDOM:Ljava/security/SecureRandom;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    .line 8
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/KnownHosts;->initialize(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>([C)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    .line 5
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/KnownHosts;->initialize([C)V

    return-void
.end method

.method public static addHostkeyToFile(Ljava/io/File;[Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    array-length v1, p1

    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    if-eqz p2, :cond_3

    .line 8
    .line 9
    if-eqz p3, :cond_3

    .line 10
    .line 11
    new-instance v1, Ljava/io/CharArrayWriter;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/io/CharArrayWriter;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    array-length v3, p1

    .line 18
    if-ge v2, v3, :cond_1

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    const/16 v3, 0x2c

    .line 23
    .line 24
    invoke-virtual {v1, v3}, Ljava/io/CharArrayWriter;->write(I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    aget-object v3, p1, v2

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/16 p1, 0x20

    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/io/CharArrayWriter;->write(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p1}, Ljava/io/CharArrayWriter;->write(I)V

    .line 44
    .line 45
    .line 46
    invoke-static {p3}, Lcom/trilead/ssh2/crypto/Base64;->encode([B)[C

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write([C)V

    .line 51
    .line 52
    .line 53
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 54
    .line 55
    new-array p2, v0, [J

    .line 56
    .line 57
    fill-array-data p2, :array_0

    .line 58
    .line 59
    .line 60
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toCharArray()[C

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    new-instance p2, Ljava/io/RandomAccessFile;

    .line 75
    .line 76
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    new-array v0, v0, [J

    .line 79
    .line 80
    fill-array-data v0, :array_1

    .line 81
    .line 82
    .line 83
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    invoke-direct {p2, p0, p3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    .line 94
    .line 95
    .line 96
    move-result-wide v0

    .line 97
    const-wide/16 v2, 0x0

    .line 98
    .line 99
    cmp-long p0, v0, v2

    .line 100
    .line 101
    if-lez p0, :cond_2

    .line 102
    .line 103
    const-wide/16 v2, 0x1

    .line 104
    .line 105
    sub-long/2addr v0, v2

    .line 106
    invoke-virtual {p2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->read()I

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    const/16 p3, 0xa

    .line 114
    .line 115
    if-eq p0, p3, :cond_2

    .line 116
    .line 117
    invoke-virtual {p2, p3}, Ljava/io/RandomAccessFile;->write(I)V

    .line 118
    .line 119
    .line 120
    :cond_2
    new-instance p0, Ljava/lang/String;

    .line 121
    .line 122
    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    .line 123
    .line 124
    .line 125
    sget-object p1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 126
    .line 127
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-virtual {p2, p0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 139
    .line 140
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 141
    .line 142
    .line 143
    throw p0

    .line 144
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 145
    .line 146
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 147
    .line 148
    const/4 p2, 0x6

    .line 149
    new-array p2, p2, [J

    .line 150
    .line 151
    fill-array-data p2, :array_2

    .line 152
    .line 153
    .line 154
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p0

    .line 165
    :array_0
    .array-data 8
        0x219bc58eedcea0caL    # 8.687699291369841E-147
        0x6a5685058ebfce95L    # 1.7651355398691868E204
    .end array-data

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
    :array_1
    .array-data 8
        -0x48b8f04ca0e689c5L    # -2.0682116706244622E-42
        0x3cb19882d58266bbL    # 2.4419003442534113E-16
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
    .line 188
    .line 189
    :array_2
    .array-data 8
        -0x13a8238e2b29e7beL    # -8.032812256616389E213
        -0x73d8ee0fc46deb5dL
        -0x1df784fe1eb71585L    # -1.7621703618519884E164
        0x452eb5679dbb5564L    # 1.8562217151124923E25
        0x3c2724ac638842b2L    # 6.2729919577754E-19
        0x38ddd6e7d9b07356L    # 8.979490456170864E-35
    .end array-data
.end method

.method private checkHashed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    new-array v2, v2, [J

    .line 6
    .line 7
    fill-array-data v2, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    return v2

    .line 25
    :cond_0
    const/16 v1, 0x7c

    .line 26
    .line 27
    const/4 v3, 0x3

    .line 28
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->indexOf(II)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v4, -0x1

    .line 33
    if-ne v1, v4, :cond_1

    .line 34
    .line 35
    return v2

    .line 36
    :cond_1
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    add-int/2addr v1, v0

    .line 41
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v1}, Lcom/trilead/ssh2/crypto/Base64;->decode([C)[B

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Lcom/trilead/ssh2/crypto/Base64;->decode([C)[B

    .line 58
    .line 59
    .line 60
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    new-instance v3, Lcom/trilead/ssh2/crypto/digest/SHA1;

    .line 62
    .line 63
    invoke-direct {v3}, Lcom/trilead/ssh2/crypto/digest/SHA1;-><init>()V

    .line 64
    .line 65
    .line 66
    array-length v4, v1

    .line 67
    invoke-virtual {v3}, Lcom/trilead/ssh2/crypto/digest/SHA1;->getDigestLength()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eq v4, v3, :cond_2

    .line 72
    .line 73
    return v2

    .line 74
    :cond_2
    invoke-static {v1, p2}, Lcom/trilead/ssh2/KnownHosts;->hmacSha1Hash([BLjava/lang/String;)[B

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    const/4 v1, 0x0

    .line 79
    :goto_0
    array-length v3, p2

    .line 80
    if-ge v1, v3, :cond_4

    .line 81
    .line 82
    aget-byte v3, p2, v1

    .line 83
    .line 84
    aget-byte v4, p1, v1

    .line 85
    .line 86
    if-eq v3, v4, :cond_3

    .line 87
    .line 88
    return v2

    .line 89
    :cond_3
    add-int/2addr v1, v0

    .line 90
    goto :goto_0

    .line 91
    :cond_4
    return v0

    .line 92
    :catch_0
    return v2

    .line 93
    :array_0
    .array-data 8
        0x1827ae110bd10d91L
        -0x45e57e4eb445eac9L    # -8.364011838771955E-29
    .end array-data
.end method

.method private checkKey(Ljava/lang/String;Ljava/security/PublicKey;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x1

    .line 11
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_2

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;

    .line 22
    .line 23
    invoke-static {v3}, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;)[Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-direct {p0, v4, p1}, Lcom/trilead/ssh2/KnownHosts;->hostnameMatches([Ljava/lang/String;Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-nez v4, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-static {v3}, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;)Ljava/security/PublicKey;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-direct {p0, v2, p2}, Lcom/trilead/ssh2/KnownHosts;->matchKeys(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    monitor-exit v0

    .line 45
    const/4 p1, 0x0

    .line 46
    return p1

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const/4 v2, 0x2

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    monitor-exit v0

    .line 52
    return v2

    .line 53
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p1
.end method

.method public static createBubblebabbleFingerprint(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-static {v0, p0, p1}, Lcom/trilead/ssh2/KnownHosts;->rawFingerPrint(Ljava/lang/String;Ljava/lang/String;[B)[B

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Lcom/trilead/ssh2/KnownHosts;->rawToBubblebabbleFingerprint([B)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :array_0
    .array-data 8
        0x3955c9d8bd561df6L    # 1.6785221667710546E-32
        -0x248b2e7233c58860L    # -3.694273143714763E132
    .end array-data
.end method

.method public static createHashedHostname(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Lcom/trilead/ssh2/crypto/digest/SHA1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/trilead/ssh2/crypto/digest/SHA1;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->getDigestLength()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    sget-object v1, Lcom/trilead/ssh2/KnownHosts;->SECURE_RANDOM:Ljava/security/SecureRandom;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p0}, Lcom/trilead/ssh2/KnownHosts;->hmacSha1Hash([BLjava/lang/String;)[B

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    new-instance v1, Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/trilead/ssh2/crypto/Base64;->encode([B)[C

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {p0}, Lcom/trilead/ssh2/crypto/Base64;->encode([B)[C

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    .line 37
    .line 38
    .line 39
    new-instance p0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    const/4 v3, 0x2

    .line 47
    new-array v4, v3, [J

    .line 48
    .line 49
    fill-array-data v4, :array_0

    .line 50
    .line 51
    .line 52
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 66
    .line 67
    new-array v2, v3, [J

    .line 68
    .line 69
    fill-array-data v2, :array_1

    .line 70
    .line 71
    .line 72
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 73
    .line 74
    .line 75
    invoke-static {v1, p0, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0

    .line 80
    nop

    .line 81
    :array_0
    .array-data 8
        0x5774ca8ce44827ecL    # 2.0000377864698873E113
        0x3e533eebafb764ccL    # 1.7924032908810494E-8
    .end array-data

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
        -0x3090672b0534b910L    # -4.4661653098585425E74
        -0x3396ca17f8236c18L    # -1.2659945898403963E60
    .end array-data
.end method

.method public static createHexFingerprint(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-static {v0, p0, p1}, Lcom/trilead/ssh2/KnownHosts;->rawFingerPrint(Ljava/lang/String;Ljava/lang/String;[B)[B

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Lcom/trilead/ssh2/KnownHosts;->rawToHexFingerprint([B)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :array_0
    .array-data 8
        -0x381b96ab95adffb9L    # -2.170517058545161E38
        -0x156bed3727b598a6L    # -2.517430587069133E205
    .end array-data
.end method

.method private decodeHostKey(Ljava/lang/String;[B)Ljava/security/PublicKey;
    .locals 3

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
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1, p2}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->decodePublicKey([B)Ljava/security/PublicKey;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    new-array v2, v2, [J

    .line 47
    .line 48
    fill-array-data v2, :array_0

    .line 49
    .line 50
    .line 51
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-static {v1, v0, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p2

    .line 62
    nop

    .line 63
    :array_0
    .array-data 8
        0x3aefa63fc9a533b9L    # 8.181180947272048E-25
        -0x7bdabf6b3e12d2fbL    # -1.090384046878261E-288
        -0x22a9abeb41e622e3L    # -4.254381097675249E141
        -0x80cd5097f924ea2L
    .end array-data
.end method

.method private getAllKnownHostEntries(Ljava/lang/String;)Ljava/util/Vector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector<",
            "Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Vector;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;

    .line 26
    .line 27
    invoke-static {v3}, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;)[Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-direct {p0, v4, p1}, Lcom/trilead/ssh2/KnownHosts;->hostnameMatches([Ljava/lang/String;Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    monitor-exit v1

    .line 44
    return-object v0

    .line 45
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p1
.end method

.method private static hmacSha1Hash([BLjava/lang/String;)[B
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    const/16 v1, 0x14

    .line 3
    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/trilead/ssh2/crypto/digest/MessageMac;

    .line 7
    .line 8
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v3, 0x3

    .line 11
    new-array v3, v3, [J

    .line 12
    .line 13
    fill-array-data v3, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-direct {v0, v2, p0}, Lcom/trilead/ssh2/crypto/digest/MessageMac;-><init>(Ljava/lang/String;[B)V

    .line 24
    .line 25
    .line 26
    sget-object p0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 27
    .line 28
    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    array-length p1, p0

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-virtual {v0, p0, v2, p1}, Lcom/trilead/ssh2/crypto/digest/MessageMac;->update([BII)V

    .line 35
    .line 36
    .line 37
    new-array p0, v1, [B

    .line 38
    .line 39
    invoke-virtual {v0, p0, v2}, Lcom/trilead/ssh2/crypto/digest/MessageMac;->getMac([BI)V

    .line 40
    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    const/4 v2, 0x4

    .line 53
    new-array v2, v2, [J

    .line 54
    .line 55
    fill-array-data v2, :array_1

    .line 56
    .line 57
    .line 58
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    array-length p0, p0

    .line 69
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    const/4 v1, 0x2

    .line 75
    new-array v1, v1, [J

    .line 76
    .line 77
    fill-array-data v1, :array_2

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-static {p0, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1

    .line 91
    :array_0
    .array-data 8
        -0x1c2c3f108da233cfL    # -7.633873581417856E172
        -0x3a7a049f82667469L    # -8.503851563826233E26
        -0x1625a69098449dfL
    .end array-data

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
    :array_1
    .array-data 8
        -0x2b194202c0516eebL    # -9.948554854072515E100
        0x6cf0bb620462df48L
        0x7a02d91db1061304L    # 5.345813223139598E279
        0x61fe4cbd1eaaae50L    # 1.090528092480792E164
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
    :array_2
    .array-data 8
        -0x68f80f0e9b8c09fcL    # -1.0008718396222956E-197
        -0x3b3672bc08c4aebaL    # -2.4133010086894844E23
    .end array-data
.end method

.method private hostnameMatches([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    array-length v0, p1

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_9

    .line 10
    .line 11
    aget-object v4, p1, v2

    .line 12
    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    const/4 v6, 0x1

    .line 22
    if-lez v5, :cond_1

    .line 23
    .line 24
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    const/16 v7, 0x21

    .line 29
    .line 30
    if-ne v5, v7, :cond_1

    .line 31
    .line 32
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    const/4 v5, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v5, 0x0

    .line 39
    :goto_1
    if-eqz v3, :cond_2

    .line 40
    .line 41
    if-nez v5, :cond_2

    .line 42
    .line 43
    goto/16 :goto_3

    .line 44
    .line 45
    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    const/16 v8, 0x7c

    .line 50
    .line 51
    if-ne v7, v8, :cond_4

    .line 52
    .line 53
    invoke-direct {p0, v4, p2}, Lcom/trilead/ssh2/KnownHosts;->checkHashed(Ljava/lang/String;Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_8

    .line 58
    .line 59
    if-eqz v5, :cond_3

    .line 60
    .line 61
    return v1

    .line 62
    :cond_3
    const/4 v3, 0x1

    .line 63
    goto :goto_3

    .line 64
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    const/16 v7, 0x3f

    .line 69
    .line 70
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    const/4 v8, -0x1

    .line 75
    if-ne v7, v8, :cond_7

    .line 76
    .line 77
    const/16 v7, 0x2a

    .line 78
    .line 79
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    if-eq v7, v8, :cond_5

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_5
    invoke-virtual {v4, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-nez v7, :cond_6

    .line 91
    .line 92
    if-eqz v5, :cond_3

    .line 93
    .line 94
    return v1

    .line 95
    :cond_6
    const/16 v7, 0x3a

    .line 96
    .line 97
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    if-lez v8, :cond_8

    .line 106
    .line 107
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    add-int/lit8 v9, v9, -0x2

    .line 112
    .line 113
    if-ge v8, v9, :cond_8

    .line 114
    .line 115
    if-ne v8, v7, :cond_8

    .line 116
    .line 117
    new-instance v7, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v8, "["

    .line 120
    .line 121
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const/16 v8, 0x5d

    .line 128
    .line 129
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-eqz v4, :cond_8

    .line 141
    .line 142
    if-eqz v5, :cond_3

    .line 143
    .line 144
    return v1

    .line 145
    :cond_7
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    invoke-direct {p0, v4, v1, v7, v1}, Lcom/trilead/ssh2/KnownHosts;->pseudoRegex([CI[CI)Z

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    if-eqz v4, :cond_8

    .line 158
    .line 159
    if-eqz v5, :cond_3

    .line 160
    .line 161
    return v1

    .line 162
    :cond_8
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 163
    .line 164
    goto/16 :goto_0

    .line 165
    .line 166
    :cond_9
    return v3
.end method

.method private initialize(Ljava/io/File;)V
    .locals 5

    const/16 v0, 0x200

    .line 15
    new-array v0, v0, [C

    .line 16
    new-instance v1, Ljava/io/CharArrayWriter;

    invoke-direct {v1}, Ljava/io/CharArrayWriter;-><init>()V

    .line 17
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-nez v2, :cond_0

    .line 18
    sget-object v2, Lcom/trilead/ssh2/KnownHosts;->LOGGER:Lcom/trilead/ssh2/log/Logger;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x6

    new-array v4, v4, [J

    fill-array-data v4, :array_0

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v2, v4, v3}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 19
    :cond_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 20
    :goto_0
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/io/Reader;->read([C)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez p1, :cond_1

    .line 21
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 22
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/trilead/ssh2/KnownHosts;->initialize([C)V

    return-void

    :cond_1
    const/4 v3, 0x0

    .line 23
    :try_start_1
    invoke-virtual {v1, v0, v3, p1}, Ljava/io/CharArrayWriter;->write([CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 24
    :try_start_2
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1

    :array_0
    .array-data 8
        0x55379f159efdc4cL
        0x6b1fb760b4727a65L    # 1.0182626347284609E208
        -0x61077afa0af12db3L
        0x17195e544d05e3c0L
        -0x6095b9c58b7f1e75L
        0x791bc02d5b3f6c37L    # 2.401982687373562E275
    .end array-data
.end method

.method private initialize([C)V
    .locals 8

    const/4 v0, 0x4

    const/4 v1, 0x2

    .line 1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/CharArrayReader;

    invoke-direct {v3, p1}, Ljava/io/CharArrayReader;-><init>([C)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_0

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_1

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 6
    array-length v4, v3

    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    .line 7
    aget-object v5, v3, v4

    .line 8
    invoke-static {}, Lcom/trilead/ssh2/signature/KeyAlgorithmManager;->getSupportedAlgorithms()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/trilead/ssh2/signature/KeyAlgorithm;

    .line 9
    invoke-virtual {v7}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->getKeyFormat()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v4, 0x0

    .line 10
    aget-object v4, v3, v4

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v1, [J

    fill-array-data v7, :array_2

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 11
    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v3}, Lcom/trilead/ssh2/crypto/Base64;->decode([C)[B

    move-result-object v3

    .line 12
    :try_start_0
    invoke-virtual {p0, v4, v5, v3}, Lcom/trilead/ssh2/KnownHosts;->addHostkey([Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_0
    .catch Lcom/trilead/ssh2/IOWarningException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 13
    sget-object v4, Lcom/trilead/ssh2/KnownHosts;->LOGGER:Lcom/trilead/ssh2/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v0, [J

    fill-array-data v7, :array_3

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v1, [J

    fill-array-data v6, :array_4

    invoke-direct {p1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v5, 0x1e

    invoke-virtual {v4, v5, p1, v3}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 14
    :cond_3
    sget-object p1, Lcom/trilead/ssh2/KnownHosts;->LOGGER:Lcom/trilead/ssh2/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v0, [J

    fill-array-data v7, :array_5

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    return-void

    nop

    :array_0
    .array-data 8
        -0x53fa326487ed7a3dL    # -1.2759413536055504E-96
        -0x6a0f8fba69eb4476L    # -5.24308320626857E-203
    .end array-data

    :array_1
    .array-data 8
        0xf0ea691b2973abeL
        0x27705a5a075149bL
    .end array-data

    :array_2
    .array-data 8
        0x4b7108fccdc52b48L    # 2.610622625081589E55
        -0x7a9314c9574bfbe6L
    .end array-data

    :array_3
    .array-data 8
        -0x35664e4106185cddL    # -2.4033466375089525E51
        -0x2f5cdd75faaf4575L    # -2.836060408244417E80
        -0x4b514df1a56df433L    # -6.2593027807697074E-55
        -0x55995dec4feedc42L
    .end array-data

    :array_4
    .array-data 8
        0x3a4275f2e5d87ca4L    # 4.660145329887681E-28
        -0x6de4883d9858b5f6L    # -1.899709684549667E-221
    .end array-data

    :array_5
    .array-data 8
        0x567d2a9bb6d1d2edL    # 4.281163926669933E108
        -0x241c4ab651a5f900L    # -4.476453320745447E134
        -0x3d1bea52864306dcL    # -1.7666669844269712E14
        -0x986bee7c23fbc25L
    .end array-data
.end method

.method private matchKeys(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z
    .locals 0

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    return p1

    .line 9
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method private pseudoRegex([CI[CI)Z
    .locals 6

    .line 1
    :goto_0
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-ne v0, p2, :cond_1

    .line 5
    .line 6
    array-length p1, p3

    .line 7
    if-ne p1, p4, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    :cond_0
    return v1

    .line 11
    :cond_1
    aget-char v0, p1, p2

    .line 12
    .line 13
    const/16 v3, 0x3f

    .line 14
    .line 15
    const/16 v4, 0x2a

    .line 16
    .line 17
    if-ne v0, v4, :cond_7

    .line 18
    .line 19
    add-int/lit8 v5, p2, 0x1

    .line 20
    .line 21
    array-length v0, p1

    .line 22
    if-ne v0, v5, :cond_2

    .line 23
    .line 24
    return v2

    .line 25
    :cond_2
    aget-char v0, p1, v5

    .line 26
    .line 27
    if-eq v0, v4, :cond_5

    .line 28
    .line 29
    if-eq v0, v3, :cond_5

    .line 30
    .line 31
    :cond_3
    aget-char v0, p1, v5

    .line 32
    .line 33
    aget-char v3, p3, p4

    .line 34
    .line 35
    if-ne v0, v3, :cond_4

    .line 36
    .line 37
    add-int/lit8 v0, p2, 0x2

    .line 38
    .line 39
    add-int/lit8 v3, p4, 0x1

    .line 40
    .line 41
    invoke-direct {p0, p1, v0, p3, v3}, Lcom/trilead/ssh2/KnownHosts;->pseudoRegex([CI[CI)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    return v2

    .line 48
    :cond_4
    add-int/lit8 p4, p4, 0x1

    .line 49
    .line 50
    array-length v0, p3

    .line 51
    if-ne v0, p4, :cond_3

    .line 52
    .line 53
    return v1

    .line 54
    :cond_5
    invoke-direct {p0, p1, v5, p3, p4}, Lcom/trilead/ssh2/KnownHosts;->pseudoRegex([CI[CI)Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-eqz p2, :cond_6

    .line 59
    .line 60
    return v2

    .line 61
    :cond_6
    add-int/lit8 p4, p4, 0x1

    .line 62
    .line 63
    array-length p2, p3

    .line 64
    if-ne p2, p4, :cond_5

    .line 65
    .line 66
    return v1

    .line 67
    :cond_7
    array-length v2, p3

    .line 68
    if-ne v2, p4, :cond_8

    .line 69
    .line 70
    return v1

    .line 71
    :cond_8
    if-eq v0, v3, :cond_9

    .line 72
    .line 73
    aget-char v2, p3, p4

    .line 74
    .line 75
    if-eq v0, v2, :cond_9

    .line 76
    .line 77
    return v1

    .line 78
    :cond_9
    add-int/lit8 p2, p2, 0x1

    .line 79
    .line 80
    add-int/lit8 p4, p4, 0x1

    .line 81
    .line 82
    goto :goto_0
.end method

.method private static rawFingerPrint(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    new-array v3, v2, [J

    .line 6
    .line 7
    fill-array-data v3, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    new-instance p0, Lcom/trilead/ssh2/crypto/digest/MD5;

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/digest/MD5;-><init>()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    new-array v2, v2, [J

    .line 32
    .line 33
    fill-array-data v2, :array_1

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    new-instance p0, Lcom/trilead/ssh2/crypto/digest/SHA1;

    .line 50
    .line 51
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;-><init>()V

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-static {}, Lcom/trilead/ssh2/signature/KeyAlgorithmManager;->getSupportedAlgorithms()Ljava/util/Collection;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Lcom/trilead/ssh2/signature/KeyAlgorithm;

    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->getKeyFormat()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_1

    .line 83
    .line 84
    if-eqz p2, :cond_2

    .line 85
    .line 86
    invoke-interface {p0, p2}, Lcom/trilead/ssh2/crypto/digest/Digest;->update([B)V

    .line 87
    .line 88
    .line 89
    invoke-interface {p0}, Lcom/trilead/ssh2/crypto/digest/Digest;->getDigestLength()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    new-array p1, p1, [B

    .line 94
    .line 95
    invoke-interface {p0, p1}, Lcom/trilead/ssh2/crypto/digest/Digest;->digest([B)V

    .line 96
    .line 97
    .line 98
    return-object p1

    .line 99
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 100
    .line 101
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 102
    .line 103
    const/4 p2, 0x3

    .line 104
    new-array p2, p2, [J

    .line 105
    .line 106
    fill-array-data p2, :array_2

    .line 107
    .line 108
    .line 109
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p0

    .line 120
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 121
    .line 122
    new-instance p2, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 128
    .line 129
    new-array v0, v0, [J

    .line 130
    .line 131
    fill-array-data v0, :array_3

    .line 132
    .line 133
    .line 134
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 135
    .line 136
    .line 137
    invoke-static {v1, p2, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw p0

    .line 145
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 146
    .line 147
    new-instance p2, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 153
    .line 154
    new-array v0, v0, [J

    .line 155
    .line 156
    fill-array-data v0, :array_4

    .line 157
    .line 158
    .line 159
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 160
    .line 161
    .line 162
    invoke-static {v1, p2, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw p1

    .line 170
    nop

    .line 171
    :array_0
    .array-data 8
        -0x4ceb45da2737a0e7L    # -1.2596221568777595E-62
        0x27192b30a27ec791L
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
    :array_1
    .array-data 8
        0x4eaa821f5ab7556cL    # 9.147675004139219E70
        0x40fda0c9accd2f5bL    # 121356.60468786715
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
    :array_2
    .array-data 8
        -0x71198444bd068784L
        -0x763fcc77906a3b10L
        0x74e39a3302b89ba1L    # 1.149725811669322E255
    .end array-data

    .line 196
    .line 197
    :array_3
    .array-data 8
        -0x7f0dd85955f30fdeL
        0x1d7c5d28e91f40c3L
        -0x78593f6c7f5f7716L    # -8.411593731630616E-272
        -0x63230c5c39595caeL
    .end array-data

    :array_4
    .array-data 8
        0x7b31625833a503cfL    # 2.585053740862559E285
        -0x490b128d6ee35ea0L    # -5.865142962428768E-44
        -0x5bdfb46eb527f92cL
        0x669b5c1419fe9c22L    # 1.8600661037589523E186
    .end array-data
.end method

.method private static rawToBubblebabbleFingerprint([B)Ljava/lang/String;
    .locals 12

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 v3, 0x4

    .line 23
    new-array v4, v3, [J

    .line 24
    .line 25
    fill-array-data v4, :array_1

    .line 26
    .line 27
    .line 28
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v5, "x"

    .line 42
    .line 43
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    array-length v5, p0

    .line 47
    div-int/2addr v5, v1

    .line 48
    const/4 v6, 0x1

    .line 49
    add-int/2addr v5, v6

    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v8, 0x1

    .line 52
    :goto_0
    const/16 v9, 0x78

    .line 53
    .line 54
    if-ge v7, v5, :cond_3

    .line 55
    .line 56
    add-int/lit8 v10, v7, 0x1

    .line 57
    .line 58
    if-lt v10, v5, :cond_1

    .line 59
    .line 60
    array-length v11, p0

    .line 61
    rem-int/2addr v11, v1

    .line 62
    if-eqz v11, :cond_0

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_0
    rem-int/lit8 v7, v8, 0x6

    .line 66
    .line 67
    aget-char v7, v0, v7

    .line 68
    .line 69
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    div-int/lit8 v7, v8, 0x6

    .line 76
    .line 77
    aget-char v7, v0, v7

    .line 78
    .line 79
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_1
    :goto_1
    mul-int/lit8 v7, v7, 0x2

    .line 84
    .line 85
    aget-byte v9, p0, v7

    .line 86
    .line 87
    shr-int/lit8 v9, v9, 0x6

    .line 88
    .line 89
    and-int/lit8 v9, v9, 0x3

    .line 90
    .line 91
    add-int/2addr v9, v8

    .line 92
    rem-int/lit8 v9, v9, 0x6

    .line 93
    .line 94
    aget-char v9, v0, v9

    .line 95
    .line 96
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    aget-byte v9, p0, v7

    .line 100
    .line 101
    shr-int/2addr v9, v1

    .line 102
    and-int/lit8 v9, v9, 0xf

    .line 103
    .line 104
    aget-char v9, v2, v9

    .line 105
    .line 106
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    aget-byte v9, p0, v7

    .line 110
    .line 111
    and-int/lit8 v9, v9, 0x3

    .line 112
    .line 113
    div-int/lit8 v11, v8, 0x6

    .line 114
    .line 115
    add-int/2addr v11, v9

    .line 116
    rem-int/lit8 v11, v11, 0x6

    .line 117
    .line 118
    aget-char v9, v0, v11

    .line 119
    .line 120
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    if-ge v10, v5, :cond_2

    .line 124
    .line 125
    add-int/lit8 v9, v7, 0x1

    .line 126
    .line 127
    aget-byte v11, p0, v9

    .line 128
    .line 129
    shr-int/2addr v11, v3

    .line 130
    and-int/lit8 v11, v11, 0xf

    .line 131
    .line 132
    aget-char v11, v2, v11

    .line 133
    .line 134
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const/16 v11, 0x2d

    .line 138
    .line 139
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    aget-byte v11, p0, v9

    .line 143
    .line 144
    and-int/lit8 v11, v11, 0xf

    .line 145
    .line 146
    aget-char v11, v2, v11

    .line 147
    .line 148
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    mul-int/lit8 v8, v8, 0x5

    .line 152
    .line 153
    aget-byte v7, p0, v7

    .line 154
    .line 155
    and-int/lit16 v7, v7, 0xff

    .line 156
    .line 157
    mul-int/lit8 v7, v7, 0x7

    .line 158
    .line 159
    aget-byte v9, p0, v9

    .line 160
    .line 161
    and-int/lit16 v9, v9, 0xff

    .line 162
    .line 163
    add-int/2addr v7, v9

    .line 164
    add-int/2addr v7, v8

    .line 165
    rem-int/lit8 v8, v7, 0x24

    .line 166
    .line 167
    :cond_2
    :goto_2
    move v7, v10

    .line 168
    goto :goto_0

    .line 169
    :cond_3
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    return-object p0

    .line 177
    :array_0
    .array-data 8
        -0x15b5b2e73637a537L    # -1.0307704901382967E204
        -0x272a7dc437961584L    # -8.678265901703678E119
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
        -0x4d69db987eceb3bcL    # -5.256320037512207E-65
        -0x5f2df39552a6ae84L    # -1.378425685014739E-150
        0xd4ac89ba1590fc3L
        -0x1f3778026d326134L    # -1.6840181342260943E158
    .end array-data
.end method

.method private static rawToHexFingerprint([B)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    :goto_0
    array-length v3, p0

    .line 27
    if-ge v2, v3, :cond_1

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    const/16 v3, 0x3a

    .line 32
    .line 33
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    :cond_0
    aget-byte v3, p0, v2

    .line 37
    .line 38
    and-int/lit16 v4, v3, 0xff

    .line 39
    .line 40
    shr-int/lit8 v4, v4, 0x4

    .line 41
    .line 42
    aget-char v4, v0, v4

    .line 43
    .line 44
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    and-int/lit8 v3, v3, 0xf

    .line 48
    .line 49
    aget-char v3, v0, v3

    .line 50
    .line 51
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    nop

    .line 63
    :array_0
    .array-data 8
        0x41c16aff9b10c3f9L    # 5.844498461309806E8
        0x676b67b9cc2f78a1L    # 1.5263000594944858E190
        0x68cdfc42a918d5ddL    # 7.004496441434083E196
    .end array-data
.end method

.method private recommendHostkeyAlgorithms(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/KnownHosts;->getAllKnownHostEntries(Ljava/lang/String;)Ljava/util/Vector;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    move-object v1, v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;

    .line 22
    .line 23
    invoke-static {v2}, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_1
    move-object v1, v2

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    if-nez v1, :cond_3

    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lcom/trilead/ssh2/signature/KeyAlgorithmManager;->getSupportedAlgorithms()Ljava/util/Collection;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_4

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Lcom/trilead/ssh2/signature/KeyAlgorithm;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-virtual {v2}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->getKeyFormat()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {p1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    const/4 v2, 0x0

    .line 83
    if-eqz v0, :cond_5

    .line 84
    .line 85
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_5
    new-array v0, v2, [Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, [Ljava/lang/String;

    .line 98
    .line 99
    return-object p1
.end method


# virtual methods
.method public addHostkey([Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 9

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-static {}, Lcom/trilead/ssh2/signature/KeyAlgorithmManager;->getSupportedAlgorithms()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/trilead/ssh2/signature/KeyAlgorithm;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->getKeyFormat()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1, p3}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->decodePublicKey([B)Ljava/security/PublicKey;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    iget-object v1, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    .line 38
    .line 39
    monitor-enter v1

    .line 40
    :try_start_0
    iget-object p3, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    .line 41
    .line 42
    new-instance v0, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;

    .line 43
    .line 44
    const/4 v8, 0x0

    .line 45
    move-object v3, v0

    .line 46
    move-object v4, p0

    .line 47
    move-object v5, p1

    .line 48
    move-object v7, p2

    .line 49
    invoke-direct/range {v3 .. v8}, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;-><init>(Lcom/trilead/ssh2/KnownHosts;[Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    monitor-exit v1

    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p1

    .line 60
    :cond_1
    new-instance p1, Lcom/trilead/ssh2/IOWarningException;

    .line 61
    .line 62
    new-instance p3, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    const/4 v1, 0x4

    .line 70
    new-array v1, v1, [J

    .line 71
    .line 72
    fill-array-data v1, :array_0

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 89
    .line 90
    const/4 v0, 0x2

    .line 91
    new-array v0, v0, [J

    .line 92
    .line 93
    fill-array-data v0, :array_1

    .line 94
    .line 95
    .line 96
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 97
    .line 98
    .line 99
    invoke-static {p2, p3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-direct {p1, p2}, Lcom/trilead/ssh2/IOWarningException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p1

    .line 107
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 108
    .line 109
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 110
    .line 111
    const/4 p3, 0x5

    .line 112
    new-array p3, p3, [J

    .line 113
    .line 114
    fill-array-data p3, :array_2

    .line 115
    .line 116
    .line 117
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p1

    .line 128
    nop

    .line 129
    :array_0
    .array-data 8
        -0x2a7dc917234ed9eeL    # -8.159161952366483E103
        -0x4f714379fd7b206dL    # -8.494236877239176E-75
        0x655f64ce3270ea29L    # 2.03545223196981E180
        0x5e6b928ca74d6042L    # 6.885942638644149E146
    .end array-data

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
        -0x3b8dd53094623a26L    # -5.362019134750679E21
        0x6b2b85f633e57bb3L    # 1.7672880293669333E208
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
        -0x720f51ecd744cf9bL
        0x56bb6c7f7dcb80f9L    # 6.440600990760157E109
        -0x7223db10e98536ebL    # -6.594980755182125E-242
        -0x3aa237f7b7c636L    # -3.0007899259972014E307
        -0x1e09dd2cc6e8498L
    .end array-data
.end method

.method public addHostkeys(Ljava/io/File;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/KnownHosts;->initialize(Ljava/io/File;)V

    return-void
.end method

.method public addHostkeys([C)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/KnownHosts;->initialize([C)V

    return-void
.end method

.method public getPreferredServerHostkeyAlgorithmOrder(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/KnownHosts;->recommendHostkeyAlgorithms(Ljava/lang/String;)[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    array-length v1, p1

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-ge v2, v1, :cond_2

    .line 16
    .line 17
    aget-object v3, p1, v2

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-direct {p0, v3}, Lcom/trilead/ssh2/KnownHosts;->recommendHostkeyAlgorithms(Ljava/lang/String;)[Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    return-object v3

    .line 30
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    :cond_2
    return-object v0
.end method

.method public verifyHostkey(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 4

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/trilead/ssh2/KnownHosts;->decodeHostKey(Ljava/lang/String;[B)Ljava/security/PublicKey;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/trilead/ssh2/KnownHosts;->checkKey(Ljava/lang/String;Ljava/security/PublicKey;)I

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    return p3

    .line 12
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 13
    .line 14
    .line 15
    move-result-object p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    array-length v0, p1

    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    if-ge v1, v0, :cond_3

    .line 19
    .line 20
    aget-object v2, p1, v1

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-direct {p0, v2, p2}, Lcom/trilead/ssh2/KnownHosts;->checkKey(Ljava/lang/String;Ljava/security/PublicKey;)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    return v2

    .line 33
    :cond_1
    const/4 v3, 0x2

    .line 34
    if-ne v2, v3, :cond_2

    .line 35
    .line 36
    const/4 p3, 0x2

    .line 37
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    :cond_3
    return p3
.end method
