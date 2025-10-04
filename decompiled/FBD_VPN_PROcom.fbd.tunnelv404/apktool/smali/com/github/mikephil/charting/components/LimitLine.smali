.class public Lcom/github/mikephil/charting/components/LimitLine;
.super Lcom/github/mikephil/charting/components/ComponentBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;
    }
.end annotation


# instance fields
.field private mDashPathEffect:Landroid/graphics/DashPathEffect;

.field private mLabel:Ljava/lang/String;

.field private mLabelPosition:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

.field private mLimit:F

.field private mLineColor:I

.field private mLineWidth:F

.field private mTextStyle:Landroid/graphics/Paint$Style;


# direct methods
.method public constructor <init>(F)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/github/mikephil/charting/components/ComponentBase;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLimit:F

    const/high16 v0, 0x40000000    # 2.0f

    .line 3
    iput v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLineWidth:F

    const/16 v0, 0xed

    const/16 v1, 0x5b

    .line 4
    invoke-static {v0, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLineColor:I

    .line 5
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mTextStyle:Landroid/graphics/Paint$Style;

    .line 6
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const-wide v2, 0x26af04ac18de09eaL

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLabel:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 8
    sget-object v0, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->RIGHT_TOP:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLabelPosition:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    .line 9
    iput p1, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLimit:F

    return-void
.end method

.method public constructor <init>(FLjava/lang/String;)V
    .locals 5

    .line 10
    invoke-direct {p0}, Lcom/github/mikephil/charting/components/ComponentBase;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLimit:F

    const/high16 v0, 0x40000000    # 2.0f

    .line 12
    iput v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLineWidth:F

    const/16 v0, 0xed

    const/16 v1, 0x5b

    .line 13
    invoke-static {v0, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLineColor:I

    .line 14
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mTextStyle:Landroid/graphics/Paint$Style;

    .line 15
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const-wide v2, 0x76a086e76bf8b594L    # 2.6020727124358266E263

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLabel:Ljava/lang/String;

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 17
    sget-object v0, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->RIGHT_TOP:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLabelPosition:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    .line 18
    iput p1, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLimit:F

    .line 19
    iput-object p2, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public disableDashedLine()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 3
    .line 4
    return-void
.end method

.method public enableDashedLine(FFF)V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/DashPathEffect;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [F

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput p1, v1, v2

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    aput p2, v1, p1

    .line 11
    .line 12
    invoke-direct {v0, v1, p3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 16
    .line 17
    return-void
.end method

.method public getDashPathEffect()Landroid/graphics/DashPathEffect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLabel:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLabelPosition()Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLabelPosition:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLimit()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLimit:F

    .line 2
    .line 3
    return v0
.end method

.method public getLineColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLineColor:I

    .line 2
    .line 3
    return v0
.end method

.method public getLineWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLineWidth:F

    .line 2
    .line 3
    return v0
.end method

.method public getTextStyle()Landroid/graphics/Paint$Style;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mTextStyle:Landroid/graphics/Paint$Style;

    .line 2
    .line 3
    return-object v0
.end method

.method public isDashedLineEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    :goto_0
    return v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLabel:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setLabelPosition(Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLabelPosition:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    .line 2
    .line 3
    return-void
.end method

.method public setLineColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLineColor:I

    .line 2
    .line 3
    return-void
.end method

.method public setLineWidth(F)V
    .locals 2

    .line 1
    const v0, 0x3e4ccccd    # 0.2f

    .line 2
    .line 3
    .line 4
    cmpg-float v1, p1, v0

    .line 5
    .line 6
    if-gez v1, :cond_0

    .line 7
    .line 8
    const p1, 0x3e4ccccd    # 0.2f

    .line 9
    .line 10
    .line 11
    :cond_0
    const/high16 v0, 0x41400000    # 12.0f

    .line 12
    .line 13
    cmpl-float v1, p1, v0

    .line 14
    .line 15
    if-lez v1, :cond_1

    .line 16
    .line 17
    const/high16 p1, 0x41400000    # 12.0f

    .line 18
    .line 19
    :cond_1
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput p1, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLineWidth:F

    .line 24
    .line 25
    return-void
.end method

.method public setTextStyle(Landroid/graphics/Paint$Style;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/mikephil/charting/components/LimitLine;->mTextStyle:Landroid/graphics/Paint$Style;

    .line 2
    .line 3
    return-void
.end method
