.class public final Lcom/google/common/base/Splitter$MapSplitter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MapSplitter"
.end annotation


# static fields
.field private static final INVALID_ENTRY_MESSAGE:Ljava/lang/String;


# instance fields
.field private final entrySplitter:Lcom/google/common/base/Splitter;

.field private final outerSplitter:Lcom/google/common/base/Splitter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x5

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/Splitter$MapSplitter;->INVALID_ENTRY_MESSAGE:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        -0x165fba271c302918L    # -6.228027176163538E200
        0x726696444124d522L    # 1.2048824146988319E243
        0x4b63b5f4256ae68bL    # 1.5103323317293897E55
        0x5889c4b9d5fd6642L    # 3.249052945423846E118
        0x1f0c10fe68bdbf1bL
    .end array-data
.end method

.method private constructor <init>(Lcom/google/common/base/Splitter;Lcom/google/common/base/Splitter;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/common/base/Splitter$MapSplitter;->outerSplitter:Lcom/google/common/base/Splitter;

    .line 4
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/Splitter;

    iput-object p1, p0, Lcom/google/common/base/Splitter$MapSplitter;->entrySplitter:Lcom/google/common/base/Splitter;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/base/Splitter;Lcom/google/common/base/Splitter;Lcom/google/common/base/Splitter$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/base/Splitter$MapSplitter;-><init>(Lcom/google/common/base/Splitter;Lcom/google/common/base/Splitter;)V

    return-void
.end method


# virtual methods
.method public split(Ljava/lang/CharSequence;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x5

    .line 2
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/common/base/Splitter$MapSplitter;->outerSplitter:Lcom/google/common/base/Splitter;

    .line 8
    .line 9
    invoke-virtual {v2, p1}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/String;

    .line 28
    .line 29
    iget-object v3, p0, Lcom/google/common/base/Splitter$MapSplitter;->entrySplitter:Lcom/google/common/base/Splitter;

    .line 30
    .line 31
    invoke-static {v3, v2}, Lcom/google/common/base/Splitter;->access$000(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    new-array v6, v0, [J

    .line 42
    .line 43
    fill-array-data v6, :array_0

    .line 44
    .line 45
    .line 46
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-static {v4, v5, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Ljava/lang/String;

    .line 61
    .line 62
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    xor-int/lit8 v5, v5, 0x1

    .line 67
    .line 68
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    new-array v7, v0, [J

    .line 71
    .line 72
    fill-array-data v7, :array_1

    .line 73
    .line 74
    .line 75
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-static {v5, v6, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 90
    .line 91
    new-array v7, v0, [J

    .line 92
    .line 93
    fill-array-data v7, :array_2

    .line 94
    .line 95
    .line 96
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-static {v5, v6, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    check-cast v5, Ljava/lang/String;

    .line 111
    .line 112
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    xor-int/lit8 v3, v3, 0x1

    .line 120
    .line 121
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 122
    .line 123
    new-array v5, v0, [J

    .line 124
    .line 125
    fill-array-data v5, :array_3

    .line 126
    .line 127
    .line 128
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-static {v3, v4, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_0
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    return-object p1

    .line 144
    nop

    .line 145
    :array_0
    .array-data 8
        -0x383e04cc8b7e9110L    # -4.780237214650026E37
        -0xd4ccf8f4d9cf6eeL
        0x454bcf0905abbdcaL    # 6.723738684174907E25
        0x2f5fa087674a79a1L    # 1.6670939555876838E-80
        0x5e25c88fc713a620L    # 3.400121716530032E145
    .end array-data

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
    :array_1
    .array-data 8
        0x61c1e5021373b829L    # 8.050609599964383E162
        0x556cf952b17738feL
        -0x316843491e39d0a0L    # -4.0956973916198356E70
        -0x78a632edc83647c2L
        0x503c5c3026269da8L    # 3.2838763526810656E78
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
    .line 190
    .line 191
    .line 192
    .line 193
    :array_2
    .array-data 8
        0x174dd4defb0b2dc4L
        0x56ad921d99a809d6L    # 3.4724099421592186E109
        -0x5ff08d3b4aa32e46L    # -2.931903018471525E-154
        0x7387867e6a6dc79dL    # 3.289749557808747E248
        -0x30a5b42091915afdL    # -1.8584671343289073E74
    .end array-data

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
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
    .line 214
    .line 215
    .line 216
    .line 217
    :array_3
    .array-data 8
        0x1852d1be3427c48cL
        0x4e869f559b267178L    # 1.9516758314917335E70
        0xdfe7618fca05facL
        0x224c296315d4bd92L
        0x90be15095705c9dL
    .end array-data
.end method
