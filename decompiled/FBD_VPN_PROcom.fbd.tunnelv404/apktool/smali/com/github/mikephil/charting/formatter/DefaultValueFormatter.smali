.class public Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/mikephil/charting/formatter/IValueFormatter;


# instance fields
.field protected mDecimalDigits:I

.field protected mFormat:Ljava/text/DecimalFormat;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;->setup(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public getDecimalDigits()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;->mDecimalDigits:I

    .line 2
    .line 3
    return v0
.end method

.method public getFormattedValue(FLcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/utils/ViewPortHandler;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;->mFormat:Ljava/text/DecimalFormat;

    .line 2
    .line 3
    float-to-double p3, p1

    .line 4
    invoke-virtual {p2, p3, p4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public setup(I)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    iput p1, p0, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;->mDecimalDigits:I

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuffer;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, p1, :cond_1

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    new-array v4, v0, [J

    .line 17
    .line 18
    fill-array-data v4, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    .line 30
    .line 31
    :cond_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    new-array v4, v0, [J

    .line 34
    .line 35
    fill-array-data v4, :array_1

    .line 36
    .line 37
    .line 38
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    .line 47
    .line 48
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    new-instance p1, Ljava/text/DecimalFormat;

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    const/4 v3, 0x3

    .line 61
    new-array v3, v3, [J

    .line 62
    .line 63
    fill-array-data v3, :array_2

    .line 64
    .line 65
    .line 66
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-direct {p1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iput-object p1, p0, Lcom/github/mikephil/charting/formatter/DefaultValueFormatter;->mFormat:Ljava/text/DecimalFormat;

    .line 91
    .line 92
    return-void

    .line 93
    :array_0
    .array-data 8
        0x58f29005c7e10c3fL    # 2.9958275710142056E120
        0x242e4b0a6f7eece4L
    .end array-data

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    :array_1
    .array-data 8
        0x1562e716881eb551L
        -0x50e780bb3e85e49eL    # -8.070429040070997E-82
    .end array-data

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    :array_2
    .array-data 8
        -0x1fc0c142f706512eL    # -4.189279234105975E155
        0x2d5adb5de24de843L    # 3.2960759675068407E-90
        0x5801f4a1989df822L    # 8.843578730667725E115
    .end array-data
.end method
