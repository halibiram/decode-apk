.class final Lcom/google/common/collect/CompactHashing;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field private static final BYTE_MASK:I = 0xff

.field private static final BYTE_MAX_SIZE:I = 0x100

.field static final DEFAULT_SIZE:I = 0x3

.field static final HASH_TABLE_BITS_MASK:I = 0x1f

.field private static final HASH_TABLE_BITS_MAX_BITS:I = 0x5

.field static final MAX_SIZE:I = 0x3fffffff

.field private static final MIN_HASH_TABLE_SIZE:I = 0x4

.field static final MODIFICATION_COUNT_INCREMENT:I = 0x20

.field private static final SHORT_MASK:I = 0xffff

.field private static final SHORT_MAX_SIZE:I = 0x10000

.field static final UNSET:B


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static createTable(I)Ljava/lang/Object;
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    if-lt p0, v0, :cond_2

    .line 3
    .line 4
    const/high16 v0, 0x40000000    # 2.0f

    .line 5
    .line 6
    if-gt p0, v0, :cond_2

    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-ne v0, p0, :cond_2

    .line 13
    .line 14
    const/16 v0, 0x100

    .line 15
    .line 16
    if-gt p0, v0, :cond_0

    .line 17
    .line 18
    new-array p0, p0, [B

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    const/high16 v0, 0x10000

    .line 22
    .line 23
    if-gt p0, v0, :cond_1

    .line 24
    .line 25
    new-array p0, p0, [S

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_1
    new-array p0, p0, [I

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const/16 v2, 0x34

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 38
    .line 39
    .line 40
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    const/4 v3, 0x7

    .line 43
    new-array v3, v3, [J

    .line 44
    .line 45
    fill-array-data v3, :array_0

    .line 46
    .line 47
    .line 48
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-static {v2, v1, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0

    .line 59
    :array_0
    .array-data 8
        0x7ad56885849411c7L    # 4.974138316910125E283
        -0x2b106d6474a25babL    # -1.3811476032002768E101
        -0x46bfc79a8ec16063L    # -6.247831481722297E-33
        -0x3db39c038f674dc6L    # -2.438731451373924E11
        -0x402a82d6f14ae00eL    # -0.33576418339043734
        0x18478f4c58dad44aL
        0x618d96d9e51e8154L    # 8.319971274617461E161
    .end array-data
.end method

.method public static getHashPrefix(II)I
    .locals 0

    not-int p1, p1

    and-int/2addr p0, p1

    return p0
.end method

.method public static getNext(II)I
    .locals 0

    and-int/2addr p0, p1

    return p0
.end method

.method public static maskCombine(III)I
    .locals 1

    not-int v0, p2

    and-int/2addr p0, v0

    and-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method public static newCapacity(I)I
    .locals 1

    const/16 v0, 0x20

    if-ge p0, v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    add-int/lit8 p0, p0, 0x1

    mul-int p0, p0, v0

    return p0
.end method

.method public static remove(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 8
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p6    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int v1, v0, p2

    .line 6
    .line 7
    invoke-static {p3, v1}, Lcom/google/common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, -0x1

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    return v3

    .line 15
    :cond_0
    invoke-static {v0, p2}, Lcom/google/common/collect/CompactHashing;->getHashPrefix(II)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v4, -0x1

    .line 20
    :goto_0
    add-int/lit8 v2, v2, -0x1

    .line 21
    .line 22
    aget v5, p4, v2

    .line 23
    .line 24
    invoke-static {v5, p2}, Lcom/google/common/collect/CompactHashing;->getHashPrefix(II)I

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    if-ne v6, v0, :cond_3

    .line 29
    .line 30
    aget-object v6, p5, v2

    .line 31
    .line 32
    invoke-static {p0, v6}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-eqz v6, :cond_3

    .line 37
    .line 38
    if-eqz p6, :cond_1

    .line 39
    .line 40
    aget-object v6, p6, v2

    .line 41
    .line 42
    invoke-static {p1, v6}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-eqz v6, :cond_3

    .line 47
    .line 48
    :cond_1
    invoke-static {v5, p2}, Lcom/google/common/collect/CompactHashing;->getNext(II)I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-ne v4, v3, :cond_2

    .line 53
    .line 54
    invoke-static {p3, v1, p0}, Lcom/google/common/collect/CompactHashing;->tableSet(Ljava/lang/Object;II)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    aget p1, p4, v4

    .line 59
    .line 60
    invoke-static {p1, p0, p2}, Lcom/google/common/collect/CompactHashing;->maskCombine(III)I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    aput p0, p4, v4

    .line 65
    .line 66
    :goto_1
    return v2

    .line 67
    :cond_3
    invoke-static {v5, p2}, Lcom/google/common/collect/CompactHashing;->getNext(II)I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-nez v4, :cond_4

    .line 72
    .line 73
    return v3

    .line 74
    :cond_4
    move v7, v4

    .line 75
    move v4, v2

    .line 76
    move v2, v7

    .line 77
    goto :goto_0
.end method

.method public static tableClear(Ljava/lang/Object;)V
    .locals 2

    .line 1
    instance-of v0, p0, [B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p0, [B

    .line 7
    .line 8
    invoke-static {p0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    instance-of v0, p0, [S

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    check-cast p0, [S

    .line 17
    .line 18
    invoke-static {p0, v1}, Ljava/util/Arrays;->fill([SS)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    check-cast p0, [I

    .line 23
    .line 24
    invoke-static {p0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method public static tableGet(Ljava/lang/Object;I)I
    .locals 1

    .line 1
    instance-of v0, p0, [B

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, [B

    .line 6
    .line 7
    aget-byte p0, p0, p1

    .line 8
    .line 9
    and-int/lit16 p0, p0, 0xff

    .line 10
    .line 11
    return p0

    .line 12
    :cond_0
    instance-of v0, p0, [S

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    check-cast p0, [S

    .line 17
    .line 18
    aget-short p0, p0, p1

    .line 19
    .line 20
    const p1, 0xffff

    .line 21
    .line 22
    .line 23
    and-int/2addr p0, p1

    .line 24
    return p0

    .line 25
    :cond_1
    check-cast p0, [I

    .line 26
    .line 27
    aget p0, p0, p1

    .line 28
    .line 29
    return p0
.end method

.method public static tableSet(Ljava/lang/Object;II)V
    .locals 1

    .line 1
    instance-of v0, p0, [B

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, [B

    .line 6
    .line 7
    int-to-byte p2, p2

    .line 8
    aput-byte p2, p0, p1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    instance-of v0, p0, [S

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    check-cast p0, [S

    .line 16
    .line 17
    int-to-short p2, p2

    .line 18
    aput-short p2, p0, p1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    check-cast p0, [I

    .line 22
    .line 23
    aput p2, p0, p1

    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public static tableSize(I)I
    .locals 2

    .line 1
    add-int/lit8 p0, p0, 0x1

    .line 2
    .line 3
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 4
    .line 5
    invoke-static {p0, v0, v1}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v0, 0x4

    .line 10
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method
