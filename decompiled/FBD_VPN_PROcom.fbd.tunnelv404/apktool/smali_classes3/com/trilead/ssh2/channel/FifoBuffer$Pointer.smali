.class Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/channel/FifoBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Pointer"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field off:I

.field p:Lcom/trilead/ssh2/channel/FifoBuffer$Page;

.field final synthetic this$0:Lcom/trilead/ssh2/channel/FifoBuffer;


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/channel/FifoBuffer;Lcom/trilead/ssh2/channel/FifoBuffer$Page;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->this$0:Lcom/trilead/ssh2/channel/FifoBuffer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->p:Lcom/trilead/ssh2/channel/FifoBuffer$Page;

    .line 7
    .line 8
    iput p3, p0, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->off:I

    .line 9
    .line 10
    return-void
.end method

.method private chunk()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->this$0:Lcom/trilead/ssh2/channel/FifoBuffer;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/trilead/ssh2/channel/FifoBuffer;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/trilead/ssh2/channel/FifoBuffer;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->off:I

    .line 8
    .line 9
    sub-int/2addr v0, v1

    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->p:Lcom/trilead/ssh2/channel/FifoBuffer$Page;

    .line 14
    .line 15
    iget-object v1, v0, Lcom/trilead/ssh2/channel/FifoBuffer$Page;->next:Lcom/trilead/ssh2/channel/FifoBuffer$Page;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->this$0:Lcom/trilead/ssh2/channel/FifoBuffer;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/trilead/ssh2/channel/FifoBuffer;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/trilead/ssh2/channel/FifoBuffer;)Lcom/trilead/ssh2/channel/FifoBuffer$Page;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iput-object v1, v0, Lcom/trilead/ssh2/channel/FifoBuffer$Page;->next:Lcom/trilead/ssh2/channel/FifoBuffer$Page;

    .line 26
    .line 27
    :cond_1
    iput-object v1, p0, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->p:Lcom/trilead/ssh2/channel/FifoBuffer$Page;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->off:I

    .line 31
    .line 32
    iget-object v0, p0, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->this$0:Lcom/trilead/ssh2/channel/FifoBuffer;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/trilead/ssh2/channel/FifoBuffer;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/trilead/ssh2/channel/FifoBuffer;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    return v0
.end method


# virtual methods
.method public read([BII)V
    .locals 3

    .line 1
    :goto_0
    if-lez p3, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->chunk()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->p:Lcom/trilead/ssh2/channel/FifoBuffer$Page;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/trilead/ssh2/channel/FifoBuffer$Page;->buf:[B

    .line 14
    .line 15
    iget v2, p0, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->off:I

    .line 16
    .line 17
    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    .line 19
    .line 20
    iget v1, p0, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->off:I

    .line 21
    .line 22
    add-int/2addr v1, v0

    .line 23
    iput v1, p0, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->off:I

    .line 24
    .line 25
    sub-int/2addr p3, v0

    .line 26
    add-int/2addr p2, v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method public write([BII)V
    .locals 3

    .line 1
    :goto_0
    if-lez p3, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->chunk()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->p:Lcom/trilead/ssh2/channel/FifoBuffer$Page;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/trilead/ssh2/channel/FifoBuffer$Page;->buf:[B

    .line 14
    .line 15
    iget v2, p0, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->off:I

    .line 16
    .line 17
    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    .line 19
    .line 20
    iget v1, p0, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->off:I

    .line 21
    .line 22
    add-int/2addr v1, v0

    .line 23
    iput v1, p0, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->off:I

    .line 24
    .line 25
    sub-int/2addr p3, v0

    .line 26
    add-int/2addr p2, v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method
