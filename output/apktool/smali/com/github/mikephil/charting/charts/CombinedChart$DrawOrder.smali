.class public final enum Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/charts/CombinedChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DrawOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

.field public static final enum BAR:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

.field public static final enum BUBBLE:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

.field public static final enum CANDLE:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

.field public static final enum LINE:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

.field public static final enum SCATTER:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v3, v2, [J

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-direct {v0, v1, v3}, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->BAR:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    .line 23
    .line 24
    new-instance v1, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    .line 25
    .line 26
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v5, v2, [J

    .line 29
    .line 30
    fill-array-data v5, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const/4 v5, 0x1

    .line 41
    invoke-direct {v1, v4, v5}, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;-><init>(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    sput-object v1, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->BUBBLE:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    .line 45
    .line 46
    new-instance v4, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    .line 47
    .line 48
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    new-array v7, v2, [J

    .line 51
    .line 52
    fill-array-data v7, :array_2

    .line 53
    .line 54
    .line 55
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-direct {v4, v6, v2}, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;-><init>(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    sput-object v4, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->LINE:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    .line 66
    .line 67
    new-instance v6, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    .line 68
    .line 69
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    new-array v8, v2, [J

    .line 72
    .line 73
    fill-array-data v8, :array_3

    .line 74
    .line 75
    .line 76
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    const/4 v8, 0x3

    .line 84
    invoke-direct {v6, v7, v8}, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;-><init>(Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    sput-object v6, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->CANDLE:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    .line 88
    .line 89
    new-instance v7, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    .line 90
    .line 91
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 92
    .line 93
    new-array v10, v2, [J

    .line 94
    .line 95
    fill-array-data v10, :array_4

    .line 96
    .line 97
    .line 98
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    const/4 v10, 0x4

    .line 106
    invoke-direct {v7, v9, v10}, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;-><init>(Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    sput-object v7, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->SCATTER:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    .line 110
    .line 111
    const/4 v9, 0x5

    .line 112
    new-array v9, v9, [Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    .line 113
    .line 114
    aput-object v0, v9, v3

    .line 115
    .line 116
    aput-object v1, v9, v5

    .line 117
    .line 118
    aput-object v4, v9, v2

    .line 119
    .line 120
    aput-object v6, v9, v8

    .line 121
    .line 122
    aput-object v7, v9, v10

    .line 123
    .line 124
    sput-object v9, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->$VALUES:[Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    .line 125
    .line 126
    return-void

    .line 127
    :array_0
    .array-data 8
        -0x3079e41048dacf83L    # -1.2500302493180627E75
        0x39dd9801a3e92111L    # 5.836343039497176E-30
    .end array-data

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    :array_1
    .array-data 8
        0x315dbf6e32d3fed9L    # 6.734657648508911E-71
        0x744f61b3000491c4L    # 1.7974714065899111E252
    .end array-data

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    :array_2
    .array-data 8
        0x125d3b5a75a2e88cL
        0x22e5e7062b44e56aL
    .end array-data

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    :array_3
    .array-data 8
        -0x5e00d0b0d856327bL    # -6.243456402681713E-145
        0x223fb48a21c35d00L
    .end array-data

    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    :array_4
    .array-data 8
        0xa20b0d566e047c7L
        -0x69cf91fd5d0a0bc1L    # -8.384424923458552E-202
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;
    .locals 1

    .line 1
    const-class v0, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;
    .locals 1

    .line 1
    sget-object v0, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->$VALUES:[Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    .line 8
    .line 9
    return-object v0
.end method
