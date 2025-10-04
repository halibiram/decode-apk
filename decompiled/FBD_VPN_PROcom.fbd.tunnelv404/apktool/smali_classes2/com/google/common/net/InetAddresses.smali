.class public final Lcom/google/common/net/InetAddresses;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation runtime Lcom/google/common/net/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/net/InetAddresses$TeredoInfo;
    }
.end annotation


# static fields
.field private static final ANY4:Ljava/net/Inet4Address;

.field private static final IPV4_DELIMITER:C = '.'

.field private static final IPV4_DELIMITER_MATCHER:Lcom/google/common/base/CharMatcher;

.field private static final IPV4_PART_COUNT:I = 0x4

.field private static final IPV6_DELIMITER:C = ':'

.field private static final IPV6_DELIMITER_MATCHER:Lcom/google/common/base/CharMatcher;

.field private static final IPV6_PART_COUNT:I = 0x8

.field private static final LOOPBACK4:Ljava/net/Inet4Address;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x2e

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/common/net/InetAddresses;->IPV4_DELIMITER_MATCHER:Lcom/google/common/base/CharMatcher;

    .line 8
    .line 9
    const/16 v0, 0x3a

    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/google/common/net/InetAddresses;->IPV6_DELIMITER_MATCHER:Lcom/google/common/base/CharMatcher;

    .line 16
    .line 17
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    new-array v1, v1, [J

    .line 21
    .line 22
    fill-array-data v1, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/net/Inet4Address;

    .line 37
    .line 38
    sput-object v0, Lcom/google/common/net/InetAddresses;->LOOPBACK4:Ljava/net/Inet4Address;

    .line 39
    .line 40
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    const/4 v1, 0x2

    .line 43
    new-array v1, v1, [J

    .line 44
    .line 45
    fill-array-data v1, :array_1

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Ljava/net/Inet4Address;

    .line 60
    .line 61
    sput-object v0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    .line 62
    .line 63
    return-void

    .line 64
    nop

    .line 65
    :array_0
    .array-data 8
        -0x4a13115181381f87L    # -6.186349143195681E-49
        -0x37831df89607865fL    # -1.572536047400146E41
        0x61ac8427baa26560L    # 3.207301649769029E162
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
    :array_1
    .array-data 8
        -0x79a7251496c5c534L    # -4.381678249273522E-278
        -0x329482ef83e38184L    # -9.0465011954229E64
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$000()Ljava/net/Inet4Address;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    .line 2
    .line 3
    return-object v0
.end method

.method private static bytesToInetAddress([B)Ljava/net/InetAddress;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    new-instance v0, Ljava/lang/AssertionError;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    throw v0
.end method

.method public static coerceToInteger(Ljava/net/InetAddress;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getCoercedIPv4Address(Ljava/net/InetAddress;)Ljava/net/Inet4Address;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lcom/google/common/io/ByteStreams;->newDataInput([B)Lcom/google/common/io/ByteArrayDataInput;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0}, Lcom/google/common/io/ByteArrayDataInput;->readInt()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method private static compressLongestRunOfZeroes([I)V
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, -0x1

    .line 4
    const/4 v3, -0x1

    .line 5
    const/4 v4, -0x1

    .line 6
    :goto_0
    array-length v5, p0

    .line 7
    add-int/lit8 v5, v5, 0x1

    .line 8
    .line 9
    if-ge v1, v5, :cond_3

    .line 10
    .line 11
    array-length v5, p0

    .line 12
    if-ge v1, v5, :cond_0

    .line 13
    .line 14
    aget v5, p0, v1

    .line 15
    .line 16
    if-nez v5, :cond_0

    .line 17
    .line 18
    if-gez v4, :cond_2

    .line 19
    .line 20
    move v4, v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    if-ltz v4, :cond_2

    .line 23
    .line 24
    sub-int v5, v1, v4

    .line 25
    .line 26
    if-le v5, v2, :cond_1

    .line 27
    .line 28
    move v3, v4

    .line 29
    move v2, v5

    .line 30
    :cond_1
    const/4 v4, -0x1

    .line 31
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    const/4 v1, 0x2

    .line 35
    if-lt v2, v1, :cond_4

    .line 36
    .line 37
    add-int/2addr v2, v3

    .line 38
    invoke-static {p0, v3, v2, v0}, Ljava/util/Arrays;->fill([IIII)V

    .line 39
    .line 40
    .line 41
    :cond_4
    return-void
.end method

.method private static convertDottedQuadToHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/16 v1, 0x3a

    .line 3
    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x1

    .line 9
    add-int/2addr v1, v2

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV4(Ljava/lang/String;)[B

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return-object p0

    .line 27
    :cond_0
    aget-byte v1, p0, v3

    .line 28
    .line 29
    and-int/lit16 v1, v1, 0xff

    .line 30
    .line 31
    shl-int/lit8 v1, v1, 0x8

    .line 32
    .line 33
    aget-byte v3, p0, v2

    .line 34
    .line 35
    and-int/lit16 v3, v3, 0xff

    .line 36
    .line 37
    or-int/2addr v1, v3

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    aget-byte v3, p0, v0

    .line 43
    .line 44
    and-int/lit16 v3, v3, 0xff

    .line 45
    .line 46
    shl-int/lit8 v3, v3, 0x8

    .line 47
    .line 48
    const/4 v5, 0x3

    .line 49
    aget-byte p0, p0, v5

    .line 50
    .line 51
    and-int/lit16 p0, p0, 0xff

    .line 52
    .line 53
    or-int/2addr p0, v3

    .line 54
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {v2, v4}, L땸득뎸뒬둥따듔도디돨듽둘땫땍뎰땸되뒈땲돰됴뎠땍뒨돶뎸뎡듐땁뎠뒉드땣듔딨듸뒬땤들됩땄뒵딠듰뒷뒛뒙딌들딜돸딌땁뒛딨돝땯땣땁돤뒋땩돶뎸뒛뒛뒾듼딜뒀둣됨뎰땄돤딌둠뎰둔뒼두땟두땝땲딻뒉땜땯뒉되뒵딽득돳땃땥땠땫땋듬듼듟딀돛돷뒘드뒵둣뒘땫뎡땐둠뒤땲땁땹듰땫되득뒀땥뒹딠디딅뒨;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(ILjava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-static {v2, v1}, L땸득뎸뒬둥따듔도디돨듽둘땫땍뎰땸되뒈땲돰됴뎠땍뒨돶뎸뎡듐땁뎠뒉드땣듔딨듸뒬땤들됩땄뒵딠듰뒷뒛뒙딌들딜돸딌땁뒛딨돝땯땣땁돤뒋땩돶뎸뒛뒛뒾듼딜뒀둣됨뎰땄돤딌둠뎰둔뒼두땟두땝땲딻뒉땜땯뒉되뒵딽득돳땃땥땠땫땋듬듼듟딀돛돷뒘드뒵둣뒘땫뎡땐둠뒤땲땁땹듰땫되득뒀땥뒹딠디딅뒨;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(ILjava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-static {v2, p0}, L땸득뎸뒬둥따듔도디돨듽둘땫땍뎰땸되뒈땲돰됴뎠땍뒨돶뎸뎡듐땁뎠뒉드땣듔딨듸뒬땤들됩땄뒵딠듰뒷뒛뒙딌들딜돸딌땁뒛딨돝땯땣땁돤뒋땩돶뎸뒛뒛뒾듼딜뒀둣됨뎰땄돤딌둠뎰둔뒼두땟두땝땲딻뒉땜땯뒉되뒵딽득돳땃땥땠땫땋듬듼듟딀돛돷뒘드뒵둣뒘땫뎡땐둠뒤땲땁땹듰땫되득뒀땥뒹딠디딅뒨;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(ILjava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 82
    .line 83
    new-array v0, v0, [J

    .line 84
    .line 85
    fill-array-data v0, :array_0

    .line 86
    .line 87
    .line 88
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 89
    .line 90
    .line 91
    invoke-static {v1, v3, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0

    .line 96
    nop

    .line 97
    :array_0
    .array-data 8
        0x64687b0ac4ab0238L    # 4.843843842479393E175
        -0x10403e3e66571b1L
    .end array-data
.end method

.method public static decrement(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    array-length v2, v1

    .line 7
    const/4 v3, 0x1

    .line 8
    sub-int/2addr v2, v3

    .line 9
    :goto_0
    if-ltz v2, :cond_0

    .line 10
    .line 11
    aget-byte v4, v1, v2

    .line 12
    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    aput-byte v0, v1, v2

    .line 16
    .line 17
    add-int/2addr v2, v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-ltz v2, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    :goto_1
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    const/4 v5, 0x5

    .line 27
    new-array v5, v5, [J

    .line 28
    .line 29
    fill-array-data v5, :array_0

    .line 30
    .line 31
    .line 32
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-static {v0, v4, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    aget-byte p0, v1, v2

    .line 43
    .line 44
    sub-int/2addr p0, v3

    .line 45
    int-to-byte p0, p0

    .line 46
    aput-byte p0, v1, v2

    .line 47
    .line 48
    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :array_0
    .array-data 8
        0x63cf3e856c0186eeL    # 6.037223676956129E172
        -0x7d399411e1db10d5L
        -0x147fcafac5857158L    # -6.660281764602773E209
        -0x4b9fce91aa336e14L    # -2.0637664340578764E-56
        -0x65315517365a9b8bL
    .end array-data
.end method

.method public static forString(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/4 v1, 0x6

    .line 15
    new-array v1, v1, [J

    .line 16
    .line 17
    fill-array-data v1, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x1

    .line 28
    new-array v1, v1, [Ljava/lang/Object;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    aput-object p0, v1, v2

    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/google/common/net/InetAddresses;->formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    throw p0

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        -0x19be9019661e2cd9L    # -3.704605161520059E184
        -0xbfcfc67b2679ab6L
        -0x2d54f5ca742d31b3L    # -1.721287732468601E90
        0x3787cb18f5b634eL
        0x15b810b52d902739L    # 4.797263667705943E-204
        0x7a726d64a5b119e9L    # 6.689875967816705E281
    .end array-data
.end method

.method public static forUriString(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->forUriStringNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

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
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v1, 0x5

    .line 11
    new-array v1, v1, [J

    .line 12
    .line 13
    fill-array-data v1, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x1

    .line 24
    new-array v1, v1, [Ljava/lang/Object;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    aput-object p0, v1, v2

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/google/common/net/InetAddresses;->formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    throw p0

    .line 34
    nop

    .line 35
    :array_0
    .array-data 8
        0x6cf1b40805318bc7L    # 6.102809779690178E216
        -0x6875cd18b46080baL
        -0x35e1b7dc02498ef1L    # -1.1064224770749591E49
        -0xa47809fe01c267eL
        0x1374e3b805c5feb5L    # 6.059708107722311E-215
    .end array-data
.end method

.method private static forUriStringNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 3
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    new-array v2, v1, [J

    .line 8
    .line 9
    fill-array-data v2, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    new-array v1, v1, [J

    .line 28
    .line 29
    fill-array-data v1, :array_1

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/4 v1, 0x1

    .line 50
    sub-int/2addr v0, v1

    .line 51
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    const/16 v0, 0x10

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/4 v0, 0x4

    .line 59
    :goto_0
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    if-eqz p0, :cond_2

    .line 64
    .line 65
    array-length v1, p0

    .line 66
    if-eq v1, v0, :cond_1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 75
    return-object p0

    .line 76
    nop

    .line 77
    :array_0
    .array-data 8
        0x4e0e8140ed08d7b3L    # 1.028012993265628E68
        -0x15f76661f7f36e5eL    # -6.025643034849778E202
    .end array-data

    :array_1
    .array-data 8
        0xbffe42fbfdeb958L
        0x5e675ed7b8e36132L    # 5.836540754994657E146
    .end array-data
.end method

.method private static varargs formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    .line 3
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 4
    .line 5
    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method private static fromBigInteger(Ljava/math/BigInteger;Z)Ljava/net/InetAddress;
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-ltz v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/4 v4, 0x7

    .line 15
    new-array v4, v4, [J

    .line 16
    .line 17
    fill-array-data v4, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {v1, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    const/16 p1, 0x10

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 p1, 0x4

    .line 36
    :goto_1
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    new-array v3, p1, [B

    .line 41
    .line 42
    array-length v4, v1

    .line 43
    sub-int/2addr v4, p1

    .line 44
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    array-length v5, v1

    .line 49
    sub-int/2addr v5, v4

    .line 50
    sub-int v6, p1, v5

    .line 51
    .line 52
    const/4 v7, 0x0

    .line 53
    :goto_2
    if-ge v7, v4, :cond_3

    .line 54
    .line 55
    aget-byte v8, v1, v7

    .line 56
    .line 57
    if-nez v8, :cond_2

    .line 58
    .line 59
    add-int/2addr v7, v0

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    const/16 v3, 0xc

    .line 64
    .line 65
    new-array v3, v3, [J

    .line 66
    .line 67
    fill-array-data v3, :array_1

    .line 68
    .line 69
    .line 70
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const/4 v3, 0x2

    .line 82
    new-array v3, v3, [Ljava/lang/Object;

    .line 83
    .line 84
    aput-object p1, v3, v2

    .line 85
    .line 86
    aput-object p0, v3, v0

    .line 87
    .line 88
    invoke-static {v1, v3}, Lcom/google/common/net/InetAddresses;->formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    throw p0

    .line 93
    :cond_3
    invoke-static {v1, v4, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    .line 95
    .line 96
    :try_start_0
    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    .line 97
    .line 98
    .line 99
    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    return-object p0

    .line 101
    :catch_0
    move-exception p0

    .line 102
    new-instance p1, Ljava/lang/AssertionError;

    .line 103
    .line 104
    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    throw p1

    .line 108
    nop

    .line 109
    :array_0
    .array-data 8
        -0x6c8425dc43fa4e53L    # -8.079438350655473E-215
        -0x7b1aca1ed88bdeeL
        -0x37e69b72ff417c4aL    # -2.16017852538828E39
        -0x19ce55b813dbec2L    # -6.396930660204077E300
        -0x3f569c4d918a6d76L    # -3249.8484989873295
        -0x227523eee0d29992L    # -4.094190944803666E142
        -0x4e29c7867253ca08L    # -1.287825059995745E-68
    .end array-data

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
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    :array_1
    .array-data 8
        -0x214eeaa8739fc99aL    # -1.3652474003942427E148
        0x37c2896fbed4d96dL    # 4.2558546482288876E-40
        -0x6621510c758b82adL
        -0x400f942a99f997b4L    # -1.026326559577245
        -0x2de16ed0c0c8de07L    # -3.800435654353002E87
        -0x2c51931001cf323eL    # -1.2693076678944785E95
        -0x237e840e0e3d27ddL    # -4.066612778794315E137
        0x5c0a80e7398c38b8L    # 2.4079738292212046E135
        0x4652af82dbd6ae7eL    # 5.921700001961919E30
        -0x4ee3b148d0c7228cL
        -0x3dc39f9da595e54eL    # -1.2187614269810428E11
        0x2f0bf26710f3c053L    # 4.6034624267741816E-82
    .end array-data
.end method

.method public static fromIPv4BigInteger(Ljava/math/BigInteger;)Ljava/net/Inet4Address;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/google/common/net/InetAddresses;->fromBigInteger(Ljava/math/BigInteger;Z)Ljava/net/InetAddress;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    check-cast p0, Ljava/net/Inet4Address;

    .line 7
    .line 8
    return-object p0
.end method

.method public static fromIPv6BigInteger(Ljava/math/BigInteger;)Ljava/net/Inet6Address;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lcom/google/common/net/InetAddresses;->fromBigInteger(Ljava/math/BigInteger;Z)Ljava/net/InetAddress;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    check-cast p0, Ljava/net/Inet6Address;

    .line 7
    .line 8
    return-object p0
.end method

.method public static fromInteger(I)Ljava/net/Inet4Address;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/common/primitives/Ints;->toByteArray(I)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static fromLittleEndianByteArray([B)Ljava/net/InetAddress;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p0

    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    array-length v2, p0

    .line 9
    sub-int/2addr v2, v1

    .line 10
    add-int/lit8 v2, v2, -0x1

    .line 11
    .line 12
    aget-byte v2, p0, v2

    .line 13
    .line 14
    aput-byte v2, v0, v1

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static get6to4IPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x6

    .line 8
    new-array v3, v2, [J

    .line 9
    .line 10
    fill-array-data v3, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {v0, v1, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/4 v0, 0x2

    .line 32
    invoke-static {p0, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :array_0
    .array-data 8
        -0x85940b32d4ea263L    # -2.347120354206279E268
        0x4e3aaf64da99edb6L    # 7.19429753280566E68
        0x1cdc34f73302cedbL
        0x5306fe04dd5eaaf3L    # 9.367212864190138E91
        -0x1f066f0c8e46858bL    # -1.404055124844437E159
        0x747ecc186ec664beL    # 1.4111990737413021E253
    .end array-data
.end method

.method public static getCoercedIPv4Address(Ljava/net/InetAddress;)Ljava/net/Inet4Address;
    .locals 6

    .line 1
    instance-of v0, p0, Ljava/net/Inet4Address;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Ljava/net/Inet4Address;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    const/16 v3, 0xf

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    if-ge v2, v3, :cond_2

    .line 18
    .line 19
    aget-byte v5, v0, v2

    .line 20
    .line 21
    if-eqz v5, :cond_1

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const/4 v2, 0x1

    .line 29
    :goto_1
    if-eqz v2, :cond_3

    .line 30
    .line 31
    aget-byte v5, v0, v3

    .line 32
    .line 33
    if-ne v5, v4, :cond_3

    .line 34
    .line 35
    sget-object p0, Lcom/google/common/net/InetAddresses;->LOOPBACK4:Ljava/net/Inet4Address;

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_3
    if-eqz v2, :cond_4

    .line 39
    .line 40
    aget-byte v0, v0, v3

    .line 41
    .line 42
    if-nez v0, :cond_4

    .line 43
    .line 44
    sget-object p0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_4
    check-cast p0, Ljava/net/Inet6Address;

    .line 48
    .line 49
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->hasEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_5

    .line 54
    .line 55
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0}, Ljava/net/Inet4Address;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    int-to-long v0, p0

    .line 64
    goto :goto_2

    .line 65
    :cond_5
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    const/16 v0, 0x8

    .line 70
    .line 71
    invoke-static {p0, v1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    .line 76
    .line 77
    .line 78
    move-result-wide v0

    .line 79
    :goto_2
    invoke-static {}, Lcom/google/common/hash/Hashing;->murmur3_32_fixed()Lcom/google/common/hash/HashFunction;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-interface {p0, v0, v1}, Lcom/google/common/hash/HashFunction;->hashLong(J)Lcom/google/common/hash/HashCode;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->asInt()I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    const/high16 v0, -0x20000000

    .line 92
    .line 93
    or-int/2addr p0, v0

    .line 94
    const/4 v0, -0x1

    .line 95
    if-ne p0, v0, :cond_6

    .line 96
    .line 97
    const/4 p0, -0x2

    .line 98
    :cond_6
    invoke-static {p0}, Lcom/google/common/primitives/Ints;->toByteArray(I)[B

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    return-object p0
.end method

.method public static getCompatIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x6

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/16 v0, 0xc

    .line 32
    .line 33
    const/16 v1, 0x10

    .line 34
    .line 35
    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    nop

    .line 45
    :array_0
    .array-data 8
        -0x19843052232fc15aL    # -4.726915116933645E185
        0x4ce9f0b4cfbb83fbL    # 3.334751120555537E62
        0x756dbf1c84baeb01L    # 4.466451327420688E257
        0x12d53f7e0adfd188L    # 6.019238521129565E-218
        0x106ac24f1520a042L
        -0x3e1b99fef37290e2L    # -2.737834084419814E9
    .end array-data
.end method

.method public static getEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getCompatIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->get6to4IPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getTeredoInfo(Ljava/net/Inet6Address;)Lcom/google/common/net/InetAddresses$TeredoInfo;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Lcom/google/common/net/InetAddresses$TeredoInfo;->getClient()Ljava/net/Inet4Address;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    const/4 v1, 0x6

    .line 41
    new-array v1, v1, [J

    .line 42
    .line 43
    fill-array-data v1, :array_0

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const/4 v1, 0x1

    .line 58
    new-array v1, v1, [Ljava/lang/Object;

    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    aput-object p0, v1, v2

    .line 62
    .line 63
    invoke-static {v0, v1}, Lcom/google/common/net/InetAddresses;->formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    throw p0

    .line 68
    nop

    .line 69
    :array_0
    .array-data 8
        0x305b843b42251404L    # 9.505495372727572E-76
        -0x796b2f4da2d75b03L    # -5.871175155571291E-277
        -0xfb75b53d3c7d6f2L    # -7.651818962393041E232
        0x48b5c19ae80c398cL    # 1.8952384073548766E42
        -0x3e8a791836ebf795L    # -2.257266856739084E7
        -0x285c5355d0f84ec8L    # -1.5140891790429104E114
    .end array-data
.end method

.method private static getInet4Address([B)Ljava/net/Inet4Address;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x4

    .line 3
    if-ne v0, v1, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/16 v2, 0x9

    .line 11
    .line 12
    new-array v2, v2, [J

    .line 13
    .line 14
    fill-array-data v2, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    array-length v2, p0

    .line 25
    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Ljava/net/Inet4Address;

    .line 33
    .line 34
    return-object p0

    .line 35
    :array_0
    .array-data 8
        -0x3656bc1071b59b51L    # -7.211989372710849E46
        -0x366529e8f9a81ce9L    # -3.830203131374949E46
        -0x4392a72644edc630L    # -1.2727263820769043E-17
        -0x6c8b488a72f9f06bL    # -6.009555772055986E-215
        0x5253a4713dba1737L    # 3.907439410423508E88
        -0x5cdca7c6acf28eb0L
        0x54675ca8830e6e5bL    # 3.992065152426269E98
        -0x17b84e3a1dfbce47L    # -2.162088204778502E194
        -0xb1f84893272d2eaL    # -9.667266096142705E254
    .end array-data
.end method

.method public static getIsatapIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isIsatapAddress(Ljava/net/Inet6Address;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x6

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/16 v0, 0xc

    .line 32
    .line 33
    const/16 v1, 0x10

    .line 34
    .line 35
    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    nop

    .line 45
    :array_0
    .array-data 8
        0x7a09865d3e3024a3L    # 7.239513171022375E279
        -0x47dac2717f64c82cL    # -3.121004455178831E-38
        0x3a196eb54f59a907L    # 8.02506749600687E-29
        -0x257a6a21b3d86966L
        -0x3aef986d3005c980L    # -4.957981268138759E24
        -0x72296df3b67ac477L    # -5.288891706168399E-242
    .end array-data
.end method

.method public static getTeredoInfo(Ljava/net/Inet6Address;)Lcom/google/common/net/InetAddresses$TeredoInfo;
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x6

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/4 v0, 0x4

    .line 32
    const/16 v1, 0x8

    .line 33
    .line 34
    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {p0, v1}, Lcom/google/common/io/ByteStreams;->newDataInput([BI)Lcom/google/common/io/ByteArrayDataInput;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v1}, Lcom/google/common/io/ByteArrayDataInput;->readShort()S

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const v2, 0xffff

    .line 51
    .line 52
    .line 53
    and-int/2addr v1, v2

    .line 54
    const/16 v3, 0xa

    .line 55
    .line 56
    invoke-static {p0, v3}, Lcom/google/common/io/ByteStreams;->newDataInput([BI)Lcom/google/common/io/ByteArrayDataInput;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-interface {v3}, Lcom/google/common/io/ByteArrayDataInput;->readShort()S

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    not-int v3, v3

    .line 65
    and-int/2addr v2, v3

    .line 66
    const/16 v3, 0xc

    .line 67
    .line 68
    const/16 v4, 0x10

    .line 69
    .line 70
    invoke-static {p0, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    const/4 v3, 0x0

    .line 75
    :goto_0
    array-length v4, p0

    .line 76
    if-ge v3, v4, :cond_0

    .line 77
    .line 78
    aget-byte v4, p0, v3

    .line 79
    .line 80
    not-int v4, v4

    .line 81
    int-to-byte v4, v4

    .line 82
    aput-byte v4, p0, v3

    .line 83
    .line 84
    add-int/lit8 v3, v3, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    new-instance v3, Lcom/google/common/net/InetAddresses$TeredoInfo;

    .line 92
    .line 93
    invoke-direct {v3, v0, p0, v2, v1}, Lcom/google/common/net/InetAddresses$TeredoInfo;-><init>(Ljava/net/Inet4Address;Ljava/net/Inet4Address;II)V

    .line 94
    .line 95
    .line 96
    return-object v3

    .line 97
    :array_0
    .array-data 8
        -0x74a200b03c8afd99L    # -6.39301894962487E-254
        0x5a84b1fbca7f22b5L    # 1.120724369269532E128
        -0x638bc9c8524e848dL
        0x3e0f91785779a3ddL    # 9.187567780787689E-10
        -0x572c478a6ec14f09L    # -5.125078375296605E-112
        0xdcceaf6da37f8cdL
    .end array-data
.end method

.method public static hasEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 23
    :goto_1
    return p0
.end method

.method private static hextetsToIPv6String([I)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    const/16 v2, 0x27

    .line 5
    .line 6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    :goto_0
    array-length v5, p0

    .line 13
    if-ge v3, v5, :cond_5

    .line 14
    .line 15
    aget v5, p0, v3

    .line 16
    .line 17
    if-ltz v5, :cond_0

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 v5, 0x0

    .line 22
    :goto_1
    if-eqz v5, :cond_2

    .line 23
    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    const/16 v4, 0x3a

    .line 27
    .line 28
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    :cond_1
    aget v4, p0, v3

    .line 32
    .line 33
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    if-eqz v3, :cond_3

    .line 42
    .line 43
    if-eqz v4, :cond_4

    .line 44
    .line 45
    :cond_3
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    const/4 v6, 0x2

    .line 48
    new-array v6, v6, [J

    .line 49
    .line 50
    fill-array-data v6, :array_0

    .line 51
    .line 52
    .line 53
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    :cond_4
    :goto_2
    add-int/2addr v3, v0

    .line 64
    move v4, v5

    .line 65
    goto :goto_0

    .line 66
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :array_0
    .array-data 8
        0x6c7b8b3253f87919L    # 3.7090252351868485E214
        0x3df52ffa57e5a167L    # 3.0831744787188265E-10
    .end array-data
.end method

.method public static increment(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    array-length v2, v1

    .line 7
    const/4 v3, 0x1

    .line 8
    sub-int/2addr v2, v3

    .line 9
    :goto_0
    const/4 v4, 0x0

    .line 10
    if-ltz v2, :cond_0

    .line 11
    .line 12
    aget-byte v5, v1, v2

    .line 13
    .line 14
    if-ne v5, v0, :cond_0

    .line 15
    .line 16
    aput-byte v4, v1, v2

    .line 17
    .line 18
    add-int/2addr v2, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    if-ltz v2, :cond_1

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    :cond_1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/4 v5, 0x5

    .line 26
    new-array v5, v5, [J

    .line 27
    .line 28
    fill-array-data v5, :array_0

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v4, v0, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    aget-byte p0, v1, v2

    .line 42
    .line 43
    add-int/2addr p0, v3

    .line 44
    int-to-byte p0, p0

    .line 45
    aput-byte p0, v1, v2

    .line 46
    .line 47
    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    nop

    .line 53
    :array_0
    .array-data 8
        0x5f233359d0200dc2L    # 1.9640946347590603E150
        -0x16aee2c81a9a84baL
        -0x5071cda78caec362L    # -1.273356758309317E-79
        -0x793994e0e014c2d8L    # -5.058706054713585E-276
        -0x28c328e08d0bb30L
    .end array-data
.end method

.method private static ipStringToBytes(Ljava/lang/String;)[B
    .locals 9
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v4

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, -0x1

    .line 11
    if-ge v1, v4, :cond_5

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    const/16 v7, 0x2e

    .line 18
    .line 19
    const/4 v8, 0x1

    .line 20
    if-ne v4, v7, :cond_0

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/16 v7, 0x3a

    .line 25
    .line 26
    if-ne v4, v7, :cond_2

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    return-object v5

    .line 31
    :cond_1
    const/4 v3, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    const/16 v7, 0x25

    .line 34
    .line 35
    if-ne v4, v7, :cond_3

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_3
    const/16 v7, 0x10

    .line 39
    .line 40
    invoke-static {v4, v7}, Ljava/lang/Character;->digit(CI)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-ne v4, v6, :cond_4

    .line 45
    .line 46
    return-object v5

    .line 47
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_5
    const/4 v1, -0x1

    .line 51
    :goto_2
    if-eqz v3, :cond_8

    .line 52
    .line 53
    if-eqz v2, :cond_6

    .line 54
    .line 55
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->convertDottedQuadToHex(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    if-nez p0, :cond_6

    .line 60
    .line 61
    return-object v5

    .line 62
    :cond_6
    if-eq v1, v6, :cond_7

    .line 63
    .line 64
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    :cond_7
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV6(Ljava/lang/String;)[B

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0

    .line 73
    :cond_8
    if-eqz v2, :cond_a

    .line 74
    .line 75
    if-eq v1, v6, :cond_9

    .line 76
    .line 77
    return-object v5

    .line 78
    :cond_9
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV4(Ljava/lang/String;)[B

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :cond_a
    return-object v5
.end method

.method public static is6to4Address(Ljava/net/Inet6Address;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    aget-byte v1, p0, v0

    .line 7
    .line 8
    const/16 v2, 0x20

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    aget-byte p0, p0, v1

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    if-ne p0, v2, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    :cond_0
    return v0
.end method

.method public static isCompatIPv4Address(Ljava/net/Inet6Address;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/net/Inet6Address;->isIPv4CompatibleAddress()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/16 v0, 0xc

    .line 14
    .line 15
    aget-byte v0, p0, v0

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    const/16 v0, 0xd

    .line 21
    .line 22
    aget-byte v0, p0, v0

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    const/16 v0, 0xe

    .line 27
    .line 28
    aget-byte v0, p0, v0

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    const/16 v0, 0xf

    .line 33
    .line 34
    aget-byte p0, p0, v0

    .line 35
    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    if-ne p0, v2, :cond_2

    .line 39
    .line 40
    :cond_1
    return v1

    .line 41
    :cond_2
    return v2
.end method

.method public static isInetAddress(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public static isIsatapAddress(Ljava/net/Inet6Address;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/16 v0, 0x8

    .line 14
    .line 15
    aget-byte v0, p0, v0

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    or-int/2addr v0, v2

    .line 19
    if-eq v0, v2, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    const/16 v0, 0x9

    .line 23
    .line 24
    aget-byte v0, p0, v0

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    const/16 v0, 0xa

    .line 29
    .line 30
    aget-byte v0, p0, v0

    .line 31
    .line 32
    const/16 v2, 0x5e

    .line 33
    .line 34
    if-ne v0, v2, :cond_2

    .line 35
    .line 36
    const/16 v0, 0xb

    .line 37
    .line 38
    aget-byte p0, p0, v0

    .line 39
    .line 40
    const/4 v0, -0x2

    .line 41
    if-ne p0, v0, :cond_2

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    :cond_2
    return v1
.end method

.method public static isMappedIPv4Address(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_4

    .line 7
    .line 8
    array-length v1, p0

    .line 9
    const/16 v2, 0x10

    .line 10
    .line 11
    if-ne v1, v2, :cond_4

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    const/16 v2, 0xa

    .line 15
    .line 16
    if-ge v1, v2, :cond_1

    .line 17
    .line 18
    aget-byte v2, p0, v1

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    return v0

    .line 23
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    :goto_1
    const/16 v1, 0xc

    .line 27
    .line 28
    if-ge v2, v1, :cond_3

    .line 29
    .line 30
    aget-byte v1, p0, v2

    .line 31
    .line 32
    const/4 v3, -0x1

    .line 33
    if-eq v1, v3, :cond_2

    .line 34
    .line 35
    return v0

    .line 36
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :cond_4
    return v0
.end method

.method public static isMaximum(Ljava/net/InetAddress;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length v0, p0

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v0, :cond_1

    .line 9
    .line 10
    aget-byte v3, p0, v2

    .line 11
    .line 12
    const/4 v4, -0x1

    .line 13
    if-eq v3, v4, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p0, 0x1

    .line 20
    return p0
.end method

.method public static isTeredoAddress(Ljava/net/Inet6Address;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    aget-byte v1, p0, v0

    .line 7
    .line 8
    const/16 v2, 0x20

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    aget-byte v2, p0, v1

    .line 14
    .line 15
    if-ne v2, v1, :cond_0

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aget-byte v2, p0, v2

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aget-byte p0, p0, v2

    .line 24
    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    :cond_0
    return v0
.end method

.method public static isUriInetAddress(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->forUriStringNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method private static parseHextet(Ljava/lang/String;II)S
    .locals 3

    .line 1
    sub-int v0, p2, p1

    .line 2
    .line 3
    if-lez v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    if-gt v0, v1, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :goto_0
    if-ge p1, p2, :cond_0

    .line 10
    .line 11
    shl-int/lit8 v0, v0, 0x4

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/16 v2, 0x10

    .line 18
    .line 19
    invoke-static {v1, v2}, Ljava/lang/Character;->digit(CI)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    or-int/2addr v0, v1

    .line 24
    add-int/lit8 p1, p1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    int-to-short p0, v0

    .line 28
    return p0

    .line 29
    :cond_1
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 30
    .line 31
    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    .line 32
    .line 33
    .line 34
    throw p0
.end method

.method private static parseOctet(Ljava/lang/String;II)B
    .locals 3

    .line 1
    sub-int v0, p2, p1

    .line 2
    .line 3
    if-lez v0, :cond_5

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    if-gt v0, v1, :cond_5

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-le v0, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v1, 0x30

    .line 16
    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 21
    .line 22
    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    .line 23
    .line 24
    .line 25
    throw p0

    .line 26
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 27
    :goto_1
    if-ge p1, p2, :cond_3

    .line 28
    .line 29
    mul-int/lit8 v0, v0, 0xa

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/16 v2, 0xa

    .line 36
    .line 37
    invoke-static {v1, v2}, Ljava/lang/Character;->digit(CI)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-ltz v1, :cond_2

    .line 42
    .line 43
    add-int/2addr v0, v1

    .line 44
    add-int/lit8 p1, p1, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 48
    .line 49
    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :cond_3
    const/16 p0, 0xff

    .line 54
    .line 55
    if-gt v0, p0, :cond_4

    .line 56
    .line 57
    int-to-byte p0, v0

    .line 58
    return p0

    .line 59
    :cond_4
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 60
    .line 61
    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    .line 62
    .line 63
    .line 64
    throw p0

    .line 65
    :cond_5
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 66
    .line 67
    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    .line 68
    .line 69
    .line 70
    throw p0
.end method

.method private static textToNumericFormatV4(Ljava/lang/String;)[B
    .locals 7
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/net/InetAddresses;->IPV4_DELIMITER_MATCHER:Lcom/google/common/base/CharMatcher;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/google/common/base/CharMatcher;->countIn(Ljava/lang/CharSequence;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x4

    .line 11
    if-eq v0, v2, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    new-array v0, v2, [B

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    :goto_0
    if-ge v3, v2, :cond_2

    .line 19
    .line 20
    const/16 v5, 0x2e

    .line 21
    .line 22
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    const/4 v6, -0x1

    .line 27
    if-ne v5, v6, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    :cond_1
    :try_start_0
    invoke-static {p0, v4, v5}, Lcom/google/common/net/InetAddresses;->parseOctet(Ljava/lang/String;II)B

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    aput-byte v4, v0, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    add-int/lit8 v4, v5, 0x1

    .line 40
    .line 41
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    return-object v1

    .line 45
    :cond_2
    return-object v0
.end method

.method private static textToNumericFormatV6(Ljava/lang/String;)[B
    .locals 11
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/net/InetAddresses;->IPV6_DELIMITER_MATCHER:Lcom/google/common/base/CharMatcher;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/google/common/base/CharMatcher;->countIn(Ljava/lang/CharSequence;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x2

    .line 9
    if-lt v0, v2, :cond_f

    .line 10
    .line 11
    const/16 v3, 0x8

    .line 12
    .line 13
    if-le v0, v3, :cond_0

    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_0
    const/4 v4, 0x1

    .line 18
    add-int/2addr v0, v4

    .line 19
    rsub-int/lit8 v5, v0, 0x8

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x0

    .line 23
    const/4 v8, 0x0

    .line 24
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v9

    .line 28
    sub-int/2addr v9, v4

    .line 29
    const/16 v10, 0x3a

    .line 30
    .line 31
    if-ge v7, v9, :cond_5

    .line 32
    .line 33
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    if-ne v9, v10, :cond_4

    .line 38
    .line 39
    add-int/lit8 v9, v7, 0x1

    .line 40
    .line 41
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    .line 42
    .line 43
    .line 44
    move-result v9

    .line 45
    if-ne v9, v10, :cond_4

    .line 46
    .line 47
    if-eqz v8, :cond_1

    .line 48
    .line 49
    return-object v1

    .line 50
    :cond_1
    add-int/lit8 v8, v5, 0x1

    .line 51
    .line 52
    if-nez v7, :cond_2

    .line 53
    .line 54
    add-int/lit8 v8, v5, 0x2

    .line 55
    .line 56
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    sub-int/2addr v5, v2

    .line 61
    if-ne v7, v5, :cond_3

    .line 62
    .line 63
    add-int/lit8 v8, v8, 0x1

    .line 64
    .line 65
    :cond_3
    move v5, v8

    .line 66
    const/4 v8, 0x1

    .line 67
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_5
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    if-ne v7, v10, :cond_6

    .line 75
    .line 76
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-eq v7, v10, :cond_6

    .line 81
    .line 82
    return-object v1

    .line 83
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    sub-int/2addr v7, v4

    .line 88
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    if-ne v7, v10, :cond_7

    .line 93
    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    sub-int/2addr v7, v2

    .line 99
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eq v2, v10, :cond_7

    .line 104
    .line 105
    return-object v1

    .line 106
    :cond_7
    if-eqz v8, :cond_8

    .line 107
    .line 108
    if-gtz v5, :cond_8

    .line 109
    .line 110
    return-object v1

    .line 111
    :cond_8
    if-nez v8, :cond_9

    .line 112
    .line 113
    if-eq v0, v3, :cond_9

    .line 114
    .line 115
    return-object v1

    .line 116
    :cond_9
    const/16 v0, 0x10

    .line 117
    .line 118
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    :try_start_0
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-ne v2, v10, :cond_a

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_a
    const/4 v4, 0x0

    .line 130
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-ge v4, v2, :cond_e

    .line 135
    .line 136
    invoke-virtual {p0, v10, v4}, Ljava/lang/String;->indexOf(II)I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    const/4 v3, -0x1

    .line 141
    if-ne v2, v3, :cond_b

    .line 142
    .line 143
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    :cond_b
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-ne v3, v10, :cond_c

    .line 152
    .line 153
    const/4 v3, 0x0

    .line 154
    :goto_2
    if-ge v3, v5, :cond_d

    .line 155
    .line 156
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 157
    .line 158
    .line 159
    add-int/lit8 v3, v3, 0x1

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_c
    invoke-static {p0, v4, v2}, Lcom/google/common/net/InetAddresses;->parseHextet(Ljava/lang/String;II)S

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .line 168
    .line 169
    :cond_d
    add-int/lit8 v4, v2, 0x1

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_e
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    return-object p0

    .line 177
    :catch_0
    :cond_f
    :goto_3
    return-object v1
.end method

.method public static toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    instance-of v0, p0, Ljava/net/Inet4Address;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_0
    instance-of v0, p0, Ljava/net/Inet6Address;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/16 v0, 0x8

    .line 23
    .line 24
    new-array v1, v0, [I

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    :goto_0
    if-ge v3, v0, :cond_1

    .line 29
    .line 30
    mul-int/lit8 v4, v3, 0x2

    .line 31
    .line 32
    aget-byte v5, p0, v4

    .line 33
    .line 34
    add-int/lit8 v4, v4, 0x1

    .line 35
    .line 36
    aget-byte v4, p0, v4

    .line 37
    .line 38
    invoke-static {v2, v2, v5, v4}, Lcom/google/common/primitives/Ints;->fromBytes(BBBB)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    aput v4, v1, v3

    .line 43
    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->compressLongestRunOfZeroes([I)V

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->hextetsToIPv6String([I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method public static toBigInteger(Ljava/net/InetAddress;)Ljava/math/BigInteger;
    .locals 2

    .line 1
    new-instance v0, Ljava/math/BigInteger;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static toUriString(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    instance-of v1, p0, Ljava/net/Inet6Address;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {v0, p0}, L땸득뎸뒬둥따듔도디돨듽둘땫땍뎰땸되뒈땲돰됴뎠땍뒨돶뎸뎡듐땁뎠뒉드땣듔딨듸뒬땤들됩땄뒵딠듰뒷뒛뒙딌들딜돸딌땁뒛딨돝땯땣땁돤뒋땩돶뎸뒛뒛뒾듼딜뒀둣됨뎰땄돤딌둠뎰둔뒼두땟두땝땲딻뒉땜땯뒉되뒵딽득돳땃땥땠땫땋듬듼듟딀돛돷뒘드뒵둣뒘땫뎡땐둠뒤땲땁땹듰땫되득뒀땥뒹딠디딅뒨;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(ILjava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    new-array v3, v0, [J

    .line 22
    .line 23
    fill-array-data v3, :array_0

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    new-array v0, v0, [J

    .line 42
    .line 43
    fill-array-data v0, :array_1

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-static {p0, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :cond_0
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0

    .line 59
    :array_0
    .array-data 8
        -0x69988c3da07c9b7L    # -6.222532554075823E276
        0x6fa7b40c457ebd03L    # 7.187465060938247E229
    .end array-data

    .line 60
    .line 61
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
    :array_1
    .array-data 8
        0x76dc18c790ce5fa6L    # 3.5389383339150944E264
        -0x1cf9372706f79c6dL    # -1.074850951327162E169
    .end array-data
.end method
