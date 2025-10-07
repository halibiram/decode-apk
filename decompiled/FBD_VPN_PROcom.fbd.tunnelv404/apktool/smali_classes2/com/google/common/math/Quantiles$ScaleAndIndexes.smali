.class public final Lcom/google/common/math/Quantiles$ScaleAndIndexes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/Quantiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScaleAndIndexes"
.end annotation


# instance fields
.field private final indexes:[I

.field private final scale:I


# direct methods
.method private constructor <init>(I[I)V
    .locals 5

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, p2, v3

    .line 4
    invoke-static {v4, p1}, Lcom/google/common/math/Quantiles;->access$300(II)V

    add-int/2addr v3, v0

    goto :goto_0

    .line 5
    :cond_0
    array-length v1, p2

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x6

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 6
    iput p1, p0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->scale:I

    .line 7
    iput-object p2, p0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    return-void

    :array_0
    .array-data 8
        0x429fc95e305712adL    # 8.737432278468669E12
        0xf96c192d1bff09dL
        0x141c3435494d2a7eL    # 8.377854504619321E-212
        0x686c5babc3996dc3L    # 1.0350568008805264E195
        -0x129a9fb8808eec18L    # -9.432246762858702E218
        0x6ed5483cbee3cbb4L    # 7.877579853288363E225
    .end array-data
.end method

.method public synthetic constructor <init>(I[ILcom/google/common/math/Quantiles$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/math/Quantiles$ScaleAndIndexes;-><init>(I[I)V

    return-void
.end method


# virtual methods
.method public compute(Ljava/util/Collection;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Number;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/primitives/Doubles;->toArray(Ljava/util/Collection;)[D

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->computeInPlace([D)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public varargs compute([D)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    invoke-virtual {p0, p1}, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->computeInPlace([D)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public varargs compute([I)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-static {p1}, Lcom/google/common/math/Quantiles;->access$500([I)[D

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->computeInPlace([D)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public varargs compute([J)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lcom/google/common/math/Quantiles;->access$400([J)[D

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->computeInPlace([D)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public varargs computeInPlace([D)Ljava/util/Map;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    array-length v1, v7

    .line 6
    const/4 v8, 0x0

    .line 7
    const/4 v9, 0x1

    .line 8
    if-lez v1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v3, 0x7

    .line 16
    new-array v3, v3, [J

    .line 17
    .line 18
    fill-array-data v3, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-static/range {p1 .. p1}, Lcom/google/common/math/Quantiles;->access$600([D)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v2, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    .line 43
    .line 44
    array-length v3, v2

    .line 45
    :goto_1
    if-ge v8, v3, :cond_1

    .line 46
    .line 47
    aget v4, v2, v8

    .line 48
    .line 49
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const-wide/high16 v5, 0x7ff8000000000000L    # Double.NaN

    .line 54
    .line 55
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    add-int/2addr v8, v9

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    return-object v1

    .line 69
    :cond_2
    iget-object v1, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    .line 70
    .line 71
    array-length v2, v1

    .line 72
    new-array v10, v2, [I

    .line 73
    .line 74
    array-length v2, v1

    .line 75
    new-array v11, v2, [I

    .line 76
    .line 77
    array-length v1, v1

    .line 78
    mul-int/lit8 v1, v1, 0x2

    .line 79
    .line 80
    new-array v1, v1, [I

    .line 81
    .line 82
    const/4 v2, 0x0

    .line 83
    const/4 v3, 0x0

    .line 84
    :goto_2
    iget-object v4, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    .line 85
    .line 86
    array-length v5, v4

    .line 87
    if-ge v2, v5, :cond_4

    .line 88
    .line 89
    aget v4, v4, v2

    .line 90
    .line 91
    int-to-long v4, v4

    .line 92
    array-length v6, v7

    .line 93
    sub-int/2addr v6, v9

    .line 94
    int-to-long v12, v6

    .line 95
    mul-long v4, v4, v12

    .line 96
    .line 97
    iget v6, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->scale:I

    .line 98
    .line 99
    int-to-long v12, v6

    .line 100
    sget-object v6, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 101
    .line 102
    invoke-static {v4, v5, v12, v13, v6}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    .line 103
    .line 104
    .line 105
    move-result-wide v12

    .line 106
    long-to-int v6, v12

    .line 107
    int-to-long v12, v6

    .line 108
    iget v14, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->scale:I

    .line 109
    .line 110
    int-to-long v14, v14

    .line 111
    mul-long v12, v12, v14

    .line 112
    .line 113
    sub-long/2addr v4, v12

    .line 114
    long-to-int v5, v4

    .line 115
    aput v6, v10, v2

    .line 116
    .line 117
    aput v5, v11, v2

    .line 118
    .line 119
    aput v6, v1, v3

    .line 120
    .line 121
    add-int/lit8 v4, v3, 0x1

    .line 122
    .line 123
    if-eqz v5, :cond_3

    .line 124
    .line 125
    add-int/2addr v6, v9

    .line 126
    aput v6, v1, v4

    .line 127
    .line 128
    add-int/lit8 v3, v3, 0x2

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_3
    move v3, v4

    .line 132
    :goto_3
    add-int/2addr v2, v9

    .line 133
    goto :goto_2

    .line 134
    :cond_4
    invoke-static {v1, v8, v3}, Ljava/util/Arrays;->sort([III)V

    .line 135
    .line 136
    .line 137
    sub-int/2addr v3, v9

    .line 138
    array-length v2, v7

    .line 139
    add-int/lit8 v6, v2, -0x1

    .line 140
    .line 141
    const/4 v2, 0x0

    .line 142
    const/4 v5, 0x0

    .line 143
    move-object/from16 v4, p1

    .line 144
    .line 145
    invoke-static/range {v1 .. v6}, Lcom/google/common/math/Quantiles;->access$900([III[DII)V

    .line 146
    .line 147
    .line 148
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 149
    .line 150
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 151
    .line 152
    .line 153
    :goto_4
    iget-object v2, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->indexes:[I

    .line 154
    .line 155
    array-length v3, v2

    .line 156
    if-ge v8, v3, :cond_6

    .line 157
    .line 158
    aget v3, v10, v8

    .line 159
    .line 160
    aget v4, v11, v8

    .line 161
    .line 162
    if-nez v4, :cond_5

    .line 163
    .line 164
    aget v2, v2, v8

    .line 165
    .line 166
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    aget-wide v3, v7, v3

    .line 171
    .line 172
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    goto :goto_5

    .line 180
    :cond_5
    aget v2, v2, v8

    .line 181
    .line 182
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    aget-wide v12, v7, v3

    .line 187
    .line 188
    add-int/2addr v3, v9

    .line 189
    aget-wide v14, v7, v3

    .line 190
    .line 191
    int-to-double v3, v4

    .line 192
    iget v5, v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;->scale:I

    .line 193
    .line 194
    int-to-double v5, v5

    .line 195
    move-wide/from16 v16, v3

    .line 196
    .line 197
    move-wide/from16 v18, v5

    .line 198
    .line 199
    invoke-static/range {v12 .. v19}, Lcom/google/common/math/Quantiles;->access$800(DDDD)D

    .line 200
    .line 201
    .line 202
    move-result-wide v3

    .line 203
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    :goto_5
    add-int/2addr v8, v9

    .line 211
    goto :goto_4

    .line 212
    :cond_6
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    return-object v1

    .line 217
    :array_0
    .array-data 8
        0x77a1724982473855L    # 1.80016713922839E268
        0x75233e1c4a8a6319L    # 1.8058035924016856E256
        0x41eb1748ac8ff024L    # 3.636086116498064E9
        0x2c9aa6ac479169a1L    # 7.985386676398719E-94
        -0x5068c88a71635746L    # -1.9580351072265147E-79
        -0x5361bb90ee5056d6L    # -9.068914901301065E-94
        0x48e5fc44f26cb3f4L    # 1.532160645820282E43
    .end array-data
.end method
