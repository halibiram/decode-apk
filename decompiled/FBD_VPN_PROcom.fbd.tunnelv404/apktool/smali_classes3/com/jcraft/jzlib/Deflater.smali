.class public final Lcom/jcraft/jzlib/Deflater;
.super Lcom/jcraft/jzlib/ZStream;
.source "SourceFile"


# static fields
.field private static final DEF_WBITS:I = 0xf

.field private static final MAX_MEM_LEVEL:I = 0x9

.field private static final MAX_WBITS:I = 0xf

.field private static final Z_BUF_ERROR:I = -0x5

.field private static final Z_DATA_ERROR:I = -0x3

.field private static final Z_ERRNO:I = -0x1

.field private static final Z_FINISH:I = 0x4

.field private static final Z_FULL_FLUSH:I = 0x3

.field private static final Z_MEM_ERROR:I = -0x4

.field private static final Z_NEED_DICT:I = 0x2

.field private static final Z_NO_FLUSH:I = 0x0

.field private static final Z_OK:I = 0x0

.field private static final Z_PARTIAL_FLUSH:I = 0x1

.field private static final Z_STREAM_END:I = 0x1

.field private static final Z_STREAM_ERROR:I = -0x2

.field private static final Z_SYNC_FLUSH:I = 0x2

.field private static final Z_VERSION_ERROR:I = -0x6


