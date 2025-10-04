.class public Lcom/google/zxing/oned/rss/DataCharacter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final checksumPortion:I

.field private final value:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/zxing/oned/rss/DataCharacter;->value:I

    .line 5
    .line 6
    iput p2, p0, Lcom/google/zxing/oned/rss/DataCharacter;->checksumPortion:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/zxing/oned/rss/DataCharacter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/google/zxing/oned/rss/DataCharacter;

    .line 8
    .line 9
    iget v0, p0, Lcom/google/zxing/oned/rss/DataCharacter;->value:I

    .line 10
    .line 11
    iget v2, p1, Lcom/google/zxing/oned/rss/DataCharacter;->value:I

    .line 12
    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    iget v0, p0, Lcom/google/zxing/oned/rss/DataCharacter;->checksumPortion:I

    .line 16
    .line 17
    iget p1, p1, Lcom/google/zxing/oned/rss/DataCharacter;->checksumPortion:I

    .line 18
    .line 19
    if-ne v0, p1, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    :cond_1
    return v1
.end method

.method public final getChecksumPortion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/oned/rss/DataCharacter;->checksumPortion:I

    .line 2
    .line 3
    return v0
.end method

.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/oned/rss/DataCharacter;->value:I

    .line 2
    .line 3
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/zxing/oned/rss/DataCharacter;->value:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/zxing/oned/rss/DataCharacter;->checksumPortion:I

    .line 4
    .line 5
    xor-int/2addr v0, v1

    .line 6
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/google/zxing/oned/rss/DataCharacter;->value:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    new-array v2, v2, [J

    .line 15
    .line 16
    fill-array-data v2, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v1, p0, Lcom/google/zxing/oned/rss/DataCharacter;->checksumPortion:I

    .line 30
    .line 31
    const/16 v2, 0x29

    .line 32
    .line 33
    invoke-static {v0, v1, v2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        0x3205d6d1b3540261L    # 1.0125732788594183E-67
        0x437777aad4d8c243L    # 1.05688001015456816E17
    .end array-data
.end method
