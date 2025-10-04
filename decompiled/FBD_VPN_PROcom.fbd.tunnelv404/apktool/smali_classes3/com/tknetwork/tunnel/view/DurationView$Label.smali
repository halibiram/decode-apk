.class public final enum Lcom/tknetwork/tunnel/view/DurationView$Label;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/view/DurationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Label"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tknetwork/tunnel/view/DurationView$Label;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tknetwork/tunnel/view/DurationView$Label;

.field public static final enum DAYS:Lcom/tknetwork/tunnel/view/DurationView$Label;

.field public static final enum HOURS:Lcom/tknetwork/tunnel/view/DurationView$Label;

.field public static final enum MINS:Lcom/tknetwork/tunnel/view/DurationView$Label;

.field public static final enum SECS:Lcom/tknetwork/tunnel/view/DurationView$Label;


# direct methods
.method private static synthetic $values()[Lcom/tknetwork/tunnel/view/DurationView$Label;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Lcom/tknetwork/tunnel/view/DurationView$Label;

    .line 3
    .line 4
    sget-object v1, Lcom/tknetwork/tunnel/view/DurationView$Label;->DAYS:Lcom/tknetwork/tunnel/view/DurationView$Label;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/tknetwork/tunnel/view/DurationView$Label;->HOURS:Lcom/tknetwork/tunnel/view/DurationView$Label;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/tknetwork/tunnel/view/DurationView$Label;->MINS:Lcom/tknetwork/tunnel/view/DurationView$Label;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/tknetwork/tunnel/view/DurationView$Label;->SECS:Lcom/tknetwork/tunnel/view/DurationView$Label;

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
    .locals 4

    .line 1
    new-instance v0, Lcom/tknetwork/tunnel/view/DurationView$Label;

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
    invoke-direct {v0, v1, v3}, Lcom/tknetwork/tunnel/view/DurationView$Label;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/tknetwork/tunnel/view/DurationView$Label;->DAYS:Lcom/tknetwork/tunnel/view/DurationView$Label;

    .line 23
    .line 24
    new-instance v0, Lcom/tknetwork/tunnel/view/DurationView$Label;

    .line 25
    .line 26
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v3, v2, [J

    .line 29
    .line 30
    fill-array-data v3, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/4 v3, 0x1

    .line 41
    invoke-direct {v0, v1, v3}, Lcom/tknetwork/tunnel/view/DurationView$Label;-><init>(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lcom/tknetwork/tunnel/view/DurationView$Label;->HOURS:Lcom/tknetwork/tunnel/view/DurationView$Label;

    .line 45
    .line 46
    new-instance v0, Lcom/tknetwork/tunnel/view/DurationView$Label;

    .line 47
    .line 48
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    new-array v3, v2, [J

    .line 51
    .line 52
    fill-array-data v3, :array_2

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-direct {v0, v1, v2}, Lcom/tknetwork/tunnel/view/DurationView$Label;-><init>(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    sput-object v0, Lcom/tknetwork/tunnel/view/DurationView$Label;->MINS:Lcom/tknetwork/tunnel/view/DurationView$Label;

    .line 66
    .line 67
    new-instance v0, Lcom/tknetwork/tunnel/view/DurationView$Label;

    .line 68
    .line 69
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    new-array v2, v2, [J

    .line 72
    .line 73
    fill-array-data v2, :array_3

    .line 74
    .line 75
    .line 76
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const/4 v2, 0x3

    .line 84
    invoke-direct {v0, v1, v2}, Lcom/tknetwork/tunnel/view/DurationView$Label;-><init>(Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    sput-object v0, Lcom/tknetwork/tunnel/view/DurationView$Label;->SECS:Lcom/tknetwork/tunnel/view/DurationView$Label;

    .line 88
    .line 89
    invoke-static {}, Lcom/tknetwork/tunnel/view/DurationView$Label;->$values()[Lcom/tknetwork/tunnel/view/DurationView$Label;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    sput-object v0, Lcom/tknetwork/tunnel/view/DurationView$Label;->$VALUES:[Lcom/tknetwork/tunnel/view/DurationView$Label;

    .line 94
    .line 95
    return-void

    .line 96
    nop

    .line 97
    :array_0
    .array-data 8
        -0x9739f0940254151L
        0x6bd346b9edb002ebL    # 2.5348955943273887E211
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
        0x717d40958d57e5eaL    # 4.7620761344219005E238
        -0x68390193bc9ec813L
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
        -0x49571ce8b007fa3L
        0x78a9ac50f0d1636dL    # 1.7360593459651588E273
    .end array-data

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    :array_3
    .array-data 8
        0x4708eb94dd8f647cL    # 1.6174160649910525E34
        -0x755a821a9e7d2fdfL    # -2.236485717298847E-257
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

.method public static valueOf(Ljava/lang/String;)Lcom/tknetwork/tunnel/view/DurationView$Label;
    .locals 1

    .line 1
    const-class v0, Lcom/tknetwork/tunnel/view/DurationView$Label;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/tknetwork/tunnel/view/DurationView$Label;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/tknetwork/tunnel/view/DurationView$Label;
    .locals 1

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/view/DurationView$Label;->$VALUES:[Lcom/tknetwork/tunnel/view/DurationView$Label;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/tknetwork/tunnel/view/DurationView$Label;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/tknetwork/tunnel/view/DurationView$Label;

    .line 8
    .line 9
    return-object v0
.end method
