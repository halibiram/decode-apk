.class public final enum Lcom/google/gson/ReflectionAccessFilter$FilterResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/ReflectionAccessFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FilterResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/gson/ReflectionAccessFilter$FilterResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gson/ReflectionAccessFilter$FilterResult;

.field public static final enum ALLOW:Lcom/google/gson/ReflectionAccessFilter$FilterResult;

.field public static final enum BLOCK_ALL:Lcom/google/gson/ReflectionAccessFilter$FilterResult;

.field public static final enum BLOCK_INACCESSIBLE:Lcom/google/gson/ReflectionAccessFilter$FilterResult;

.field public static final enum INDECISIVE:Lcom/google/gson/ReflectionAccessFilter$FilterResult;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/google/gson/ReflectionAccessFilter$FilterResult;

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
    invoke-direct {v0, v1, v3}, Lcom/google/gson/ReflectionAccessFilter$FilterResult;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/google/gson/ReflectionAccessFilter$FilterResult;->ALLOW:Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    .line 23
    .line 24
    new-instance v1, Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    .line 25
    .line 26
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v5, 0x3

    .line 29
    new-array v6, v5, [J

    .line 30
    .line 31
    fill-array-data v6, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const/4 v6, 0x1

    .line 42
    invoke-direct {v1, v4, v6}, Lcom/google/gson/ReflectionAccessFilter$FilterResult;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    sput-object v1, Lcom/google/gson/ReflectionAccessFilter$FilterResult;->INDECISIVE:Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    .line 46
    .line 47
    new-instance v4, Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    .line 48
    .line 49
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    const/4 v8, 0x4

    .line 52
    new-array v9, v8, [J

    .line 53
    .line 54
    fill-array-data v9, :array_2

    .line 55
    .line 56
    .line 57
    invoke-direct {v7, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-direct {v4, v7, v2}, Lcom/google/gson/ReflectionAccessFilter$FilterResult;-><init>(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    sput-object v4, Lcom/google/gson/ReflectionAccessFilter$FilterResult;->BLOCK_INACCESSIBLE:Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    .line 68
    .line 69
    new-instance v7, Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    .line 70
    .line 71
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 72
    .line 73
    new-array v10, v5, [J

    .line 74
    .line 75
    fill-array-data v10, :array_3

    .line 76
    .line 77
    .line 78
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    invoke-direct {v7, v9, v5}, Lcom/google/gson/ReflectionAccessFilter$FilterResult;-><init>(Ljava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    sput-object v7, Lcom/google/gson/ReflectionAccessFilter$FilterResult;->BLOCK_ALL:Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    .line 89
    .line 90
    new-array v8, v8, [Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    .line 91
    .line 92
    aput-object v0, v8, v3

    .line 93
    .line 94
    aput-object v1, v8, v6

    .line 95
    .line 96
    aput-object v4, v8, v2

    .line 97
    .line 98
    aput-object v7, v8, v5

    .line 99
    .line 100
    sput-object v8, Lcom/google/gson/ReflectionAccessFilter$FilterResult;->$VALUES:[Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    .line 101
    .line 102
    return-void

    .line 103
    :array_0
    .array-data 8
        0x240a6b13f14f191aL    # 4.543351944361948E-135
        -0x58b4aba363864cb3L
    .end array-data

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    :array_1
    .array-data 8
        -0x614fa3557b715772L    # -7.27374546052191E-161
        0x560528bdca2de0fcL    # 2.4264235989635625E106
        -0x3d4cd3ec9ca5b940L    # -2.108002476704675E13
    .end array-data

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
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    :array_2
    .array-data 8
        0x29b0e82cb7056d18L    # 7.198903873253837E-108
        -0x43f85122161207f8L
        0x67da8b97dde7c162L    # 1.8923639265306118E192
        -0x11ec37490b6d0c55L    # -1.787853115408735E222
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
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    :array_3
    .array-data 8
        0x1e07a39a7342d10L
        -0x1d4505e8e2618b52L    # -3.976947826903521E167
        -0x14604dbd55f2ec9bL    # -2.605109404468503E210
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/gson/ReflectionAccessFilter$FilterResult;
    .locals 1

    .line 1
    const-class v0, Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/gson/ReflectionAccessFilter$FilterResult;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/gson/ReflectionAccessFilter$FilterResult;->$VALUES:[Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/gson/ReflectionAccessFilter$FilterResult;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    .line 8
    .line 9
    return-object v0
.end method
