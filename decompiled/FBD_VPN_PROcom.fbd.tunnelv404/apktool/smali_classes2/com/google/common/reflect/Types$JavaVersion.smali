.class abstract enum Lcom/google/common/reflect/Types$JavaVersion;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "JavaVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/reflect/Types$JavaVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/reflect/Types$JavaVersion;

.field static final CURRENT:Lcom/google/common/reflect/Types$JavaVersion;

.field public static final enum JAVA6:Lcom/google/common/reflect/Types$JavaVersion;

.field public static final enum JAVA7:Lcom/google/common/reflect/Types$JavaVersion;

.field public static final enum JAVA8:Lcom/google/common/reflect/Types$JavaVersion;

.field public static final enum JAVA9:Lcom/google/common/reflect/Types$JavaVersion;


# direct methods
.method private static synthetic $values()[Lcom/google/common/reflect/Types$JavaVersion;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Lcom/google/common/reflect/Types$JavaVersion;

    .line 3
    .line 4
    sget-object v1, Lcom/google/common/reflect/Types$JavaVersion;->JAVA6:Lcom/google/common/reflect/Types$JavaVersion;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/google/common/reflect/Types$JavaVersion;->JAVA7:Lcom/google/common/reflect/Types$JavaVersion;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/google/common/reflect/Types$JavaVersion;->JAVA8:Lcom/google/common/reflect/Types$JavaVersion;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/google/common/reflect/Types$JavaVersion;->JAVA9:Lcom/google/common/reflect/Types$JavaVersion;

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
    .locals 6

    .line 1
    new-instance v0, Lcom/google/common/reflect/Types$JavaVersion$1;

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
    invoke-direct {v0, v1, v3}, Lcom/google/common/reflect/Types$JavaVersion$1;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/google/common/reflect/Types$JavaVersion;->JAVA6:Lcom/google/common/reflect/Types$JavaVersion;

    .line 23
    .line 24
    new-instance v1, Lcom/google/common/reflect/Types$JavaVersion$2;

    .line 25
    .line 26
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v4, v2, [J

    .line 29
    .line 30
    fill-array-data v4, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const/4 v4, 0x1

    .line 41
    invoke-direct {v1, v3, v4}, Lcom/google/common/reflect/Types$JavaVersion$2;-><init>(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    sput-object v1, Lcom/google/common/reflect/Types$JavaVersion;->JAVA7:Lcom/google/common/reflect/Types$JavaVersion;

    .line 45
    .line 46
    new-instance v3, Lcom/google/common/reflect/Types$JavaVersion$3;

    .line 47
    .line 48
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    new-array v5, v2, [J

    .line 51
    .line 52
    fill-array-data v5, :array_2

    .line 53
    .line 54
    .line 55
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-direct {v3, v4, v2}, Lcom/google/common/reflect/Types$JavaVersion$3;-><init>(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    sput-object v3, Lcom/google/common/reflect/Types$JavaVersion;->JAVA8:Lcom/google/common/reflect/Types$JavaVersion;

    .line 66
    .line 67
    new-instance v4, Lcom/google/common/reflect/Types$JavaVersion$4;

    .line 68
    .line 69
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    new-array v2, v2, [J

    .line 72
    .line 73
    fill-array-data v2, :array_3

    .line 74
    .line 75
    .line 76
    invoke-direct {v5, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    const/4 v5, 0x3

    .line 84
    invoke-direct {v4, v2, v5}, Lcom/google/common/reflect/Types$JavaVersion$4;-><init>(Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    sput-object v4, Lcom/google/common/reflect/Types$JavaVersion;->JAVA9:Lcom/google/common/reflect/Types$JavaVersion;

    .line 88
    .line 89
    invoke-static {}, Lcom/google/common/reflect/Types$JavaVersion;->$values()[Lcom/google/common/reflect/Types$JavaVersion;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    sput-object v2, Lcom/google/common/reflect/Types$JavaVersion;->$VALUES:[Lcom/google/common/reflect/Types$JavaVersion;

    .line 94
    .line 95
    const-class v2, Ljava/lang/reflect/AnnotatedElement;

    .line 96
    .line 97
    const-class v5, Ljava/lang/reflect/TypeVariable;

    .line 98
    .line 99
    invoke-virtual {v2, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_1

    .line 104
    .line 105
    new-instance v0, Lcom/google/common/reflect/Types$JavaVersion$5;

    .line 106
    .line 107
    invoke-direct {v0}, Lcom/google/common/reflect/Types$JavaVersion$5;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/google/common/reflect/TypeCapture;->capture()Ljava/lang/reflect/Type;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 119
    .line 120
    const/4 v2, 0x5

    .line 121
    new-array v2, v2, [J

    .line 122
    .line 123
    fill-array-data v2, :array_4

    .line 124
    .line 125
    .line 126
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_0

    .line 138
    .line 139
    sput-object v3, Lcom/google/common/reflect/Types$JavaVersion;->CURRENT:Lcom/google/common/reflect/Types$JavaVersion;

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_0
    sput-object v4, Lcom/google/common/reflect/Types$JavaVersion;->CURRENT:Lcom/google/common/reflect/Types$JavaVersion;

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_1
    new-instance v2, Lcom/google/common/reflect/Types$JavaVersion$6;

    .line 146
    .line 147
    invoke-direct {v2}, Lcom/google/common/reflect/Types$JavaVersion$6;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2}, Lcom/google/common/reflect/TypeCapture;->capture()Ljava/lang/reflect/Type;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    instance-of v2, v2, Ljava/lang/Class;

    .line 155
    .line 156
    if-eqz v2, :cond_2

    .line 157
    .line 158
    sput-object v1, Lcom/google/common/reflect/Types$JavaVersion;->CURRENT:Lcom/google/common/reflect/Types$JavaVersion;

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_2
    sput-object v0, Lcom/google/common/reflect/Types$JavaVersion;->CURRENT:Lcom/google/common/reflect/Types$JavaVersion;

    .line 162
    .line 163
    :goto_0
    return-void

    .line 164
    nop

    .line 165
    :array_0
    .array-data 8
        0x5afef33a67df0c96L    # 2.145360797269505E130
        0x2b0fc9adaee66a8dL
    .end array-data

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    :array_1
    .array-data 8
        -0x623d1116df86a676L
        -0xa62d4d700f4850eL
    .end array-data

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    :array_2
    .array-data 8
        -0x181b369cf124bc54L
        -0x6e582d4036b1bd70L    # -1.287223727980515E-223
    .end array-data

    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    :array_3
    .array-data 8
        0x1d8f8d576250ffb3L
        0x1ef7b7c2e05f60ddL    # 1.687007551555633E-159
    .end array-data

    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    :array_4
    .array-data 8
        -0x7c0a79788ce2ef5cL
        -0x3861c9dbd18ea1fbL    # -1.0039489437558758E37
        -0x2ad4ba358f17566L    # -4.778402872364547E295
        0x45a0a9844e76979L
        0x8d45a0daf131a52L
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

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/reflect/Types$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/reflect/Types$JavaVersion;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/reflect/Types$JavaVersion;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/reflect/Types$JavaVersion;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/common/reflect/Types$JavaVersion;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/common/reflect/Types$JavaVersion;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/reflect/Types$JavaVersion;->$VALUES:[Lcom/google/common/reflect/Types$JavaVersion;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/common/reflect/Types$JavaVersion;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/common/reflect/Types$JavaVersion;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public jdkTypeDuplicatesOwnerName()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
.end method

.method public typeName(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/common/reflect/Types;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final usedInGenericType([Ljava/lang/reflect/Type;)Lcom/google/common/collect/ImmutableList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 3
    invoke-virtual {p0, v3}, Lcom/google/common/reflect/Types$JavaVersion;->usedInGenericType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public abstract usedInGenericType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
.end method
