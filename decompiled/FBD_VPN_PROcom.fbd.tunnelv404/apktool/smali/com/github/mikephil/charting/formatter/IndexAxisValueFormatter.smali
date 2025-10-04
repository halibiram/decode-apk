.class public Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;


# instance fields
.field private mValueCount:I

.field private mValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;->mValues:[Ljava/lang/String;

    .line 3
    iput v0, p0, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;->mValueCount:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;->mValues:[Ljava/lang/String;

    .line 10
    iput v0, p0, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;->mValueCount:I

    if-eqz p1, :cond_0

    .line 11
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;->setValues([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;->mValues:[Ljava/lang/String;

    .line 6
    iput v0, p0, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;->mValueCount:I

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;->setValues([Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getFormattedValue(FLcom/github/mikephil/charting/components/AxisBase;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-ltz p2, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;->mValueCount:I

    .line 8
    .line 9
    if-ge p2, v0, :cond_1

    .line 10
    .line 11
    float-to-int p1, p1

    .line 12
    if-eq p2, p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;->mValues:[Ljava/lang/String;

    .line 16
    .line 17
    aget-object p1, p1, p2

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_1
    :goto_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 p2, 0x1

    .line 23
    new-array p2, p2, [J

    .line 24
    .line 25
    const-wide v0, 0x719e737d98e7b7dL

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    aput-wide v0, p2, v2

    .line 32
    .line 33
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1
.end method

.method public getValues()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;->mValues:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setValues([Ljava/lang/String;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    new-array p1, p1, [Ljava/lang/String;

    .line 5
    .line 6
    :cond_0
    iput-object p1, p0, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;->mValues:[Ljava/lang/String;

    .line 7
    .line 8
    array-length p1, p1

    .line 9
    iput p1, p0, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;->mValueCount:I

    .line 10
    .line 11
    return-void
.end method
