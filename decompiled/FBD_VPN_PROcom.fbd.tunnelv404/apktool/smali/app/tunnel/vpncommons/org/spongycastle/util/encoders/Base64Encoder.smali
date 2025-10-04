.class public Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Encoder;


# instance fields
.field protected final decodingTable:[B

.field protected final encodingTable:[B

.field protected padding:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x40

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    fill-array-data v0, :array_0

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->encodingTable:[B

    .line 12
    .line 13
    const/16 v0, 0x3d

    .line 14
    .line 15
    iput-byte v0, p0, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->padding:B

    .line 16
    .line 17
    const/16 v0, 0x80

    .line 18
    .line 19
    new-array v0, v0, [B

    .line 20
    .line 21
    iput-object v0, p0, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->decodingTable:[B

    .line 22
    .line 23
    invoke-virtual {p0}, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->initialiseDecodingTable()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method public static 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(C)Z
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0xd

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x9

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0x20

    .line 14
    .line 15
    if-ne p0, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
.end method

.method public static 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(IILjava/lang/String;)I
    .locals 1

    .line 1
    :goto_0
    if-ge p0, p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(C)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    add-int/lit8 p0, p0, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return p0
.end method

.method public static 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨([BII)I
    .locals 1

    .line 1
    :goto_0
    if-ge p1, p2, :cond_0

    .line 2
    .line 3
    aget-byte v0, p0, p1

    .line 4
    .line 5
    int-to-char v0, v0

    .line 6
    invoke-static {v0}, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(C)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    add-int/lit8 p1, p1, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return p1
.end method


# virtual methods
.method public decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    .locals 10

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(C)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v1, v0, -0x4

    const/4 v2, 0x0

    .line 17
    invoke-static {v2, v1, p1}, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(IILjava/lang/String;)I

    move-result v3

    :goto_2
    if-ge v3, v1, :cond_2

    .line 18
    iget-object v4, p0, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v3, v4, v3

    .line 19
    invoke-static {v5, v1, p1}, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(IILjava/lang/String;)I

    move-result v4

    .line 20
    iget-object v5, p0, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-byte v4, v5, v4

    .line 21
    invoke-static {v6, v1, p1}, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(IILjava/lang/String;)I

    move-result v5

    .line 22
    iget-object v6, p0, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget-byte v5, v6, v5

    .line 23
    invoke-static {v7, v1, p1}, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(IILjava/lang/String;)I

    move-result v6

    .line 24
    iget-object v7, p0, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aget-byte v6, v7, v6

    shl-int/lit8 v3, v3, 0x2

    shr-int/lit8 v7, v4, 0x4

    or-int/2addr v3, v7

    .line 25
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v3, v4, 0x4

    shr-int/lit8 v4, v5, 0x2

    or-int/2addr v3, v4

    .line 26
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v3, v5, 0x6

    or-int/2addr v3, v6

    .line 27
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x3

    .line 28
    invoke-static {v8, v1, p1}, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(IILjava/lang/String;)I

    move-result v3

    goto :goto_2

    .line 29
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v1, v0, -0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v1, v0, -0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move-object v4, p0

    move-object v5, p2

    invoke-virtual/range {v4 .. v9}, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Ljava/io/OutputStream;CCCC)I

    move-result p1

    add-int/2addr v2, p1

    return v2
.end method

.method public decode([BIILjava/io/OutputStream;)I
    .locals 8

    add-int/2addr p3, p2

    :goto_0
    if-le p3, p2, :cond_1

    add-int/lit8 v0, p3, -0x1

    .line 1
    aget-byte v0, p1, v0

    int-to-char v0, v0

    invoke-static {v0}, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(C)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v0, p3, -0x4

    .line 2
    invoke-static {p1, p2, v0}, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨([BII)I

    move-result p2

    const/4 v1, 0x0

    :goto_2
    if-ge p2, v0, :cond_2

    .line 3
    iget-object v2, p0, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v3, p2, 0x1

    aget-byte p2, p1, p2

    aget-byte p2, v2, p2

    .line 4
    invoke-static {p1, v3, v0}, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨([BII)I

    move-result v2

    .line 5
    iget-object v3, p0, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p1, v2

    aget-byte v2, v3, v2

    .line 6
    invoke-static {p1, v4, v0}, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨([BII)I

    move-result v3

    .line 7
    iget-object v4, p0, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, p1, v3

    aget-byte v3, v4, v3

    .line 8
    invoke-static {p1, v5, v0}, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨([BII)I

    move-result v4

    .line 9
    iget-object v5, p0, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, p1, v4

    aget-byte v4, v5, v4

    shl-int/lit8 p2, p2, 0x2

    shr-int/lit8 v5, v2, 0x4

    or-int/2addr p2, v5

    .line 10
    invoke-virtual {p4, p2}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 p2, v2, 0x4

    shr-int/lit8 v2, v3, 0x2

    or-int/2addr p2, v2

    .line 11
    invoke-virtual {p4, p2}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 p2, v3, 0x6

    or-int/2addr p2, v4

    .line 12
    invoke-virtual {p4, p2}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x3

    .line 13
    invoke-static {p1, v6, v0}, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨([BII)I

    move-result p2

    goto :goto_2

    .line 14
    :cond_2
    aget-byte p2, p1, v0

    int-to-char v4, p2

    add-int/lit8 p2, p3, -0x3

    aget-byte p2, p1, p2

    int-to-char v5, p2

    add-int/lit8 p2, p3, -0x2

    aget-byte p2, p1, p2

    int-to-char v6, p2

    add-int/lit8 p3, p3, -0x1

    aget-byte p1, p1, p3

    int-to-char v7, p1

    move-object v2, p0

    move-object v3, p4

    invoke-virtual/range {v2 .. v7}, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Ljava/io/OutputStream;CCCC)I

    move-result p1

    add-int/2addr v1, p1

    return v1
.end method

.method public encode([BIILjava/io/OutputStream;)I
    .locals 10

    .line 1
    rem-int/lit8 v0, p3, 0x3

    .line 2
    .line 3
    sub-int/2addr p3, v0

    .line 4
    move v1, p2

    .line 5
    :goto_0
    add-int v2, p2, p3

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    const/4 v4, 0x2

    .line 9
    if-ge v1, v2, :cond_0

    .line 10
    .line 11
    aget-byte v2, p1, v1

    .line 12
    .line 13
    and-int/lit16 v2, v2, 0xff

    .line 14
    .line 15
    add-int/lit8 v5, v1, 0x1

    .line 16
    .line 17
    aget-byte v5, p1, v5

    .line 18
    .line 19
    and-int/lit16 v5, v5, 0xff

    .line 20
    .line 21
    add-int/lit8 v6, v1, 0x2

    .line 22
    .line 23
    aget-byte v6, p1, v6

    .line 24
    .line 25
    and-int/lit16 v7, v6, 0xff

    .line 26
    .line 27
    iget-object v8, p0, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->encodingTable:[B

    .line 28
    .line 29
    ushr-int/lit8 v9, v2, 0x2

    .line 30
    .line 31
    and-int/lit8 v9, v9, 0x3f

    .line 32
    .line 33
    aget-byte v8, v8, v9

    .line 34
    .line 35
    invoke-virtual {p4, v8}, Ljava/io/OutputStream;->write(I)V

    .line 36
    .line 37
    .line 38
    iget-object v8, p0, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->encodingTable:[B

    .line 39
    .line 40
    shl-int/2addr v2, v3

    .line 41
    ushr-int/lit8 v3, v5, 0x4

    .line 42
    .line 43
    or-int/2addr v2, v3

    .line 44
    and-int/lit8 v2, v2, 0x3f

    .line 45
    .line 46
    aget-byte v2, v8, v2

    .line 47
    .line 48
    invoke-virtual {p4, v2}, Ljava/io/OutputStream;->write(I)V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->encodingTable:[B

    .line 52
    .line 53
    shl-int/lit8 v3, v5, 0x2

    .line 54
    .line 55
    ushr-int/lit8 v4, v7, 0x6

    .line 56
    .line 57
    or-int/2addr v3, v4

    .line 58
    and-int/lit8 v3, v3, 0x3f

    .line 59
    .line 60
    aget-byte v2, v2, v3

    .line 61
    .line 62
    invoke-virtual {p4, v2}, Ljava/io/OutputStream;->write(I)V

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->encodingTable:[B

    .line 66
    .line 67
    and-int/lit8 v3, v6, 0x3f

    .line 68
    .line 69
    aget-byte v2, v2, v3

    .line 70
    .line 71
    invoke-virtual {p4, v2}, Ljava/io/OutputStream;->write(I)V

    .line 72
    .line 73
    .line 74
    add-int/lit8 v1, v1, 0x3

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    const/4 p2, 0x1

    .line 78
    if-eq v0, p2, :cond_2

    .line 79
    .line 80
    if-eq v0, v4, :cond_1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    aget-byte v1, p1, v2

    .line 84
    .line 85
    and-int/lit16 v1, v1, 0xff

    .line 86
    .line 87
    add-int/2addr v2, p2

    .line 88
    aget-byte p1, p1, v2

    .line 89
    .line 90
    and-int/lit16 p1, p1, 0xff

    .line 91
    .line 92
    ushr-int/lit8 p2, v1, 0x2

    .line 93
    .line 94
    and-int/lit8 p2, p2, 0x3f

    .line 95
    .line 96
    shl-int/2addr v1, v3

    .line 97
    ushr-int/lit8 v2, p1, 0x4

    .line 98
    .line 99
    or-int/2addr v1, v2

    .line 100
    and-int/lit8 v1, v1, 0x3f

    .line 101
    .line 102
    shl-int/2addr p1, v4

    .line 103
    and-int/lit8 p1, p1, 0x3f

    .line 104
    .line 105
    iget-object v2, p0, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->encodingTable:[B

    .line 106
    .line 107
    aget-byte p2, v2, p2

    .line 108
    .line 109
    invoke-virtual {p4, p2}, Ljava/io/OutputStream;->write(I)V

    .line 110
    .line 111
    .line 112
    iget-object p2, p0, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->encodingTable:[B

    .line 113
    .line 114
    aget-byte p2, p2, v1

    .line 115
    .line 116
    invoke-virtual {p4, p2}, Ljava/io/OutputStream;->write(I)V

    .line 117
    .line 118
    .line 119
    iget-object p2, p0, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->encodingTable:[B

    .line 120
    .line 121
    aget-byte p1, p2, p1

    .line 122
    .line 123
    invoke-virtual {p4, p1}, Ljava/io/OutputStream;->write(I)V

    .line 124
    .line 125
    .line 126
    iget-byte p1, p0, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->padding:B

    .line 127
    .line 128
    invoke-virtual {p4, p1}, Ljava/io/OutputStream;->write(I)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_2
    aget-byte p1, p1, v2

    .line 133
    .line 134
    and-int/lit16 p1, p1, 0xff

    .line 135
    .line 136
    ushr-int/lit8 p2, p1, 0x2

    .line 137
    .line 138
    and-int/lit8 p2, p2, 0x3f

    .line 139
    .line 140
    shl-int/2addr p1, v3

    .line 141
    and-int/lit8 p1, p1, 0x3f

    .line 142
    .line 143
    iget-object v1, p0, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->encodingTable:[B

    .line 144
    .line 145
    aget-byte p2, v1, p2

    .line 146
    .line 147
    invoke-virtual {p4, p2}, Ljava/io/OutputStream;->write(I)V

    .line 148
    .line 149
    .line 150
    iget-object p2, p0, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->encodingTable:[B

    .line 151
    .line 152
    aget-byte p1, p2, p1

    .line 153
    .line 154
    invoke-virtual {p4, p1}, Ljava/io/OutputStream;->write(I)V

    .line 155
    .line 156
    .line 157
    iget-byte p1, p0, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->padding:B

    .line 158
    .line 159
    invoke-virtual {p4, p1}, Ljava/io/OutputStream;->write(I)V

    .line 160
    .line 161
    .line 162
    iget-byte p1, p0, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->padding:B

    .line 163
    .line 164
    invoke-virtual {p4, p1}, Ljava/io/OutputStream;->write(I)V

    .line 165
    .line 166
    .line 167
    :goto_1
    div-int/lit8 p3, p3, 0x3

    .line 168
    .line 169
    mul-int/lit8 p3, p3, 0x4

    .line 170
    .line 171
    if-nez v0, :cond_3

    .line 172
    .line 173
    const/4 v3, 0x0

    .line 174
    :cond_3
    add-int/2addr p3, v3

    .line 175
    return p3
.end method

.method public initialiseDecodingTable()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->encodingTable:[B

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->decodingTable:[B

    .line 8
    .line 9
    aget-byte v1, v1, v0

    .line 10
    .line 11
    int-to-byte v3, v0

    .line 12
    aput-byte v3, v2, v1

    .line 13
    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void
.end method

.method public final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Ljava/io/OutputStream;CCCC)I
    .locals 2

    .line 1
    iget-byte v0, p0, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->padding:B

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne p4, v0, :cond_0

    .line 5
    .line 6
    iget-object p4, p0, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->decodingTable:[B

    .line 7
    .line 8
    aget-byte p2, p4, p2

    .line 9
    .line 10
    aget-byte p3, p4, p3

    .line 11
    .line 12
    shl-int/2addr p2, v1

    .line 13
    shr-int/lit8 p3, p3, 0x4

    .line 14
    .line 15
    or-int/2addr p2, p3

    .line 16
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_0
    if-ne p5, v0, :cond_1

    .line 22
    .line 23
    iget-object p5, p0, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->decodingTable:[B

    .line 24
    .line 25
    aget-byte p2, p5, p2

    .line 26
    .line 27
    aget-byte p3, p5, p3

    .line 28
    .line 29
    aget-byte p4, p5, p4

    .line 30
    .line 31
    shl-int/2addr p2, v1

    .line 32
    shr-int/lit8 p5, p3, 0x4

    .line 33
    .line 34
    or-int/2addr p2, p5

    .line 35
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 36
    .line 37
    .line 38
    shl-int/lit8 p2, p3, 0x4

    .line 39
    .line 40
    shr-int/lit8 p3, p4, 0x2

    .line 41
    .line 42
    or-int/2addr p2, p3

    .line 43
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 44
    .line 45
    .line 46
    return v1

    .line 47
    :cond_1
    iget-object v0, p0, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64Encoder;->decodingTable:[B

    .line 48
    .line 49
    aget-byte p2, v0, p2

    .line 50
    .line 51
    aget-byte p3, v0, p3

    .line 52
    .line 53
    aget-byte p4, v0, p4

    .line 54
    .line 55
    aget-byte p5, v0, p5

    .line 56
    .line 57
    shl-int/2addr p2, v1

    .line 58
    shr-int/lit8 v0, p3, 0x4

    .line 59
    .line 60
    or-int/2addr p2, v0

    .line 61
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 62
    .line 63
    .line 64
    shl-int/lit8 p2, p3, 0x4

    .line 65
    .line 66
    shr-int/lit8 p3, p4, 0x2

    .line 67
    .line 68
    or-int/2addr p2, p3

    .line 69
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 70
    .line 71
    .line 72
    shl-int/lit8 p2, p4, 0x6

    .line 73
    .line 74
    or-int/2addr p2, p5

    .line 75
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 76
    .line 77
    .line 78
    const/4 p1, 0x3

    .line 79
    return p1
.end method
