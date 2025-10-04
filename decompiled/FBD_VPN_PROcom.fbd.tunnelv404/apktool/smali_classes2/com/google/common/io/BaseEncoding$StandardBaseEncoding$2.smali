.class Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->decodingStream(Ljava/io/Reader;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field bitBuffer:I

.field bitBufferLength:I

.field hitPadding:Z

.field readChars:I

.field final synthetic this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

.field final synthetic val$reader:Ljava/io/Reader;


# direct methods
.method public constructor <init>(Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;Ljava/io/Reader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->val$reader:Ljava/io/Reader;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBuffer:I

    .line 10
    .line 11
    iput p1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBufferLength:I

    .line 12
    .line 13
    iput p1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->readChars:I

    .line 14
    .line 15
    iput-boolean p1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->hitPadding:Z

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->val$reader:Ljava/io/Reader;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public read()I
    .locals 6

    const/4 v0, 0x1

    .line 1
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->val$reader:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 2
    iget-boolean v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->hitPadding:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    iget-object v0, v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->readChars:I

    invoke-virtual {v0, v1}, Lcom/google/common/io/BaseEncoding$Alphabet;->isValidPaddingStartPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    new-instance v0, Lcom/google/common/io/BaseEncoding$DecodingException;

    iget v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->readChars:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x4

    new-array v4, v4, [J

    fill-array-data v4, :array_0

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 4
    invoke-static {v3, v2, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-direct {v0, v1}, Lcom/google/common/io/BaseEncoding$DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    return v2

    .line 6
    :cond_3
    iget v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->readChars:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->readChars:I

    int-to-char v1, v1

    .line 7
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    iget-object v2, v2, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    if-ne v2, v1, :cond_6

    .line 8
    iget-boolean v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->hitPadding:Z

    if-nez v1, :cond_5

    iget v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->readChars:I

    if-eq v1, v0, :cond_4

    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    iget-object v2, v2, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    sub-int/2addr v1, v0

    .line 9
    invoke-virtual {v2, v1}, Lcom/google/common/io/BaseEncoding$Alphabet;->isValidPaddingStartPosition(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 10
    :cond_4
    new-instance v0, Lcom/google/common/io/BaseEncoding$DecodingException;

    iget v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->readChars:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x5

    new-array v4, v4, [J

    fill-array-data v4, :array_1

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    invoke-static {v3, v2, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-direct {v0, v1}, Lcom/google/common/io/BaseEncoding$DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_5
    :goto_2
    iput-boolean v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->hitPadding:Z

    goto :goto_0

    .line 14
    :cond_6
    iget-boolean v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->hitPadding:Z

    if-nez v2, :cond_7

    .line 15
    iget v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBuffer:I

    iget-object v3, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    iget-object v3, v3, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v4, v3, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    shl-int/2addr v2, v4

    iput v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBuffer:I

    .line 16
    invoke-virtual {v3, v1}, Lcom/google/common/io/BaseEncoding$Alphabet;->decode(C)I

    move-result v1

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBuffer:I

    .line 17
    iget v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBufferLength:I

    iget-object v3, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    iget-object v3, v3, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v3, v3, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBufferLength:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    sub-int/2addr v2, v3

    .line 18
    iput v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBufferLength:I

    shr-int v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 19
    :cond_7
    new-instance v0, Lcom/google/common/io/BaseEncoding$DecodingException;

    iget v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->readChars:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v5, 0x6

    new-array v5, v5, [J

    fill-array-data v5, :array_2

    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x3

    new-array v4, v4, [J

    fill-array-data v4, :array_3

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    invoke-static {v1, v3, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Lcom/google/common/io/BaseEncoding$DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 8
        -0x20429da9967a019cL    # -1.5389718173708188E153
        -0x1bcfef3144b9d130L    # -3.973524770724427E174
        0x471b2d288d269c5fL    # 3.5276984105792312E34
        0x4bb9555ebd5149b1L    # 6.211750451704874E56
    .end array-data

    :array_1
    .array-data 8
        -0x43fc1fa750aceb66L    # -1.3468740841318682E-19
        -0x53ed812e8c2d1aaaL    # -2.1647349889669533E-96
        0x5d78fbc0a020b142L    # 1.904099551985076E142
        -0x7e42873e1f543883L
        0x4a1a079736edc29aL    # 9.510594425873313E48
    .end array-data

    :array_2
    .array-data 8
        -0x1d46a8b5ca2a8fd7L    # -3.7357770173501386E167
        -0x288ce8aa8c77ff92L    # -1.836497845074168E113
        0x55bfa4dd689d912bL    # 1.1339918447874016E105
        -0x452676b1bef7de0bL    # -3.300495920818079E-25
        0x1ca91f6e19c73d4aL
        0x4990e319bd2acb5bL    # 2.4102090917661746E46
    .end array-data

    :array_3
    .array-data 8
        -0x5b7ff70ad105c525L    # -7.059608980051512E-133
        -0x25c39911336871b6L    # -4.806493532278067E126
        -0x25456d70c636ede3L    # -1.1511993713460488E129
    .end array-data
.end method

.method public read([BII)I
    .locals 3

    add-int/2addr p3, p2

    .line 34
    array-length v0, p1

    invoke-static {p2, p3, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_2

    .line 35
    invoke-virtual {p0}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sub-int/2addr v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    return v2

    :cond_1
    int-to-byte v1, v1

    .line 36
    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sub-int/2addr v0, p2

    return v0
.end method
