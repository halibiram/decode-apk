.class public Landroidx/test/core/view/PointerCoordsBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private orientation:F

.field private pressure:F

.field private size:F

.field private toolMajor:F

.field private toolMinor:F

.field private touchMajor:F

.field private touchMinor:F

.field private x:F

.field private y:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/test/core/view/PointerCoordsBuilder;->x:F

    .line 6
    .line 7
    iput v0, p0, Landroidx/test/core/view/PointerCoordsBuilder;->y:F

    .line 8
    .line 9
    const/high16 v0, 0x3f800000    # 1.0f

    .line 10
    .line 11
    iput v0, p0, Landroidx/test/core/view/PointerCoordsBuilder;->pressure:F

    .line 12
    .line 13
    iput v0, p0, Landroidx/test/core/view/PointerCoordsBuilder;->size:F

    .line 14
    .line 15
    return-void
.end method

.method public static newBuilder()Landroidx/test/core/view/PointerCoordsBuilder;
    .locals 1

    .line 1
    new-instance v0, Landroidx/test/core/view/PointerCoordsBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/test/core/view/PointerCoordsBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public build()Landroid/view/MotionEvent$PointerCoords;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Landroidx/test/core/view/PointerCoordsBuilder;->x:F

    .line 7
    .line 8
    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 9
    .line 10
    iget v1, p0, Landroidx/test/core/view/PointerCoordsBuilder;->y:F

    .line 11
    .line 12
    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 13
    .line 14
    iget v1, p0, Landroidx/test/core/view/PointerCoordsBuilder;->pressure:F

    .line 15
    .line 16
    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 17
    .line 18
    iget v1, p0, Landroidx/test/core/view/PointerCoordsBuilder;->size:F

    .line 19
    .line 20
    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 21
    .line 22
    iget v1, p0, Landroidx/test/core/view/PointerCoordsBuilder;->touchMajor:F

    .line 23
    .line 24
    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 25
    .line 26
    iget v1, p0, Landroidx/test/core/view/PointerCoordsBuilder;->touchMinor:F

    .line 27
    .line 28
    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 29
    .line 30
    iget v1, p0, Landroidx/test/core/view/PointerCoordsBuilder;->toolMajor:F

    .line 31
    .line 32
    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 33
    .line 34
    iget v1, p0, Landroidx/test/core/view/PointerCoordsBuilder;->toolMinor:F

    .line 35
    .line 36
    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 37
    .line 38
    iget v1, p0, Landroidx/test/core/view/PointerCoordsBuilder;->orientation:F

    .line 39
    .line 40
    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 41
    .line 42
    return-object v0
.end method

.method public setCoords(FF)Landroidx/test/core/view/PointerCoordsBuilder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/test/core/view/PointerCoordsBuilder;->x:F

    .line 2
    .line 3
    iput p2, p0, Landroidx/test/core/view/PointerCoordsBuilder;->y:F

    .line 4
    .line 5
    return-object p0
.end method

.method public setOrientation(F)Landroidx/test/core/view/PointerCoordsBuilder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/test/core/view/PointerCoordsBuilder;->orientation:F

    .line 2
    .line 3
    return-object p0
.end method

.method public setPressure(F)Landroidx/test/core/view/PointerCoordsBuilder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/test/core/view/PointerCoordsBuilder;->pressure:F

    .line 2
    .line 3
    return-object p0
.end method

.method public setSize(F)Landroidx/test/core/view/PointerCoordsBuilder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/test/core/view/PointerCoordsBuilder;->size:F

    .line 2
    .line 3
    return-object p0
.end method

.method public setTool(FF)Landroidx/test/core/view/PointerCoordsBuilder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/test/core/view/PointerCoordsBuilder;->toolMajor:F

    .line 2
    .line 3
    iput p2, p0, Landroidx/test/core/view/PointerCoordsBuilder;->toolMinor:F

    .line 4
    .line 5
    return-object p0
.end method

.method public setTouch(FF)Landroidx/test/core/view/PointerCoordsBuilder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/test/core/view/PointerCoordsBuilder;->touchMajor:F

    .line 2
    .line 3
    iput p2, p0, Landroidx/test/core/view/PointerCoordsBuilder;->touchMinor:F

    .line 4
    .line 5
    return-object p0
.end method
