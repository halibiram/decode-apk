.class public Lapp/tunnel/vpncommons/org/spongycastle/util/io/pem/PemReader;
.super Ljava/io/BufferedReader;
.source "SourceFile"

# interfaces
.implements Lj$/io/BufferedReaderRetargetInterface;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final synthetic lines()Lj$/util/stream/Stream;
    .locals 1

    .line 2
    invoke-static {p0}, Lj$/io/DesugarBufferedReader;->lines(Ljava/io/BufferedReader;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic lines()Ljava/util/stream/Stream;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lapp/tunnel/vpncommons/org/spongycastle/util/io/pem/PemReader;->lines()Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/Stream$Wrapper;->convert(Lj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public readPemObject()Lapp/tunnel/vpncommons/org/spongycastle/util/io/pem/PemObject;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v1, "-----BEGIN "

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    if-eqz v0, :cond_5

    .line 21
    .line 22
    const/16 v1, 0xb

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/16 v1, 0x2d

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-lez v1, :cond_5

    .line 40
    .line 41
    const-string v1, "-----END "

    .line 42
    .line 43
    invoke-static {v1, v0}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v4, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    :goto_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    if-eqz v5, :cond_3

    .line 62
    .line 63
    const-string v6, ":"

    .line 64
    .line 65
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-ltz v6, :cond_1

    .line 70
    .line 71
    const/16 v6, 0x3a

    .line 72
    .line 73
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    add-int/lit8 v6, v6, 0x1

    .line 82
    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    new-instance v6, Lapp/tunnel/vpncommons/org/spongycastle/util/io/pem/PemHeader;

    .line 92
    .line 93
    invoke-direct {v6, v7, v5}, Lapp/tunnel/vpncommons/org/spongycastle/util/io/pem/PemHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_1
    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    const/4 v7, -0x1

    .line 105
    if-eq v6, v7, :cond_2

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_3
    :goto_2
    if-eqz v5, :cond_4

    .line 117
    .line 118
    new-instance v1, Lapp/tunnel/vpncommons/org/spongycastle/util/io/pem/PemObject;

    .line 119
    .line 120
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-static {v2}, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64;->decode(Ljava/lang/String;)[B

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-direct {v1, v0, v4, v2}, Lapp/tunnel/vpncommons/org/spongycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;Ljava/util/List;[B)V

    .line 129
    .line 130
    .line 131
    return-object v1

    .line 132
    :cond_4
    new-instance v0, Ljava/io/IOException;

    .line 133
    .line 134
    const-string v2, " not found"

    .line 135
    .line 136
    invoke-static {v1, v2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v0

    .line 144
    :cond_5
    const/4 v0, 0x0

    .line 145
    return-object v0
.end method
