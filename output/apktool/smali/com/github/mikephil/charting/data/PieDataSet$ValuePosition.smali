.class public final enum Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/data/PieDataSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValuePosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

.field public static final enum INSIDE_SLICE:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

.field public static final enum OUTSIDE_SLICE:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x3

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
    invoke-direct {v0, v1, v3}, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->INSIDE_SLICE:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    .line 23
    .line 24
    new-instance v1, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    .line 25
    .line 26
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v2, v2, [J

    .line 29
    .line 30
    fill-array-data v2, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {v4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const/4 v4, 0x1

    .line 41
    invoke-direct {v1, v2, v4}, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;-><init>(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    sput-object v1, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->OUTSIDE_SLICE:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    .line 45
    .line 46
    const/4 v2, 0x2

    .line 47
    new-array v2, v2, [Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    .line 48
    .line 49
    aput-object v0, v2, v3

    .line 50
    .line 51
    aput-object v1, v2, v4

    .line 52
    .line 53
    sput-object v2, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->$VALUES:[Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :array_0
    .array-data 8
        -0x137692c7440080afL    # -6.847878065450082E214
        -0x7bb24ae86855c203L    # -6.096754031185838E-288
        0x5ef914d35138e373L    # 3.207072410506275E149
    .end array-data

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    :array_1
    .array-data 8
        0x33167106b2cea121L    # 1.36380712898203E-62
        -0x5f3fc3033df6db37L    # -6.200845593061657E-151
        0x5df7ec528016a3c3L    # 4.6676255270008254E144
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

.method public static valueOf(Ljava/lang/String;)Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    .locals 1

    .line 1
    const-class v0, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    .locals 1

    .line 1
    sget-object v0, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->$VALUES:[Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    .line 8
    .line 9
    return-object v0
.end method
