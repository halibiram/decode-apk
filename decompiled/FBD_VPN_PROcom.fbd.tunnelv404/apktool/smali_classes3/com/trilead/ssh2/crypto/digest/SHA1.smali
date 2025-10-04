.class public final Lcom/trilead/ssh2/crypto/digest/SHA1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/trilead/ssh2/crypto/digest/Digest;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private H0:I

.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private currentLen:J

.field private currentPos:I

.field private final w:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x50

    .line 5
    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    iput-object v0, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->w:[I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->reset()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private perform()V
    .locals 17

    move-object/from16 v0, p0

    const/16 v2, 0x10

    :goto_0
    const/16 v3, 0x50

    const/16 v4, 0x1f

    if-ge v2, v3, :cond_0

    .line 1
    iget-object v3, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->w:[I

    add-int/lit8 v5, v2, -0x3

    aget v5, v3, v5

    add-int/lit8 v6, v2, -0x8

    aget v6, v3, v6

    xor-int/2addr v5, v6

    add-int/lit8 v6, v2, -0xe

    aget v6, v3, v6

    xor-int/2addr v5, v6

    add-int/lit8 v6, v2, -0x10

    aget v6, v3, v6

    xor-int/2addr v5, v6

    shl-int/lit8 v6, v5, 0x1

    ushr-int/lit8 v4, v5, 0x1f

    or-int/2addr v4, v6

    .line 2
    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget v2, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H0:I

    .line 4
    iget v3, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H1:I

    .line 5
    iget v5, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H2:I

    .line 6
    iget v6, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H3:I

    .line 7
    iget v7, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H4:I

    shl-int/lit8 v8, v2, 0x5

    ushr-int/lit8 v9, v2, 0x1b

    or-int/2addr v8, v9

    and-int v9, v3, v5

    not-int v10, v3

    and-int/2addr v10, v6

    or-int/2addr v9, v10

    add-int/2addr v8, v9

    .line 8
    iget-object v9, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->w:[I

    const/4 v10, 0x0

    aget v10, v9, v10

    const v11, 0x5a827999

    invoke-static {v8, v10, v11, v7}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v8

    shl-int/lit8 v10, v3, 0x1e

    ushr-int/lit8 v12, v3, 0x2

    or-int/2addr v10, v12

    shl-int/lit8 v12, v8, 0x5

    ushr-int/lit8 v13, v8, 0x1b

    or-int/2addr v12, v13

    and-int v13, v2, v10

    not-int v14, v2

    and-int/2addr v14, v5

    or-int/2addr v13, v14

    add-int/2addr v12, v13

    const/4 v13, 0x1

    .line 9
    aget v13, v9, v13

    invoke-static {v12, v13, v11, v6}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v12

    shl-int/lit8 v13, v2, 0x1e

    ushr-int/lit8 v14, v2, 0x2

    or-int/2addr v13, v14

    shl-int/lit8 v14, v12, 0x5

    ushr-int/lit8 v15, v12, 0x1b

    or-int/2addr v14, v15

    and-int v15, v8, v13

    not-int v4, v8

    and-int/2addr v4, v10

    or-int/2addr v4, v15

    add-int/2addr v14, v4

    const/4 v4, 0x2

    .line 10
    aget v15, v9, v4

    invoke-static {v14, v15, v11, v5}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v14

    shl-int/lit8 v15, v8, 0x1e

    ushr-int/2addr v8, v4

    or-int/2addr v8, v15

    shl-int/lit8 v15, v14, 0x5

    ushr-int/lit8 v16, v14, 0x1b

    or-int v15, v15, v16

    and-int v16, v12, v8

    not-int v1, v12

    and-int/2addr v1, v13

    or-int v1, v16, v1

    add-int/2addr v15, v1

    const/4 v1, 0x3

    .line 11
    aget v1, v9, v1

    invoke-static {v15, v1, v11, v10}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v1

    shl-int/lit8 v10, v12, 0x1e

    ushr-int/2addr v12, v4

    or-int/2addr v10, v12

    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v15, v1, 0x1b

    or-int/2addr v12, v15

    and-int v15, v14, v10

    not-int v4, v14

    and-int/2addr v4, v8

    or-int/2addr v4, v15

    add-int/2addr v12, v4

    const/4 v4, 0x4

    .line 12
    aget v4, v9, v4

    invoke-static {v12, v4, v11, v13}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v4

    shl-int/lit8 v12, v14, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v14, v13

    or-int/2addr v12, v14

    shl-int/lit8 v13, v4, 0x5

    ushr-int/lit8 v14, v4, 0x1b

    or-int/2addr v13, v14

    and-int v14, v1, v12

    not-int v15, v1

    and-int/2addr v15, v10

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/4 v14, 0x5

    .line 13
    aget v14, v9, v14

    invoke-static {v13, v14, v11, v8}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v8

    shl-int/lit8 v13, v1, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v1, v14

    or-int/2addr v1, v13

    shl-int/lit8 v13, v8, 0x5

    ushr-int/lit8 v14, v8, 0x1b

    or-int/2addr v13, v14

    and-int v14, v4, v1

    not-int v15, v4

    and-int/2addr v15, v12

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/4 v14, 0x6

    .line 14
    aget v14, v9, v14

    invoke-static {v13, v14, v11, v10}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v10

    shl-int/lit8 v13, v4, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v4, v14

    or-int/2addr v4, v13

    shl-int/lit8 v13, v10, 0x5

    ushr-int/lit8 v14, v10, 0x1b

    or-int/2addr v13, v14

    and-int v14, v8, v4

    not-int v15, v8

    and-int/2addr v15, v1

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/4 v14, 0x7

    .line 15
    aget v14, v9, v14

    invoke-static {v13, v14, v11, v12}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v12

    shl-int/lit8 v13, v8, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v8, v14

    or-int/2addr v8, v13

    shl-int/lit8 v13, v12, 0x5

    ushr-int/lit8 v14, v12, 0x1b

    or-int/2addr v13, v14

    and-int v14, v10, v8

    not-int v15, v10

    and-int/2addr v15, v4

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/16 v14, 0x8

    .line 16
    aget v14, v9, v14

    invoke-static {v13, v14, v11, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v1

    shl-int/lit8 v13, v10, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v10, v14

    or-int/2addr v10, v13

    shl-int/lit8 v13, v1, 0x5

    ushr-int/lit8 v14, v1, 0x1b

    or-int/2addr v13, v14

    and-int v14, v12, v10

    not-int v15, v12

    and-int/2addr v15, v8

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/16 v14, 0x9

    .line 17
    aget v14, v9, v14

    invoke-static {v13, v14, v11, v4}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v4

    shl-int/lit8 v13, v12, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v12, v14

    or-int/2addr v12, v13

    shl-int/lit8 v13, v4, 0x5

    ushr-int/lit8 v14, v4, 0x1b

    or-int/2addr v13, v14

    and-int v14, v1, v12

    not-int v15, v1

    and-int/2addr v15, v10

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/16 v14, 0xa

    .line 18
    aget v14, v9, v14

    invoke-static {v13, v14, v11, v8}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v8

    shl-int/lit8 v13, v1, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v1, v14

    or-int/2addr v1, v13

    shl-int/lit8 v13, v8, 0x5

    ushr-int/lit8 v14, v8, 0x1b

    or-int/2addr v13, v14

    and-int v14, v4, v1

    not-int v15, v4

    and-int/2addr v15, v12

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/16 v14, 0xb

    .line 19
    aget v14, v9, v14

    invoke-static {v13, v14, v11, v10}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v10

    shl-int/lit8 v13, v4, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v4, v14

    or-int/2addr v4, v13

    shl-int/lit8 v13, v10, 0x5

    ushr-int/lit8 v14, v10, 0x1b

    or-int/2addr v13, v14

    and-int v14, v8, v4

    not-int v15, v8

    and-int/2addr v15, v1

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/16 v14, 0xc

    .line 20
    aget v14, v9, v14

    invoke-static {v13, v14, v11, v12}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v12

    shl-int/lit8 v13, v8, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v8, v14

    or-int/2addr v8, v13

    shl-int/lit8 v13, v12, 0x5

    ushr-int/lit8 v14, v12, 0x1b

    or-int/2addr v13, v14

    and-int v14, v10, v8

    not-int v15, v10

    and-int/2addr v15, v4

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/16 v14, 0xd

    .line 21
    aget v14, v9, v14

    invoke-static {v13, v14, v11, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v1

    shl-int/lit8 v13, v10, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v10, v14

    or-int/2addr v10, v13

    shl-int/lit8 v13, v1, 0x5

    ushr-int/lit8 v14, v1, 0x1b

    or-int/2addr v13, v14

    and-int v14, v12, v10

    not-int v15, v12

    and-int/2addr v15, v8

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/16 v14, 0xe

    .line 22
    aget v14, v9, v14

    invoke-static {v13, v14, v11, v4}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v4

    shl-int/lit8 v13, v12, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v12, v14

    or-int/2addr v12, v13

    shl-int/lit8 v13, v4, 0x5

    ushr-int/lit8 v14, v4, 0x1b

    or-int/2addr v13, v14

    and-int v14, v1, v12

    not-int v15, v1

    and-int/2addr v15, v10

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/16 v14, 0xf

    .line 23
    aget v14, v9, v14

    invoke-static {v13, v14, v11, v8}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v8

    shl-int/lit8 v13, v1, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v1, v14

    or-int/2addr v1, v13

    shl-int/lit8 v13, v8, 0x5

    ushr-int/lit8 v14, v8, 0x1b

    or-int/2addr v13, v14

    and-int v14, v4, v1

    not-int v15, v4

    and-int/2addr v15, v12

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/16 v14, 0x10

    .line 24
    aget v14, v9, v14

    invoke-static {v13, v14, v11, v10}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v10

    shl-int/lit8 v13, v4, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v4, v14

    or-int/2addr v4, v13

    shl-int/lit8 v13, v10, 0x5

    ushr-int/lit8 v14, v10, 0x1b

    or-int/2addr v13, v14

    and-int v14, v8, v4

    not-int v15, v8

    and-int/2addr v15, v1

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/16 v14, 0x11

    .line 25
    aget v14, v9, v14

    invoke-static {v13, v14, v11, v12}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v12

    shl-int/lit8 v13, v8, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v8, v14

    or-int/2addr v8, v13

    shl-int/lit8 v13, v12, 0x5

    ushr-int/lit8 v14, v12, 0x1b

    or-int/2addr v13, v14

    and-int v14, v10, v8

    not-int v15, v10

    and-int/2addr v15, v4

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/16 v14, 0x12

    .line 26
    aget v14, v9, v14

    invoke-static {v13, v14, v11, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v1

    shl-int/lit8 v13, v10, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v10, v14

    or-int/2addr v10, v13

    shl-int/lit8 v13, v1, 0x5

    ushr-int/lit8 v14, v1, 0x1b

    or-int/2addr v13, v14

    and-int v14, v12, v10

    not-int v15, v12

    and-int/2addr v15, v8

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/16 v14, 0x13

    .line 27
    aget v14, v9, v14

    invoke-static {v13, v14, v11, v4}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v4

    shl-int/lit8 v11, v12, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v12, v13

    or-int/2addr v11, v12

    shl-int/lit8 v12, v4, 0x5

    ushr-int/lit8 v13, v4, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v1, v11

    xor-int/2addr v13, v10

    add-int/2addr v12, v13

    const/16 v13, 0x14

    .line 28
    aget v13, v9, v13

    const v14, 0x6ed9eba1

    invoke-static {v12, v13, v14, v8}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v8

    shl-int/lit8 v12, v1, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v1, v13

    or-int/2addr v1, v12

    shl-int/lit8 v12, v8, 0x5

    ushr-int/lit8 v13, v8, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v4, v1

    xor-int/2addr v13, v11

    add-int/2addr v12, v13

    const/16 v13, 0x15

    .line 29
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v10}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v10

    shl-int/lit8 v12, v4, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v4, v13

    or-int/2addr v4, v12

    shl-int/lit8 v12, v10, 0x5

    ushr-int/lit8 v13, v10, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v8, v4

    xor-int/2addr v13, v1

    add-int/2addr v12, v13

    const/16 v13, 0x16

    .line 30
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v11}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v11

    shl-int/lit8 v12, v8, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v8, v13

    or-int/2addr v8, v12

    shl-int/lit8 v12, v11, 0x5

    ushr-int/lit8 v13, v11, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v10, v8

    xor-int/2addr v13, v4

    add-int/2addr v12, v13

    const/16 v13, 0x17

    .line 31
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v1

    shl-int/lit8 v12, v10, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v10, v13

    or-int/2addr v10, v12

    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v13, v1, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v11, v10

    xor-int/2addr v13, v8

    add-int/2addr v12, v13

    const/16 v13, 0x18

    .line 32
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v4}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v4

    shl-int/lit8 v12, v11, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v11, v13

    or-int/2addr v11, v12

    shl-int/lit8 v12, v4, 0x5

    ushr-int/lit8 v13, v4, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v1, v11

    xor-int/2addr v13, v10

    add-int/2addr v12, v13

    const/16 v13, 0x19

    .line 33
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v8}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v8

    shl-int/lit8 v12, v1, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v1, v13

    or-int/2addr v1, v12

    shl-int/lit8 v12, v8, 0x5

    ushr-int/lit8 v13, v8, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v4, v1

    xor-int/2addr v13, v11

    add-int/2addr v12, v13

    const/16 v13, 0x1a

    .line 34
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v10}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v10

    shl-int/lit8 v12, v4, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v4, v13

    or-int/2addr v4, v12

    shl-int/lit8 v12, v10, 0x5

    ushr-int/lit8 v13, v10, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v8, v4

    xor-int/2addr v13, v1

    add-int/2addr v12, v13

    const/16 v13, 0x1b

    .line 35
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v11}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v11

    shl-int/lit8 v12, v8, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v8, v13

    or-int/2addr v8, v12

    shl-int/lit8 v12, v11, 0x5

    ushr-int/lit8 v13, v11, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v10, v8

    xor-int/2addr v13, v4

    add-int/2addr v12, v13

    const/16 v13, 0x1c

    .line 36
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v1

    shl-int/lit8 v12, v10, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v10, v13

    or-int/2addr v10, v12

    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v13, v1, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v11, v10

    xor-int/2addr v13, v8

    add-int/2addr v12, v13

    const/16 v13, 0x1d

    .line 37
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v4}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v4

    shl-int/lit8 v12, v11, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v11, v13

    or-int/2addr v11, v12

    shl-int/lit8 v12, v4, 0x5

    ushr-int/lit8 v13, v4, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v1, v11

    xor-int/2addr v13, v10

    add-int/2addr v12, v13

    const/16 v13, 0x1e

    .line 38
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v8}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v8

    shl-int/lit8 v12, v1, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v1, v13

    or-int/2addr v1, v12

    shl-int/lit8 v12, v8, 0x5

    ushr-int/lit8 v13, v8, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v4, v1

    xor-int/2addr v13, v11

    add-int/2addr v12, v13

    const/16 v13, 0x1f

    .line 39
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v10}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v10

    shl-int/lit8 v12, v4, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v4, v13

    or-int/2addr v4, v12

    shl-int/lit8 v12, v10, 0x5

    ushr-int/lit8 v13, v10, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v8, v4

    xor-int/2addr v13, v1

    add-int/2addr v12, v13

    const/16 v13, 0x20

    .line 40
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v11}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v11

    shl-int/lit8 v12, v8, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v8, v13

    or-int/2addr v8, v12

    shl-int/lit8 v12, v11, 0x5

    ushr-int/lit8 v13, v11, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v10, v8

    xor-int/2addr v13, v4

    add-int/2addr v12, v13

    const/16 v13, 0x21

    .line 41
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v1

    shl-int/lit8 v12, v10, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v10, v13

    or-int/2addr v10, v12

    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v13, v1, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v11, v10

    xor-int/2addr v13, v8

    add-int/2addr v12, v13

    const/16 v13, 0x22

    .line 42
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v4}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v4

    shl-int/lit8 v12, v11, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v11, v13

    or-int/2addr v11, v12

    shl-int/lit8 v12, v4, 0x5

    ushr-int/lit8 v13, v4, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v1, v11

    xor-int/2addr v13, v10

    add-int/2addr v12, v13

    const/16 v13, 0x23

    .line 43
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v8}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v8

    shl-int/lit8 v12, v1, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v1, v13

    or-int/2addr v1, v12

    shl-int/lit8 v12, v8, 0x5

    ushr-int/lit8 v13, v8, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v4, v1

    xor-int/2addr v13, v11

    add-int/2addr v12, v13

    const/16 v13, 0x24

    .line 44
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v10}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v10

    shl-int/lit8 v12, v4, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v4, v13

    or-int/2addr v4, v12

    shl-int/lit8 v12, v10, 0x5

    ushr-int/lit8 v13, v10, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v8, v4

    xor-int/2addr v13, v1

    add-int/2addr v12, v13

    const/16 v13, 0x25

    .line 45
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v11}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v11

    shl-int/lit8 v12, v8, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v8, v13

    or-int/2addr v8, v12

    shl-int/lit8 v12, v11, 0x5

    ushr-int/lit8 v13, v11, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v10, v8

    xor-int/2addr v13, v4

    add-int/2addr v12, v13

    const/16 v13, 0x26

    .line 46
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v1

    shl-int/lit8 v12, v10, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v10, v13

    or-int/2addr v10, v12

    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v13, v1, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v11, v10

    xor-int/2addr v13, v8

    add-int/2addr v12, v13

    const/16 v13, 0x27

    .line 47
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v4}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v4

    shl-int/lit8 v12, v11, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v11, v13

    or-int/2addr v11, v12

    shl-int/lit8 v12, v4, 0x5

    ushr-int/lit8 v13, v4, 0x1b

    or-int/2addr v12, v13

    or-int v13, v11, v10

    and-int/2addr v13, v1

    and-int v14, v11, v10

    or-int/2addr v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0x28

    .line 48
    aget v13, v9, v13

    const v14, -0x70e44324

    invoke-static {v12, v13, v14, v8}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v8

    shl-int/lit8 v12, v1, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v1, v13

    or-int/2addr v1, v12

    shl-int/lit8 v12, v8, 0x5

    ushr-int/lit8 v13, v8, 0x1b

    or-int/2addr v12, v13

    or-int v13, v1, v11

    and-int/2addr v13, v4

    and-int v15, v1, v11

    or-int/2addr v13, v15

    add-int/2addr v12, v13

    const/16 v13, 0x29

    .line 49
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v10}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v10

    shl-int/lit8 v12, v4, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v4, v13

    or-int/2addr v4, v12

    shl-int/lit8 v12, v10, 0x5

    ushr-int/lit8 v13, v10, 0x1b

    or-int/2addr v12, v13

    or-int v13, v4, v1

    and-int/2addr v13, v8

    and-int v15, v4, v1

    or-int/2addr v13, v15

    add-int/2addr v12, v13

    const/16 v13, 0x2a

    .line 50
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v11}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v11

    shl-int/lit8 v12, v8, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v8, v13

    or-int/2addr v8, v12

    shl-int/lit8 v12, v11, 0x5

    ushr-int/lit8 v13, v11, 0x1b

    or-int/2addr v12, v13

    or-int v13, v8, v4

    and-int/2addr v13, v10

    and-int v15, v8, v4

    or-int/2addr v13, v15

    add-int/2addr v12, v13

    const/16 v13, 0x2b

    .line 51
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v1

    shl-int/lit8 v12, v10, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v10, v13

    or-int/2addr v10, v12

    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v13, v1, 0x1b

    or-int/2addr v12, v13

    or-int v13, v10, v8

    and-int/2addr v13, v11

    and-int v15, v10, v8

    or-int/2addr v13, v15

    add-int/2addr v12, v13

    const/16 v13, 0x2c

    .line 52
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v4}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v4

    shl-int/lit8 v12, v11, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v11, v13

    or-int/2addr v11, v12

    shl-int/lit8 v12, v4, 0x5

    ushr-int/lit8 v13, v4, 0x1b

    or-int/2addr v12, v13

    or-int v13, v11, v10

    and-int/2addr v13, v1

    and-int v15, v11, v10

    or-int/2addr v13, v15

    add-int/2addr v12, v13

    const/16 v13, 0x2d

    .line 53
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v8}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v8

    shl-int/lit8 v12, v1, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v1, v13

    or-int/2addr v1, v12

    shl-int/lit8 v12, v8, 0x5

    ushr-int/lit8 v13, v8, 0x1b

    or-int/2addr v12, v13

    or-int v13, v1, v11

    and-int/2addr v13, v4

    and-int v15, v1, v11

    or-int/2addr v13, v15

    add-int/2addr v12, v13

    const/16 v13, 0x2e

    .line 54
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v10}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v10

    shl-int/lit8 v12, v4, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v4, v13

    or-int/2addr v4, v12

    shl-int/lit8 v12, v10, 0x5

    ushr-int/lit8 v13, v10, 0x1b

    or-int/2addr v12, v13

    or-int v13, v4, v1

    and-int/2addr v13, v8

    and-int v15, v4, v1

    or-int/2addr v13, v15

    add-int/2addr v12, v13

    const/16 v13, 0x2f

    .line 55
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v11}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v11

    shl-int/lit8 v12, v8, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v8, v13

    or-int/2addr v8, v12

    shl-int/lit8 v12, v11, 0x5

    ushr-int/lit8 v13, v11, 0x1b

    or-int/2addr v12, v13

    or-int v13, v8, v4

    and-int/2addr v13, v10

    and-int v15, v8, v4

    or-int/2addr v13, v15

    add-int/2addr v12, v13

    const/16 v13, 0x30

    .line 56
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v1

    shl-int/lit8 v12, v10, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v10, v13

    or-int/2addr v10, v12

    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v13, v1, 0x1b

    or-int/2addr v12, v13

    or-int v13, v10, v8

    and-int/2addr v13, v11

    and-int v15, v10, v8

    or-int/2addr v13, v15

    add-int/2addr v12, v13

    const/16 v13, 0x31

    .line 57
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v4}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v4

    shl-int/lit8 v12, v11, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v11, v13

    or-int/2addr v11, v12

    shl-int/lit8 v12, v4, 0x5

    ushr-int/lit8 v13, v4, 0x1b

    or-int/2addr v12, v13

    or-int v13, v11, v10

    and-int/2addr v13, v1

    and-int v15, v11, v10

    or-int/2addr v13, v15

    add-int/2addr v12, v13

    const/16 v13, 0x32

    .line 58
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v8}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v8

    shl-int/lit8 v12, v1, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v1, v13

    or-int/2addr v1, v12

    shl-int/lit8 v12, v8, 0x5

    ushr-int/lit8 v13, v8, 0x1b

    or-int/2addr v12, v13

    or-int v13, v1, v11

    and-int/2addr v13, v4

    and-int v15, v1, v11

    or-int/2addr v13, v15

    add-int/2addr v12, v13

    const/16 v13, 0x33

    .line 59
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v10}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v10

    shl-int/lit8 v12, v4, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v4, v13

    or-int/2addr v4, v12

    shl-int/lit8 v12, v10, 0x5

    ushr-int/lit8 v13, v10, 0x1b

    or-int/2addr v12, v13

    or-int v13, v4, v1

    and-int/2addr v13, v8

    and-int v15, v4, v1

    or-int/2addr v13, v15

    add-int/2addr v12, v13

    const/16 v13, 0x34

    .line 60
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v11}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v11

    shl-int/lit8 v12, v8, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v8, v13

    or-int/2addr v8, v12

    shl-int/lit8 v12, v11, 0x5

    ushr-int/lit8 v13, v11, 0x1b

    or-int/2addr v12, v13

    or-int v13, v8, v4

    and-int/2addr v13, v10

    and-int v15, v8, v4

    or-int/2addr v13, v15

    add-int/2addr v12, v13

    const/16 v13, 0x35

    .line 61
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v1

    shl-int/lit8 v12, v10, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v10, v13

    or-int/2addr v10, v12

    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v13, v1, 0x1b

    or-int/2addr v12, v13

    or-int v13, v10, v8

    and-int/2addr v13, v11

    and-int v15, v10, v8

    or-int/2addr v13, v15

    add-int/2addr v12, v13

    const/16 v13, 0x36

    .line 62
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v4}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v4

    shl-int/lit8 v12, v11, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v11, v13

    or-int/2addr v11, v12

    shl-int/lit8 v12, v4, 0x5

    ushr-int/lit8 v13, v4, 0x1b

    or-int/2addr v12, v13

    add-int/2addr v8, v12

    or-int v12, v11, v10

    and-int/2addr v12, v1

    and-int v13, v11, v10

    or-int/2addr v12, v13

    add-int/2addr v8, v12

    const/16 v12, 0x37

    .line 63
    aget v12, v9, v12

    add-int/2addr v8, v12

    add-int/2addr v8, v14

    shl-int/lit8 v12, v1, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v1, v13

    or-int/2addr v1, v12

    shl-int/lit8 v12, v8, 0x5

    ushr-int/lit8 v13, v8, 0x1b

    or-int/2addr v12, v13

    or-int v13, v1, v11

    and-int/2addr v13, v4

    and-int v15, v1, v11

    or-int/2addr v13, v15

    add-int/2addr v12, v13

    const/16 v13, 0x38

    .line 64
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v10}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v10

    shl-int/lit8 v12, v4, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v4, v13

    or-int/2addr v4, v12

    shl-int/lit8 v12, v10, 0x5

    ushr-int/lit8 v13, v10, 0x1b

    or-int/2addr v12, v13

    or-int v13, v4, v1

    and-int/2addr v13, v8

    and-int v15, v4, v1

    or-int/2addr v13, v15

    add-int/2addr v12, v13

    const/16 v13, 0x39

    .line 65
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v11}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v11

    shl-int/lit8 v12, v8, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v8, v13

    or-int/2addr v8, v12

    shl-int/lit8 v12, v11, 0x5

    ushr-int/lit8 v13, v11, 0x1b

    or-int/2addr v12, v13

    or-int v13, v8, v4

    and-int/2addr v13, v10

    and-int v15, v8, v4

    or-int/2addr v13, v15

    add-int/2addr v12, v13

    const/16 v13, 0x3a

    .line 66
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v1

    shl-int/lit8 v12, v10, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v10, v13

    or-int/2addr v10, v12

    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v13, v1, 0x1b

    or-int/2addr v12, v13

    or-int v13, v10, v8

    and-int/2addr v13, v11

    and-int v15, v10, v8

    or-int/2addr v13, v15

    add-int/2addr v12, v13

    const/16 v13, 0x3b

    .line 67
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v4}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v4

    shl-int/lit8 v12, v11, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v11, v13

    or-int/2addr v11, v12

    shl-int/lit8 v12, v4, 0x5

    ushr-int/lit8 v13, v4, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v1, v11

    xor-int/2addr v13, v10

    add-int/2addr v12, v13

    const/16 v13, 0x3c

    .line 68
    aget v13, v9, v13

    const v14, -0x359d3e2a    # -3715189.5f

    invoke-static {v12, v13, v14, v8}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v8

    shl-int/lit8 v12, v1, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v1, v13

    or-int/2addr v1, v12

    shl-int/lit8 v12, v8, 0x5

    ushr-int/lit8 v13, v8, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v4, v1

    xor-int/2addr v13, v11

    add-int/2addr v12, v13

    const/16 v13, 0x3d

    .line 69
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v10}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v10

    shl-int/lit8 v12, v4, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v4, v13

    or-int/2addr v4, v12

    shl-int/lit8 v12, v10, 0x5

    ushr-int/lit8 v13, v10, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v8, v4

    xor-int/2addr v13, v1

    add-int/2addr v12, v13

    const/16 v13, 0x3e

    .line 70
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v11}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v11

    shl-int/lit8 v12, v8, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v8, v13

    or-int/2addr v8, v12

    shl-int/lit8 v12, v11, 0x5

    ushr-int/lit8 v13, v11, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v10, v8

    xor-int/2addr v13, v4

    add-int/2addr v12, v13

    const/16 v13, 0x3f

    .line 71
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v1

    shl-int/lit8 v12, v10, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v10, v13

    or-int/2addr v10, v12

    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v13, v1, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v11, v10

    xor-int/2addr v13, v8

    add-int/2addr v12, v13

    const/16 v13, 0x40

    .line 72
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v4}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v4

    shl-int/lit8 v12, v11, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v11, v13

    or-int/2addr v11, v12

    shl-int/lit8 v12, v4, 0x5

    ushr-int/lit8 v13, v4, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v1, v11

    xor-int/2addr v13, v10

    add-int/2addr v12, v13

    const/16 v13, 0x41

    .line 73
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v8}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v8

    shl-int/lit8 v12, v1, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v1, v13

    or-int/2addr v1, v12

    shl-int/lit8 v12, v8, 0x5

    ushr-int/lit8 v13, v8, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v4, v1

    xor-int/2addr v13, v11

    add-int/2addr v12, v13

    const/16 v13, 0x42

    .line 74
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v10}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v10

    shl-int/lit8 v12, v4, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v4, v13

    or-int/2addr v4, v12

    shl-int/lit8 v12, v10, 0x5

    ushr-int/lit8 v13, v10, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v8, v4

    xor-int/2addr v13, v1

    add-int/2addr v12, v13

    const/16 v13, 0x43

    .line 75
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v11}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v11

    shl-int/lit8 v12, v8, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v8, v13

    or-int/2addr v8, v12

    shl-int/lit8 v12, v11, 0x5

    ushr-int/lit8 v13, v11, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v10, v8

    xor-int/2addr v13, v4

    add-int/2addr v12, v13

    const/16 v13, 0x44

    .line 76
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v1

    shl-int/lit8 v12, v10, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v10, v13

    or-int/2addr v10, v12

    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v13, v1, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v11, v10

    xor-int/2addr v13, v8

    add-int/2addr v12, v13

    const/16 v13, 0x45

    .line 77
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v4}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v4

    shl-int/lit8 v12, v11, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v11, v13

    or-int/2addr v11, v12

    shl-int/lit8 v12, v4, 0x5

    ushr-int/lit8 v13, v4, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v1, v11

    xor-int/2addr v13, v10

    add-int/2addr v12, v13

    const/16 v13, 0x46

    .line 78
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v8}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v8

    shl-int/lit8 v12, v1, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v1, v13

    or-int/2addr v1, v12

    shl-int/lit8 v12, v8, 0x5

    ushr-int/lit8 v13, v8, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v4, v1

    xor-int/2addr v13, v11

    add-int/2addr v12, v13

    const/16 v13, 0x47

    .line 79
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v10}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v10

    shl-int/lit8 v12, v4, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v4, v13

    or-int/2addr v4, v12

    shl-int/lit8 v12, v10, 0x5

    ushr-int/lit8 v13, v10, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v8, v4

    xor-int/2addr v13, v1

    add-int/2addr v12, v13

    const/16 v13, 0x48

    .line 80
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v11}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v11

    shl-int/lit8 v12, v8, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v8, v13

    or-int/2addr v8, v12

    shl-int/lit8 v12, v11, 0x5

    ushr-int/lit8 v13, v11, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v10, v8

    xor-int/2addr v13, v4

    add-int/2addr v12, v13

    const/16 v13, 0x49

    .line 81
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v1

    shl-int/lit8 v12, v10, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v10, v13

    or-int/2addr v10, v12

    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v13, v1, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v11, v10

    xor-int/2addr v13, v8

    add-int/2addr v12, v13

    const/16 v13, 0x4a

    .line 82
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v4}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v4

    shl-int/lit8 v12, v11, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v11, v13

    or-int/2addr v11, v12

    shl-int/lit8 v12, v4, 0x5

    ushr-int/lit8 v13, v4, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v1, v11

    xor-int/2addr v13, v10

    add-int/2addr v12, v13

    const/16 v13, 0x4b

    .line 83
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v8}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v8

    shl-int/lit8 v12, v1, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v1, v13

    or-int/2addr v1, v12

    shl-int/lit8 v12, v8, 0x5

    ushr-int/lit8 v13, v8, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v4, v1

    xor-int/2addr v13, v11

    add-int/2addr v12, v13

    const/16 v13, 0x4c

    .line 84
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v10}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v10

    shl-int/lit8 v12, v4, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v4, v13

    or-int/2addr v4, v12

    shl-int/lit8 v12, v10, 0x5

    ushr-int/lit8 v13, v10, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v8, v4

    xor-int/2addr v13, v1

    add-int/2addr v12, v13

    const/16 v13, 0x4d

    .line 85
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v11}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v11

    shl-int/lit8 v12, v8, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v8, v13

    or-int/2addr v8, v12

    shl-int/lit8 v12, v11, 0x5

    ushr-int/lit8 v13, v11, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v10, v8

    xor-int/2addr v13, v4

    add-int/2addr v12, v13

    const/16 v13, 0x4e

    .line 86
    aget v13, v9, v13

    invoke-static {v12, v13, v14, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v1

    shl-int/lit8 v12, v10, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v10, v13

    or-int/2addr v10, v12

    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v13, v1, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v11, v10

    xor-int/2addr v13, v8

    add-int/2addr v12, v13

    const/16 v13, 0x4f

    .line 87
    aget v9, v9, v13

    invoke-static {v12, v9, v14, v4}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    move-result v4

    shl-int/lit8 v9, v11, 0x1e

    const/4 v12, 0x2

    ushr-int/2addr v11, v12

    or-int/2addr v9, v11

    add-int/2addr v2, v4

    .line 88
    iput v2, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H0:I

    add-int/2addr v3, v1

    .line 89
    iput v3, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H1:I

    add-int/2addr v5, v9

    .line 90
    iput v5, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H2:I

    add-int/2addr v6, v10

    .line 91
    iput v6, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H3:I

    add-int/2addr v7, v8

    .line 92
    iput v7, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H4:I

    return-void
.end method

.method private putInt([BII)V
    .locals 2

    .line 1
    shr-int/lit8 v0, p3, 0x18

    .line 2
    .line 3
    int-to-byte v0, v0

    .line 4
    aput-byte v0, p1, p2

    .line 5
    .line 6
    add-int/lit8 v0, p2, 0x1

    .line 7
    .line 8
    shr-int/lit8 v1, p3, 0x10

    .line 9
    .line 10
    int-to-byte v1, v1

    .line 11
    aput-byte v1, p1, v0

    .line 12
    .line 13
    add-int/lit8 v0, p2, 0x2

    .line 14
    .line 15
    shr-int/lit8 v1, p3, 0x8

    .line 16
    .line 17
    int-to-byte v1, v1

    .line 18
    aput-byte v1, p1, v0

    .line 19
    .line 20
    add-int/lit8 p2, p2, 0x3

    .line 21
    .line 22
    int-to-byte p3, p3

    .line 23
    aput-byte p3, p1, p2

    .line 24
    .line 25
    return-void
.end method

.method private static toHexString([B)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    array-length v2, p0

    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_0
    if-ge v3, v2, :cond_0

    .line 23
    .line 24
    aget-byte v4, p0, v3

    .line 25
    .line 26
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v6, v1, [J

    .line 29
    .line 30
    fill-array-data v6, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    shr-int/lit8 v6, v4, 0x4

    .line 41
    .line 42
    and-int/lit8 v6, v6, 0xf

    .line 43
    .line 44
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    new-array v6, v1, [J

    .line 54
    .line 55
    fill-array-data v6, :array_2

    .line 56
    .line 57
    .line 58
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    and-int/lit8 v4, v4, 0xf

    .line 66
    .line 67
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    add-int/lit8 v3, v3, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    nop

    .line 83
    :array_0
    .array-data 8
        0x32f3b4f1d7abbd1L
        -0x3be81a479797cdcdL    # -1.1020705223061201E20
        0x74b276f9608384e1L    # 1.353753579036261E254
    .end array-data

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
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
    :array_1
    .array-data 8
        -0x3ba69f40e921747cL    # -1.8725596709440434E21
        0x5988d83043cd85b8L    # 2.0529495085065098E123
        -0xac9778a97316e35L    # -4.229179711383449E256
    .end array-data

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
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
    :array_2
    .array-data 8
        -0x4c438b5761b3e13L
        0xf08fec09b345921L    # 3.070780332654528E-236
        -0x2a649df360b24d31L    # -2.4532376679726405E104
    .end array-data
.end method


# virtual methods
.method public final digest([B)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->digest([BI)V

    return-void
.end method

.method public final digest([BI)V
    .locals 8

    .line 2
    iget v0, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    shr-int/lit8 v1, v0, 0x2

    .line 3
    iget-object v2, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->w:[I

    aget v3, v2, v1

    shl-int/lit8 v3, v3, 0x8

    or-int/lit16 v3, v3, 0x80

    and-int/lit8 v4, v0, 0x3

    rsub-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x3

    shl-int/2addr v3, v4

    aput v3, v2, v1

    and-int/lit8 v0, v0, -0x4

    add-int/lit8 v0, v0, 0x4

    .line 4
    iput v0, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    const/16 v1, 0x40

    const/16 v3, 0xf

    const/4 v4, 0x0

    if-ne v0, v1, :cond_0

    .line 5
    iput v4, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    .line 6
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->perform()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x3c

    if-ne v0, v1, :cond_1

    .line 7
    iput v4, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    .line 8
    aput v4, v2, v3

    .line 9
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->perform()V

    .line 10
    :cond_1
    :goto_0
    iget v0, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    shr-int/lit8 v0, v0, 0x2

    :goto_1
    const/16 v1, 0xe

    if-ge v0, v1, :cond_2

    .line 11
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->w:[I

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->w:[I

    iget-wide v4, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentLen:J

    const/16 v2, 0x20

    shr-long v6, v4, v2

    long-to-int v2, v6

    aput v2, v0, v1

    long-to-int v1, v4

    .line 13
    aput v1, v0, v3

    .line 14
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->perform()V

    .line 15
    iget v0, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H0:I

    invoke-direct {p0, p1, p2, v0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->putInt([BII)V

    add-int/lit8 v0, p2, 0x4

    .line 16
    iget v1, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H1:I

    invoke-direct {p0, p1, v0, v1}, Lcom/trilead/ssh2/crypto/digest/SHA1;->putInt([BII)V

    add-int/lit8 v0, p2, 0x8

    .line 17
    iget v1, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H2:I

    invoke-direct {p0, p1, v0, v1}, Lcom/trilead/ssh2/crypto/digest/SHA1;->putInt([BII)V

    add-int/lit8 v0, p2, 0xc

    .line 18
    iget v1, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H3:I

    invoke-direct {p0, p1, v0, v1}, Lcom/trilead/ssh2/crypto/digest/SHA1;->putInt([BII)V

    add-int/lit8 p2, p2, 0x10

    .line 19
    iget v0, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H4:I

    invoke-direct {p0, p1, p2, v0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->putInt([BII)V

    .line 20
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->reset()V

    return-void
.end method

.method public final getDigestLength()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public final reset()V
    .locals 2

    .line 1
    const v0, 0x67452301

    .line 2
    .line 3
    .line 4
    iput v0, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H0:I

    .line 5
    .line 6
    const v0, -0x10325477

    .line 7
    .line 8
    .line 9
    iput v0, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H1:I

    .line 10
    .line 11
    const v0, -0x67452302

    .line 12
    .line 13
    .line 14
    iput v0, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H2:I

    .line 15
    .line 16
    const v0, 0x10325476

    .line 17
    .line 18
    .line 19
    iput v0, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H3:I

    .line 20
    .line 21
    const v0, -0x3c2d1e10

    .line 22
    .line 23
    .line 24
    iput v0, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->H4:I

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    .line 28
    .line 29
    const-wide/16 v0, 0x0

    .line 30
    .line 31
    iput-wide v0, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentLen:J

    .line 32
    .line 33
    return-void
.end method

.method public final update(B)V
    .locals 5

    .line 43
    iget v0, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    shr-int/lit8 v1, v0, 0x2

    .line 44
    iget-object v2, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->w:[I

    aget v3, v2, v1

    shl-int/lit8 v3, v3, 0x8

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v3

    aput p1, v2, v1

    .line 45
    iget-wide v1, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentLen:J

    const-wide/16 v3, 0x8

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentLen:J

    add-int/lit8 v0, v0, 0x1

    .line 46
    iput v0, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    const/16 p1, 0x40

    if-ne v0, p1, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->perform()V

    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    :cond_0
    return-void
.end method

.method public final update([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->update([BII)V

    return-void
.end method

.method public final update([BII)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p3

    const-wide/16 v2, 0x8

    const/4 v4, 0x0

    const/16 v5, 0x40

    const/16 v6, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x4

    if-lt v1, v8, :cond_a

    .line 2
    iget v9, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    shr-int/lit8 v10, v9, 0x2

    and-int/lit8 v11, v9, 0x3

    if-eqz v11, :cond_4

    const/4 v14, 0x3

    if-eq v11, v7, :cond_3

    const/4 v15, 0x2

    if-eq v11, v15, :cond_1

    if-eq v11, v14, :cond_0

    move/from16 v15, p2

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object v11, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->w:[I

    aget v14, v11, v10

    shl-int/2addr v14, v6

    add-int/lit8 v15, p2, 0x1

    aget-byte v12, p1, p2

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v12, v14

    aput v12, v11, v10

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v9, v7

    .line 4
    iput v9, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    .line 5
    iget-wide v10, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentLen:J

    add-long/2addr v10, v2

    iput-wide v10, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentLen:J

    if-ne v9, v5, :cond_6

    .line 6
    invoke-direct/range {p0 .. p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->perform()V

    .line 7
    iput v4, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    goto/16 :goto_0

    .line 8
    :cond_1
    iget-object v11, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->w:[I

    aget v12, v11, v10

    shl-int/lit8 v12, v12, 0x10

    add-int/lit8 v13, p2, 0x1

    aget-byte v14, p1, p2

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v6

    add-int/lit8 v16, p2, 0x2

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    or-int/2addr v13, v14

    or-int/2addr v12, v13

    aput v12, v11, v10

    add-int/lit8 v1, v1, -0x2

    add-int/2addr v9, v15

    .line 9
    iput v9, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    .line 10
    iget-wide v10, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentLen:J

    const-wide/16 v12, 0x10

    add-long/2addr v10, v12

    iput-wide v10, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentLen:J

    if-ne v9, v5, :cond_2

    .line 11
    invoke-direct/range {p0 .. p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->perform()V

    .line 12
    iput v4, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    :cond_2
    move/from16 v15, v16

    goto :goto_0

    .line 13
    :cond_3
    iget-object v11, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->w:[I

    aget v12, v11, v10

    shl-int/lit8 v12, v12, 0x18

    add-int/lit8 v13, p2, 0x1

    aget-byte v15, p1, p2

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x10

    add-int/lit8 v16, p2, 0x2

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v6

    or-int/2addr v13, v15

    add-int/lit8 v15, p2, 0x3

    aget-byte v7, p1, v16

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v7, v13

    or-int/2addr v7, v12

    aput v7, v11, v10

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v9, v14

    .line 14
    iput v9, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    .line 15
    iget-wide v10, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentLen:J

    const-wide/16 v12, 0x18

    add-long/2addr v10, v12

    iput-wide v10, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentLen:J

    if-ne v9, v5, :cond_6

    .line 16
    invoke-direct/range {p0 .. p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->perform()V

    .line 17
    iput v4, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    goto :goto_0

    .line 18
    :cond_4
    iget-object v7, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->w:[I

    add-int/lit8 v11, p2, 0x1

    aget-byte v12, p1, p2

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    add-int/lit8 v13, p2, 0x2

    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v11, v12

    add-int/lit8 v12, p2, 0x3

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v6

    or-int/2addr v11, v13

    add-int/lit8 v13, p2, 0x4

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    aput v11, v7, v10

    add-int/lit8 v1, v1, -0x4

    add-int/2addr v9, v8

    .line 19
    iput v9, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    .line 20
    iget-wide v10, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentLen:J

    const-wide/16 v14, 0x20

    add-long/2addr v10, v14

    iput-wide v10, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentLen:J

    if-ne v9, v5, :cond_5

    .line 21
    invoke-direct/range {p0 .. p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->perform()V

    .line 22
    iput v4, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    :cond_5
    move v15, v13

    :cond_6
    :goto_0
    if-lt v1, v6, :cond_9

    .line 23
    iget-object v7, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->w:[I

    iget v9, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    shr-int/lit8 v10, v9, 0x2

    add-int/lit8 v11, v15, 0x1

    aget-byte v12, p1, v15

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    add-int/lit8 v13, v15, 0x2

    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v11, v12

    add-int/lit8 v12, v15, 0x3

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v6

    or-int/2addr v11, v13

    add-int/lit8 v13, v15, 0x4

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    aput v11, v7, v10

    add-int/2addr v9, v8

    .line 24
    iput v9, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    if-ne v9, v5, :cond_7

    .line 25
    invoke-direct/range {p0 .. p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->perform()V

    .line 26
    iput v4, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    .line 27
    :cond_7
    iget-object v7, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->w:[I

    iget v9, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    shr-int/lit8 v10, v9, 0x2

    add-int/lit8 v11, v15, 0x5

    aget-byte v12, p1, v13

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    add-int/lit8 v13, v15, 0x6

    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v11, v12

    add-int/lit8 v12, v15, 0x7

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v6

    or-int/2addr v11, v13

    add-int/lit8 v15, v15, 0x8

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    aput v11, v7, v10

    add-int/2addr v9, v8

    .line 28
    iput v9, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    if-ne v9, v5, :cond_8

    .line 29
    invoke-direct/range {p0 .. p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->perform()V

    .line 30
    iput v4, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    .line 31
    :cond_8
    iget-wide v9, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentLen:J

    const-wide/16 v11, 0x40

    add-long/2addr v9, v11

    iput-wide v9, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentLen:J

    add-int/lit8 v1, v1, -0x8

    goto :goto_0

    :cond_9
    :goto_1
    if-gez v1, :cond_b

    .line 32
    iget-object v7, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->w:[I

    iget v9, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    shr-int/lit8 v10, v9, 0x2

    add-int/lit8 v11, v15, 0x1

    aget-byte v12, p1, v15

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    add-int/lit8 v13, v15, 0x2

    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v11, v12

    add-int/lit8 v12, v15, 0x3

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v6

    or-int/2addr v11, v13

    add-int/lit8 v15, v15, 0x4

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    aput v11, v7, v10

    add-int/lit8 v1, v1, -0x4

    add-int/2addr v9, v8

    .line 33
    iput v9, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    .line 34
    iget-wide v10, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentLen:J

    const-wide/16 v12, 0x20

    add-long/2addr v10, v12

    iput-wide v10, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentLen:J

    if-ne v9, v5, :cond_9

    .line 35
    invoke-direct/range {p0 .. p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->perform()V

    .line 36
    iput v4, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    goto :goto_1

    :cond_a
    move/from16 v15, p2

    :cond_b
    :goto_2
    if-lez v1, :cond_d

    .line 37
    iget v7, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    shr-int/lit8 v8, v7, 0x2

    .line 38
    iget-object v9, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->w:[I

    aget v10, v9, v8

    shl-int/2addr v10, v6

    add-int/lit8 v11, v15, 0x1

    aget-byte v12, p1, v15

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v10, v12

    aput v10, v9, v8

    .line 39
    iget-wide v8, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentLen:J

    add-long/2addr v8, v2

    iput-wide v8, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentLen:J

    const/4 v8, 0x1

    add-int/2addr v7, v8

    .line 40
    iput v7, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    if-ne v7, v5, :cond_c

    .line 41
    invoke-direct/range {p0 .. p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->perform()V

    .line 42
    iput v4, v0, Lcom/trilead/ssh2/crypto/digest/SHA1;->currentPos:I

    :cond_c
    add-int/lit8 v1, v1, -0x1

    move v15, v11

    goto :goto_2

    :cond_d
    return-void
.end method
