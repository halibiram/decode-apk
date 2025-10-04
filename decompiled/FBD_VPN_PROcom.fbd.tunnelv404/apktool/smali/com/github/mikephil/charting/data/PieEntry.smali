.class public Lcom/github/mikephil/charting/data/PieEntry;
.super Lcom/github/mikephil/charting/data/Entry;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# instance fields
.field private label:Ljava/lang/String;


# direct methods
.method public constructor <init>(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FLandroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, p1, p2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FFLandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(FLandroid/graphics/drawable/Drawable;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FFLandroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(FLjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FFLjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(FLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 6
    iput-object p2, p0, Lcom/github/mikephil/charting/data/PieEntry;->label:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(FLjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0, p1, p3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FFLandroid/graphics/drawable/Drawable;)V

    .line 10
    iput-object p2, p0, Lcom/github/mikephil/charting/data/PieEntry;->label:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(FLjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0, p1, p3, p4}, Lcom/github/mikephil/charting/data/Entry;-><init>(FFLandroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 12
    iput-object p2, p0, Lcom/github/mikephil/charting/data/PieEntry;->label:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(FLjava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0, p1, p3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FFLjava/lang/Object;)V

    .line 8
    iput-object p2, p0, Lcom/github/mikephil/charting/data/PieEntry;->label:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lcom/github/mikephil/charting/data/Entry;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/PieEntry;->copy()Lcom/github/mikephil/charting/data/PieEntry;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/github/mikephil/charting/data/PieEntry;
    .locals 4

    .line 2
    new-instance v0, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/data/PieEntry;->label:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BaseEntry;->getData()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(FLjava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/data/PieEntry;->label:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getValue()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getX()F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/4 v1, 0x5

    .line 18
    new-array v1, v1, [J

    .line 19
    .line 20
    fill-array-data v1, :array_1

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-super {p0}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    return v0

    .line 34
    nop

    .line 35
    :array_0
    .array-data 8
        0x6e2df999f4c5b617L    # 5.417589360563103E222
        -0x721fb2e129e8c8c0L    # -7.639667296464055E-242
        0xcd0fbe4dbbd641dL
    .end array-data

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    :array_1
    .array-data 8
        -0x1d953f0e60db2c54L    # -1.2325123158199931E166
        -0x66865fef0c9bab6bL    # -5.889398561859763E-186
        -0x80e2615d4e788b9L    # -5.89419178314922E269
        -0x581c25f59c4658afL    # -1.574453542180364E-116
        -0x1466dfa3a1256337L    # -2.065130132653234E210
    .end array-data
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/mikephil/charting/data/PieEntry;->label:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setX(F)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/data/Entry;->setX(F)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    new-array v0, v0, [J

    .line 8
    .line 9
    fill-array-data v0, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v0, 0x5

    .line 21
    new-array v0, v0, [J

    .line 22
    .line 23
    fill-array-data v0, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :array_0
    .array-data 8
        0xdf2e81ca4c526c1L
        0x19c80e34444ac410L
        0x15342e0ee8e064dfL    # 1.571383960446591E-206
    .end array-data

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    :array_1
    .array-data 8
        -0x2d1105419d29cf67L    # -3.155314497476998E91
        0x5e01ad791c2a2965L    # 6.898139182491714E144
        -0x18bf9098f302bdf8L    # -2.2883444132904153E189
        -0x1d8b58a39c782be1L    # -1.90299046891742E166
        -0x6a77f0f9bff16f72L    # -5.99494111837726E-205
    .end array-data
.end method
