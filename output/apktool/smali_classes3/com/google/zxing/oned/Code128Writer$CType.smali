.class final enum Lcom/google/zxing/oned/Code128Writer$CType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/oned/Code128Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/oned/Code128Writer$CType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/oned/Code128Writer$CType;

.field public static final enum FNC_1:Lcom/google/zxing/oned/Code128Writer$CType;

.field public static final enum ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

.field public static final enum TWO_DIGITS:Lcom/google/zxing/oned/Code128Writer$CType;

.field public static final enum UNCODABLE:Lcom/google/zxing/oned/Code128Writer$CType;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/google/zxing/oned/Code128Writer$CType;

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
    invoke-direct {v0, v1, v3}, Lcom/google/zxing/oned/Code128Writer$CType;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/google/zxing/oned/Code128Writer$CType;->UNCODABLE:Lcom/google/zxing/oned/Code128Writer$CType;

    .line 23
    .line 24
    new-instance v1, Lcom/google/zxing/oned/Code128Writer$CType;

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
    invoke-direct {v1, v4, v5}, Lcom/google/zxing/oned/Code128Writer$CType;-><init>(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    sput-object v1, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    .line 45
    .line 46
    new-instance v4, Lcom/google/zxing/oned/Code128Writer$CType;

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
    const/4 v7, 0x2

    .line 63
    invoke-direct {v4, v6, v7}, Lcom/google/zxing/oned/Code128Writer$CType;-><init>(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    sput-object v4, Lcom/google/zxing/oned/Code128Writer$CType;->TWO_DIGITS:Lcom/google/zxing/oned/Code128Writer$CType;

    .line 67
    .line 68
    new-instance v6, Lcom/google/zxing/oned/Code128Writer$CType;

    .line 69
    .line 70
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    new-array v9, v7, [J

    .line 73
    .line 74
    fill-array-data v9, :array_3

    .line 75
    .line 76
    .line 77
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    invoke-direct {v6, v8, v2}, Lcom/google/zxing/oned/Code128Writer$CType;-><init>(Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    sput-object v6, Lcom/google/zxing/oned/Code128Writer$CType;->FNC_1:Lcom/google/zxing/oned/Code128Writer$CType;

    .line 88
    .line 89
    const/4 v8, 0x4

    .line 90
    new-array v8, v8, [Lcom/google/zxing/oned/Code128Writer$CType;

    .line 91
    .line 92
    aput-object v0, v8, v3

    .line 93
    .line 94
    aput-object v1, v8, v5

    .line 95
    .line 96
    aput-object v4, v8, v7

    .line 97
    .line 98
    aput-object v6, v8, v2

    .line 99
    .line 100
    sput-object v8, Lcom/google/zxing/oned/Code128Writer$CType;->$VALUES:[Lcom/google/zxing/oned/Code128Writer$CType;

    .line 101
    .line 102
    return-void

    .line 103
    :array_0
    .array-data 8
        0x7cb0d6a4bab12288L    # 4.200857424232868E292
        0x5ecf52a984da0c61L    # 5.006449409304801E148
        0xd9ad74aa10a342eL
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
    .line 116
    .line 117
    .line 118
    .line 119
    :array_1
    .array-data 8
        0x48fff9848e618a2fL    # 4.456619793004513E43
        0x24be2d1599926b66L
        -0xd9a7c3e6a156e07L
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
    .line 132
    .line 133
    .line 134
    .line 135
    :array_2
    .array-data 8
        0x528dfb021a03f9e0L    # 4.771199902753835E89
        0x2d8b45616fd3fd09L    # 2.6775195268847885E-89
        0x3547fa093c0468c3L    # 5.006569275702466E-52
    .end array-data

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
        -0x40eeda8ddac99c22L    # -6.540784061427561E-5
        0xa400b1dc2e22761L
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/oned/Code128Writer$CType;
    .locals 1

    .line 1
    const-class v0, Lcom/google/zxing/oned/Code128Writer$CType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/zxing/oned/Code128Writer$CType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/zxing/oned/Code128Writer$CType;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/oned/Code128Writer$CType;->$VALUES:[Lcom/google/zxing/oned/Code128Writer$CType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/zxing/oned/Code128Writer$CType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/zxing/oned/Code128Writer$CType;

    .line 8
    .line 9
    return-object v0
.end method
