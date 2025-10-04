.class public Landroidx/test/core/view/MotionEventBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private action:I

.field private actionIndex:I

.field private buttonState:I

.field private deviceId:I

.field private downTime:J

.field private edgeFlags:I

.field private eventTime:J

.field private flags:I

.field private metaState:I

.field private pointerCoordsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MotionEvent$PointerCoords;",
            ">;"
        }
    .end annotation
.end field

.field private pointerPropertiesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MotionEvent$PointerProperties;",
            ">;"
        }
    .end annotation
.end field

.field private source:I

.field private xPrecision:F

.field private yPrecision:F


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Landroidx/test/core/view/MotionEventBuilder;->downTime:J

    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iput-wide v0, p0, Landroidx/test/core/view/MotionEventBuilder;->eventTime:J

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Landroidx/test/core/view/MotionEventBuilder;->action:I

    .line 16
    .line 17
    const/4 v1, -0x1

    .line 18
    iput v1, p0, Landroidx/test/core/view/MotionEventBuilder;->actionIndex:I

    .line 19
    .line 20
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Landroidx/test/core/view/MotionEventBuilder;->pointerPropertiesList:Ljava/util/List;

    .line 26
    .line 27
    new-instance v1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Landroidx/test/core/view/MotionEventBuilder;->pointerCoordsList:Ljava/util/List;

    .line 33
    .line 34
    iput v0, p0, Landroidx/test/core/view/MotionEventBuilder;->metaState:I

    .line 35
    .line 36
    iput v0, p0, Landroidx/test/core/view/MotionEventBuilder;->buttonState:I

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    iput v1, p0, Landroidx/test/core/view/MotionEventBuilder;->xPrecision:F

    .line 40
    .line 41
    iput v1, p0, Landroidx/test/core/view/MotionEventBuilder;->yPrecision:F

    .line 42
    .line 43
    iput v0, p0, Landroidx/test/core/view/MotionEventBuilder;->deviceId:I

    .line 44
    .line 45
    iput v0, p0, Landroidx/test/core/view/MotionEventBuilder;->edgeFlags:I

    .line 46
    .line 47
    iput v0, p0, Landroidx/test/core/view/MotionEventBuilder;->source:I

    .line 48
    .line 49
    iput v0, p0, Landroidx/test/core/view/MotionEventBuilder;->flags:I

    .line 50
    .line 51
    return-void
.end method

