.class public Lcom/google/gson/stream/JsonReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final BUFFER_SIZE:I = 0x400

.field static final DEFAULT_NESTING_LIMIT:I = 0xff

.field private static final MIN_INCOMPLETE_INTEGER:J = -0xcccccccccccccccL

.field private static final NUMBER_CHAR_DECIMAL:I = 0x3

.field private static final NUMBER_CHAR_DIGIT:I = 0x2

.field private static final NUMBER_CHAR_EXP_DIGIT:I = 0x7

.field private static final NUMBER_CHAR_EXP_E:I = 0x5

.field private static final NUMBER_CHAR_EXP_SIGN:I = 0x6

.field private static final NUMBER_CHAR_FRACTION_DIGIT:I = 0x4

.field private static final NUMBER_CHAR_NONE:I = 0x0

.field private static final NUMBER_CHAR_SIGN:I = 0x1

.field private static final PEEKED_BEGIN_ARRAY:I = 0x3

.field private static final PEEKED_BEGIN_OBJECT:I = 0x1

.field private static final PEEKED_BUFFERED:I = 0xb

.field private static final PEEKED_DOUBLE_QUOTED:I = 0x9

.field private static final PEEKED_DOUBLE_QUOTED_NAME:I = 0xd

.field private static final PEEKED_END_ARRAY:I = 0x4

.field private static final PEEKED_END_OBJECT:I = 0x2

.field private static final PEEKED_EOF:I = 0x11

.field private static final PEEKED_FALSE:I = 0x6

.field private static final PEEKED_LONG:I = 0xf

.field private static final PEEKED_NONE:I = 0x0

.field private static final PEEKED_NULL:I = 0x7

.field private static final PEEKED_NUMBER:I = 0x10

.field private static final PEEKED_SINGLE_QUOTED:I = 0x8

.field private static final PEEKED_SINGLE_QUOTED_NAME:I = 0xc

.field private static final PEEKED_TRUE:I = 0x5

.field private static final PEEKED_UNQUOTED:I = 0xa

.field private static final PEEKED_UNQUOTED_NAME:I = 0xe


