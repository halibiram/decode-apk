.class public final enum Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/utils/OffscreenLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RenderStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

.field public static final enum BITMAP:Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

.field public static final enum DIRECT:Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

.field public static final enum RENDER_NODE:Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

.field public static final enum SAVE_LAYER:Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;


# direct methods
.method private static synthetic $values()[Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    .line 3
    .line 4
    sget-object v1, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;->DIRECT:Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;->SAVE_LAYER:Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;->BITMAP:Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;->RENDER_NODE:Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

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
    invoke-direct {v0, v1, v3}, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;->DIRECT:Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    .line 23
    .line 24
    new-instance v0, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    .line 25
    .line 26
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v3, 0x3

    .line 29
    new-array v4, v3, [J

    .line 30
    .line 31
    fill-array-data v4, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v4, 0x1

    .line 42
    invoke-direct {v0, v1, v4}, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;->SAVE_LAYER:Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    .line 46
    .line 47
    new-instance v0, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    .line 48
    .line 49
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    new-array v4, v2, [J

    .line 52
    .line 53
    fill-array-data v4, :array_2

    .line 54
    .line 55
    .line 56
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;-><init>(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    sput-object v0, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;->BITMAP:Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    .line 67
    .line 68
    new-instance v0, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    .line 69
    .line 70
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    new-array v2, v3, [J

    .line 73
    .line 74
    fill-array-data v2, :array_3

    .line 75
    .line 76
    .line 77
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-direct {v0, v1, v3}, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;-><init>(Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    sput-object v0, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;->RENDER_NODE:Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    .line 88
    .line 89
    invoke-static {}, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;->$values()[Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    sput-object v0, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;->$VALUES:[Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    .line 94
    .line 95
    return-void

    .line 96
    nop

    .line 97
    :array_0
    .array-data 8
        0x45ca2a2f23a2eb1bL    # 1.619521549675806E28
        0xad0e359fc11c0bcL
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
        0x4899f0690c3581fL
        -0x46b52f26eb10ab60L    # -1.0329075218788583E-32
        -0x36fd3bad5129bb8fL    # -5.231444464605934E43
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
    .line 122
    .line 123
    .line 124
    .line 125
    :array_2
    .array-data 8
        0x7c444ea13a03c165L    # 3.957990605236458E290
        -0x2aa2edfade5fa277L    # -1.627756373585109E103
    .end array-data

    .line 126
    .line 127
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
    :array_3
    .array-data 8
        -0x314927e14fd39684L    # -1.5766499995181493E71
        -0x3bb8678b54739bb3L    # -8.705214154116994E20
        0x5a1633a5e71d85deL    # 9.39302368276292E125
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

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;
    .locals 1

    .line 1
    const-class v0, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;
    .locals 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;->$VALUES:[Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/airbnb/lottie/utils/OffscreenLayer$RenderStrategy;

    .line 8
    .line 9
    return-object v0
.end method
