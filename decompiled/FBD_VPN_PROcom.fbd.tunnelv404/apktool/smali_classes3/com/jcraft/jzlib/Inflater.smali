.class public final Lcom/jcraft/jzlib/Inflater;
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
    iput-boolean v0, p0, Lcom/jcraft/jzlib/Inflater;->finished:Z

    .line 3
    invoke-virtual {p0}, Lcom/jcraft/jzlib/Inflater;->init()I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/jcraft/jzlib/Inflater;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(ILcom/jcraft/jzlib/JZlib$WrapperType;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/jcraft/jzlib/ZStream;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/jcraft/jzlib/Inflater;->finished:Z

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jzlib/Inflater;->init(ILcom/jcraft/jzlib/JZlib$WrapperType;)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance p2, Lcom/jcraft/jzlib/GZIPException;

    .line 9
    invoke-static {p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨땱듼딃든둔뒬뒨땣된둬딻땵딎딽디땋따땃뒷딐땁된땀땔듨땤둠돠뎽땤돷듽둡돛딨듻뒋딐둣듌뒵듐둑뒾됫듟딌딤될뒨둥듟땬땁뒼땄돴뒙디딐딜들둣땧듬땐딌됨딹땸뒘땪뒝뒻딀땬땡딤듟딁따들돤땝뒼뒙딌딜딨뎹땀딌뎠득땝땔땅돠돛둬뒬뒻돨둡돠땋땯돝돵땔둘됴뒹땲땻땤듬뎬뎡돶땸돳듰땭뒐땪둔듔땬(I)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 10
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/jcraft/jzlib/GZIPException;-><init>(Ljava/lang/String;)V

    throw p2

    :array_0
    .array-data 8
        0x6de07a04368a95e4L    # 1.86120896145195E221
        0x1ec4fb7d1e4ae2cL
    .end array-data
.end method

.method public constructor <init>(IZ)V
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/jcraft/jzlib/ZStream;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/jcraft/jzlib/Inflater;->finished:Z

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jzlib/Inflater;->init(IZ)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 19
    :cond_0
    new-instance p2, Lcom/jcraft/jzlib/GZIPException;

    .line 20
    invoke-static {p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨땱듼딃든둔뒬뒨땣된둬딻땵딎딽디땋따땃뒷딐땁된땀땔듨땤둠돠뎽땤돷듽둡돛딨듻뒋딐둣듌뒵듐둑뒾됫듟딌딤될뒨둥듟땬땁뒼땄돴뒙디딐딜들둣땧듬땐딌됨딹땸뒘땪뒝뒻딀땬땡딤듟딁따들돤땝뒼뒙딌딜딨뎹땀딌뎠득땝땔땅돠돛둬뒬뒻돨둡돠땋땯돝돵땔둘됴뒹땲땻땤듬뎬뎡돶땸돳듰땭뒐땪둔듔땬(I)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 21
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/jcraft/jzlib/GZIPException;-><init>(Ljava/lang/String;)V

    throw p2

    :array_0
    .array-data 8
        0x4b7d69958f1becfdL    # 4.507443060133257E55
        -0x643289941e48d130L    # -9.306435171284811E-175
    .end array-data
.end method

.method public constructor <init>(Lcom/jcraft/jzlib/JZlib$WrapperType;)V
    .locals 1

    const/16 v0, 0xf

    .line 4
    invoke-direct {p0, v0, p1}, Lcom/jcraft/jzlib/Inflater;-><init>(ILcom/jcraft/jzlib/JZlib$WrapperType;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/16 v0, 0xf

    .line 15
    invoke-direct {p0, v0, p1}, Lcom/jcraft/jzlib/Inflater;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public end()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/jcraft/jzlib/Inflater;->finished:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

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
    invoke-virtual {v0}, Lcom/jcraft/jzlib/Inflate;->inflateEnd()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public finished()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    .line 2
    .line 3
    iget v0, v0, Lcom/jcraft/jzlib/Inflate;->mode:I

    .line 4
    .line 5
    const/16 v1, 0xc

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public inflate(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

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
    invoke-virtual {v0, p1}, Lcom/jcraft/jzlib/Inflate;->inflate(I)I

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
    iput-boolean v0, p0, Lcom/jcraft/jzlib/Inflater;->finished:Z

    .line 15
    .line 16
    :cond_1
    return p1
.end method

.method public init()I
    .locals 1

    const/16 v0, 0xf

    .line 1
    invoke-virtual {p0, v0}, Lcom/jcraft/jzlib/Inflater;->init(I)I

    move-result v0

    return v0
.end method

.method public init(I)I
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jzlib/Inflater;->init(IZ)I

    move-result p1

    return p1
.end method

.method public init(ILcom/jcraft/jzlib/JZlib$WrapperType;)I
    .locals 2

    .line 3
    sget-object v0, Lcom/jcraft/jzlib/JZlib;->W_NONE:Lcom/jcraft/jzlib/JZlib$WrapperType;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_1

    .line 4
    :cond_0
    sget-object v0, Lcom/jcraft/jzlib/JZlib;->W_GZIP:Lcom/jcraft/jzlib/JZlib$WrapperType;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_2

    add-int/lit8 p1, p1, 0x10

    :cond_1
    :goto_0
    const/4 p2, 0x0

    goto :goto_1

    .line 5
    :cond_2
    sget-object v0, Lcom/jcraft/jzlib/JZlib;->W_ANY:Lcom/jcraft/jzlib/JZlib$WrapperType;

    if-ne p2, v0, :cond_1

    const/high16 p2, 0x40000000    # 2.0f

    or-int/2addr p1, p2

    goto :goto_0

    .line 6
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jzlib/Inflater;->init(IZ)I

    move-result p1

    return p1
.end method

.method public init(IZ)I
    .locals 1

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/jcraft/jzlib/Inflater;->finished:Z

    .line 10
    new-instance v0, Lcom/jcraft/jzlib/Inflate;

    invoke-direct {v0, p0}, Lcom/jcraft/jzlib/Inflate;-><init>(Lcom/jcraft/jzlib/ZStream;)V

    iput-object v0, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    if-eqz p2, :cond_0

    neg-int p1, p1

    .line 11
    :cond_0
    invoke-virtual {v0, p1}, Lcom/jcraft/jzlib/Inflate;->inflateInit(I)I

    move-result p1

    return p1
.end method

.method public init(Lcom/jcraft/jzlib/JZlib$WrapperType;)I
    .locals 1

    const/16 v0, 0xf

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/jcraft/jzlib/Inflater;->init(ILcom/jcraft/jzlib/JZlib$WrapperType;)I

    move-result p1

    return p1
.end method

.method public init(Z)I
    .locals 1

    const/16 v0, 0xf

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/jcraft/jzlib/Inflater;->init(IZ)I

    move-result p1

    return p1
.end method

.method public setDictionary([BI)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

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
    invoke-virtual {v0, p1, p2}, Lcom/jcraft/jzlib/Inflate;->inflateSetDictionary([BI)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public sync()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x2

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/jcraft/jzlib/Inflate;->inflateSync()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public syncPoint()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/ZStream;->istate:Lcom/jcraft/jzlib/Inflate;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x2

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/jcraft/jzlib/Inflate;->inflateSyncPoint()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method
