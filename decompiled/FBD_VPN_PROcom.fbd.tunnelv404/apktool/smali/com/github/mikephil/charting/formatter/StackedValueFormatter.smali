.class public Lcom/github/mikephil/charting/formatter/StackedValueFormatter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/mikephil/charting/formatter/IValueFormatter;


# instance fields
.field private mAppendix:Ljava/lang/String;

.field private mDrawWholeStack:Z

.field private mFormat:Ljava/text/DecimalFormat;


# direct methods
.method public constructor <init>(ZLjava/lang/String;I)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;->mDrawWholeStack:Z

    .line 6
    .line 7
    iput-object p2, p0, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;->mAppendix:Ljava/lang/String;

    .line 8
    .line 9
    new-instance p1, Ljava/lang/StringBuffer;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    :goto_0
    if-ge p2, p3, :cond_1

    .line 16
    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    new-array v2, v0, [J

    .line 22
    .line 23
    fill-array-data v2, :array_0

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    .line 35
    .line 36
    :cond_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    new-array v2, v0, [J

    .line 39
    .line 40
    fill-array-data v2, :array_1

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    .line 52
    .line 53
    add-int/lit8 p2, p2, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    new-instance p2, Ljava/text/DecimalFormat;

    .line 57
    .line 58
    new-instance p3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 64
    .line 65
    const/4 v1, 0x3

    .line 66
    new-array v1, v1, [J

    .line 67
    .line 68
    fill-array-data v1, :array_2

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-direct {p2, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iput-object p2, p0, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;->mFormat:Ljava/text/DecimalFormat;

    .line 96
    .line 97
    return-void

    .line 98
    nop

    .line 99
    :array_0
    .array-data 8
        -0x7120e755063fbd9dL
        -0x1888d5b238893ef5L    # -2.5803240819199004E190
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
    :array_1
    .array-data 8
        -0x7017e6c37560d07cL
        0x74ac2d801b9448deL
    .end array-data

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    :array_2
    .array-data 8
        -0x48209186fefd5c80L
        -0x7994bb1d42804460L    # -9.61445282856782E-278
        0x363beab3b883cd65L    # 1.9101452990615924E-47
    .end array-data
.end method


# virtual methods
.method public getFormattedValue(FLcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/utils/ViewPortHandler;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 p3, 0x1

    .line 2
    iget-boolean p4, p0, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;->mDrawWholeStack:Z

    .line 3
    .line 4
    if-nez p4, :cond_1

    .line 5
    .line 6
    instance-of p4, p2, Lcom/github/mikephil/charting/data/BarEntry;

    .line 7
    .line 8
    if-eqz p4, :cond_1

    .line 9
    .line 10
    check-cast p2, Lcom/github/mikephil/charting/data/BarEntry;

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/BarEntry;->getYVals()[F

    .line 13
    .line 14
    .line 15
    move-result-object p4

    .line 16
    if-eqz p4, :cond_1

    .line 17
    .line 18
    array-length v0, p4

    .line 19
    sub-int/2addr v0, p3

    .line 20
    aget p4, p4, v0

    .line 21
    .line 22
    cmpl-float p1, p4, p1

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object p3, p0, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;->mFormat:Ljava/text/DecimalFormat;

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    float-to-double v0, p2

    .line 38
    invoke-virtual {p3, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object p2, p0, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;->mAppendix:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1

    .line 55
    :cond_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    new-array p2, p3, [J

    .line 58
    .line 59
    const-wide p3, 0x6f06fc202d802984L    # 6.806263027897673E226

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    aput-wide p3, p2, v0

    .line 66
    .line 67
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    return-object p1

    .line 75
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    iget-object p3, p0, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;->mFormat:Ljava/text/DecimalFormat;

    .line 81
    .line 82
    float-to-double v0, p1

    .line 83
    invoke-virtual {p3, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/github/mikephil/charting/formatter/StackedValueFormatter;->mAppendix:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    return-object p1
.end method
