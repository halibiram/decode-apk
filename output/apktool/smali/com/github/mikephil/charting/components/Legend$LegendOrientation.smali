.class public final enum Lcom/github/mikephil/charting/components/Legend$LegendOrientation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/components/Legend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LegendOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/mikephil/charting/components/Legend$LegendOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

.field public static final enum HORIZONTAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

.field public static final enum VERTICAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->HORIZONTAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .line 23
    .line 24
    new-instance v1, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .line 25
    .line 26
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v4, 0x2

    .line 29
    new-array v5, v4, [J

    .line 30
    .line 31
    fill-array-data v5, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const/4 v5, 0x1

    .line 42
    invoke-direct {v1, v3, v5}, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    sput-object v1, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->VERTICAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .line 46
    .line 47
    new-array v3, v4, [Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .line 48
    .line 49
    aput-object v0, v3, v2

    .line 50
    .line 51
    aput-object v1, v3, v5

    .line 52
    .line 53
    sput-object v3, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->$VALUES:[Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :array_0
    .array-data 8
        -0x7626805e2af2f62dL
        0x18259ce49f59893eL    # 2.368563814114416E-192
        -0x279fa5fa37c92fdcL    # -5.15430274633287E117
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
        -0x536a7810d7baa69aL    # -6.45127301282833E-94
        0x477344e5cf8435L
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

.method public static valueOf(Ljava/lang/String;)Lcom/github/mikephil/charting/components/Legend$LegendOrientation;
    .locals 1

    .line 1
    const-class v0, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/github/mikephil/charting/components/Legend$LegendOrientation;
    .locals 1

    .line 1
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->$VALUES:[Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .line 8
    .line 9
    return-object v0
.end method
