.class Lcom/github/mikephil/charting/data/filter/Approximator$Line;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/data/filter/Approximator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Line"
.end annotation


# instance fields
.field private dx:F

.field private dy:F

.field private exsy:F

.field private length:F

.field private points:[F

.field private sxey:F

.field final synthetic this$0:Lcom/github/mikephil/charting/data/filter/Approximator;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/data/filter/Approximator;FFFF)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/github/mikephil/charting/data/filter/Approximator$Line;->this$0:Lcom/github/mikephil/charting/data/filter/Approximator;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sub-float p1, p2, p4

    .line 7
    .line 8
    iput p1, p0, Lcom/github/mikephil/charting/data/filter/Approximator$Line;->dx:F

    .line 9
    .line 10
    sub-float v0, p3, p5

    .line 11
    .line 12
    iput v0, p0, Lcom/github/mikephil/charting/data/filter/Approximator$Line;->dy:F

    .line 13
    .line 14
    mul-float v1, p2, p5

    .line 15
    .line 16
    iput v1, p0, Lcom/github/mikephil/charting/data/filter/Approximator$Line;->sxey:F

    .line 17
    .line 18
    mul-float v1, p4, p3

    .line 19
    .line 20
    iput v1, p0, Lcom/github/mikephil/charting/data/filter/Approximator$Line;->exsy:F

    .line 21
    .line 22
    mul-float p1, p1, p1

    .line 23
    .line 24
    mul-float v0, v0, v0

    .line 25
    .line 26
    add-float/2addr v0, p1

    .line 27
    float-to-double v0, v0

    .line 28
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    double-to-float p1, v0

    .line 33
    iput p1, p0, Lcom/github/mikephil/charting/data/filter/Approximator$Line;->length:F

    .line 34
    .line 35
    const/4 p1, 0x4

    .line 36
    new-array p1, p1, [F

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    aput p2, p1, v0

    .line 40
    .line 41
    const/4 p2, 0x1

    .line 42
    aput p3, p1, p2

    .line 43
    .line 44
    const/4 p2, 0x2

    .line 45
    aput p4, p1, p2

    .line 46
    .line 47
    const/4 p2, 0x3

    .line 48
    aput p5, p1, p2

    .line 49
    .line 50
    iput-object p1, p0, Lcom/github/mikephil/charting/data/filter/Approximator$Line;->points:[F

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public distance(FF)F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/data/filter/Approximator$Line;->dy:F

    .line 2
    .line 3
    mul-float v0, v0, p1

    .line 4
    .line 5
    iget p1, p0, Lcom/github/mikephil/charting/data/filter/Approximator$Line;->dx:F

    .line 6
    .line 7
    mul-float p1, p1, p2

    .line 8
    .line 9
    sub-float/2addr v0, p1

    .line 10
    iget p1, p0, Lcom/github/mikephil/charting/data/filter/Approximator$Line;->sxey:F

    .line 11
    .line 12
    add-float/2addr v0, p1

    .line 13
    iget p1, p0, Lcom/github/mikephil/charting/data/filter/Approximator$Line;->exsy:F

    .line 14
    .line 15
    sub-float/2addr v0, p1

    .line 16
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget p2, p0, Lcom/github/mikephil/charting/data/filter/Approximator$Line;->length:F

    .line 21
    .line 22
    div-float/2addr p1, p2

    .line 23
    return p1
.end method

.method public getPoints()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/data/filter/Approximator$Line;->points:[F

    .line 2
    .line 3
    return-object v0
.end method
