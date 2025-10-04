.class public Lcom/trilead/ssh2/transport/TransportConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final log:Lcom/trilead/ssh2/log/Logger;


# instance fields
.field cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

.field cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

.field csh:Lcom/trilead/ssh2/transport/ClientServerHello;

.field recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

.field recv_mac_buffer:[B

.field recv_mac_buffer_cmp:[B

.field final recv_packet_header_buffer:[B

.field recv_packet_header_present:Z

.field recv_padd_blocksize:I

.field final recv_padding_buffer:[B

.field recv_seq_number:I

.field final rnd:Ljava/security/SecureRandom;

.field send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

.field send_mac_buffer:[B

.field final send_packet_header_buffer:[B

.field send_padd_blocksize:I

.field final send_padding_buffer:[B

.field send_seq_number:I

.field useRandomPadding:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/trilead/ssh2/transport/TransportConnection;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/trilead/ssh2/transport/TransportConnection;->log:Lcom/trilead/ssh2/log/Logger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_seq_number:I

    .line 6
    .line 7
    iput v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_seq_number:I

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->useRandomPadding:Z

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    iput v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padd_blocksize:I

    .line 14
    .line 15
    iput v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_padd_blocksize:I

    .line 16
    .line 17
    const/16 v1, 0x100

    .line 18
    .line 19
    new-array v2, v1, [B

    .line 20
    .line 21
    iput-object v2, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padding_buffer:[B

    .line 22
    .line 23
    const/4 v2, 0x5

    .line 24
    new-array v3, v2, [B

    .line 25
    .line 26
    iput-object v3, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_packet_header_buffer:[B

    .line 27
    .line 28
    new-array v1, v1, [B

    .line 29
    .line 30
    iput-object v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_padding_buffer:[B

    .line 31
    .line 32
    new-array v1, v2, [B

    .line 33
    .line 34
    iput-object v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_present:Z

    .line 37
    .line 38
    new-instance v0, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    .line 39
    .line 40
    new-instance v1, Lcom/trilead/ssh2/crypto/cipher/NullCipher;

    .line 41
    .line 42
    invoke-direct {v1}, Lcom/trilead/ssh2/crypto/cipher/NullCipher;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, v1, p1}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;-><init>(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Ljava/io/InputStream;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    .line 49
    .line 50
    new-instance p1, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    .line 51
    .line 52
    new-instance v0, Lcom/trilead/ssh2/crypto/cipher/NullCipher;

    .line 53
    .line 54
    invoke-direct {v0}, Lcom/trilead/ssh2/crypto/cipher/NullCipher;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-direct {p1, v0, p2}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;-><init>(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Ljava/io/OutputStream;)V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    .line 61
    .line 62
    iput-object p3, p0, Lcom/trilead/ssh2/transport/TransportConnection;->rnd:Ljava/security/SecureRandom;

    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public changeRecvCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Lcom/trilead/ssh2/crypto/digest/MAC;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->changeCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/trilead/ssh2/crypto/digest/MAC;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    new-array v1, v1, [B

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v1, v0

    .line 19
    :goto_0
    iput-object v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac_buffer:[B

    .line 20
    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/trilead/ssh2/crypto/digest/MAC;->size()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    new-array v0, p2, [B

    .line 28
    .line 29
    :cond_1
    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac_buffer_cmp:[B

    .line 30
    .line 31
    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iput p1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_padd_blocksize:I

    .line 36
    .line 37
    const/16 p2, 0x8

    .line 38
    .line 39
    if-ge p1, p2, :cond_2

    .line 40
    .line 41
    iput p2, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_padd_blocksize:I

    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method public changeSendCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Lcom/trilead/ssh2/crypto/digest/MAC;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/trilead/ssh2/crypto/cipher/NullCipher;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->useRandomPadding:Z

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->changeCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/trilead/ssh2/crypto/digest/MAC;->size()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    new-array p2, p2, [B

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p2, 0x0

    .line 25
    :goto_0
    iput-object p2, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac_buffer:[B

    .line 26
    .line 27
    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput p1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padd_blocksize:I

    .line 32
    .line 33
    const/16 p2, 0x8

    .line 34
    .line 35
    if-ge p1, p2, :cond_2

    .line 36
    .line 37
    iput p2, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padd_blocksize:I

    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method public getPacketOverheadEstimate()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padd_blocksize:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac_buffer:[B

    .line 6
    .line 7
    array-length v1, v1

    .line 8
    add-int/2addr v0, v1

    .line 9
    return v0
.end method

.method public peekNextMessageLength()I
    .locals 7

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x2

    .line 3
    iget-boolean v2, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_present:Z

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    iget-object v2, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    .line 12
    .line 13
    const/4 v6, 0x5

    .line 14
    invoke-virtual {v2, v5, v3, v6}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->read([BII)I

    .line 15
    .line 16
    .line 17
    iput-boolean v4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_present:Z

    .line 18
    .line 19
    :cond_0
    iget-object v2, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    .line 20
    .line 21
    aget-byte v3, v2, v3

    .line 22
    .line 23
    and-int/lit16 v3, v3, 0xff

    .line 24
    .line 25
    shl-int/lit8 v3, v3, 0x18

    .line 26
    .line 27
    aget-byte v5, v2, v4

    .line 28
    .line 29
    and-int/lit16 v5, v5, 0xff

    .line 30
    .line 31
    shl-int/lit8 v5, v5, 0x10

    .line 32
    .line 33
    or-int/2addr v3, v5

    .line 34
    aget-byte v5, v2, v1

    .line 35
    .line 36
    and-int/lit16 v5, v5, 0xff

    .line 37
    .line 38
    shl-int/lit8 v5, v5, 0x8

    .line 39
    .line 40
    or-int/2addr v3, v5

    .line 41
    const/4 v5, 0x3

    .line 42
    aget-byte v5, v2, v5

    .line 43
    .line 44
    and-int/lit16 v5, v5, 0xff

    .line 45
    .line 46
    or-int/2addr v3, v5

    .line 47
    aget-byte v2, v2, v0

    .line 48
    .line 49
    and-int/lit16 v2, v2, 0xff

    .line 50
    .line 51
    sget v5, Lcom/trilead/ssh2/transport/TransportManager;->MAX_PACKET_SIZE:I

    .line 52
    .line 53
    if-gt v3, v5, :cond_2

    .line 54
    .line 55
    const/16 v5, 0xc

    .line 56
    .line 57
    if-lt v3, v5, :cond_2

    .line 58
    .line 59
    sub-int/2addr v3, v2

    .line 60
    sub-int/2addr v3, v4

    .line 61
    if-ltz v3, :cond_1

    .line 62
    .line 63
    return v3

    .line 64
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 65
    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 72
    .line 73
    const/4 v5, 0x7

    .line 74
    new-array v5, v5, [J

    .line 75
    .line 76
    fill-array-data v5, :array_0

    .line 77
    .line 78
    .line 79
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 93
    .line 94
    new-array v1, v1, [J

    .line 95
    .line 96
    fill-array-data v1, :array_1

    .line 97
    .line 98
    .line 99
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    invoke-static {v2, v3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw v0

    .line 110
    :cond_2
    new-instance v2, Ljava/io/IOException;

    .line 111
    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 118
    .line 119
    new-array v0, v0, [J

    .line 120
    .line 121
    fill-array-data v0, :array_2

    .line 122
    .line 123
    .line 124
    invoke-direct {v5, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 138
    .line 139
    new-array v1, v1, [J

    .line 140
    .line 141
    fill-array-data v1, :array_3

    .line 142
    .line 143
    .line 144
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 145
    .line 146
    .line 147
    invoke-static {v0, v4}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw v2

    .line 155
    :array_0
    .array-data 8
        0x4e4a3c7727899882L    # 1.414652736281793E69
        0x5138c7f3fa3a172dL    # 1.8805237149880183E83
        -0x65e1570081a40940L
        0x4753b1f1b2b8a379L    # 4.0905110444288034E35
        -0x540342472aa3e181L    # -8.40978348097556E-97
        -0x1706931b397bf6c7L    # -4.751430525327313E197
        -0x3a3c1f45de845929L    # -1.2303787096035293E28
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
    :array_1
    .array-data 8
        -0x3ff13c6236fe0512L    # -3.8455157951096828
        0x29201a561ce87482L
    .end array-data

    :array_2
    .array-data 8
        0xa38bef3ef749f99L
        -0xcebbef5a00bb84eL
        -0xb4f8199ad46289aL
        -0x4f725a145b56dd4fL    # -8.193479074504289E-75
    .end array-data

    :array_3
    .array-data 8
        0x3cfb0a9f968a7961L    # 6.004418655702598E-15
        -0x77ff259abd3a32eL
    .end array-data
.end method

.method public receiveMessage([BII)I
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x2

    .line 5
    iget-boolean v4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_present:Z

    .line 6
    .line 7
    const/4 v5, 0x5

    .line 8
    const/4 v6, 0x0

    .line 9
    if-nez v4, :cond_0

    .line 10
    .line 11
    iget-object v4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    .line 12
    .line 13
    iget-object v7, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    .line 14
    .line 15
    invoke-virtual {v4, v7, v6, v5}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->read([BII)I

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iput-boolean v6, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_present:Z

    .line 20
    .line 21
    :goto_0
    iget-object v4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    .line 22
    .line 23
    aget-byte v7, v4, v6

    .line 24
    .line 25
    and-int/lit16 v7, v7, 0xff

    .line 26
    .line 27
    shl-int/lit8 v7, v7, 0x18

    .line 28
    .line 29
    aget-byte v8, v4, v0

    .line 30
    .line 31
    and-int/lit16 v8, v8, 0xff

    .line 32
    .line 33
    shl-int/lit8 v8, v8, 0x10

    .line 34
    .line 35
    or-int/2addr v7, v8

    .line 36
    aget-byte v8, v4, v3

    .line 37
    .line 38
    and-int/lit16 v8, v8, 0xff

    .line 39
    .line 40
    shl-int/lit8 v8, v8, 0x8

    .line 41
    .line 42
    or-int/2addr v7, v8

    .line 43
    aget-byte v8, v4, v2

    .line 44
    .line 45
    and-int/lit16 v8, v8, 0xff

    .line 46
    .line 47
    or-int/2addr v7, v8

    .line 48
    aget-byte v4, v4, v1

    .line 49
    .line 50
    and-int/lit16 v4, v4, 0xff

    .line 51
    .line 52
    sget v8, Lcom/trilead/ssh2/transport/TransportManager;->MAX_PACKET_SIZE:I

    .line 53
    .line 54
    if-gt v7, v8, :cond_6

    .line 55
    .line 56
    const/16 v8, 0xc

    .line 57
    .line 58
    if-lt v7, v8, :cond_6

    .line 59
    .line 60
    sub-int/2addr v7, v4

    .line 61
    sub-int/2addr v7, v0

    .line 62
    if-ltz v7, :cond_5

    .line 63
    .line 64
    if-ge v7, p3, :cond_4

    .line 65
    .line 66
    iget-object p3, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    .line 67
    .line 68
    invoke-virtual {p3, p1, p2, v7}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->read([BII)I

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    iget-object v8, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    .line 73
    .line 74
    iget-object v9, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_padding_buffer:[B

    .line 75
    .line 76
    invoke-virtual {v8, v9, v6, v4}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->read([BII)I

    .line 77
    .line 78
    .line 79
    iget-object v8, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    .line 80
    .line 81
    if-eqz v8, :cond_2

    .line 82
    .line 83
    iget-object v8, p0, Lcom/trilead/ssh2/transport/TransportConnection;->cis:Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;

    .line 84
    .line 85
    iget-object v9, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac_buffer:[B

    .line 86
    .line 87
    array-length v10, v9

    .line 88
    invoke-virtual {v8, v9, v6, v10}, Lcom/trilead/ssh2/crypto/cipher/CipherInputStream;->readPlain([BII)I

    .line 89
    .line 90
    .line 91
    iget-object v8, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    .line 92
    .line 93
    iget v9, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_seq_number:I

    .line 94
    .line 95
    invoke-virtual {v8, v9}, Lcom/trilead/ssh2/crypto/digest/MAC;->initMac(I)V

    .line 96
    .line 97
    .line 98
    iget-object v8, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    .line 99
    .line 100
    iget-object v9, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_packet_header_buffer:[B

    .line 101
    .line 102
    invoke-virtual {v8, v9, v6, v5}, Lcom/trilead/ssh2/crypto/digest/MAC;->update([BII)V

    .line 103
    .line 104
    .line 105
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    .line 106
    .line 107
    invoke-virtual {v5, p1, p2, v7}, Lcom/trilead/ssh2/crypto/digest/MAC;->update([BII)V

    .line 108
    .line 109
    .line 110
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    .line 111
    .line 112
    iget-object v8, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_padding_buffer:[B

    .line 113
    .line 114
    invoke-virtual {v5, v8, v6, v4}, Lcom/trilead/ssh2/crypto/digest/MAC;->update([BII)V

    .line 115
    .line 116
    .line 117
    iget-object v4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    .line 118
    .line 119
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac_buffer_cmp:[B

    .line 120
    .line 121
    invoke-virtual {v4, v5, v6}, Lcom/trilead/ssh2/crypto/digest/MAC;->getMac([BI)V

    .line 122
    .line 123
    .line 124
    :goto_1
    iget-object v4, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac_buffer:[B

    .line 125
    .line 126
    array-length v5, v4

    .line 127
    if-ge v6, v5, :cond_2

    .line 128
    .line 129
    aget-byte v4, v4, v6

    .line 130
    .line 131
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_mac_buffer_cmp:[B

    .line 132
    .line 133
    aget-byte v5, v5, v6

    .line 134
    .line 135
    if-ne v4, v5, :cond_1

    .line 136
    .line 137
    add-int/2addr v6, v0

    .line 138
    goto :goto_1

    .line 139
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 140
    .line 141
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 142
    .line 143
    new-array p3, v1, [J

    .line 144
    .line 145
    fill-array-data p3, :array_0

    .line 146
    .line 147
    .line 148
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw p1

    .line 159
    :cond_2
    iget v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_seq_number:I

    .line 160
    .line 161
    add-int/2addr v1, v0

    .line 162
    iput v1, p0, Lcom/trilead/ssh2/transport/TransportConnection;->recv_seq_number:I

    .line 163
    .line 164
    sget-object v0, Lcom/trilead/ssh2/transport/TransportConnection;->log:Lcom/trilead/ssh2/log/Logger;

    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-eqz v1, :cond_3

    .line 171
    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 178
    .line 179
    new-array v5, v2, [J

    .line 180
    .line 181
    fill-array-data v5, :array_1

    .line 182
    .line 183
    .line 184
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    aget-byte p1, p1, p2

    .line 195
    .line 196
    and-int/lit16 p1, p1, 0xff

    .line 197
    .line 198
    invoke-static {p1}, Lcom/trilead/ssh2/packets/Packets;->getMessageName(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 206
    .line 207
    new-array p2, v3, [J

    .line 208
    .line 209
    fill-array-data p2, :array_2

    .line 210
    .line 211
    .line 212
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 226
    .line 227
    new-array p2, v2, [J

    .line 228
    .line 229
    fill-array-data p2, :array_3

    .line 230
    .line 231
    .line 232
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 233
    .line 234
    .line 235
    const/16 p2, 0x5a

    .line 236
    .line 237
    invoke-static {p1, v1, v0, p2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/trilead/ssh2/log/Logger;I)V

    .line 238
    .line 239
    .line 240
    :cond_3
    int-to-long p1, p3

    .line 241
    invoke-static {p1, p2}, Lapp/tunnel/logger/utils/TrafficData;->addBytesDownload(J)V

    .line 242
    .line 243
    .line 244
    return v7

    .line 245
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 246
    .line 247
    new-instance p2, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .line 251
    .line 252
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 253
    .line 254
    new-array v1, v5, [J

    .line 255
    .line 256
    fill-array-data v1, :array_4

    .line 257
    .line 258
    .line 259
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 273
    .line 274
    new-array v0, v3, [J

    .line 275
    .line 276
    fill-array-data v0, :array_5

    .line 277
    .line 278
    .line 279
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p3

    .line 286
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 293
    .line 294
    new-array v0, v3, [J

    .line 295
    .line 296
    fill-array-data v0, :array_6

    .line 297
    .line 298
    .line 299
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 300
    .line 301
    .line 302
    invoke-static {p3, p2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p2

    .line 306
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    throw p1

    .line 310
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 311
    .line 312
    new-instance p2, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    .line 316
    .line 317
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 318
    .line 319
    const/4 v0, 0x7

    .line 320
    new-array v0, v0, [J

    .line 321
    .line 322
    fill-array-data v0, :array_7

    .line 323
    .line 324
    .line 325
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object p3

    .line 332
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 339
    .line 340
    new-array v0, v3, [J

    .line 341
    .line 342
    fill-array-data v0, :array_8

    .line 343
    .line 344
    .line 345
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 346
    .line 347
    .line 348
    invoke-static {p3, p2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object p2

    .line 352
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    throw p1

    .line 356
    :cond_6
    new-instance p1, Ljava/io/IOException;

    .line 357
    .line 358
    new-instance p2, Ljava/lang/StringBuilder;

    .line 359
    .line 360
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .line 362
    .line 363
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 364
    .line 365
    new-array v0, v1, [J

    .line 366
    .line 367
    fill-array-data v0, :array_9

    .line 368
    .line 369
    .line 370
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object p3

    .line 377
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 384
    .line 385
    new-array v0, v3, [J

    .line 386
    .line 387
    fill-array-data v0, :array_a

    .line 388
    .line 389
    .line 390
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 391
    .line 392
    .line 393
    invoke-static {p3, p2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object p2

    .line 397
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    throw p1

    .line 401
    :array_0
    .array-data 8
        -0x11c442e5ceab83b6L    # -1.0026806030193167E223
        0x3db7bf782a5932d8L    # 2.1598614083678285E-11
        -0x227f68c266f7ee76L    # -2.5289186929431517E142
        0x284a3879ff222ed1L    # 1.330927739563634E-114
    .end array-data

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
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    :array_1
    .array-data 8
        0xde4e5b5e6692596L    # 9.79363264484598E-242
        0x699ee20255719381L    # 5.9098230153784074E200
        -0x748754445a99cb5cL
    .end array-data

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
    :array_2
    .array-data 8
        -0x44e735eb288a04b6L    # -5.12632374047395E-24
        -0x75eda7aa10982662L
    .end array-data

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
    :array_3
    .array-data 8
        0x2624c0352ea1d09L
        0x3ddc2e612031bc7cL    # 1.0252249747815885E-10
        -0x7e42c800d4ea8e2cL
    .end array-data

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
    :array_4
    .array-data 8
        0x1ae00e10091554aL    # 1.4000556346516302E-300
        -0x41cd2df89b57c3f7L    # -4.381971739036512E-9
        0x6406d8b98fccbe2fL    # 7.06331770200249E173
        0x4d37e086dc183fc7L    # 9.8224518548504E63
        0x2e4e4a4e30d30a97L    # 1.2181315240516138E-85
    .end array-data

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
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    :array_5
    .array-data 8
        0x3647af197586c83bL    # 3.241047648513726E-47
        0x52d5c97b1bb4c0e6L    # 1.1095243391920077E91
    .end array-data

    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    :array_6
    .array-data 8
        0x2096517aeedafc0L
        0x68efca38aa19d65cL    # 2.9704121297652027E197
    .end array-data

    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    :array_7
    .array-data 8
        0x1a8c4f375504bdd2L    # 8.527934641094581E-181
        0x46dbeb172c9bd1f9L    # 2.2650033982929972E33
        0x3bddd023a20de762L    # 2.5252630286068233E-20
        0x6f8106d4155f29d5L    # 1.290733343425428E229
        -0x5f79ca7227e35db5L    # -5.300599945720859E-152
        -0xf65c715e62e7473L    # -2.605480286430123E234
        0x26bf227668069ac2L
    .end array-data

    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    :array_8
    .array-data 8
        0x2ebf45fdac128f8bL    # 1.6098163771039266E-83
        -0x4a09628157bce33dL    # -9.671223293978609E-49
    .end array-data

    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    :array_9
    .array-data 8
        -0x30d6f8ff9619e5efL    # -2.2109749998168083E73
        0x730f79b4fe889845L    # 1.7193250121948705E246
        0x4d6ce55c39f8d9f1L    # 9.50967970257165E64
        0x75353a638db83341L    # 3.984254490235999E256
    .end array-data

    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    :array_a
    .array-data 8
        -0x78a531bec5bfc17fL
        -0x5726b5f3e9b797dbL    # -6.572302113491425E-112
    .end array-data
.end method

.method public sendMessage([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, v1}, Lcom/trilead/ssh2/transport/TransportConnection;->sendMessage([BIII)V

    return-void
.end method

.method public sendMessage([BII)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/trilead/ssh2/transport/TransportConnection;->sendMessage([BIII)V

    return-void
.end method

.method public sendMessage([BIII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/16 v8, 0x10

    const/4 v9, 0x2

    const/4 v10, 0x4

    if-ge v4, v10, :cond_0

    const/4 v11, 0x4

    goto :goto_0

    :cond_0
    const/16 v11, 0x40

    if-le v4, v11, :cond_1

    goto :goto_0

    :cond_1
    move v11, v4

    :goto_0
    add-int/lit8 v4, v3, 0x5

    add-int/2addr v11, v4

    .line 3
    iget v12, v0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padd_blocksize:I

    rem-int v13, v11, v12

    if-eqz v13, :cond_2

    sub-int/2addr v12, v13

    add-int/2addr v11, v12

    :cond_2
    if-ge v11, v8, :cond_3

    const/16 v11, 0x10

    :cond_3
    sub-int v4, v11, v4

    .line 4
    iget-boolean v12, v0, Lcom/trilead/ssh2/transport/TransportConnection;->useRandomPadding:Z

    const/4 v13, 0x0

    if-eqz v12, :cond_4

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v4, :cond_6

    .line 5
    iget-object v14, v0, Lcom/trilead/ssh2/transport/TransportConnection;->rnd:Ljava/security/SecureRandom;

    invoke-virtual {v14}, Ljava/util/Random;->nextInt()I

    move-result v14

    .line 6
    iget-object v15, v0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padding_buffer:[B

    int-to-byte v5, v14

    aput-byte v5, v15, v12

    add-int/lit8 v5, v12, 0x1

    shr-int/lit8 v7, v14, 0x8

    int-to-byte v7, v7

    .line 7
    aput-byte v7, v15, v5

    add-int/lit8 v5, v12, 0x2

    shr-int/lit8 v7, v14, 0x10

    int-to-byte v7, v7

    .line 8
    aput-byte v7, v15, v5

    add-int/lit8 v5, v12, 0x3

    shr-int/lit8 v7, v14, 0x18

    int-to-byte v7, v7

    .line 9
    aput-byte v7, v15, v5

    add-int/2addr v12, v10

    const/4 v5, 0x5

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_5

    .line 10
    iget-object v7, v0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padding_buffer:[B

    aput-byte v13, v7, v5

    const/4 v7, 0x1

    add-int/2addr v5, v7

    goto :goto_2

    :cond_5
    const/4 v7, 0x1

    .line 11
    :cond_6
    iget-object v5, v0, Lcom/trilead/ssh2/transport/TransportConnection;->send_packet_header_buffer:[B

    sub-int/2addr v11, v10

    shr-int/lit8 v12, v11, 0x18

    int-to-byte v12, v12

    aput-byte v12, v5, v13

    shr-int/lit8 v8, v11, 0x10

    int-to-byte v8, v8

    .line 12
    aput-byte v8, v5, v7

    shr-int/lit8 v7, v11, 0x8

    int-to-byte v7, v7

    .line 13
    aput-byte v7, v5, v9

    int-to-byte v7, v11

    .line 14
    aput-byte v7, v5, v6

    int-to-byte v7, v4

    .line 15
    aput-byte v7, v5, v10

    .line 16
    iget-object v7, v0, Lcom/trilead/ssh2/transport/TransportConnection;->cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    const/4 v8, 0x5

    invoke-virtual {v7, v5, v13, v8}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->write([BII)V

    .line 17
    iget-object v5, v0, Lcom/trilead/ssh2/transport/TransportConnection;->cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    invoke-virtual {v5, v1, v2, v3}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->write([BII)V

    .line 18
    iget-object v5, v0, Lcom/trilead/ssh2/transport/TransportConnection;->cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    iget-object v7, v0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padding_buffer:[B

    invoke-virtual {v5, v7, v13, v4}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->write([BII)V

    .line 19
    iget-object v5, v0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    if-eqz v5, :cond_7

    .line 20
    iget v7, v0, Lcom/trilead/ssh2/transport/TransportConnection;->send_seq_number:I

    invoke-virtual {v5, v7}, Lcom/trilead/ssh2/crypto/digest/MAC;->initMac(I)V

    .line 21
    iget-object v5, v0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    iget-object v7, v0, Lcom/trilead/ssh2/transport/TransportConnection;->send_packet_header_buffer:[B

    const/4 v8, 0x5

    invoke-virtual {v5, v7, v13, v8}, Lcom/trilead/ssh2/crypto/digest/MAC;->update([BII)V

    .line 22
    iget-object v5, v0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    invoke-virtual {v5, v1, v2, v3}, Lcom/trilead/ssh2/crypto/digest/MAC;->update([BII)V

    .line 23
    iget-object v5, v0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    iget-object v7, v0, Lcom/trilead/ssh2/transport/TransportConnection;->send_padding_buffer:[B

    invoke-virtual {v5, v7, v13, v4}, Lcom/trilead/ssh2/crypto/digest/MAC;->update([BII)V

    .line 24
    iget-object v4, v0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac:Lcom/trilead/ssh2/crypto/digest/MAC;

    iget-object v5, v0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac_buffer:[B

    invoke-virtual {v4, v5, v13}, Lcom/trilead/ssh2/crypto/digest/MAC;->getMac([BI)V

    .line 25
    iget-object v4, v0, Lcom/trilead/ssh2/transport/TransportConnection;->cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    iget-object v5, v0, Lcom/trilead/ssh2/transport/TransportConnection;->send_mac_buffer:[B

    array-length v7, v5

    invoke-virtual {v4, v5, v13, v7}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->writePlain([BII)V

    .line 26
    :cond_7
    iget-object v4, v0, Lcom/trilead/ssh2/transport/TransportConnection;->cos:Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;

    invoke-virtual {v4}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->flush()V

    .line 27
    sget-object v4, Lcom/trilead/ssh2/transport/TransportConnection;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v4}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 28
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v9, [J

    fill-array-data v8, :array_0

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Lcom/trilead/ssh2/packets/Packets;->getMessageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v9, [J

    fill-array-data v2, :array_1

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v6, [J

    fill-array-data v2, :array_2

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    const/16 v2, 0x5a

    .line 29
    invoke-static {v1, v5, v4, v2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/trilead/ssh2/log/Logger;I)V

    :cond_8
    int-to-long v1, v3

    .line 30
    invoke-static {v1, v2}, Lapp/tunnel/logger/utils/TrafficData;->addBytesSend(J)V

    .line 31
    iget v1, v0, Lcom/trilead/ssh2/transport/TransportConnection;->send_seq_number:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/trilead/ssh2/transport/TransportConnection;->send_seq_number:I

    return-void

    nop

    :array_0
    .array-data 8
        -0x3055dc20e53da719L    # -5.911756760646637E75
        -0x12932590c4f4c028L    # -1.2731563792776986E219
    .end array-data

    :array_1
    .array-data 8
        0x58616a7cc98eb50aL    # 5.489792192251219E117
        -0x6b737f4007c74abcL
    .end array-data

    :array_2
    .array-data 8
        -0x73777097feeaede0L    # -2.744259296904647E-248
        -0x4514677f2eb46bc2L    # -7.133325291818929E-25
        -0x5254e88be5455bddL    # -1.0639621755314267E-88
    .end array-data
.end method
