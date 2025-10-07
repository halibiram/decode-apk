.class public final enum Lcom/v2ray/ang/dto/RoutingType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/v2ray/ang/dto/RoutingType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/v2ray/ang/dto/RoutingType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u0000 \u000c2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000cB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/v2ray/ang/dto/RoutingType;",
        "",
        "fileName",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getFileName",
        "()Ljava/lang/String;",
        "WHITE",
        "BLACK",
        "GLOBAL",
        "WHITE_IRAN",
        "Companion",
        "com.fbd.tunnel-404_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/v2ray/ang/dto/RoutingType;

.field public static final enum BLACK:Lcom/v2ray/ang/dto/RoutingType;

.field public static final Companion:Lcom/v2ray/ang/dto/RoutingType$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum GLOBAL:Lcom/v2ray/ang/dto/RoutingType;

.field public static final enum WHITE:Lcom/v2ray/ang/dto/RoutingType;

.field public static final enum WHITE_IRAN:Lcom/v2ray/ang/dto/RoutingType;


# instance fields
.field private final fileName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/v2ray/ang/dto/RoutingType;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/v2ray/ang/dto/RoutingType;

    sget-object v1, Lcom/v2ray/ang/dto/RoutingType;->WHITE:Lcom/v2ray/ang/dto/RoutingType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/v2ray/ang/dto/RoutingType;->BLACK:Lcom/v2ray/ang/dto/RoutingType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/v2ray/ang/dto/RoutingType;->GLOBAL:Lcom/v2ray/ang/dto/RoutingType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/v2ray/ang/dto/RoutingType;->WHITE_IRAN:Lcom/v2ray/ang/dto/RoutingType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/v2ray/ang/dto/RoutingType;

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
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v4, 0x4

    .line 21
    new-array v5, v4, [J

    .line 22
    .line 23
    fill-array-data v5, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const/4 v5, 0x0

    .line 34
    invoke-direct {v0, v1, v5, v3}, Lcom/v2ray/ang/dto/RoutingType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lcom/v2ray/ang/dto/RoutingType;->WHITE:Lcom/v2ray/ang/dto/RoutingType;

    .line 38
    .line 39
    new-instance v0, Lcom/v2ray/ang/dto/RoutingType;

    .line 40
    .line 41
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    new-array v3, v2, [J

    .line 44
    .line 45
    fill-array-data v3, :array_2

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    new-array v5, v4, [J

    .line 58
    .line 59
    fill-array-data v5, :array_3

    .line 60
    .line 61
    .line 62
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    const/4 v5, 0x1

    .line 70
    invoke-direct {v0, v1, v5, v3}, Lcom/v2ray/ang/dto/RoutingType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    sput-object v0, Lcom/v2ray/ang/dto/RoutingType;->BLACK:Lcom/v2ray/ang/dto/RoutingType;

    .line 74
    .line 75
    new-instance v0, Lcom/v2ray/ang/dto/RoutingType;

    .line 76
    .line 77
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 78
    .line 79
    new-array v3, v2, [J

    .line 80
    .line 81
    fill-array-data v3, :array_4

    .line 82
    .line 83
    .line 84
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 92
    .line 93
    new-array v4, v4, [J

    .line 94
    .line 95
    fill-array-data v4, :array_5

    .line 96
    .line 97
    .line 98
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-direct {v0, v1, v2, v3}, Lcom/v2ray/ang/dto/RoutingType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sput-object v0, Lcom/v2ray/ang/dto/RoutingType;->GLOBAL:Lcom/v2ray/ang/dto/RoutingType;

    .line 109
    .line 110
    new-instance v0, Lcom/v2ray/ang/dto/RoutingType;

    .line 111
    .line 112
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 113
    .line 114
    const/4 v2, 0x3

    .line 115
    new-array v3, v2, [J

    .line 116
    .line 117
    fill-array-data v3, :array_6

    .line 118
    .line 119
    .line 120
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 128
    .line 129
    const/4 v4, 0x5

    .line 130
    new-array v4, v4, [J

    .line 131
    .line 132
    fill-array-data v4, :array_7

    .line 133
    .line 134
    .line 135
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-direct {v0, v1, v2, v3}, Lcom/v2ray/ang/dto/RoutingType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 143
    .line 144
    .line 145
    sput-object v0, Lcom/v2ray/ang/dto/RoutingType;->WHITE_IRAN:Lcom/v2ray/ang/dto/RoutingType;

    .line 146
    .line 147
    invoke-static {}, Lcom/v2ray/ang/dto/RoutingType;->$values()[Lcom/v2ray/ang/dto/RoutingType;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    sput-object v0, Lcom/v2ray/ang/dto/RoutingType;->$VALUES:[Lcom/v2ray/ang/dto/RoutingType;

    .line 152
    .line 153
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    sput-object v0, Lcom/v2ray/ang/dto/RoutingType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 158
    .line 159
    new-instance v0, Lcom/v2ray/ang/dto/RoutingType$Companion;

    .line 160
    .line 161
    const/4 v1, 0x0

    .line 162
    invoke-direct {v0, v1}, Lcom/v2ray/ang/dto/RoutingType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 163
    .line 164
    .line 165
    sput-object v0, Lcom/v2ray/ang/dto/RoutingType;->Companion:Lcom/v2ray/ang/dto/RoutingType$Companion;

    .line 166
    .line 167
    return-void

    .line 168
    nop

    .line 169
    :array_0
    .array-data 8
        0x6d633500dec093d0L
        0x151074b45f2d25b4L
    .end array-data

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :array_1
    .array-data 8
        0x4f5ed962a34a3224L    # 2.1802300068721765E74
        0x411b09620afde426L    # 442968.5107341431
        -0x73e8d35dd9daabcL    # -4.71956102126066E273
        -0x6887065b28f4226fL    # -1.33644566423051E-195
    .end array-data

    :array_2
    .array-data 8
        0x4d590509885e0b8cL    # 4.116999204444992E64
        -0x738eae64b903a82L    # -6.243490860534537E273
    .end array-data

    :array_3
    .array-data 8
        0x1560bc2836702219L
        -0x1a0e04be321add3cL    # -1.1938304242542713E183
        -0x589fba8418dd4995L    # -5.04100613837253E-119
        0xc99d8323c788672L
    .end array-data

    :array_4
    .array-data 8
        -0x53a718ec9ed8285bL    # -4.6634439327826205E-95
        -0x2d9a3f2275f6cad0L    # -8.654769242649273E88
    .end array-data

    :array_5
    .array-data 8
        0x6549ab98747a5975L    # 8.321819443655507E179
        0x3d366929a0a8d1aL
        0x5aaed4efdb7cdbeL
        0x2294c62dba5535e4L
    .end array-data

    :array_6
    .array-data 8
        -0x3afe320d528adbf2L    # -2.6905375841798493E24
        -0x15cecada934f375fL    # -3.371921429672685E203
        -0x7194884a32c82fa0L
    .end array-data

    :array_7
    .array-data 8
        -0x31c74d9fb82802eeL    # -6.658239154863775E68
        0x38e2be9d2a3b2d7cL    # 1.1281487122749019E-34
        0x638da575fc2e27d6L    # 3.5802925228517484E171
        -0x408aba47001ebd9cL    # -0.005193445829789842
        0x42367f3e385595c6L    # 9.662406459758505E10
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/v2ray/ang/dto/RoutingType;->fileName:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/v2ray/ang/dto/RoutingType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/v2ray/ang/dto/RoutingType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/v2ray/ang/dto/RoutingType;
    .locals 1

    .line 1
    const-class v0, Lcom/v2ray/ang/dto/RoutingType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/v2ray/ang/dto/RoutingType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/v2ray/ang/dto/RoutingType;
    .locals 1

    .line 1
    sget-object v0, Lcom/v2ray/ang/dto/RoutingType;->$VALUES:[Lcom/v2ray/ang/dto/RoutingType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/v2ray/ang/dto/RoutingType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getFileName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/RoutingType;->fileName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
