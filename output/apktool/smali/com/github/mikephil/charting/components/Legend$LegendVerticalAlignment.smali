.class public final enum Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/components/Legend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LegendVerticalAlignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

.field public static final enum BOTTOM:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

.field public static final enum CENTER:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

.field public static final enum TOP:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

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
    invoke-direct {v0, v1, v3}, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->TOP:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 23
    .line 24
    new-instance v1, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

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
    invoke-direct {v1, v4, v5}, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;-><init>(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    sput-object v1, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 45
    .line 46
    new-instance v4, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

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
    invoke-direct {v4, v6, v2}, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;-><init>(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    sput-object v4, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->BOTTOM:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 66
    .line 67
    const/4 v6, 0x3

    .line 68
    new-array v6, v6, [Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 69
    .line 70
    aput-object v0, v6, v3

    .line 71
    .line 72
    aput-object v1, v6, v5

    .line 73
    .line 74
    aput-object v4, v6, v2

    .line 75
    .line 76
    sput-object v6, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->$VALUES:[Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 77
    .line 78
    return-void

    .line 79
    :array_0
    .array-data 8
        0x7b3da80f8ee78142L    # 4.409969820925896E285
        -0x7dc8cb1d68e02829L
    .end array-data

    .line 80
    :array_1
    .array-data 8
        0x1547051b9cf6ba3fL    # 3.585068050940664E-206
        -0x8c3a678a0fb45e5L
    .end array-data

    :array_2
    .array-data 8
        0x6163f6fc782886a0L    # 1.4034354465946468E161
        0x611c3edfd72a5823L    # 6.204811187916827E159
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

.method public static valueOf(Ljava/lang/String;)Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;
    .locals 1

    .line 1
    const-class v0, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;
    .locals 1

    .line 1
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->$VALUES:[Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 8
    .line 9
    return-object v0
.end method
