.class public Lcom/github/mikephil/charting/formatter/DefaultAxisValueFormatter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;


# instance fields
.field protected digits:I

.field protected mFormat:Ljava/text/DecimalFormat;


# direct methods
.method public constructor <init>(I)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    iput p1, p0, Lcom/github/mikephil/charting/formatter/DefaultAxisValueFormatter;->digits:I

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuffer;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, p1, :cond_1

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    new-array v4, v0, [J

    .line 20
    .line 21
    fill-array-data v4, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    .line 33
    .line 34
    :cond_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    new-array v4, v0, [J

    .line 37
    .line 38
    fill-array-data v4, :array_1

    .line 39
    .line 40
    .line 41
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    .line 50
    .line 51
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    new-instance p1, Ljava/text/DecimalFormat;

    .line 55
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    const/4 v3, 0x3

    .line 64
    new-array v3, v3, [J

    .line 65
    .line 66
    fill-array-data v3, :array_2

    .line 67
    .line 68
    .line 69
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-direct {p1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iput-object p1, p0, Lcom/github/mikephil/charting/formatter/DefaultAxisValueFormatter;->mFormat:Ljava/text/DecimalFormat;

    .line 94
    .line 95
    return-void

    .line 96
    nop

    .line 97
    :array_0
    .array-data 8
        -0xa3389d5c7e3e653L
        0x3e961f629f1e9f2aL    # 3.296524076997686E-7
    .end array-data

    .line 98
    .line 99
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
    :array_1
    .array-data 8
        0x3e5d86df4ee9219eL    # 2.749901722502275E-8
        0x78ec921e6ba7b74cL    # 3.09120718245138E274
    .end array-data

    .line 110
    .line 111
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
    :array_2
    .array-data 8
        -0x7bd50866997e3430L
        -0x1b1710cb1aa5b44L
        -0x6b257e3af34a32a6L
    .end array-data
.end method


# virtual methods
.method public getDecimalDigits()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/mikephil/charting/formatter/DefaultAxisValueFormatter;->digits:I

    .line 2
    .line 3
    return v0
.end method

.method public getFormattedValue(FLcom/github/mikephil/charting/components/AxisBase;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/github/mikephil/charting/formatter/DefaultAxisValueFormatter;->mFormat:Ljava/text/DecimalFormat;

    .line 2
    .line 3
    float-to-double v0, p1

    .line 4
    invoke-virtual {p2, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method