.method private static checkState(ZLjava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 5
    .line 6
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    throw p0
.end method

.method public static newBuilder()Landroidx/test/core/view/MotionEventBuilder;
    .locals 1

    .line 1
    new-instance v0, Landroidx/test/core/view/MotionEventBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/test/core/view/MotionEventBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public build()Landroid/view/MotionEvent;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/test/core/view/MotionEventBuilder;->pointerPropertiesList:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1, v1}, Landroidx/test/core/view/MotionEventBuilder;->setPointer(FF)Landroidx/test/core/view/MotionEventBuilder;

    .line 13
    .line 14
    .line 15
    :cond_0
    iget v1, v0, Landroidx/test/core/view/MotionEventBuilder;->actionIndex:I

    .line 16
    .line 17
    const/4 v2, -0x1

    .line 18
    if-eq v1, v2, :cond_1

    .line 19
    .line 20
    iget v2, v0, Landroidx/test/core/view/MotionEventBuilder;->action:I

    .line 21
    .line 22
    shl-int/lit8 v1, v1, 0x8

    .line 23
    .line 24
    or-int/2addr v1, v2

    .line 25
    iput v1, v0, Landroidx/test/core/view/MotionEventBuilder;->action:I

    .line 26
    .line 27
    :cond_1
    iget-wide v2, v0, Landroidx/test/core/view/MotionEventBuilder;->downTime:J

    .line 28
    .line 29
    iget-wide v4, v0, Landroidx/test/core/view/MotionEventBuilder;->eventTime:J

    .line 30
    .line 31
    iget v6, v0, Landroidx/test/core/view/MotionEventBuilder;->action:I

    .line 32
    .line 33
    iget-object v1, v0, Landroidx/test/core/view/MotionEventBuilder;->pointerPropertiesList:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    iget-object v1, v0, Landroidx/test/core/view/MotionEventBuilder;->pointerPropertiesList:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    new-array v8, v8, [Landroid/view/MotionEvent$PointerProperties;

    .line 46
    .line 47
    invoke-interface {v1, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    move-object v8, v1

    .line 52
    check-cast v8, [Landroid/view/MotionEvent$PointerProperties;

    .line 53
    .line 54
    iget-object v1, v0, Landroidx/test/core/view/MotionEventBuilder;->pointerCoordsList:Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v9

    .line 60
    new-array v9, v9, [Landroid/view/MotionEvent$PointerCoords;

    .line 61
    .line 62
    invoke-interface {v1, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    move-object v9, v1

    .line 67
    check-cast v9, [Landroid/view/MotionEvent$PointerCoords;

    .line 68
    .line 69
    iget v10, v0, Landroidx/test/core/view/MotionEventBuilder;->metaState:I

    .line 70
    .line 71
    iget v11, v0, Landroidx/test/core/view/MotionEventBuilder;->buttonState:I

    .line 72
    .line 73
    iget v12, v0, Landroidx/test/core/view/MotionEventBuilder;->xPrecision:F

    .line 74
    .line 75
    iget v13, v0, Landroidx/test/core/view/MotionEventBuilder;->yPrecision:F

    .line 76
    .line 77
    iget v14, v0, Landroidx/test/core/view/MotionEventBuilder;->deviceId:I

    .line 78
    .line 79
    iget v15, v0, Landroidx/test/core/view/MotionEventBuilder;->edgeFlags:I

    .line 80
    .line 81
    iget v1, v0, Landroidx/test/core/view/MotionEventBuilder;->source:I

    .line 82
    .line 83
    move/from16 v16, v1

    .line 84
    .line 85
    iget v1, v0, Landroidx/test/core/view/MotionEventBuilder;->flags:I

    .line 86
    .line 87
    move/from16 v17, v1

    .line 88
    .line 89
    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    return-object v1
.end method

.method public setAction(I)Landroidx/test/core/view/MotionEventBuilder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/test/core/view/MotionEventBuilder;->action:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setActionIndex(I)Landroidx/test/core/view/MotionEventBuilder;
    .locals 2

    .line 1
    const/16 v0, 0xff

    .line 2
    .line 3
    if-gt p1, v0, :cond_0

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
    const-string v1, "pointerIndex must be less than 0xff"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroidx/test/core/view/MotionEventBuilder;->checkState(ZLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput p1, p0, Landroidx/test/core/view/MotionEventBuilder;->actionIndex:I

    .line 14
    .line 15
    return-object p0
.end method

.method public setButtonState(I)Landroidx/test/core/view/MotionEventBuilder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/test/core/view/MotionEventBuilder;->buttonState:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setDeviceId(I)Landroidx/test/core/view/MotionEventBuilder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/test/core/view/MotionEventBuilder;->deviceId:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setDownTime(J)Landroidx/test/core/view/MotionEventBuilder;
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/test/core/view/MotionEventBuilder;->downTime:J

    .line 2
    .line 3
    return-object p0
.end method

.method public setEdgeFlags(I)Landroidx/test/core/view/MotionEventBuilder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/test/core/view/MotionEventBuilder;->edgeFlags:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setEventTime(J)Landroidx/test/core/view/MotionEventBuilder;
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/test/core/view/MotionEventBuilder;->eventTime:J

    .line 2
    .line 3
    return-object p0
.end method

.method public setFlags(I)Landroidx/test/core/view/MotionEventBuilder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/test/core/view/MotionEventBuilder;->flags:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setMetaState(I)Landroidx/test/core/view/MotionEventBuilder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/test/core/view/MotionEventBuilder;->metaState:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setPointer(FF)Landroidx/test/core/view/MotionEventBuilder;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 2
    iget-object v1, p0, Landroidx/test/core/view/MotionEventBuilder;->pointerPropertiesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 3
    new-instance v1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 4
    iput p1, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 5
    iput p2, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 6
    invoke-virtual {p0, v0, v1}, Landroidx/test/core/view/MotionEventBuilder;->setPointer(Landroid/view/MotionEvent$PointerProperties;Landroid/view/MotionEvent$PointerCoords;)Landroidx/test/core/view/MotionEventBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPointer(Landroid/view/MotionEvent$PointerProperties;Landroid/view/MotionEvent$PointerCoords;)Landroidx/test/core/view/MotionEventBuilder;
    .locals 1

    .line 7
    iget-object v0, p0, Landroidx/test/core/view/MotionEventBuilder;->pointerPropertiesList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Landroidx/test/core/view/MotionEventBuilder;->pointerCoordsList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setSource(I)Landroidx/test/core/view/MotionEventBuilder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/test/core/view/MotionEventBuilder;->source:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setXPrecision(F)Landroidx/test/core/view/MotionEventBuilder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/test/core/view/MotionEventBuilder;->xPrecision:F

    .line 2
    .line 3
    return-object p0
.end method

.method public setYPrecision(F)Landroidx/test/core/view/MotionEventBuilder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/test/core/view/MotionEventBuilder;->yPrecision:F

    .line 2
    .line 3
    return-object p0
.end method