# instance fields
.field private finished:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jzlib/ZStream;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/jcraft/jzlib/Deflater;->finished:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0xf

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/jcraft/jzlib/Deflater;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lcom/jcraft/jzlib/Deflater;-><init>(IIZ)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/jcraft/jzlib/ZStream;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/jcraft/jzlib/Deflater;->finished:Z

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lcom/jcraft/jzlib/Deflater;->init(III)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 27
    :cond_0
    new-instance p2, Lcom/jcraft/jzlib/GZIPException;

    .line 28
    invoke-static {p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨땱듼딃든둔뒬뒨땣된둬딻땵딎딽디땋따땃뒷딐땁된땀땔듨땤둠돠뎽땤돷듽둡돛딨듻뒋딐둣듌뒵듐둑뒾됫듟딌딤될뒨둥듟땬땁뒼땄돴뒙디딐딜들둣땧듬땐딌됨딹땸뒘땪뒝뒻딀땬땡딤듟딁따들돤땝뒼뒙딌딜딨뎹땀딌뎠득땝땔땅돠돛둬뒬뒻돨둡돠땋땯돝돵땔둘됴뒹땲땻땤듬뎬뎡돶땸돳듰땭뒐땪둔듔땬(I)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 29
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/jcraft/jzlib/GZIPException;-><init>(Ljava/lang/String;)V

    throw p2

    :array_0
    .array-data 8
        -0x6f30182ed2d68326L
        0x2497a6d6c6e0d8dfL
    .end array-data
.end method

.method public constructor <init>(IIILcom/jcraft/jzlib/JZlib$WrapperType;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/jcraft/jzlib/ZStream;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/jcraft/jzlib/Deflater;->finished:Z

    .line 17
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jcraft/jzlib/Deflater;->init(IIILcom/jcraft/jzlib/JZlib$WrapperType;)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 18
    :cond_0
    new-instance p2, Lcom/jcraft/jzlib/GZIPException;

    .line 19
    invoke-static {p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨땱듼딃든둔뒬뒨땣된둬딻땵딎딽디땋따땃뒷딐땁된땀땔듨땤둠돠뎽땤돷듽둡돛딨듻뒋딐둣듌뒵듐둑뒾됫듟딌딤될뒨둥듟땬땁뒼땄돴뒙디딐딜들둣땧듬땐딌됨딹땸뒘땪뒝뒻딀땬땡딤듟딁따들돤땝뒼뒙딌딜딨뎹땀딌뎠득땝땔땅돠돛둬뒬뒻돨둡돠땋땯돝돵땔둘됴뒹땲땻땤듬뎬뎡돶땸돳듰땭뒐땪둔듔땬(I)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 20
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p4, 0x2

    new-array p4, p4, [J

    fill-array-data p4, :array_0

    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/jcraft/jzlib/GZIPException;-><init>(Ljava/lang/String;)V

    throw p2

    :array_0
    .array-data 8
        -0x5f5d1040210fb53fL
        -0x7a2bda17facab0ebL
    .end array-data
.end method

.method public constructor <init>(IIZ)V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/jcraft/jzlib/ZStream;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/jcraft/jzlib/Deflater;->finished:Z

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lcom/jcraft/jzlib/Deflater;->init(IIZ)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 9
    :cond_0
    new-instance p2, Lcom/jcraft/jzlib/GZIPException;

    .line 10
    invoke-static {p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨땱듼딃든둔뒬뒨땣된둬딻땵딎딽디땋따땃뒷딐땁된땀땔듨땤둠돠뎽땤돷듽둡돛딨듻뒋딐둣듌뒵듐둑뒾됫듟딌딤될뒨둥듟땬땁뒼땄돴뒙디딐딜들둣땧듬땐딌됨딹땸뒘땪뒝뒻딀땬땡딤듟딁따들돤땝뒼뒙딌딜딨뎹땀딌뎠득땝땔땅돠돛둬뒬뒻돨둡돠땋땯돝돵땔둘됴뒹땲땻땤듬뎬뎡돶땸돳듰땭뒐땪둔듔땬(I)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 11
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/jcraft/jzlib/GZIPException;-><init>(Ljava/lang/String;)V

    throw p2

    :array_0
    .array-data 8
        -0x4efae901c2609ce9L    # -1.4920516697395012E-72
        -0x70c5856d6920e844L
    .end array-data
.end method

.method public constructor <init>(IZ)V
    .locals 1

    const/16 v0, 0xf

    .line 4
    invoke-direct {p0, p1, v0, p2}, Lcom/jcraft/jzlib/Deflater;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method public copy(Lcom/jcraft/jzlib/Deflater;)I
    .locals 1

    .line 1
    iget-boolean v0, p1, Lcom/jcraft/jzlib/Deflater;->finished:Z

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/jcraft/jzlib/Deflater;->finished:Z

    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/jcraft/jzlib/Deflate;->deflateCopy(Lcom/jcraft/jzlib/ZStream;Lcom/jcraft/jzlib/ZStream;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public deflate(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, -0x2

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Lcom/jcraft/jzlib/Deflate;->deflate(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x1

    .line 12
    if-ne p1, v0, :cond_1

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/jcraft/jzlib/Deflater;->finished:Z

    .line 15
    .line 16
    :cond_1
    return p1
.end method

.method public end()I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/jcraft/jzlib/Deflater;->finished:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, -0x2

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/jcraft/jzlib/Deflate;->deflateEnd()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/jcraft/jzlib/ZStream;->free()V

    .line 18
    .line 19
    .line 20
    return v0
.end method

.method public finished()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/jcraft/jzlib/Deflater;->finished:Z

    .line 2
    .line 3
    return v0
.end method

.method public init(I)I
    .locals 1

    const/16 v0, 0xf

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jzlib/Deflater;->init(II)I

    move-result p1

    return p1
.end method

.method public init(II)I
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/jcraft/jzlib/Deflater;->init(IIZ)I

    move-result p1

    return p1
.end method

.method public init(III)I
    .locals 1

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/jcraft/jzlib/Deflater;->finished:Z

    .line 9
    new-instance v0, Lcom/jcraft/jzlib/Deflate;

    invoke-direct {v0, p0}, Lcom/jcraft/jzlib/Deflate;-><init>(Lcom/jcraft/jzlib/ZStream;)V

    iput-object v0, p0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    .line 10
    invoke-virtual {v0, p1, p2, p3}, Lcom/jcraft/jzlib/Deflate;->deflateInit(III)I

    move-result p1

    return p1
.end method

.method public init(IIILcom/jcraft/jzlib/JZlib$WrapperType;)I
    .locals 2

    const/16 v0, 0x9

    const/4 v1, -0x2

    if-lt p2, v0, :cond_4

    const/16 v0, 0xf

    if-le p2, v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    sget-object v0, Lcom/jcraft/jzlib/JZlib;->W_NONE:Lcom/jcraft/jzlib/JZlib$WrapperType;

    if-ne p4, v0, :cond_1

    mul-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/jcraft/jzlib/JZlib;->W_GZIP:Lcom/jcraft/jzlib/JZlib$WrapperType;

    if-ne p4, v0, :cond_2

    add-int/lit8 p2, p2, 0x10

    goto :goto_0

    .line 6
    :cond_2
    sget-object v0, Lcom/jcraft/jzlib/JZlib;->W_ANY:Lcom/jcraft/jzlib/JZlib$WrapperType;

    if-ne p4, v0, :cond_3

    return v1

    .line 7
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/jcraft/jzlib/Deflater;->init(III)I

    move-result p1

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public init(IIZ)I
    .locals 1

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/jcraft/jzlib/Deflater;->finished:Z

    .line 12
    new-instance v0, Lcom/jcraft/jzlib/Deflate;

    invoke-direct {v0, p0}, Lcom/jcraft/jzlib/Deflate;-><init>(Lcom/jcraft/jzlib/ZStream;)V

    iput-object v0, p0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    if-eqz p3, :cond_0

    neg-int p2, p2

    .line 13
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/jcraft/jzlib/Deflate;->deflateInit(II)I

    move-result p1

    return p1
.end method

.method public init(IZ)I
    .locals 1

    const/16 v0, 0xf

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Lcom/jcraft/jzlib/Deflater;->init(IIZ)I

    move-result p1

    return p1
.end method

.method public params(II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, -0x2

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/jcraft/jzlib/Deflate;->deflateParams(II)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public setDictionary([BI)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, -0x2

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/jcraft/jzlib/Deflate;->deflateSetDictionary([BI)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method
