.class public Lcom/github/mikephil/charting/components/Description;
.super Lcom/github/mikephil/charting/components/ComponentBase;
.source "SourceFile"


# instance fields
.field private mPosition:Lcom/github/mikephil/charting/utils/MPPointF;

.field private mTextAlign:Landroid/graphics/Paint$Align;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/github/mikephil/charting/components/ComponentBase;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    new-array v1, v1, [J

    .line 8
    .line 9
    fill-array-data v1, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/github/mikephil/charting/components/Description;->text:Ljava/lang/String;

    .line 20
    .line 21
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/github/mikephil/charting/components/Description;->mTextAlign:Landroid/graphics/Paint$Align;

    .line 24
    .line 25
    const/high16 v0, 0x41000000    # 8.0f

    .line 26
    .line 27
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTextSize:F

    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :array_0
    .array-data 8
        0x14b14c29f0dabf23L    # 5.261465571277132E-209
        -0x11e9efca3b95678fL    # -1.9938279952136304E222
        0x20c6d16b2cac2485L    # 8.713458129650026E-151
        -0x62b402881e4eee58L
    .end array-data
.end method


# virtual methods
.method public getPosition()Lcom/github/mikephil/charting/utils/MPPointF;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Description;->mPosition:Lcom/github/mikephil/charting/utils/MPPointF;

    .line 2
    .line 3
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Description;->text:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTextAlign()Landroid/graphics/Paint$Align;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Description;->mTextAlign:Landroid/graphics/Paint$Align;

    .line 2
    .line 3
    return-object v0
.end method

.method public setPosition(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Description;->mPosition:Lcom/github/mikephil/charting/utils/MPPointF;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Description;->mPosition:Lcom/github/mikephil/charting/utils/MPPointF;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput p1, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 13
    .line 14
    iput p2, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Description;->text:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTextAlign(Landroid/graphics/Paint$Align;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Description;->mTextAlign:Landroid/graphics/Paint$Align;

    .line 2
    .line 3
    return-void
.end method
