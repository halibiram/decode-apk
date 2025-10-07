.class final enum Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/activities/ActivityUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProfileSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;

.field public static final enum LIST0:Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;

.field public static final enum PREFERENCES:Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;

.field public static final enum PRIORITY:Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;

.field public static final enum SERVICE:Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;

.field public static final enum UNDEF:Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;


# direct methods
.method private static synthetic $values()[Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;

    .line 3
    .line 4
    sget-object v1, Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;->UNDEF:Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;->SERVICE:Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;->PRIORITY:Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;->PREFERENCES:Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;->LIST0:Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;

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
    invoke-direct {v0, v1, v3}, Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;->UNDEF:Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;

    .line 23
    .line 24
    new-instance v0, Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;

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
    invoke-direct {v0, v1, v3}, Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;-><init>(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;->SERVICE:Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;

    .line 45
    .line 46
    new-instance v0, Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;

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
    invoke-direct {v0, v1, v2}, Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;-><init>(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    sput-object v0, Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;->PRIORITY:Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;

    .line 66
    .line 67
    new-instance v0, Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;

    .line 68
    .line 69
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    const/4 v3, 0x3

    .line 72
    new-array v4, v3, [J

    .line 73
    .line 74
    fill-array-data v4, :array_3

    .line 75
    .line 76
    .line 77
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-direct {v0, v1, v3}, Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;-><init>(Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    sput-object v0, Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;->PREFERENCES:Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;

    .line 88
    .line 89
    new-instance v0, Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;

    .line 90
    .line 91
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 92
    .line 93
    new-array v2, v2, [J

    .line 94
    .line 95
    fill-array-data v2, :array_4

    .line 96
    .line 97
    .line 98
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const/4 v2, 0x4

    .line 106
    invoke-direct {v0, v1, v2}, Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;-><init>(Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    sput-object v0, Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;->LIST0:Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;

    .line 110
    .line 111
    invoke-static {}, Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;->$values()[Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    sput-object v0, Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;->$VALUES:[Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;

    .line 116
    .line 117
    return-void

    .line 118
    nop

    .line 119
    :array_0
    .array-data 8
        0x2ebecfe15212112aL    # 1.5860670849588238E-83
        -0x3b245d94a760b4a1L    # -5.220000107397098E23
    .end array-data

    .line 120
    .line 121
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
    :array_1
    .array-data 8
        0x181b9a2f4bb16635L
        0x2fcf7874af893ad9L    # 2.1233187950261E-78
    .end array-data

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
    .line 142
    .line 143
    :array_2
    .array-data 8
        0x4aa4267a3b39c5a6L    # 3.7695616315017305E51
        -0x13dbd5a6299ef9b1L    # -8.485833578025566E212
    .end array-data

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    :array_3
    .array-data 8
        0x70eaa9d59f72fac2L    # 8.477785200639235E235
        -0x23179cd0422bd56aL    # -3.630231763323581E139
        -0x3399e71bfa217842L    # -1.1096524537888578E60
    .end array-data

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    :array_4
    .array-data 8
        -0x319f39e333f61f89L    # -3.617782614672357E69
        0x494fac64ee19156L
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

.method public static valueOf(Ljava/lang/String;)Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;
    .locals 1

    .line 1
    const-class v0, Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;
    .locals 1

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;->$VALUES:[Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/tknetwork/tunnel/activities/ActivityUi$ProfileSource;

    .line 8
    .line 9
    return-object v0
.end method
