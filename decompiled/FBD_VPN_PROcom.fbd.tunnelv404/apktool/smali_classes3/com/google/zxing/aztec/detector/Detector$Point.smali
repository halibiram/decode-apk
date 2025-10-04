.class final Lcom/google/zxing/aztec/detector/Detector$Point;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/aztec/detector/Detector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Point"
.end annotation


# instance fields
.field private final x:I

.field private final y:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    .line 5
    .line 6
    iput p2, p0, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getX()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    .line 2
    .line 3
    return v0
.end method

.method public getY()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    .line 2
    .line 3
    return v0
.end method

.method public toResultPoint()Lcom/google/zxing/ResultPoint;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/zxing/ResultPoint;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    .line 4
    .line 5
    int-to-float v1, v1

    .line 6
    iget v2, p0, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    .line 7
    .line 8
    int-to-float v2, v2

    .line 9
    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    new-array v2, v2, [J

    .line 10
    .line 11
    fill-array-data v2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget v1, p0, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const/16 v1, 0x20

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget v1, p0, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    .line 35
    .line 36
    const/16 v2, 0x3e

    .line 37
    .line 38
    invoke-static {v0, v1, v2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0

    .line 43
    :array_0
    .array-data 8
        0x7264c54b48f317f9L    # 1.1079935525559775E243
        0x6e2bab140fb00e0bL    # 5.000678042905162E222
    .end array-data
.end method
