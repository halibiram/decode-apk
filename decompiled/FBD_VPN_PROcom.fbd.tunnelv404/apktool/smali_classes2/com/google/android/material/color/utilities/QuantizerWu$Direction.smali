.class final enum Lcom/google/android/material/color/utilities/QuantizerWu$Direction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/utilities/QuantizerWu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/material/color/utilities/QuantizerWu$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

.field public static final enum BLUE:Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

.field public static final enum GREEN:Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

.field public static final enum RED:Lcom/google/android/material/color/utilities/QuantizerWu$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

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
    invoke-direct {v0, v1, v3}, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;->RED:Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    .line 23
    .line 24
    new-instance v1, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

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
    invoke-direct {v1, v4, v5}, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;-><init>(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    sput-object v1, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;->GREEN:Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    .line 45
    .line 46
    new-instance v4, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

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
    invoke-direct {v4, v6, v2}, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;-><init>(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    sput-object v4, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;->BLUE:Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    .line 66
    .line 67
    const/4 v6, 0x3

    .line 68
    new-array v6, v6, [Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

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
    sput-object v6, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;->$VALUES:[Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    .line 77
    .line 78
    return-void

    .line 79
    :array_0
    .array-data 8
        -0x57a1cd884aa146cfL    # -3.065543308214278E-114
        0x1b67cd6f16906fc2L    # 1.1747749995203755E-176
    .end array-data

    .line 80
    :array_1
    .array-data 8
        -0x79d59fc1da9eb96eL    # -5.81222088384002E-279
        -0x454c18b7a5675897L    # -6.431150831590394E-26
    .end array-data

    :array_2
    .array-data 8
        -0x1c1e9b855221c655L    # -1.3442791405325523E173
        -0x46a3fc37c9b40b5L
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/material/color/utilities/QuantizerWu$Direction;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/android/material/color/utilities/QuantizerWu$Direction;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;->$VALUES:[Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/android/material/color/utilities/QuantizerWu$Direction;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    .line 8
    .line 9
    return-object v0
.end method