# instance fields
.field private final buffer:[C

.field private final in:Ljava/io/Reader;

.field private limit:I

.field private lineNumber:I

.field private lineStart:I

.field private nestingLimit:I

.field private pathIndices:[I

.field private pathNames:[Ljava/lang/String;

.field peeked:I

.field private peekedLong:J

.field private peekedNumberLength:I

.field private peekedString:Ljava/lang/String;

.field private pos:I

.field private stack:[I

.field private stackSize:I

.field private strictness:Lcom/google/gson/Strictness;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/stream/JsonReader$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/stream/JsonReader$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/gson/internal/JsonReaderInternalAccess;->INSTANCE:Lcom/google/gson/internal/JsonReaderInternalAccess;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/gson/Strictness;->LEGACY_STRICT:Lcom/google/gson/Strictness;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->strictness:Lcom/google/gson/Strictness;

    .line 7
    .line 8
    const/16 v0, 0xff

    .line 9
    .line 10
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->nestingLimit:I

    .line 11
    .line 12
    const/16 v0, 0x400

    .line 13
    .line 14
    new-array v0, v0, [C

    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 20
    .line 21
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 22
    .line 23
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 24
    .line 25
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 26
    .line 27
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 28
    .line 29
    const/16 v1, 0x20

    .line 30
    .line 31
    new-array v2, v1, [I

    .line 32
    .line 33
    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 37
    .line 38
    const/4 v3, 0x6

    .line 39
    aput v3, v2, v0

    .line 40
    .line 41
    new-array v0, v1, [Ljava/lang/String;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 44
    .line 45
    new-array v0, v1, [I

    .line 46
    .line 47
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 48
    .line 49
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    const/4 v1, 0x3

    .line 52
    new-array v1, v1, [J

    .line 53
    .line 54
    fill-array-data v1, :array_0

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    .line 68
    .line 69
    return-void

    .line 70
    nop

    .line 71
    :array_0
    .array-data 8
        -0x624bf542a7c88f99L    # -1.359509992357828E-165
        0x731991bf9f6badb3L    # 2.7934173214383655E246
        -0x5956f52cb2d0c72dL
    .end array-data
.end method

.method public static synthetic access$000(Lcom/google/gson/stream/JsonReader;Ljava/lang/String;)Ljava/lang/IllegalStateException;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/gson/stream/JsonReader;->unexpectedTokenError(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private checkLenient()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->strictness:Lcom/google/gson/Strictness;

    .line 2
    .line 3
    sget-object v1, Lcom/google/gson/Strictness;->LENIENT:Lcom/google/gson/Strictness;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/16 v1, 0xb

    .line 11
    .line 12
    new-array v1, v1, [J

    .line 13
    .line 14
    fill-array-data v1, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    throw v0

    .line 29
    :array_0
    .array-data 8
        -0x4856870508cb31dfL    # -1.46205435659567E-40
        -0x2609ff90cf53744L
        0x7b4265900c36d671L    # 5.471249489198641E285
        -0x3ff33ddf65507307L    # -3.594788750154859
        -0x6bbc46bc63cc6bebL    # -4.687067090176071E-211
        0x13d0612c67f96b51L    # 3.040926629528735E-213
        0x37057dc4f341d8ecL    # 1.2046282691784361E-43
        -0x7621d90e12f03576L
        -0x3c4aa0743c18ef2cL    # -1.5401032710955223E18
        0x3928170a7b2a35L
        0x13fbda19803ef4e2L
    .end array-data
.end method

.method private consumeNonExecutePrefix()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 3
    .line 4
    .line 5
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 6
    .line 7
    add-int/lit8 v1, v0, -0x1

    .line 8
    .line 9
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 10
    .line 11
    add-int/lit8 v0, v0, 0x4

    .line 12
    .line 13
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 14
    .line 15
    const/4 v2, 0x5

    .line 16
    if-le v0, v1, :cond_0

    .line 17
    .line 18
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 26
    .line 27
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 28
    .line 29
    aget-char v3, v1, v0

    .line 30
    .line 31
    const/16 v4, 0x29

    .line 32
    .line 33
    if-ne v3, v4, :cond_2

    .line 34
    .line 35
    add-int/lit8 v3, v0, 0x1

    .line 36
    .line 37
    aget-char v3, v1, v3

    .line 38
    .line 39
    const/16 v4, 0x5d

    .line 40
    .line 41
    if-ne v3, v4, :cond_2

    .line 42
    .line 43
    add-int/lit8 v3, v0, 0x2

    .line 44
    .line 45
    aget-char v3, v1, v3

    .line 46
    .line 47
    const/16 v4, 0x7d

    .line 48
    .line 49
    if-ne v3, v4, :cond_2

    .line 50
    .line 51
    add-int/lit8 v3, v0, 0x3

    .line 52
    .line 53
    aget-char v3, v1, v3

    .line 54
    .line 55
    const/16 v4, 0x27

    .line 56
    .line 57
    if-ne v3, v4, :cond_2

    .line 58
    .line 59
    add-int/lit8 v3, v0, 0x4

    .line 60
    .line 61
    aget-char v1, v1, v3

    .line 62
    .line 63
    const/16 v3, 0xa

    .line 64
    .line 65
    if-eq v1, v3, :cond_1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    add-int/2addr v0, v2

    .line 69
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 70
    .line 71
    :cond_2
    :goto_0
    return-void
.end method

.method private fillBuffer(I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 2
    .line 3
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 4
    .line 5
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 6
    .line 7
    sub-int/2addr v1, v2

    .line 8
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 9
    .line 10
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    .line 15
    sub-int/2addr v1, v2

    .line 16
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 17
    .line 18
    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 23
    .line 24
    :goto_0
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 25
    .line 26
    :cond_1
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    .line 27
    .line 28
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 29
    .line 30
    array-length v4, v0

    .line 31
    sub-int/2addr v4, v2

    .line 32
    invoke-virtual {v1, v0, v2, v4}, Ljava/io/Reader;->read([CII)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v2, -0x1

    .line 37
    if-eq v1, v2, :cond_3

    .line 38
    .line 39
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 40
    .line 41
    add-int/2addr v2, v1

    .line 42
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 43
    .line 44
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 50
    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    if-lez v2, :cond_2

    .line 54
    .line 55
    aget-char v5, v0, v3

    .line 56
    .line 57
    const v6, 0xfeff

    .line 58
    .line 59
    .line 60
    if-ne v5, v6, :cond_2

    .line 61
    .line 62
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 63
    .line 64
    add-int/2addr v5, v4

    .line 65
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 66
    .line 67
    add-int/lit8 v1, v1, 0x1

    .line 68
    .line 69
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 70
    .line 71
    add-int/lit8 p1, p1, 0x1

    .line 72
    .line 73
    :cond_2
    if-lt v2, p1, :cond_1

    .line 74
    .line 75
    return v4

    .line 76
    :cond_3
    return v3
.end method

.method private getPath(Z)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    if-ge v1, v2, :cond_2

    .line 3
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    aget v3, v3, v1

    packed-switch v3, :pswitch_data_0

    .line 4
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x4

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 5
    invoke-static {v1, v0, v3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_0
    const/16 v2, 0x2e

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 10
    :pswitch_1
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    aget v3, v3, v1

    if-eqz p1, :cond_0

    if-lez v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 v3, v3, -0x1

    :cond_0
    const/16 v2, 0x5b

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    :pswitch_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :array_0
    .array-data 8
        0x1e987def979e5fdaL    # 2.721983378239918E-161
        -0x31b0b7f6742511b8L    # -1.6866895176113978E69
        -0x4d40ab5a27817f4fL    # -2.975023628092465E-64
        0x16a6e56b731f8a38L
    .end array-data
.end method

.method private isLiteral(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0xc

    .line 10
    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0xd

    .line 14
    .line 15
    if-eq p1, v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x20

    .line 18
    .line 19
    if-eq p1, v0, :cond_1

    .line 20
    .line 21
    const/16 v0, 0x23

    .line 22
    .line 23
    if-eq p1, v0, :cond_0

    .line 24
    .line 25
    const/16 v0, 0x2c

    .line 26
    .line 27
    if-eq p1, v0, :cond_1

    .line 28
    .line 29
    const/16 v0, 0x2f

    .line 30
    .line 31
    if-eq p1, v0, :cond_0

    .line 32
    .line 33
    const/16 v0, 0x3d

    .line 34
    .line 35
    if-eq p1, v0, :cond_0

    .line 36
    .line 37
    const/16 v0, 0x7b

    .line 38
    .line 39
    if-eq p1, v0, :cond_1

    .line 40
    .line 41
    const/16 v0, 0x7d

    .line 42
    .line 43
    if-eq p1, v0, :cond_1

    .line 44
    .line 45
    const/16 v0, 0x3a

    .line 46
    .line 47
    if-eq p1, v0, :cond_1

    .line 48
    .line 49
    const/16 v0, 0x3b

    .line 50
    .line 51
    if-eq p1, v0, :cond_0

    .line 52
    .line 53
    packed-switch p1, :pswitch_data_0

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x1

    .line 57
    return p1

    .line 58
    :cond_0
    :pswitch_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 59
    .line 60
    .line 61
    :cond_1
    :pswitch_1
    const/4 p1, 0x0

    .line 62
    return p1

    .line 63
    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private nextNonWhitespace(Z)I
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 4
    .line 5
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 6
    .line 7
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 8
    .line 9
    :goto_0
    if-ne v3, v4, :cond_2

    .line 10
    .line 11
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 12
    .line 13
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    const/4 p1, -0x1

    .line 22
    return p1

    .line 23
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    const/4 v2, 0x3

    .line 33
    new-array v2, v2, [J

    .line 34
    .line 35
    fill-array-data v2, :array_0

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_1
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 64
    .line 65
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 66
    .line 67
    :cond_2
    add-int/lit8 v5, v3, 0x1

    .line 68
    .line 69
    aget-char v6, v2, v3

    .line 70
    .line 71
    const/16 v7, 0xa

    .line 72
    .line 73
    if-ne v6, v7, :cond_3

    .line 74
    .line 75
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 76
    .line 77
    add-int/2addr v3, v1

    .line 78
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 79
    .line 80
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 81
    .line 82
    goto/16 :goto_1

    .line 83
    .line 84
    :cond_3
    const/16 v7, 0x20

    .line 85
    .line 86
    if-eq v6, v7, :cond_b

    .line 87
    .line 88
    const/16 v7, 0xd

    .line 89
    .line 90
    if-eq v6, v7, :cond_b

    .line 91
    .line 92
    const/16 v7, 0x9

    .line 93
    .line 94
    if-ne v6, v7, :cond_4

    .line 95
    .line 96
    goto/16 :goto_1

    .line 97
    .line 98
    :cond_4
    const/16 v7, 0x2f

    .line 99
    .line 100
    if-ne v6, v7, :cond_9

    .line 101
    .line 102
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 103
    .line 104
    if-ne v5, v4, :cond_5

    .line 105
    .line 106
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 107
    .line 108
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 113
    .line 114
    add-int/2addr v4, v1

    .line 115
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 116
    .line 117
    if-nez v3, :cond_5

    .line 118
    .line 119
    return v6

    .line 120
    :cond_5
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 121
    .line 122
    .line 123
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 124
    .line 125
    aget-char v4, v2, v3

    .line 126
    .line 127
    const/16 v5, 0x2a

    .line 128
    .line 129
    if-eq v4, v5, :cond_7

    .line 130
    .line 131
    if-eq v4, v7, :cond_6

    .line 132
    .line 133
    return v6

    .line 134
    :cond_6
    add-int/2addr v3, v1

    .line 135
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 136
    .line 137
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 138
    .line 139
    .line 140
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 141
    .line 142
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 143
    .line 144
    goto/16 :goto_0

    .line 145
    .line 146
    :cond_7
    add-int/2addr v3, v1

    .line 147
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 148
    .line 149
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 150
    .line 151
    new-array v4, v0, [J

    .line 152
    .line 153
    fill-array-data v4, :array_1

    .line 154
    .line 155
    .line 156
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->skipTo(Ljava/lang/String;)Z

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-eqz v3, :cond_8

    .line 168
    .line 169
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 170
    .line 171
    add-int/2addr v3, v0

    .line 172
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 173
    .line 174
    goto/16 :goto_0

    .line 175
    .line 176
    :cond_8
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 177
    .line 178
    const/4 v0, 0x4

    .line 179
    new-array v0, v0, [J

    .line 180
    .line 181
    fill-array-data v0, :array_2

    .line 182
    .line 183
    .line 184
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-direct {p0, p1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    throw p1

    .line 196
    :cond_9
    const/16 v3, 0x23

    .line 197
    .line 198
    if-ne v6, v3, :cond_a

    .line 199
    .line 200
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 201
    .line 202
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 203
    .line 204
    .line 205
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 206
    .line 207
    .line 208
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 209
    .line 210
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :cond_a
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 215
    .line 216
    return v6

    .line 217
    :cond_b
    :goto_1
    move v3, v5

    .line 218
    goto/16 :goto_0

    .line 219
    .line 220
    nop

    .line 221
    :array_0
    .array-data 8
        -0x137a9baa6bb4c407L    # -5.761252525786912E214
        -0x4d2af6cc2c37896L    # -2.179576199935017E285
        0x699a8e6ab982e5faL    # 5.081886452771189E200
    .end array-data

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
    .line 236
    .line 237
    :array_1
    .array-data 8
        -0x593cee79d347920eL
        0x7205bc04419642c5L    # 1.8115694905013696E241
    .end array-data

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
    :array_2
    .array-data 8
        0x4e187070d15e8dabL    # 1.6472002681241781E68
        0x34a867214124f084L    # 4.976126055959344E-55
        0x14e50894373230c5L    # 5.118288831320861E-208
        -0x105d23650d5cc526L    # -5.719373347677404E229
    .end array-data
.end method

.method private nextQuotedValue(C)Ljava/lang/String;
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 6
    .line 7
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 8
    .line 9
    :goto_1
    move v5, v4

    .line 10
    move v4, v3

    .line 11
    :goto_2
    const/16 v6, 0x10

    .line 12
    .line 13
    if-ge v3, v5, :cond_7

    .line 14
    .line 15
    add-int/lit8 v7, v3, 0x1

    .line 16
    .line 17
    aget-char v3, v1, v3

    .line 18
    .line 19
    iget-object v8, p0, Lcom/google/gson/stream/JsonReader;->strictness:Lcom/google/gson/Strictness;

    .line 20
    .line 21
    sget-object v9, Lcom/google/gson/Strictness;->STRICT:Lcom/google/gson/Strictness;

    .line 22
    .line 23
    if-ne v8, v9, :cond_1

    .line 24
    .line 25
    const/16 v8, 0x20

    .line 26
    .line 27
    if-lt v3, v8, :cond_0

    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    const/16 v0, 0xb

    .line 33
    .line 34
    new-array v0, v0, [J

    .line 35
    .line 36
    fill-array-data v0, :array_0

    .line 37
    .line 38
    .line 39
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {p0, p1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    throw p1

    .line 51
    :cond_1
    :goto_3
    if-ne v3, p1, :cond_3

    .line 52
    .line 53
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 54
    .line 55
    sub-int/2addr v7, v4

    .line 56
    sub-int/2addr v7, v0

    .line 57
    if-nez v2, :cond_2

    .line 58
    .line 59
    new-instance p1, Ljava/lang/String;

    .line 60
    .line 61
    invoke-direct {p1, v1, v4, v7}, Ljava/lang/String;-><init>([CII)V

    .line 62
    .line 63
    .line 64
    return-object p1

    .line 65
    :cond_2
    invoke-virtual {v2, v1, v4, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    return-object p1

    .line 73
    :cond_3
    const/16 v8, 0x5c

    .line 74
    .line 75
    if-ne v3, v8, :cond_5

    .line 76
    .line 77
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 78
    .line 79
    sub-int/2addr v7, v4

    .line 80
    add-int/lit8 v3, v7, -0x1

    .line 81
    .line 82
    if-nez v2, :cond_4

    .line 83
    .line 84
    mul-int/lit8 v7, v7, 0x2

    .line 85
    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 93
    .line 94
    .line 95
    :cond_4
    invoke-virtual {v2, v1, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 106
    .line 107
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_5
    const/16 v6, 0xa

    .line 111
    .line 112
    if-ne v3, v6, :cond_6

    .line 113
    .line 114
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 115
    .line 116
    add-int/2addr v3, v0

    .line 117
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 118
    .line 119
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 120
    .line 121
    :cond_6
    move v3, v7

    .line 122
    goto :goto_2

    .line 123
    :cond_7
    if-nez v2, :cond_8

    .line 124
    .line 125
    sub-int v2, v3, v4

    .line 126
    .line 127
    mul-int/lit8 v2, v2, 0x2

    .line 128
    .line 129
    new-instance v5, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 136
    .line 137
    .line 138
    move-object v2, v5

    .line 139
    :cond_8
    sub-int v5, v3, v4

    .line 140
    .line 141
    invoke-virtual {v2, v1, v4, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 145
    .line 146
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-eqz v3, :cond_9

    .line 151
    .line 152
    goto/16 :goto_0

    .line 153
    .line 154
    :cond_9
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 155
    .line 156
    const/4 v0, 0x4

    .line 157
    new-array v0, v0, [J

    .line 158
    .line 159
    fill-array-data v0, :array_1

    .line 160
    .line 161
    .line 162
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-direct {p0, p1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    throw p1

    .line 174
    nop

    .line 175
    :array_0
    .array-data 8
        0x2bb082da5d275724L    # 3.0195247908847287E-98
        0x46f5bd2ef9580953L    # 7.054708194249635E33
        -0x6245c379b6fbed3bL
        0x2274794c735e9f93L
        0x1d0f9a698408def2L
        0x722ffaa018cc214aL    # 1.0661823472579149E242
        -0x6959b0f5df39cd2dL
        -0x476a84524a81891eL    # -4.040525667251578E-36
        0x568c86f7eb806240L    # 8.374674001688985E108
        -0x6fa9fe4ad416a9eL    # -9.25082899184798E274
        -0x1ac6b2fd0090d316L    # -4.101022480920143E179
    .end array-data

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
    :array_1
    .array-data 8
        0x5b75ff33e64818dcL
        -0x36f136b2b743a988L    # -8.581977798159709E43
        -0x5f64df009788f538L
        0x68efc72ae71abdebL    # 2.9692975230914663E197
    .end array-data
.end method

.method private nextUnquotedValue()Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :cond_0
    const/4 v2, 0x0

    .line 4
    :goto_0
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 5
    .line 6
    add-int v4, v3, v2

    .line 7
    .line 8
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 9
    .line 10
    if-ge v4, v5, :cond_2

    .line 11
    .line 12
    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 13
    .line 14
    add-int/2addr v3, v2

    .line 15
    aget-char v3, v4, v3

    .line 16
    .line 17
    const/16 v4, 0x9

    .line 18
    .line 19
    if-eq v3, v4, :cond_3

    .line 20
    .line 21
    const/16 v4, 0xa

    .line 22
    .line 23
    if-eq v3, v4, :cond_3

    .line 24
    .line 25
    const/16 v4, 0xc

    .line 26
    .line 27
    if-eq v3, v4, :cond_3

    .line 28
    .line 29
    const/16 v4, 0xd

    .line 30
    .line 31
    if-eq v3, v4, :cond_3

    .line 32
    .line 33
    const/16 v4, 0x20

    .line 34
    .line 35
    if-eq v3, v4, :cond_3

    .line 36
    .line 37
    const/16 v4, 0x23

    .line 38
    .line 39
    if-eq v3, v4, :cond_1

    .line 40
    .line 41
    const/16 v4, 0x2c

    .line 42
    .line 43
    if-eq v3, v4, :cond_3

    .line 44
    .line 45
    const/16 v4, 0x2f

    .line 46
    .line 47
    if-eq v3, v4, :cond_1

    .line 48
    .line 49
    const/16 v4, 0x3d

    .line 50
    .line 51
    if-eq v3, v4, :cond_1

    .line 52
    .line 53
    const/16 v4, 0x7b

    .line 54
    .line 55
    if-eq v3, v4, :cond_3

    .line 56
    .line 57
    const/16 v4, 0x7d

    .line 58
    .line 59
    if-eq v3, v4, :cond_3

    .line 60
    .line 61
    const/16 v4, 0x3a

    .line 62
    .line 63
    if-eq v3, v4, :cond_3

    .line 64
    .line 65
    const/16 v4, 0x3b

    .line 66
    .line 67
    if-eq v3, v4, :cond_1

    .line 68
    .line 69
    packed-switch v3, :pswitch_data_0

    .line 70
    .line 71
    .line 72
    add-int/lit8 v2, v2, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    :pswitch_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 80
    .line 81
    array-length v3, v3

    .line 82
    if-ge v2, v3, :cond_4

    .line 83
    .line 84
    add-int/lit8 v3, v2, 0x1

    .line 85
    .line 86
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_3

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    :goto_1
    :pswitch_1
    move v1, v2

    .line 94
    goto :goto_2

    .line 95
    :cond_4
    if-nez v0, :cond_5

    .line 96
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const/16 v3, 0x10

    .line 100
    .line 101
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 106
    .line 107
    .line 108
    :cond_5
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 109
    .line 110
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 111
    .line 112
    invoke-virtual {v0, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 116
    .line 117
    add-int/2addr v3, v2

    .line 118
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 119
    .line 120
    const/4 v2, 0x1

    .line 121
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-nez v2, :cond_0

    .line 126
    .line 127
    :goto_2
    if-nez v0, :cond_6

    .line 128
    .line 129
    new-instance v0, Ljava/lang/String;

    .line 130
    .line 131
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 132
    .line 133
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 134
    .line 135
    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([CII)V

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_6
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 140
    .line 141
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 142
    .line 143
    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    :goto_3
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 151
    .line 152
    add-int/2addr v2, v1

    .line 153
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 154
    .line 155
    return-object v0

    .line 156
    nop

    .line 157
    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private peekKeyword()I
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 4
    .line 5
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 6
    .line 7
    aget-char v2, v2, v3

    .line 8
    .line 9
    const/16 v3, 0x74

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-eq v2, v3, :cond_5

    .line 13
    .line 14
    const/16 v3, 0x54

    .line 15
    .line 16
    if-ne v2, v3, :cond_0

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_0
    const/16 v3, 0x66

    .line 20
    .line 21
    if-eq v2, v3, :cond_4

    .line 22
    .line 23
    const/16 v3, 0x46

    .line 24
    .line 25
    if-ne v2, v3, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/16 v3, 0x6e

    .line 29
    .line 30
    if-eq v2, v3, :cond_3

    .line 31
    .line 32
    const/16 v3, 0x4e

    .line 33
    .line 34
    if-ne v2, v3, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return v4

    .line 38
    :cond_3
    :goto_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    new-array v3, v1, [J

    .line 41
    .line 42
    fill-array-data v3, :array_0

    .line 43
    .line 44
    .line 45
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    new-array v1, v1, [J

    .line 55
    .line 56
    fill-array-data v1, :array_1

    .line 57
    .line 58
    .line 59
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const/4 v3, 0x7

    .line 67
    goto :goto_3

    .line 68
    :cond_4
    :goto_1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    new-array v3, v1, [J

    .line 71
    .line 72
    fill-array-data v3, :array_2

    .line 73
    .line 74
    .line 75
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 83
    .line 84
    new-array v1, v1, [J

    .line 85
    .line 86
    fill-array-data v1, :array_3

    .line 87
    .line 88
    .line 89
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const/4 v3, 0x6

    .line 97
    goto :goto_3

    .line 98
    :cond_5
    :goto_2
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 99
    .line 100
    new-array v3, v1, [J

    .line 101
    .line 102
    fill-array-data v3, :array_4

    .line 103
    .line 104
    .line 105
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 113
    .line 114
    new-array v1, v1, [J

    .line 115
    .line 116
    fill-array-data v1, :array_5

    .line 117
    .line 118
    .line 119
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    const/4 v3, 0x5

    .line 127
    :goto_3
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->strictness:Lcom/google/gson/Strictness;

    .line 128
    .line 129
    sget-object v6, Lcom/google/gson/Strictness;->STRICT:Lcom/google/gson/Strictness;

    .line 130
    .line 131
    if-eq v5, v6, :cond_6

    .line 132
    .line 133
    const/4 v5, 0x1

    .line 134
    goto :goto_4

    .line 135
    :cond_6
    const/4 v5, 0x0

    .line 136
    :goto_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    const/4 v7, 0x0

    .line 141
    :goto_5
    if-ge v7, v6, :cond_a

    .line 142
    .line 143
    iget v8, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 144
    .line 145
    add-int/2addr v8, v7

    .line 146
    iget v9, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 147
    .line 148
    if-lt v8, v9, :cond_7

    .line 149
    .line 150
    add-int/lit8 v8, v7, 0x1

    .line 151
    .line 152
    invoke-direct {p0, v8}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 153
    .line 154
    .line 155
    move-result v8

    .line 156
    if-nez v8, :cond_7

    .line 157
    .line 158
    return v4

    .line 159
    :cond_7
    iget-object v8, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 160
    .line 161
    iget v9, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 162
    .line 163
    add-int/2addr v9, v7

    .line 164
    aget-char v8, v8, v9

    .line 165
    .line 166
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    .line 167
    .line 168
    .line 169
    move-result v9

    .line 170
    if-eq v8, v9, :cond_9

    .line 171
    .line 172
    if-eqz v5, :cond_8

    .line 173
    .line 174
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 175
    .line 176
    .line 177
    move-result v9

    .line 178
    if-ne v8, v9, :cond_8

    .line 179
    .line 180
    goto :goto_6

    .line 181
    :cond_8
    return v4

    .line 182
    :cond_9
    :goto_6
    add-int/2addr v7, v0

    .line 183
    goto :goto_5

    .line 184
    :cond_a
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 185
    .line 186
    add-int/2addr v1, v6

    .line 187
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 188
    .line 189
    if-lt v1, v2, :cond_b

    .line 190
    .line 191
    add-int/2addr v0, v6

    .line 192
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-eqz v0, :cond_c

    .line 197
    .line 198
    :cond_b
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 199
    .line 200
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 201
    .line 202
    add-int/2addr v1, v6

    .line 203
    aget-char v0, v0, v1

    .line 204
    .line 205
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    if-eqz v0, :cond_c

    .line 210
    .line 211
    return v4

    .line 212
    :cond_c
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 213
    .line 214
    add-int/2addr v0, v6

    .line 215
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 216
    .line 217
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 218
    .line 219
    return v3

    .line 220
    nop

    .line 221
    :array_0
    .array-data 8
        0x4125547b78be69e7L    # 698941.7358277411
        0x7da2fd54a9b89408L    # 1.5523903677522367E297
    .end array-data

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
    :array_1
    .array-data 8
        0x17e3cb855cc43ee6L
        -0x4130b7eb2d4dd536L    # -3.7290534656333236E-6
    .end array-data

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
    :array_2
    .array-data 8
        -0x1ebaa3506246b5faL    # -3.754142285969954E160
        0x29946160af1f0e4bL    # 2.169471152160522E-108
    .end array-data

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
    :array_3
    .array-data 8
        0x7a82d22e0d7d6954L    # 1.366560930153525E282
        -0x12c1ad898f546d61L    # -1.6724626843645383E218
    .end array-data

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
    :array_4
    .array-data 8
        -0x6b7ba235a7daa5L
        0x241602210b8e3c46L    # 7.569876230155321E-135
    .end array-data

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
    :array_5
    .array-data 8
        0x3bb051e601b9cf83L    # 3.455876610498531E-21
        0x2731a65673cec0abL    # 6.835030493488843E-120
    .end array-data
.end method

.method private peekNumber()I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 4
    .line 5
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 6
    .line 7
    iget v3, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v7, 0x1

    .line 11
    const/4 v8, 0x0

    .line 12
    const/4 v9, 0x0

    .line 13
    const/4 v10, 0x1

    .line 14
    const-wide/16 v11, 0x0

    .line 15
    .line 16
    const/4 v13, 0x0

    .line 17
    :goto_0
    add-int v14, v2, v8

    .line 18
    .line 19
    const/4 v15, 0x2

    .line 20
    if-ne v14, v3, :cond_2

    .line 21
    .line 22
    array-length v2, v1

    .line 23
    if-ne v8, v2, :cond_0

    .line 24
    .line 25
    return v6

    .line 26
    :cond_0
    add-int/lit8 v2, v8, 0x1

    .line 27
    .line 28
    invoke-direct {v0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    goto/16 :goto_6

    .line 35
    .line 36
    :cond_1
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 37
    .line 38
    iget v3, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 39
    .line 40
    :cond_2
    add-int v14, v2, v8

    .line 41
    .line 42
    aget-char v14, v1, v14

    .line 43
    .line 44
    const/16 v6, 0x2b

    .line 45
    .line 46
    const/4 v5, 0x5

    .line 47
    if-eq v14, v6, :cond_1d

    .line 48
    .line 49
    const/16 v6, 0x45

    .line 50
    .line 51
    if-eq v14, v6, :cond_1a

    .line 52
    .line 53
    const/16 v6, 0x65

    .line 54
    .line 55
    if-eq v14, v6, :cond_1a

    .line 56
    .line 57
    const/16 v6, 0x2d

    .line 58
    .line 59
    if-eq v14, v6, :cond_17

    .line 60
    .line 61
    const/16 v6, 0x2e

    .line 62
    .line 63
    const/4 v4, 0x3

    .line 64
    if-eq v14, v6, :cond_15

    .line 65
    .line 66
    const/16 v6, 0x30

    .line 67
    .line 68
    if-lt v14, v6, :cond_d

    .line 69
    .line 70
    const/16 v6, 0x39

    .line 71
    .line 72
    if-le v14, v6, :cond_3

    .line 73
    .line 74
    goto :goto_5

    .line 75
    :cond_3
    if-eq v9, v7, :cond_c

    .line 76
    .line 77
    if-nez v9, :cond_4

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_4
    if-ne v9, v15, :cond_9

    .line 81
    .line 82
    const-wide/16 v16, 0x0

    .line 83
    .line 84
    cmp-long v4, v11, v16

    .line 85
    .line 86
    if-nez v4, :cond_5

    .line 87
    .line 88
    const/4 v4, 0x0

    .line 89
    return v4

    .line 90
    :cond_5
    const-wide/16 v4, 0xa

    .line 91
    .line 92
    mul-long v4, v4, v11

    .line 93
    .line 94
    add-int/lit8 v14, v14, -0x30

    .line 95
    .line 96
    int-to-long v14, v14

    .line 97
    sub-long/2addr v4, v14

    .line 98
    const-wide v14, -0xcccccccccccccccL

    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    cmp-long v6, v11, v14

    .line 104
    .line 105
    if-gtz v6, :cond_7

    .line 106
    .line 107
    if-nez v6, :cond_6

    .line 108
    .line 109
    cmp-long v6, v4, v11

    .line 110
    .line 111
    if-gez v6, :cond_6

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_6
    const/4 v6, 0x0

    .line 115
    goto :goto_2

    .line 116
    :cond_7
    :goto_1
    const/4 v6, 0x1

    .line 117
    :goto_2
    and-int/2addr v10, v6

    .line 118
    move-wide v11, v4

    .line 119
    :cond_8
    const/4 v6, 0x0

    .line 120
    :goto_3
    const-wide/16 v16, 0x0

    .line 121
    .line 122
    goto/16 :goto_b

    .line 123
    .line 124
    :cond_9
    if-ne v9, v4, :cond_a

    .line 125
    .line 126
    const/4 v6, 0x0

    .line 127
    const/4 v9, 0x4

    .line 128
    goto :goto_3

    .line 129
    :cond_a
    if-eq v9, v5, :cond_b

    .line 130
    .line 131
    const/4 v4, 0x6

    .line 132
    if-ne v9, v4, :cond_8

    .line 133
    .line 134
    :cond_b
    const/4 v6, 0x0

    .line 135
    const/4 v9, 0x7

    .line 136
    goto :goto_3

    .line 137
    :cond_c
    :goto_4
    add-int/lit8 v14, v14, -0x30

    .line 138
    .line 139
    neg-int v4, v14

    .line 140
    int-to-long v11, v4

    .line 141
    const/4 v6, 0x0

    .line 142
    const/4 v9, 0x2

    .line 143
    goto :goto_3

    .line 144
    :cond_d
    :goto_5
    invoke-direct {v0, v14}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-nez v1, :cond_14

    .line 149
    .line 150
    :goto_6
    if-ne v9, v15, :cond_11

    .line 151
    .line 152
    if-eqz v10, :cond_11

    .line 153
    .line 154
    const-wide/high16 v1, -0x8000000000000000L

    .line 155
    .line 156
    cmp-long v3, v11, v1

    .line 157
    .line 158
    if-nez v3, :cond_e

    .line 159
    .line 160
    if-eqz v13, :cond_11

    .line 161
    .line 162
    :cond_e
    const-wide/16 v16, 0x0

    .line 163
    .line 164
    cmp-long v1, v11, v16

    .line 165
    .line 166
    if-nez v1, :cond_f

    .line 167
    .line 168
    if-nez v13, :cond_11

    .line 169
    .line 170
    :cond_f
    if-eqz v13, :cond_10

    .line 171
    .line 172
    goto :goto_7

    .line 173
    :cond_10
    neg-long v11, v11

    .line 174
    :goto_7
    iput-wide v11, v0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    .line 175
    .line 176
    iget v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 177
    .line 178
    add-int/2addr v1, v8

    .line 179
    iput v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 180
    .line 181
    const/16 v1, 0xf

    .line 182
    .line 183
    iput v1, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 184
    .line 185
    return v1

    .line 186
    :cond_11
    if-eq v9, v15, :cond_13

    .line 187
    .line 188
    const/4 v1, 0x4

    .line 189
    if-eq v9, v1, :cond_13

    .line 190
    .line 191
    const/4 v1, 0x7

    .line 192
    if-ne v9, v1, :cond_12

    .line 193
    .line 194
    goto :goto_8

    .line 195
    :cond_12
    const/4 v6, 0x0

    .line 196
    return v6

    .line 197
    :cond_13
    :goto_8
    iput v8, v0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 198
    .line 199
    const/16 v1, 0x10

    .line 200
    .line 201
    iput v1, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 202
    .line 203
    return v1

    .line 204
    :cond_14
    const/4 v6, 0x0

    .line 205
    return v6

    .line 206
    :cond_15
    const/4 v6, 0x0

    .line 207
    const-wide/16 v16, 0x0

    .line 208
    .line 209
    if-ne v9, v15, :cond_16

    .line 210
    .line 211
    const/4 v9, 0x3

    .line 212
    goto :goto_b

    .line 213
    :cond_16
    return v6

    .line 214
    :cond_17
    const/4 v4, 0x6

    .line 215
    const/4 v6, 0x0

    .line 216
    const-wide/16 v16, 0x0

    .line 217
    .line 218
    if-nez v9, :cond_18

    .line 219
    .line 220
    const/4 v9, 0x1

    .line 221
    const/4 v13, 0x1

    .line 222
    goto :goto_b

    .line 223
    :cond_18
    if-ne v9, v5, :cond_19

    .line 224
    .line 225
    :goto_9
    const/4 v9, 0x6

    .line 226
    goto :goto_b

    .line 227
    :cond_19
    return v6

    .line 228
    :cond_1a
    const/4 v6, 0x0

    .line 229
    const-wide/16 v16, 0x0

    .line 230
    .line 231
    if-eq v9, v15, :cond_1c

    .line 232
    .line 233
    const/4 v4, 0x4

    .line 234
    if-ne v9, v4, :cond_1b

    .line 235
    .line 236
    goto :goto_a

    .line 237
    :cond_1b
    return v6

    .line 238
    :cond_1c
    :goto_a
    const/4 v9, 0x5

    .line 239
    goto :goto_b

    .line 240
    :cond_1d
    const/4 v4, 0x6

    .line 241
    const/4 v6, 0x0

    .line 242
    const-wide/16 v16, 0x0

    .line 243
    .line 244
    if-ne v9, v5, :cond_1e

    .line 245
    .line 246
    goto :goto_9

    .line 247
    :goto_b
    add-int/lit8 v8, v8, 0x1

    .line 248
    .line 249
    goto/16 :goto_0

    .line 250
    .line 251
    :cond_1e
    return v6
.end method

.method private push(I)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 3
    .line 4
    add-int/lit8 v2, v1, -0x1

    .line 5
    .line 6
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->nestingLimit:I

    .line 7
    .line 8
    if-ge v2, v3, :cond_1

    .line 9
    .line 10
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 11
    .line 12
    array-length v3, v2

    .line 13
    if-ne v1, v3, :cond_0

    .line 14
    .line 15
    mul-int/lit8 v1, v1, 0x2

    .line 16
    .line 17
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 24
    .line 25
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 30
    .line 31
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, [Ljava/lang/String;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 42
    .line 43
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 44
    .line 45
    add-int/lit8 v2, v1, 0x1

    .line 46
    .line 47
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 48
    .line 49
    aput p1, v0, v1

    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    new-instance p1, Lcom/google/gson/stream/MalformedJsonException;

    .line 53
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    const/4 v3, 0x3

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
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->nestingLimit:I

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 83
    .line 84
    new-array v0, v0, [J

    .line 85
    .line 86
    fill-array-data v0, :array_1

    .line 87
    .line 88
    .line 89
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-direct {p1, v0}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p1

    .line 114
    nop

    .line 115
    :array_0
    .array-data 8
        0x3665fbded4ed6669L    # 1.2033578796547397E-46
        0x2ddd793fe2fdea05L    # 9.260083824032377E-88
        -0x5dde5e0c73781f9dL    # -2.824158036406207E-144
    .end array-data

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
    :array_1
    .array-data 8
        0x51ba1e90dac06c0L
        0x79cd099594f4d550L    # 5.1473572621388146E278
    .end array-data
.end method

.method private readEscapeCharacter()C
    .locals 10

    .line 1
    const/4 v0, 0x7

    .line 2
    const/16 v1, 0x30

    .line 3
    .line 4
    const/4 v2, 0x4

    .line 5
    const/4 v3, 0x5

    .line 6
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 7
    .line 8
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 9
    .line 10
    const/4 v6, 0x1

    .line 11
    if-ne v4, v5, :cond_1

    .line 12
    .line 13
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    new-array v1, v3, [J

    .line 23
    .line 24
    fill-array-data v1, :array_0

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    throw v0

    .line 39
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 40
    .line 41
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 42
    .line 43
    add-int/lit8 v7, v5, 0x1

    .line 44
    .line 45
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 46
    .line 47
    aget-char v4, v4, v5

    .line 48
    .line 49
    const/16 v8, 0xa

    .line 50
    .line 51
    if-eq v4, v8, :cond_e

    .line 52
    .line 53
    const/16 v7, 0x22

    .line 54
    .line 55
    if-eq v4, v7, :cond_10

    .line 56
    .line 57
    const/16 v7, 0x27

    .line 58
    .line 59
    if-eq v4, v7, :cond_f

    .line 60
    .line 61
    const/16 v0, 0x2f

    .line 62
    .line 63
    if-eq v4, v0, :cond_10

    .line 64
    .line 65
    const/16 v0, 0x5c

    .line 66
    .line 67
    if-eq v4, v0, :cond_10

    .line 68
    .line 69
    const/16 v0, 0x62

    .line 70
    .line 71
    if-eq v4, v0, :cond_d

    .line 72
    .line 73
    const/16 v0, 0x66

    .line 74
    .line 75
    if-eq v4, v0, :cond_c

    .line 76
    .line 77
    const/16 v7, 0x6e

    .line 78
    .line 79
    if-eq v4, v7, :cond_b

    .line 80
    .line 81
    const/16 v7, 0x72

    .line 82
    .line 83
    if-eq v4, v7, :cond_a

    .line 84
    .line 85
    const/16 v7, 0x74

    .line 86
    .line 87
    if-eq v4, v7, :cond_9

    .line 88
    .line 89
    const/16 v7, 0x75

    .line 90
    .line 91
    if-ne v4, v7, :cond_8

    .line 92
    .line 93
    add-int/2addr v5, v3

    .line 94
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 95
    .line 96
    if-le v5, v4, :cond_3

    .line 97
    .line 98
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-eqz v4, :cond_2

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 106
    .line 107
    new-array v1, v3, [J

    .line 108
    .line 109
    fill-array-data v1, :array_1

    .line 110
    .line 111
    .line 112
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    throw v0

    .line 124
    :cond_3
    :goto_1
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 125
    .line 126
    add-int/lit8 v5, v4, 0x4

    .line 127
    .line 128
    const/4 v7, 0x0

    .line 129
    :goto_2
    if-ge v4, v5, :cond_7

    .line 130
    .line 131
    iget-object v8, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 132
    .line 133
    aget-char v8, v8, v4

    .line 134
    .line 135
    shl-int/2addr v7, v2

    .line 136
    if-lt v8, v1, :cond_4

    .line 137
    .line 138
    const/16 v9, 0x39

    .line 139
    .line 140
    if-gt v8, v9, :cond_4

    .line 141
    .line 142
    sub-int/2addr v8, v1

    .line 143
    :goto_3
    add-int/2addr v8, v7

    .line 144
    move v7, v8

    .line 145
    goto :goto_4

    .line 146
    :cond_4
    const/16 v9, 0x61

    .line 147
    .line 148
    if-lt v8, v9, :cond_5

    .line 149
    .line 150
    if-gt v8, v0, :cond_5

    .line 151
    .line 152
    add-int/lit8 v8, v8, -0x57

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_5
    const/16 v9, 0x41

    .line 156
    .line 157
    if-lt v8, v9, :cond_6

    .line 158
    .line 159
    const/16 v9, 0x46

    .line 160
    .line 161
    if-gt v8, v9, :cond_6

    .line 162
    .line 163
    add-int/lit8 v8, v8, -0x37

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :goto_4
    add-int/2addr v4, v6

    .line 167
    goto :goto_2

    .line 168
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 174
    .line 175
    new-array v3, v3, [J

    .line 176
    .line 177
    fill-array-data v3, :array_2

    .line 178
    .line 179
    .line 180
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    new-instance v1, Ljava/lang/String;

    .line 191
    .line 192
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 193
    .line 194
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 195
    .line 196
    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([CII)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    throw v0

    .line 211
    :cond_7
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 212
    .line 213
    add-int/2addr v0, v2

    .line 214
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 215
    .line 216
    int-to-char v0, v7

    .line 217
    return v0

    .line 218
    :cond_8
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 219
    .line 220
    new-array v1, v2, [J

    .line 221
    .line 222
    fill-array-data v1, :array_3

    .line 223
    .line 224
    .line 225
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    throw v0

    .line 237
    :cond_9
    const/16 v0, 0x9

    .line 238
    .line 239
    return v0

    .line 240
    :cond_a
    const/16 v0, 0xd

    .line 241
    .line 242
    return v0

    .line 243
    :cond_b
    return v8

    .line 244
    :cond_c
    const/16 v0, 0xc

    .line 245
    .line 246
    return v0

    .line 247
    :cond_d
    const/16 v0, 0x8

    .line 248
    .line 249
    return v0

    .line 250
    :cond_e
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->strictness:Lcom/google/gson/Strictness;

    .line 251
    .line 252
    sget-object v2, Lcom/google/gson/Strictness;->STRICT:Lcom/google/gson/Strictness;

    .line 253
    .line 254
    if-eq v1, v2, :cond_12

    .line 255
    .line 256
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 257
    .line 258
    add-int/2addr v1, v6

    .line 259
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 260
    .line 261
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 262
    .line 263
    :cond_f
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->strictness:Lcom/google/gson/Strictness;

    .line 264
    .line 265
    sget-object v2, Lcom/google/gson/Strictness;->STRICT:Lcom/google/gson/Strictness;

    .line 266
    .line 267
    if-eq v1, v2, :cond_11

    .line 268
    .line 269
    :cond_10
    return v4

    .line 270
    :cond_11
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 271
    .line 272
    new-array v0, v0, [J

    .line 273
    .line 274
    fill-array-data v0, :array_4

    .line 275
    .line 276
    .line 277
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    throw v0

    .line 289
    :cond_12
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 290
    .line 291
    new-array v0, v0, [J

    .line 292
    .line 293
    fill-array-data v0, :array_5

    .line 294
    .line 295
    .line 296
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    throw v0

    .line 308
    nop

    .line 309
    :array_0
    .array-data 8
        -0x34142fd9b4afe52L
        -0x27f472c9cd341a92L    # -1.3569857988479312E116
        0x38428ace2576df23L    # 1.0898130403509156E-37
        -0x350952197933db3cL    # -1.3576532925866327E53
        -0x393fba4d21a32cc9L    # -6.600813080470901E32
    .end array-data

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
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    :array_1
    .array-data 8
        0x1b657c1cb0347898L
        -0x4528426b0128f0b7L    # -3.0683947832094497E-25
        -0x54463963c48be3dfL    # -4.7138302203299243E-98
        0x20c55ebc3279f8c8L
        0x4b86e368e0a853cfL    # 7.015249377847077E55
    .end array-data

    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
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
    :array_2
    .array-data 8
        -0x56fd937fc4a5c945L
        -0x79a7aa2e43da2624L
        0x15fabfa66719cb54L    # 8.531482826682474E-203
        -0x6764aa9e54ab76e1L
        -0x2be7ec2f13702612L    # -1.2857257130868644E97
    .end array-data

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
    :array_3
    .array-data 8
        -0xe7dabbe7f9d20d2L    # -5.967718092417455E238
        -0x32b87b50547cee57L    # -1.9349739449409057E64
        0x5620a32249090d9fL    # 7.631498255260234E106
        0x7b5a08c337c59b56L    # 1.548533536285228E286
    .end array-data

    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
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
    :array_4
    .array-data 8
        -0x24620eb676d14994L    # -2.1253309653387153E133
        0x6c85f9e4594ab029L    # 5.918591284319569E214
        0x7077678af23fe9edL    # 5.813736583776399E233
        0x4a6e6793a133fe82L    # 3.554909393730949E50
        -0x6f4cb07d8efcacf2L    # -3.184188037136125E-228
        -0x42b882399af222c9L    # -1.6691578617789197E-13
        -0x1c7e95f103cc7fdfL    # -2.1030681752132113E171
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
    :array_5
    .array-data 8
        0x386621f2b74a4589L    # 5.203351558216507E-37
        -0x40a90af2fa84afd3L    # -0.0014011981165156326
        -0x1dc5881b5864e95cL    # -1.5242079654464217E165
        -0x176b02991ea13bfbL    # -6.128956743896312E195
        -0x57106e3e14a33949L    # -1.640882437774928E-111
        0x1abdea1f2096a84dL    # 7.209163809199622E-180
        0x16c37c842e4b82b8L    # 5.091483114685284E-199
    .end array-data
.end method

.method private skipQuotedValue(C)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 3
    .line 4
    :goto_0
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 5
    .line 6
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 7
    .line 8
    :goto_1
    if-ge v2, v3, :cond_3

    .line 9
    .line 10
    add-int/lit8 v4, v2, 0x1

    .line 11
    .line 12
    aget-char v2, v1, v2

    .line 13
    .line 14
    if-ne v2, p1, :cond_0

    .line 15
    .line 16
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const/16 v5, 0x5c

    .line 20
    .line 21
    if-ne v2, v5, :cond_1

    .line 22
    .line 23
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    .line 26
    .line 27
    .line 28
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 29
    .line 30
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/16 v5, 0xa

    .line 34
    .line 35
    if-ne v2, v5, :cond_2

    .line 36
    .line 37
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 38
    .line 39
    add-int/2addr v2, v0

    .line 40
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 41
    .line 42
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 43
    .line 44
    :cond_2
    move v2, v4

    .line 45
    goto :goto_1

    .line 46
    :cond_3
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 47
    .line 48
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_4

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    const/4 v0, 0x4

    .line 58
    new-array v0, v0, [J

    .line 59
    .line 60
    fill-array-data v0, :array_0

    .line 61
    .line 62
    .line 63
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-direct {p0, p1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    throw p1

    .line 75
    :array_0
    .array-data 8
        0x7ee82df4c2993aaeL    # 2.0726847603714146E303
        -0x60b432c4428651f0L    # -6.327957089150209E-158
        -0x5dc1cb9985362097L    # -9.675567467532189E-144
        -0x5ce9920088dd4a3dL
    .end array-data
.end method

.method private skipTo(Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :goto_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 6
    .line 7
    add-int/2addr v1, v0

    .line 8
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-le v1, v2, :cond_1

    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    return v3

    .line 21
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 22
    .line 23
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 24
    .line 25
    aget-char v1, v1, v2

    .line 26
    .line 27
    const/16 v4, 0xa

    .line 28
    .line 29
    const/4 v5, 0x1

    .line 30
    if-ne v1, v4, :cond_2

    .line 31
    .line 32
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 33
    .line 34
    add-int/2addr v1, v5

    .line 35
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 36
    .line 37
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_2
    :goto_2
    if-ge v3, v0, :cond_4

    .line 43
    .line 44
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 45
    .line 46
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 47
    .line 48
    add-int/2addr v2, v3

    .line 49
    aget-char v1, v1, v2

    .line 50
    .line 51
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eq v1, v2, :cond_3

    .line 56
    .line 57
    :goto_3
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 58
    .line 59
    add-int/2addr v1, v5

    .line 60
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_4
    return v5
.end method

.method private skipToEndOfLine()V
    .locals 4

    .line 1
    :cond_0
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-lt v0, v1, :cond_1

    .line 7
    .line 8
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    :cond_1
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 15
    .line 16
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 17
    .line 18
    add-int/lit8 v3, v1, 0x1

    .line 19
    .line 20
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 21
    .line 22
    aget-char v0, v0, v1

    .line 23
    .line 24
    const/16 v1, 0xa

    .line 25
    .line 26
    if-ne v0, v1, :cond_2

    .line 27
    .line 28
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 29
    .line 30
    add-int/2addr v0, v2

    .line 31
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 32
    .line 33
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/16 v1, 0xd

    .line 37
    .line 38
    if-ne v0, v1, :cond_0

    .line 39
    .line 40
    :cond_3
    :goto_0
    return-void
.end method

.method private skipUnquotedValue()V
    .locals 4

    .line 1
    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 3
    .line 4
    add-int v2, v1, v0

    .line 5
    .line 6
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 7
    .line 8
    if-ge v2, v3, :cond_3

    .line 9
    .line 10
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 11
    .line 12
    add-int/2addr v1, v0

    .line 13
    aget-char v1, v2, v1

    .line 14
    .line 15
    const/16 v2, 0x9

    .line 16
    .line 17
    if-eq v1, v2, :cond_2

    .line 18
    .line 19
    const/16 v2, 0xa

    .line 20
    .line 21
    if-eq v1, v2, :cond_2

    .line 22
    .line 23
    const/16 v2, 0xc

    .line 24
    .line 25
    if-eq v1, v2, :cond_2

    .line 26
    .line 27
    const/16 v2, 0xd

    .line 28
    .line 29
    if-eq v1, v2, :cond_2

    .line 30
    .line 31
    const/16 v2, 0x20

    .line 32
    .line 33
    if-eq v1, v2, :cond_2

    .line 34
    .line 35
    const/16 v2, 0x23

    .line 36
    .line 37
    if-eq v1, v2, :cond_1

    .line 38
    .line 39
    const/16 v2, 0x2c

    .line 40
    .line 41
    if-eq v1, v2, :cond_2

    .line 42
    .line 43
    const/16 v2, 0x2f

    .line 44
    .line 45
    if-eq v1, v2, :cond_1

    .line 46
    .line 47
    const/16 v2, 0x3d

    .line 48
    .line 49
    if-eq v1, v2, :cond_1

    .line 50
    .line 51
    const/16 v2, 0x7b

    .line 52
    .line 53
    if-eq v1, v2, :cond_2

    .line 54
    .line 55
    const/16 v2, 0x7d

    .line 56
    .line 57
    if-eq v1, v2, :cond_2

    .line 58
    .line 59
    const/16 v2, 0x3a

    .line 60
    .line 61
    if-eq v1, v2, :cond_2

    .line 62
    .line 63
    const/16 v2, 0x3b

    .line 64
    .line 65
    if-eq v1, v2, :cond_1

    .line 66
    .line 67
    packed-switch v1, :pswitch_data_0

    .line 68
    .line 69
    .line 70
    add-int/lit8 v0, v0, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    :pswitch_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 74
    .line 75
    .line 76
    :cond_2
    :pswitch_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 77
    .line 78
    add-int/2addr v1, v0

    .line 79
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 80
    .line 81
    return-void

    .line 82
    :cond_3
    add-int/2addr v1, v0

    .line 83
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 84
    .line 85
    const/4 v0, 0x1

    .line 86
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_0

    .line 91
    .line 92
    return-void

    .line 93
    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/gson/stream/MalformedJsonException;

    .line 2
    .line 3
    invoke-static {p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    new-array v2, v2, [J

    .line 18
    .line 19
    fill-array-data v2, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    const/4 v2, 0x3

    .line 35
    new-array v2, v2, [J

    .line 36
    .line 37
    fill-array-data v2, :array_1

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Lcom/google/gson/internal/TroubleshootingGuide;->createUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {v0, p1}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v0

    .line 62
    nop

    .line 63
    :array_0
    .array-data 8
        -0x2b0c0d5dbe15354bL    # -1.745232581298914E101
        -0x40f516d4ea951084L    # -5.132830363183038E-5
    .end array-data

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
    .line 74
    .line 75
    :array_1
    .array-data 8
        -0x218471c2c3294becL    # -1.3763475641294964E147
        0x273dc167e0bc7dfL
        0x371712066308a76fL    # 2.586282403371124E-43
    .end array-data
.end method

.method private unexpectedTokenError(Ljava/lang/String;)Ljava/lang/IllegalStateException;
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    sget-object v2, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v2, 0x4

    .line 13
    new-array v2, v2, [J

    .line 14
    .line 15
    fill-array-data v2, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v2, 0x5

    .line 29
    new-array v2, v2, [J

    .line 30
    .line 31
    fill-array-data v2, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :goto_1
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array v5, v0, [J

    .line 48
    .line 49
    fill-array-data v5, :array_2

    .line 50
    .line 51
    .line 52
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 66
    .line 67
    new-array v0, v0, [J

    .line 68
    .line 69
    fill-array-data v0, :array_3

    .line 70
    .line 71
    .line 72
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 97
    .line 98
    const/4 v0, 0x2

    .line 99
    new-array v0, v0, [J

    .line 100
    .line 101
    fill-array-data v0, :array_4

    .line 102
    .line 103
    .line 104
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-static {v1}, Lcom/google/gson/internal/TroubleshootingGuide;->createUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-direct {v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return-object v2

    .line 129
    :array_0
    .array-data 8
        -0x36d627c49242666aL    # -2.8817755312724243E44
        -0x315fa299867b5226L    # -5.647300421608209E70
        -0x66695b29d15dd642L
        0x6904fc527c800290L    # 7.843488343035425E197
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
        0x41f0e30fb5109d6bL    # 4.533058385038432E9
        -0x649ff400c8378441L    # -7.919954754701065E-177
        0x9a574e4c3e245dL
        0x1f084e8cc71ff881L
        0x69c9fcc6fdba8208L    # 3.978415494265465E201
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
    .line 170
    .line 171
    .line 172
    .line 173
    :array_2
    .array-data 8
        -0x178839d992ef2364L    # -1.7354811518125662E195
        0x5b25e7e78e64b70aL    # 1.214755226595775E131
        0x4a29ed2df15d29f0L    # 1.8945798152627335E49
    .end array-data

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
    :array_3
    .array-data 8
        -0x3ed3e5c9fa5f516dL    # -920859.0109915308
        0xed100173bb11ab1L    # 2.610726655368179E-237
        -0x2918d6f412c00f4dL    # -4.3514432466461986E110
    .end array-data

    :array_4
    .array-data 8
        -0xd3aa49938bccfb3L    # -7.291342393135571E244
        0x4aaf0f9da60094a3L    # 5.810649765971655E51
    .end array-data
.end method


# virtual methods
.method public beginArray()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    :cond_0
    if-ne v1, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 17
    .line 18
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 19
    .line 20
    sub-int/2addr v2, v0

    .line 21
    const/4 v0, 0x0

    .line 22
    aput v0, v1, v2

    .line 23
    .line 24
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    new-array v0, v0, [J

    .line 30
    .line 31
    fill-array-data v0, :array_0

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->unexpectedTokenError(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    throw v0

    .line 46
    nop

    .line 47
    :array_0
    .array-data 8
        0x1941b98b560f7782L    # 5.092061173078463E-187
        0x26eed71a9ea5279aL    # 3.732240704633965E-121
        0x4ac67f45588d6d4fL    # 1.6834367649074925E52
    .end array-data
.end method

.method public beginObject()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    :cond_0
    const/4 v2, 0x1

    .line 11
    if-ne v1, v2, :cond_1

    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    new-array v0, v0, [J

    .line 23
    .line 24
    fill-array-data v0, :array_0

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->unexpectedTokenError(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    throw v0

    .line 39
    :array_0
    .array-data 8
        0x45dd2ff1fe81865eL    # 3.6132110333878046E28
        0x1d1ca34cc5e950aeL
        0x39aa6847f78f2a35L    # 6.509913921901433E-31
    .end array-data
.end method

.method public close()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 5
    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    aput v2, v1, v0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public doPeek()I
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    add-int/lit8 v3, v1, -0x1

    .line 7
    .line 8
    aget v3, v0, v3

    .line 9
    .line 10
    const/16 v4, 0x27

    .line 11
    .line 12
    const/16 v5, 0x22

    .line 13
    .line 14
    const/16 v6, 0x8

    .line 15
    .line 16
    const/4 v7, 0x3

    .line 17
    const/16 v8, 0x5d

    .line 18
    .line 19
    const/4 v9, 0x7

    .line 20
    const/16 v10, 0x3b

    .line 21
    .line 22
    const/16 v11, 0x2c

    .line 23
    .line 24
    const/4 v12, 0x4

    .line 25
    const/4 v13, 0x2

    .line 26
    if-ne v3, v2, :cond_0

    .line 27
    .line 28
    sub-int/2addr v1, v2

    .line 29
    aput v13, v0, v1

    .line 30
    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :cond_0
    if-ne v3, v13, :cond_3

    .line 34
    .line 35
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eq v0, v11, :cond_c

    .line 40
    .line 41
    if-eq v0, v10, :cond_2

    .line 42
    .line 43
    if-ne v0, v8, :cond_1

    .line 44
    .line 45
    iput v12, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 46
    .line 47
    return v12

    .line 48
    :cond_1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    new-array v1, v12, [J

    .line 51
    .line 52
    fill-array-data v1, :array_0

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    throw v0

    .line 67
    :cond_2
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_0

    .line 71
    .line 72
    :cond_3
    const/4 v14, 0x5

    .line 73
    if-eq v3, v7, :cond_19

    .line 74
    .line 75
    if-ne v3, v14, :cond_4

    .line 76
    .line 77
    goto/16 :goto_2

    .line 78
    .line 79
    :cond_4
    if-ne v3, v12, :cond_7

    .line 80
    .line 81
    sub-int/2addr v1, v2

    .line 82
    aput v14, v0, v1

    .line 83
    .line 84
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    const/16 v1, 0x3a

    .line 89
    .line 90
    if-eq v0, v1, :cond_c

    .line 91
    .line 92
    const/16 v1, 0x3d

    .line 93
    .line 94
    if-ne v0, v1, :cond_6

    .line 95
    .line 96
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 97
    .line 98
    .line 99
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 100
    .line 101
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 102
    .line 103
    if-lt v0, v1, :cond_5

    .line 104
    .line 105
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_c

    .line 110
    .line 111
    :cond_5
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 112
    .line 113
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 114
    .line 115
    aget-char v0, v0, v1

    .line 116
    .line 117
    const/16 v14, 0x3e

    .line 118
    .line 119
    if-ne v0, v14, :cond_c

    .line 120
    .line 121
    add-int/2addr v1, v2

    .line 122
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_6
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 126
    .line 127
    new-array v1, v7, [J

    .line 128
    .line 129
    fill-array-data v1, :array_1

    .line 130
    .line 131
    .line 132
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    throw v0

    .line 144
    :cond_7
    const/4 v0, 0x6

    .line 145
    if-ne v3, v0, :cond_9

    .line 146
    .line 147
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->strictness:Lcom/google/gson/Strictness;

    .line 148
    .line 149
    sget-object v1, Lcom/google/gson/Strictness;->LENIENT:Lcom/google/gson/Strictness;

    .line 150
    .line 151
    if-ne v0, v1, :cond_8

    .line 152
    .line 153
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->consumeNonExecutePrefix()V

    .line 154
    .line 155
    .line 156
    :cond_8
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 157
    .line 158
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 159
    .line 160
    sub-int/2addr v1, v2

    .line 161
    aput v9, v0, v1

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_9
    if-ne v3, v9, :cond_b

    .line 165
    .line 166
    const/4 v0, 0x0

    .line 167
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    const/4 v1, -0x1

    .line 172
    if-ne v0, v1, :cond_a

    .line 173
    .line 174
    const/16 v0, 0x11

    .line 175
    .line 176
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 177
    .line 178
    return v0

    .line 179
    :cond_a
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 180
    .line 181
    .line 182
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 183
    .line 184
    sub-int/2addr v0, v2

    .line 185
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_b
    if-eq v3, v6, :cond_18

    .line 189
    .line 190
    :cond_c
    :goto_0
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-eq v0, v5, :cond_17

    .line 195
    .line 196
    if-eq v0, v4, :cond_16

    .line 197
    .line 198
    if-eq v0, v11, :cond_13

    .line 199
    .line 200
    if-eq v0, v10, :cond_13

    .line 201
    .line 202
    const/16 v1, 0x5b

    .line 203
    .line 204
    if-eq v0, v1, :cond_12

    .line 205
    .line 206
    if-eq v0, v8, :cond_11

    .line 207
    .line 208
    const/16 v1, 0x7b

    .line 209
    .line 210
    if-eq v0, v1, :cond_10

    .line 211
    .line 212
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 213
    .line 214
    sub-int/2addr v0, v2

    .line 215
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 216
    .line 217
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->peekKeyword()I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-eqz v0, :cond_d

    .line 222
    .line 223
    return v0

    .line 224
    :cond_d
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->peekNumber()I

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-eqz v0, :cond_e

    .line 229
    .line 230
    return v0

    .line 231
    :cond_e
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 232
    .line 233
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 234
    .line 235
    aget-char v0, v0, v1

    .line 236
    .line 237
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    if-eqz v0, :cond_f

    .line 242
    .line 243
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 244
    .line 245
    .line 246
    const/16 v0, 0xa

    .line 247
    .line 248
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 249
    .line 250
    return v0

    .line 251
    :cond_f
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 252
    .line 253
    new-array v1, v7, [J

    .line 254
    .line 255
    fill-array-data v1, :array_2

    .line 256
    .line 257
    .line 258
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    throw v0

    .line 270
    :cond_10
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 271
    .line 272
    return v2

    .line 273
    :cond_11
    if-ne v3, v2, :cond_13

    .line 274
    .line 275
    iput v12, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 276
    .line 277
    return v12

    .line 278
    :cond_12
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 279
    .line 280
    return v7

    .line 281
    :cond_13
    if-eq v3, v2, :cond_15

    .line 282
    .line 283
    if-ne v3, v13, :cond_14

    .line 284
    .line 285
    goto :goto_1

    .line 286
    :cond_14
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 287
    .line 288
    new-array v1, v7, [J

    .line 289
    .line 290
    fill-array-data v1, :array_3

    .line 291
    .line 292
    .line 293
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    throw v0

    .line 305
    :cond_15
    :goto_1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 306
    .line 307
    .line 308
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 309
    .line 310
    sub-int/2addr v0, v2

    .line 311
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 312
    .line 313
    iput v9, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 314
    .line 315
    return v9

    .line 316
    :cond_16
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 317
    .line 318
    .line 319
    iput v6, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 320
    .line 321
    return v6

    .line 322
    :cond_17
    const/16 v0, 0x9

    .line 323
    .line 324
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 325
    .line 326
    return v0

    .line 327
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 328
    .line 329
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 330
    .line 331
    new-array v2, v12, [J

    .line 332
    .line 333
    fill-array-data v2, :array_4

    .line 334
    .line 335
    .line 336
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    throw v0

    .line 347
    :cond_19
    :goto_2
    sub-int/2addr v1, v2

    .line 348
    aput v12, v0, v1

    .line 349
    .line 350
    const/16 v0, 0x7d

    .line 351
    .line 352
    if-ne v3, v14, :cond_1c

    .line 353
    .line 354
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    if-eq v1, v11, :cond_1c

    .line 359
    .line 360
    if-eq v1, v10, :cond_1b

    .line 361
    .line 362
    if-ne v1, v0, :cond_1a

    .line 363
    .line 364
    iput v13, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 365
    .line 366
    return v13

    .line 367
    :cond_1a
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 368
    .line 369
    new-array v1, v12, [J

    .line 370
    .line 371
    fill-array-data v1, :array_5

    .line 372
    .line 373
    .line 374
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    throw v0

    .line 386
    :cond_1b
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 387
    .line 388
    .line 389
    :cond_1c
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 390
    .line 391
    .line 392
    move-result v1

    .line 393
    if-eq v1, v5, :cond_21

    .line 394
    .line 395
    if-eq v1, v4, :cond_20

    .line 396
    .line 397
    if-eq v1, v0, :cond_1e

    .line 398
    .line 399
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 400
    .line 401
    .line 402
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 403
    .line 404
    sub-int/2addr v0, v2

    .line 405
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 406
    .line 407
    int-to-char v0, v1

    .line 408
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    if-eqz v0, :cond_1d

    .line 413
    .line 414
    const/16 v0, 0xe

    .line 415
    .line 416
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 417
    .line 418
    return v0

    .line 419
    :cond_1d
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 420
    .line 421
    new-array v1, v7, [J

    .line 422
    .line 423
    fill-array-data v1, :array_6

    .line 424
    .line 425
    .line 426
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    throw v0

    .line 438
    :cond_1e
    if-eq v3, v14, :cond_1f

    .line 439
    .line 440
    iput v13, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 441
    .line 442
    return v13

    .line 443
    :cond_1f
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 444
    .line 445
    new-array v1, v7, [J

    .line 446
    .line 447
    fill-array-data v1, :array_7

    .line 448
    .line 449
    .line 450
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    throw v0

    .line 462
    :cond_20
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 463
    .line 464
    .line 465
    const/16 v0, 0xc

    .line 466
    .line 467
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 468
    .line 469
    return v0

    .line 470
    :cond_21
    const/16 v0, 0xd

    .line 471
    .line 472
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 473
    .line 474
    return v0

    .line 475
    :array_0
    .array-data 8
        0x584c4188fa1c712aL    # 2.226685886779967E117
        0x33cf84bc5478a931L    # 3.9228019773172573E-59
        0x508a9b20b0434577L    # 9.858433815448606E79
        0x1c99d985557fcf38L    # 6.688948059408617E-171
    .end array-data

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
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    :array_1
    .array-data 8
        0x1107fcbaa1211bd7L
        0x768ec4411bdf8111L    # 1.2110051725747516E263
        0x1cb5a278db4e54b2L
    .end array-data

    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
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
    :array_2
    .array-data 8
        0x1d8305ac75435264L
        0x65a1cfb99156cbe2L    # 3.6954393270040364E181
        -0x46cf70322ac7a715L    # -3.189674042508417E-33
    .end array-data

    .line 512
    .line 513
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
    :array_3
    .array-data 8
        0x8ebd3555ff41ff4L
        -0x5325b46347d73f27L    # -1.260609183827561E-92
        0x12f70369951d343cL    # 2.607729865048703E-217
    .end array-data

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
    :array_4
    .array-data 8
        -0x63c056dadc8ae572L
        -0x710bd5a5e40f81e3L
        -0x8382025dd34e641L    # -9.853692736986386E268
        0x321cead371af028dL    # 2.681504644424892E-67
    .end array-data

    .line 544
    .line 545
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
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    :array_5
    .array-data 8
        0x409695c52da9ad7bL    # 1445.442557002271
        -0x61b2b0b3c7e72163L
        0x76ebe1849c340062L    # 7.02349791258081E264
        0xb1432e5de6a046aL
    .end array-data

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
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    :array_6
    .array-data 8
        0x5a428f3e54eee0bdL    # 6.281675727855843E126
        -0x3b4b727901296fdL    # -5.317930649070774E290
        0x140649713fb6540eL
    .end array-data

    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    :array_7
    .array-data 8
        -0x4ac50643a4e40447L    # -2.8163767777245326E-52
        0x74e121725c81576L
        -0x680e12bed8ad2871L    # -2.455754622032382E-193
    .end array-data
.end method

.method public endArray()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x4

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 13
    .line 14
    add-int/lit8 v1, v0, -0x1

    .line 15
    .line 16
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 19
    .line 20
    add-int/lit8 v0, v0, -0x2

    .line 21
    .line 22
    aget v2, v1, v0

    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    aput v2, v1, v0

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    const/4 v1, 0x3

    .line 35
    new-array v1, v1, [J

    .line 36
    .line 37
    fill-array-data v1, :array_0

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->unexpectedTokenError(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    throw v0

    .line 52
    nop

    .line 53
    :array_0
    .array-data 8
        0x1b7d806d913b9098L
        0x6beae1385b7cd056L    # 7.069561159448475E211
        0x683f454b58020b0dL    # 1.4267062470105493E194
    .end array-data
.end method

.method public endObject()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x2

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 13
    .line 14
    add-int/lit8 v2, v0, -0x1

    .line 15
    .line 16
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 17
    .line 18
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    aput-object v4, v3, v2

    .line 22
    .line 23
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 24
    .line 25
    sub-int/2addr v0, v1

    .line 26
    aget v1, v2, v0

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    aput v1, v2, v0

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    const/4 v1, 0x3

    .line 39
    new-array v1, v1, [J

    .line 40
    .line 41
    fill-array-data v1, :array_0

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->unexpectedTokenError(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    throw v0

    .line 56
    nop

    .line 57
    :array_0
    .array-data 8
        0x606c290910374976L    # 3.0205425641493085E156
        -0x2686f40e5ccd1686L    # -1.0348275840595344E123
        0x77fa8dbf57c60fb9L    # 8.767609357745124E269
    .end array-data
.end method

.method public final getNestingLimit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->nestingLimit:I

    .line 2
    .line 3
    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->getPath(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousPath()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->getPath(Z)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public final getStrictness()Lcom/google/gson/Strictness;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->strictness:Lcom/google/gson/Strictness;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x2

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const/16 v1, 0x11

    .line 16
    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method public final isLenient()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->strictness:Lcom/google/gson/Strictness;

    .line 2
    .line 3
    sget-object v1, Lcom/google/gson/Strictness;->LENIENT:Lcom/google/gson/Strictness;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public locationString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 6
    .line 7
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 8
    .line 9
    sub-int/2addr v1, v2

    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 v4, 0x3

    .line 20
    new-array v4, v4, [J

    .line 21
    .line 22
    fill-array-data v4, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    const/4 v3, 0x2

    .line 41
    new-array v4, v3, [J

    .line 42
    .line 43
    fill-array-data v4, :array_1

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    new-array v1, v3, [J

    .line 62
    .line 63
    fill-array-data v1, :array_2

    .line 64
    .line 65
    .line 66
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    return-object v0

    .line 88
    nop

    .line 89
    :array_0
    .array-data 8
        -0x3c5b306d5634c0a9L    # -7.4978922944735936E17
        0x78a47ff568825ee2L
        -0x22a79bf1176f8d22L    # -4.6473454825368845E141
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
    :array_1
    .array-data 8
        -0x5b575ff6010fc14cL    # -4.336614736929089E-132
        -0x3b753fad9c745905L    # -1.5791155019880763E22
    .end array-data

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
    :array_2
    .array-data 8
        -0x166ba8ede24e1e0dL    # -3.8923388780283196E200
        0x5b17ed73c4fe3ac2L    # 6.634318650783283E130
    .end array-data
.end method

.method public nextBoolean()Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x5

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 17
    .line 18
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 19
    .line 20
    sub-int/2addr v1, v3

    .line 21
    aget v2, v0, v1

    .line 22
    .line 23
    add-int/2addr v2, v3

    .line 24
    aput v2, v0, v1

    .line 25
    .line 26
    return v3

    .line 27
    :cond_1
    const/4 v1, 0x6

    .line 28
    if-ne v0, v1, :cond_2

    .line 29
    .line 30
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 31
    .line 32
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 33
    .line 34
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 35
    .line 36
    sub-int/2addr v1, v3

    .line 37
    aget v4, v0, v1

    .line 38
    .line 39
    add-int/2addr v4, v3

    .line 40
    aput v4, v0, v1

    .line 41
    .line 42
    return v2

    .line 43
    :cond_2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    const/4 v1, 0x3

    .line 46
    new-array v1, v1, [J

    .line 47
    .line 48
    fill-array-data v1, :array_0

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->unexpectedTokenError(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    throw v0

    .line 63
    :array_0
    .array-data 8
        0x6438fb3e2300f815L    # 6.178663866621411E174
        0x2e780be777dce056L    # 7.736296690497364E-85
        0x4f736c42ee55f40fL    # 5.490765966785167E74
    .end array-data
.end method

.method public nextDouble()D
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/16 v1, 0xf

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 17
    .line 18
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 19
    .line 20
    add-int/lit8 v1, v1, -0x1

    .line 21
    .line 22
    aget v2, v0, v1

    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    aput v2, v0, v1

    .line 27
    .line 28
    iget-wide v0, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    .line 29
    .line 30
    long-to-double v0, v0

    .line 31
    return-wide v0

    .line 32
    :cond_1
    const/16 v1, 0x10

    .line 33
    .line 34
    const/16 v3, 0xb

    .line 35
    .line 36
    if-ne v0, v1, :cond_2

    .line 37
    .line 38
    new-instance v0, Ljava/lang/String;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 41
    .line 42
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 43
    .line 44
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 45
    .line 46
    invoke-direct {v0, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 50
    .line 51
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 52
    .line 53
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 54
    .line 55
    add-int/2addr v0, v1

    .line 56
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    const/16 v1, 0x8

    .line 60
    .line 61
    if-eq v0, v1, :cond_6

    .line 62
    .line 63
    const/16 v4, 0x9

    .line 64
    .line 65
    if-ne v0, v4, :cond_3

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    const/16 v1, 0xa

    .line 69
    .line 70
    if-ne v0, v1, :cond_4

    .line 71
    .line 72
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_4
    if-ne v0, v3, :cond_5

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_5
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 83
    .line 84
    const/4 v1, 0x2

    .line 85
    new-array v1, v1, [J

    .line 86
    .line 87
    fill-array-data v1, :array_0

    .line 88
    .line 89
    .line 90
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->unexpectedTokenError(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    throw v0

    .line 102
    :cond_6
    :goto_0
    if-ne v0, v1, :cond_7

    .line 103
    .line 104
    const/16 v0, 0x27

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_7
    const/16 v0, 0x22

    .line 108
    .line 109
    :goto_1
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 114
    .line 115
    :goto_2
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 116
    .line 117
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 120
    .line 121
    .line 122
    move-result-wide v0

    .line 123
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->strictness:Lcom/google/gson/Strictness;

    .line 124
    .line 125
    sget-object v4, Lcom/google/gson/Strictness;->LENIENT:Lcom/google/gson/Strictness;

    .line 126
    .line 127
    if-eq v3, v4, :cond_9

    .line 128
    .line 129
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-nez v3, :cond_8

    .line 134
    .line 135
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-nez v3, :cond_8

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 148
    .line 149
    const/4 v4, 0x6

    .line 150
    new-array v4, v4, [J

    .line 151
    .line 152
    fill-array-data v4, :array_1

    .line 153
    .line 154
    .line 155
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    throw v0

    .line 177
    :cond_9
    :goto_3
    const/4 v3, 0x0

    .line 178
    iput-object v3, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 179
    .line 180
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 181
    .line 182
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 183
    .line 184
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 185
    .line 186
    add-int/lit8 v3, v3, -0x1

    .line 187
    .line 188
    aget v4, v2, v3

    .line 189
    .line 190
    add-int/lit8 v4, v4, 0x1

    .line 191
    .line 192
    aput v4, v2, v3

    .line 193
    .line 194
    return-wide v0

    .line 195
    :array_0
    .array-data 8
        -0x786351b721049dffL
        0x101184feec20011eL
    .end array-data

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
    :array_1
    .array-data 8
        -0x4889db87c4e423e0L    # -1.5886435636640246E-41
        0x5c5feb81337cdcf1L    # 9.280259446608396E136
        0x51491a9f2056216cL    # 3.8100579344152367E83
        -0x53addeb841a0e03L    # -2.455102679236163E283
        -0x44ae986948f42747L    # -5.758713461613621E-23
        0x305c508355a1e9fbL    # 9.781153165802158E-76
    .end array-data
.end method

.method public nextInt()I
    .locals 8

    .line 1
    const/4 v0, 0x4

    .line 2
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    :cond_0
    const/16 v2, 0xf

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-ne v1, v2, :cond_2

    .line 14
    .line 15
    iget-wide v1, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    .line 16
    .line 17
    long-to-int v4, v1

    .line 18
    int-to-long v5, v4

    .line 19
    cmp-long v7, v1, v5

    .line 20
    .line 21
    if-nez v7, :cond_1

    .line 22
    .line 23
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 26
    .line 27
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 28
    .line 29
    add-int/lit8 v1, v1, -0x1

    .line 30
    .line 31
    aget v2, v0, v1

    .line 32
    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    aput v2, v0, v1

    .line 36
    .line 37
    return v4

    .line 38
    :cond_1
    new-instance v1, Ljava/lang/NumberFormatException;

    .line 39
    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array v0, v0, [J

    .line 48
    .line 49
    fill-array-data v0, :array_0

    .line 50
    .line 51
    .line 52
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-wide v3, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    .line 63
    .line 64
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v1

    .line 82
    :cond_2
    const/16 v2, 0x10

    .line 83
    .line 84
    if-ne v1, v2, :cond_3

    .line 85
    .line 86
    new-instance v1, Ljava/lang/String;

    .line 87
    .line 88
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 89
    .line 90
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 91
    .line 92
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 93
    .line 94
    invoke-direct {v1, v2, v4, v5}, Ljava/lang/String;-><init>([CII)V

    .line 95
    .line 96
    .line 97
    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 98
    .line 99
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 100
    .line 101
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 102
    .line 103
    add-int/2addr v1, v2

    .line 104
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_3
    const/16 v2, 0xa

    .line 108
    .line 109
    const/16 v4, 0x8

    .line 110
    .line 111
    if-eq v1, v4, :cond_5

    .line 112
    .line 113
    const/16 v5, 0x9

    .line 114
    .line 115
    if-eq v1, v5, :cond_5

    .line 116
    .line 117
    if-ne v1, v2, :cond_4

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 121
    .line 122
    const/4 v1, 0x2

    .line 123
    new-array v1, v1, [J

    .line 124
    .line 125
    fill-array-data v1, :array_1

    .line 126
    .line 127
    .line 128
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->unexpectedTokenError(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    throw v0

    .line 140
    :cond_5
    :goto_0
    if-ne v1, v2, :cond_6

    .line 141
    .line 142
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_6
    if-ne v1, v4, :cond_7

    .line 150
    .line 151
    const/16 v1, 0x27

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_7
    const/16 v1, 0x22

    .line 155
    .line 156
    :goto_1
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 161
    .line 162
    :goto_2
    :try_start_0
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 163
    .line 164
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 169
    .line 170
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 171
    .line 172
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 173
    .line 174
    add-int/lit8 v4, v4, -0x1

    .line 175
    .line 176
    aget v5, v2, v4

    .line 177
    .line 178
    add-int/lit8 v5, v5, 0x1

    .line 179
    .line 180
    aput v5, v2, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .line 182
    return v1

    .line 183
    :catch_0
    nop

    .line 184
    :goto_3
    const/16 v1, 0xb

    .line 185
    .line 186
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 187
    .line 188
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 189
    .line 190
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 191
    .line 192
    .line 193
    move-result-wide v1

    .line 194
    double-to-int v4, v1

    .line 195
    int-to-double v5, v4

    .line 196
    cmpl-double v7, v5, v1

    .line 197
    .line 198
    if-nez v7, :cond_8

    .line 199
    .line 200
    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 202
    .line 203
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 204
    .line 205
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 206
    .line 207
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 208
    .line 209
    add-int/lit8 v1, v1, -0x1

    .line 210
    .line 211
    aget v2, v0, v1

    .line 212
    .line 213
    add-int/lit8 v2, v2, 0x1

    .line 214
    .line 215
    aput v2, v0, v1

    .line 216
    .line 217
    return v4

    .line 218
    :cond_8
    new-instance v1, Ljava/lang/NumberFormatException;

    .line 219
    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 226
    .line 227
    new-array v0, v0, [J

    .line 228
    .line 229
    fill-array-data v0, :array_2

    .line 230
    .line 231
    .line 232
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 243
    .line 244
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    throw v1

    .line 262
    nop

    .line 263
    :array_0
    .array-data 8
        -0x2d506266d8fb3fa3L    # -2.0125672383496116E90
        -0xdf745fa15c1b05aL    # -2.060970968167715E241
        0x1dc9dee7117773bbL    # 3.509787255278509E-165
        -0x1c3ed82e45a254L
    .end array-data

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
    .line 280
    .line 281
    .line 282
    .line 283
    :array_1
    .array-data 8
        -0x25c1de2d31c75cd5L    # -5.0992690398894107E126
        -0x6c2efab435f269aeL    # -3.159949789426877E-213
    .end array-data

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
    :array_2
    .array-data 8
        -0x35438828046c900cL    # -1.0651195474576663E52
        -0x3697986597139988L    # -4.353943945339072E45
        -0x72d0405bd5fd9448L    # -3.632604393698869E-245
        0x697bfa64bddf4dbaL    # 1.338490680327188E200
    .end array-data
.end method

.method public nextLong()J
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/16 v1, 0xf

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 17
    .line 18
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 19
    .line 20
    add-int/lit8 v1, v1, -0x1

    .line 21
    .line 22
    aget v2, v0, v1

    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    aput v2, v0, v1

    .line 27
    .line 28
    iget-wide v0, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    .line 29
    .line 30
    return-wide v0

    .line 31
    :cond_1
    const/16 v1, 0x10

    .line 32
    .line 33
    if-ne v0, v1, :cond_2

    .line 34
    .line 35
    new-instance v0, Ljava/lang/String;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 38
    .line 39
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 40
    .line 41
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 42
    .line 43
    invoke-direct {v0, v1, v3, v4}, Ljava/lang/String;-><init>([CII)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 47
    .line 48
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 49
    .line 50
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 51
    .line 52
    add-int/2addr v0, v1

    .line 53
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_2
    const/16 v1, 0xa

    .line 57
    .line 58
    const/16 v3, 0x8

    .line 59
    .line 60
    if-eq v0, v3, :cond_4

    .line 61
    .line 62
    const/16 v4, 0x9

    .line 63
    .line 64
    if-eq v0, v4, :cond_4

    .line 65
    .line 66
    if-ne v0, v1, :cond_3

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    const/4 v1, 0x2

    .line 72
    new-array v1, v1, [J

    .line 73
    .line 74
    fill-array-data v1, :array_0

    .line 75
    .line 76
    .line 77
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->unexpectedTokenError(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    throw v0

    .line 89
    :cond_4
    :goto_0
    if-ne v0, v1, :cond_5

    .line 90
    .line 91
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_5
    if-ne v0, v3, :cond_6

    .line 99
    .line 100
    const/16 v0, 0x27

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_6
    const/16 v0, 0x22

    .line 104
    .line 105
    :goto_1
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 110
    .line 111
    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 112
    .line 113
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 114
    .line 115
    .line 116
    move-result-wide v0

    .line 117
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 118
    .line 119
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 120
    .line 121
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 122
    .line 123
    add-int/lit8 v4, v4, -0x1

    .line 124
    .line 125
    aget v5, v3, v4

    .line 126
    .line 127
    add-int/lit8 v5, v5, 0x1

    .line 128
    .line 129
    aput v5, v3, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .line 131
    return-wide v0

    .line 132
    :catch_0
    nop

    .line 133
    :goto_3
    const/16 v0, 0xb

    .line 134
    .line 135
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 136
    .line 137
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 138
    .line 139
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 140
    .line 141
    .line 142
    move-result-wide v0

    .line 143
    double-to-long v3, v0

    .line 144
    long-to-double v5, v3

    .line 145
    cmpl-double v7, v5, v0

    .line 146
    .line 147
    if-nez v7, :cond_7

    .line 148
    .line 149
    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 151
    .line 152
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 153
    .line 154
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 155
    .line 156
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 157
    .line 158
    add-int/lit8 v1, v1, -0x1

    .line 159
    .line 160
    aget v2, v0, v1

    .line 161
    .line 162
    add-int/lit8 v2, v2, 0x1

    .line 163
    .line 164
    aput v2, v0, v1

    .line 165
    .line 166
    return-wide v3

    .line 167
    :cond_7
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 168
    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 175
    .line 176
    const/4 v3, 0x4

    .line 177
    new-array v3, v3, [J

    .line 178
    .line 179
    fill-array-data v3, :array_1

    .line 180
    .line 181
    .line 182
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 193
    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    throw v0

    .line 212
    nop

    .line 213
    :array_0
    .array-data 8
        0x4f108a3fb7a0f250L    # 7.305927961827554E72
        -0x39a6255e9b26e793L    # -8.193467633183886E30
    .end array-data

    .line 214
    .line 215
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
    :array_1
    .array-data 8
        -0x30f786e9d07e53b3L    # -5.405004873061458E72
        0x266b65c2108752a3L
        -0x5400a904a61f36d8L    # -9.170167083812978E-97
        0x741ecb183248e652L    # 2.2047186177809648E251
    .end array-data
.end method

.method public nextName()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/16 v1, 0xe

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/16 v1, 0xc

    .line 19
    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    const/16 v0, 0x27

    .line 23
    .line 24
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/16 v1, 0xd

    .line 30
    .line 31
    if-ne v0, v1, :cond_3

    .line 32
    .line 33
    const/16 v0, 0x22

    .line 34
    .line 35
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_0
    const/4 v1, 0x0

    .line 40
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 41
    .line 42
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 43
    .line 44
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 45
    .line 46
    add-int/lit8 v2, v2, -0x1

    .line 47
    .line 48
    aput-object v0, v1, v2

    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    const/4 v1, 0x2

    .line 54
    new-array v1, v1, [J

    .line 55
    .line 56
    fill-array-data v1, :array_0

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->unexpectedTokenError(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    throw v0

    .line 71
    :array_0
    .array-data 8
        -0x5a03993d5db123c9L
        -0x4b2c32e4549fed22L    # -3.230222033938153E-54
    .end array-data
.end method

.method public nextNull()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/4 v1, 0x7

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 16
    .line 17
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 18
    .line 19
    add-int/lit8 v1, v1, -0x1

    .line 20
    .line 21
    aget v2, v0, v1

    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    aput v2, v0, v1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/4 v1, 0x2

    .line 31
    new-array v1, v1, [J

    .line 32
    .line 33
    fill-array-data v1, :array_0

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->unexpectedTokenError(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    throw v0

    .line 48
    nop

    .line 49
    :array_0
    .array-data 8
        -0x1400675862adec1dL    # -1.662008719358407E212
        -0x614a142b9ae44acaL    # -9.74511210523313E-161
    .end array-data
.end method

.method public nextString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/16 v1, 0xa

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/16 v1, 0x8

    .line 19
    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    const/16 v0, 0x27

    .line 23
    .line 24
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/16 v1, 0x9

    .line 30
    .line 31
    if-ne v0, v1, :cond_3

    .line 32
    .line 33
    const/16 v0, 0x22

    .line 34
    .line 35
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    const/16 v1, 0xb

    .line 41
    .line 42
    if-ne v0, v1, :cond_4

    .line 43
    .line 44
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_4
    const/16 v1, 0xf

    .line 51
    .line 52
    if-ne v0, v1, :cond_5

    .line 53
    .line 54
    iget-wide v0, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    .line 55
    .line 56
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    goto :goto_0

    .line 61
    :cond_5
    const/16 v1, 0x10

    .line 62
    .line 63
    if-ne v0, v1, :cond_6

    .line 64
    .line 65
    new-instance v0, Ljava/lang/String;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 68
    .line 69
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 70
    .line 71
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 72
    .line 73
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 74
    .line 75
    .line 76
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 77
    .line 78
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 79
    .line 80
    add-int/2addr v1, v2

    .line 81
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 82
    .line 83
    :goto_0
    const/4 v1, 0x0

    .line 84
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 85
    .line 86
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 87
    .line 88
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 89
    .line 90
    add-int/lit8 v2, v2, -0x1

    .line 91
    .line 92
    aget v3, v1, v2

    .line 93
    .line 94
    add-int/lit8 v3, v3, 0x1

    .line 95
    .line 96
    aput v3, v1, v2

    .line 97
    .line 98
    return-object v0

    .line 99
    :cond_6
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 100
    .line 101
    const/4 v1, 0x2

    .line 102
    new-array v1, v1, [J

    .line 103
    .line 104
    fill-array-data v1, :array_0

    .line 105
    .line 106
    .line 107
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->unexpectedTokenError(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    throw v0

    .line 119
    :array_0
    .array-data 8
        0x6493f8878f45dd99L    # 3.161209952946252E176
        0x7df1c4a929719a0eL    # 4.648141084851623E298
    .end array-data
.end method

.method public peek()Lcom/google/gson/stream/JsonToken;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v0, Ljava/lang/AssertionError;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 15
    .line 16
    .line 17
    throw v0

    .line 18
    :pswitch_0
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    .line 19
    .line 20
    return-object v0

    .line 21
    :pswitch_1
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    .line 22
    .line 23
    return-object v0

    .line 24
    :pswitch_2
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    .line 25
    .line 26
    return-object v0

    .line 27
    :pswitch_3
    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    .line 28
    .line 29
    return-object v0

    .line 30
    :pswitch_4
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    .line 31
    .line 32
    return-object v0

    .line 33
    :pswitch_5
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    .line 34
    .line 35
    return-object v0

    .line 36
    :pswitch_6
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    .line 37
    .line 38
    return-object v0

    .line 39
    :pswitch_7
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    .line 40
    .line 41
    return-object v0

    .line 42
    :pswitch_8
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    .line 43
    .line 44
    return-object v0

    .line 45
    :pswitch_9
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    .line 46
    .line 47
    return-object v0

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setLenient(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/google/gson/Strictness;->LENIENT:Lcom/google/gson/Strictness;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/google/gson/Strictness;->LEGACY_STRICT:Lcom/google/gson/Strictness;

    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/gson/stream/JsonReader;->setStrictness(Lcom/google/gson/Strictness;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setNestingLimit(I)V
    .locals 4

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lcom/google/gson/stream/JsonReader;->nestingLimit:I

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v3, 0x4

    .line 16
    new-array v3, v3, [J

    .line 17
    .line 18
    fill-array-data v3, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-static {v2, v1, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    nop

    .line 33
    :array_0
    .array-data 8
        0x717be57157855c40L    # 4.5413249276476855E238
        0x45bb4fafcceee8f8L    # 8.452430599411448E27
        -0x65167ccd9675200eL
        -0x7d9b3bc838dd4516L    # -3.969146190083715E-297
    .end array-data
.end method

.method public final setStrictness(Lcom/google/gson/Strictness;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/gson/stream/JsonReader;->strictness:Lcom/google/gson/Strictness;

    .line 5
    .line 6
    return-void
.end method

.method public skipValue()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    :cond_0
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 6
    .line 7
    if-nez v4, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    :cond_1
    const/16 v5, 0x27

    .line 14
    .line 15
    const/16 v6, 0x22

    .line 16
    .line 17
    packed-switch v4, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    :pswitch_0
    goto/16 :goto_2

    .line 21
    .line 22
    :pswitch_1
    return-void

    .line 23
    :pswitch_2
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 24
    .line 25
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 26
    .line 27
    add-int/2addr v4, v5

    .line 28
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 29
    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    :pswitch_3
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipUnquotedValue()V

    .line 33
    .line 34
    .line 35
    if-nez v3, :cond_3

    .line 36
    .line 37
    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 38
    .line 39
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 40
    .line 41
    sub-int/2addr v5, v0

    .line 42
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    new-array v7, v1, [J

    .line 45
    .line 46
    fill-array-data v7, :array_0

    .line 47
    .line 48
    .line 49
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    aput-object v6, v4, v5

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :pswitch_4
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    .line 60
    .line 61
    .line 62
    if-nez v3, :cond_3

    .line 63
    .line 64
    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 65
    .line 66
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 67
    .line 68
    sub-int/2addr v5, v0

    .line 69
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    new-array v7, v1, [J

    .line 72
    .line 73
    fill-array-data v7, :array_1

    .line 74
    .line 75
    .line 76
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    aput-object v6, v4, v5

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :pswitch_5
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    .line 87
    .line 88
    .line 89
    if-nez v3, :cond_3

    .line 90
    .line 91
    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 92
    .line 93
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 94
    .line 95
    sub-int/2addr v5, v0

    .line 96
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 97
    .line 98
    new-array v7, v1, [J

    .line 99
    .line 100
    fill-array-data v7, :array_2

    .line 101
    .line 102
    .line 103
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    aput-object v6, v4, v5

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :pswitch_6
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipUnquotedValue()V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :pswitch_7
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :pswitch_8
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :pswitch_9
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 126
    .line 127
    sub-int/2addr v4, v0

    .line 128
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 129
    .line 130
    :goto_0
    add-int/lit8 v3, v3, -0x1

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :pswitch_a
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 134
    .line 135
    .line 136
    :goto_1
    add-int/2addr v3, v0

    .line 137
    goto :goto_2

    .line 138
    :pswitch_b
    if-nez v3, :cond_2

    .line 139
    .line 140
    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 141
    .line 142
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 143
    .line 144
    sub-int/2addr v5, v0

    .line 145
    const/4 v6, 0x0

    .line 146
    aput-object v6, v4, v5

    .line 147
    .line 148
    :cond_2
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 149
    .line 150
    sub-int/2addr v4, v0

    .line 151
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :pswitch_c
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_3
    :goto_2
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 159
    .line 160
    if-gtz v3, :cond_0

    .line 161
    .line 162
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 163
    .line 164
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 165
    .line 166
    sub-int/2addr v2, v0

    .line 167
    aget v3, v1, v2

    .line 168
    .line 169
    add-int/2addr v3, v0

    .line 170
    aput v3, v1, v2

    .line 171
    .line 172
    return-void

    .line 173
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :array_0
    .array-data 8
        -0x40cca6e523fec61L    # -1.1700013339302092E289
        0x4c41764471c686c6L    # 2.192212735144863E59
        -0x4a2e8b2771fa735dL    # -1.8662771346887266E-49
    .end array-data

    :array_1
    .array-data 8
        0x54bfc1c711da02aL
        0x53a17a21c40602beL    # 7.29117411018301E94
        0x79fd9d793987c12cL    # 4.1998100788788797E279
    .end array-data

    :array_2
    .array-data 8
        -0x1f58ff9a6fd97132L    # -3.9475246191027007E157
        -0x7fcab9fc7b3a2aabL
        -0x54fc911a8a1672d0L    # -1.735303887524338E-101
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method
