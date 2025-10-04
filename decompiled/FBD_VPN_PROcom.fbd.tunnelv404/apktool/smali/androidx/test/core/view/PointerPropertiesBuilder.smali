.class public Landroidx/test/core/view/PointerPropertiesBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private id:I

.field private toolType:I


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

.method public static newBuilder()Landroidx/test/core/view/PointerPropertiesBuilder;
    .locals 1

    .line 1
    new-instance v0, Landroidx/test/core/view/PointerPropertiesBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/test/core/view/PointerPropertiesBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public build()Landroid/view/MotionEvent$PointerProperties;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/MotionEvent$PointerProperties;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Landroidx/test/core/view/PointerPropertiesBuilder;->id:I

    .line 7
    .line 8
    iput v1, v0, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 9
    .line 10
    iget v1, p0, Landroidx/test/core/view/PointerPropertiesBuilder;->toolType:I

    .line 11
    .line 12
    iput v1, v0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 13
    .line 14
    return-object v0
.end method

.method public setId(I)Landroidx/test/core/view/PointerPropertiesBuilder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/test/core/view/PointerPropertiesBuilder;->id:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setToolType(I)Landroidx/test/core/view/PointerPropertiesBuilder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/test/core/view/PointerPropertiesBuilder;->toolType:I

    .line 2
    .line 3
    return-object p0
.end method
