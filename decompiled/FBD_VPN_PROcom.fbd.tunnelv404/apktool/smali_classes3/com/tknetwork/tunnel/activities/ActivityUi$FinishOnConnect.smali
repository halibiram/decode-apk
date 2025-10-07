.class final enum Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/activities/ActivityUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FinishOnConnect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;

.field public static final enum DISABLED:Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;

.field public static final enum ENABLED:Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;

.field public static final enum ENABLED_ACROSS_ONSTART:Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;

.field public static final enum PENDING:Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;


# direct methods
.method private static synthetic $values()[Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;

    .line 3
    .line 4
    sget-object v1, Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;->DISABLED:Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;->ENABLED:Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;->ENABLED_ACROSS_ONSTART:Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;->PENDING:Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;

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
    new-instance v0, Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;

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
    invoke-direct {v0, v1, v3}, Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;->DISABLED:Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;

    .line 23
    .line 24
    new-instance v0, Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;

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
    invoke-direct {v0, v1, v3}, Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;-><init>(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;->ENABLED:Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;

    .line 45
    .line 46
    new-instance v0, Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;

    .line 47
    .line 48
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    const/4 v3, 0x4

    .line 51
    new-array v3, v3, [J

    .line 52
    .line 53
    fill-array-data v3, :array_2

    .line 54
    .line 55
    .line 56
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-direct {v0, v1, v2}, Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;-><init>(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    sput-object v0, Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;->ENABLED_ACROSS_ONSTART:Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;

    .line 67
    .line 68
    new-instance v0, Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;

    .line 69
    .line 70
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    new-array v2, v2, [J

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
    const/4 v2, 0x3

    .line 85
    invoke-direct {v0, v1, v2}, Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;-><init>(Ljava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    sput-object v0, Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;->PENDING:Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;

    .line 89
    .line 90
    invoke-static {}, Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;->$values()[Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    sput-object v0, Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;->$VALUES:[Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;

    .line 95
    .line 96
    return-void

    .line 97
    :array_0
    .array-data 8
        -0x73f8a425cddf0201L
        0x6746760197d6e2fcL    # 3.127343886377013E189
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
        0x398be8ebb26799cdL    # 1.7200770886310872E-31
        -0x15d4493cc5ea59dcL    # -2.715344853043435E203
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
        -0x18c22b5dcf44e240L    # -2.0767263840515978E189
        0x424d442994584bdL
        -0x5e756e59fc102604L
        -0x3e91da07e60c35d0L    # -1.5806400811009496E7
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
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    :array_3
    .array-data 8
        0x6690ae59b2b9cd3bL    # 1.1340726656287982E186
        -0x26cd9dcf643cb5a2L    # -4.747093060741427E121
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

.method public static valueOf(Ljava/lang/String;)Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;
    .locals 1

    .line 1
    const-class v0, Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;
    .locals 1

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;->$VALUES:[Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/tknetwork/tunnel/activities/ActivityUi$FinishOnConnect;

    .line 8
    .line 9
    return-object v0
.end method
