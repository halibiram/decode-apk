.class public final enum Lcom/google/android/material/color/utilities/TonePolarity;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/material/color/utilities/TonePolarity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/material/color/utilities/TonePolarity;

.field public static final enum DARKER:Lcom/google/android/material/color/utilities/TonePolarity;

.field public static final enum FARTHER:Lcom/google/android/material/color/utilities/TonePolarity;

.field public static final enum LIGHTER:Lcom/google/android/material/color/utilities/TonePolarity;

.field public static final enum NEARER:Lcom/google/android/material/color/utilities/TonePolarity;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/android/material/color/utilities/TonePolarity;

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
    invoke-direct {v0, v1, v3}, Lcom/google/android/material/color/utilities/TonePolarity;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/google/android/material/color/utilities/TonePolarity;->DARKER:Lcom/google/android/material/color/utilities/TonePolarity;

    .line 23
    .line 24
    new-instance v1, Lcom/google/android/material/color/utilities/TonePolarity;

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
    invoke-direct {v1, v4, v5}, Lcom/google/android/material/color/utilities/TonePolarity;-><init>(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    sput-object v1, Lcom/google/android/material/color/utilities/TonePolarity;->LIGHTER:Lcom/google/android/material/color/utilities/TonePolarity;

    .line 45
    .line 46
    new-instance v4, Lcom/google/android/material/color/utilities/TonePolarity;

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
    invoke-direct {v4, v6, v2}, Lcom/google/android/material/color/utilities/TonePolarity;-><init>(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    sput-object v4, Lcom/google/android/material/color/utilities/TonePolarity;->NEARER:Lcom/google/android/material/color/utilities/TonePolarity;

    .line 66
    .line 67
    new-instance v6, Lcom/google/android/material/color/utilities/TonePolarity;

    .line 68
    .line 69
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    new-array v8, v2, [J

    .line 72
    .line 73
    fill-array-data v8, :array_3

    .line 74
    .line 75
    .line 76
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    const/4 v8, 0x3

    .line 84
    invoke-direct {v6, v7, v8}, Lcom/google/android/material/color/utilities/TonePolarity;-><init>(Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    sput-object v6, Lcom/google/android/material/color/utilities/TonePolarity;->FARTHER:Lcom/google/android/material/color/utilities/TonePolarity;

    .line 88
    .line 89
    const/4 v7, 0x4

    .line 90
    new-array v7, v7, [Lcom/google/android/material/color/utilities/TonePolarity;

    .line 91
    .line 92
    aput-object v0, v7, v3

    .line 93
    .line 94
    aput-object v1, v7, v5

    .line 95
    .line 96
    aput-object v4, v7, v2

    .line 97
    .line 98
    aput-object v6, v7, v8

    .line 99
    .line 100
    sput-object v7, Lcom/google/android/material/color/utilities/TonePolarity;->$VALUES:[Lcom/google/android/material/color/utilities/TonePolarity;

    .line 101
    .line 102
    return-void

    .line 103
    :array_0
    .array-data 8
        -0x69c16c2093da2138L    # -1.560438673827942E-201
        -0x23689b17e674b878L    # -1.0882423154942384E138
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
        0x742f57c1cf425cdL
        0x2380be98bfdb4ab6L
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
    :array_2
    .array-data 8
        -0x3433d45bec889f30L    # -1.381475944417594E57
        -0x178cf3b3eebddabL    # -3.106102843191533E301
    .end array-data

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
    :array_3
    .array-data 8
        0x555fd632b03d1595L    # 1.782652648631666E103
        0x2728c7c88c55994L
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/material/color/utilities/TonePolarity;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/material/color/utilities/TonePolarity;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/material/color/utilities/TonePolarity;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/android/material/color/utilities/TonePolarity;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/material/color/utilities/TonePolarity;->$VALUES:[Lcom/google/android/material/color/utilities/TonePolarity;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/android/material/color/utilities/TonePolarity;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/android/material/color/utilities/TonePolarity;

    .line 8
    .line 9
    return-object v0
.end method
