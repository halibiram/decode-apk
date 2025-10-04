.class public final Lcom/google/zxing/oned/rss/RSS14Reader;
.super Lcom/google/zxing/oned/rss/AbstractRSSReader;
.source "SourceFile"


# static fields
.field private static final FINDER_PATTERNS:[[I

.field private static final INSIDE_GSUM:[I

.field private static final INSIDE_ODD_TOTAL_SUBSET:[I

.field private static final INSIDE_ODD_WIDEST:[I

.field private static final OUTSIDE_EVEN_TOTAL_SUBSET:[I

.field private static final OUTSIDE_GSUM:[I

.field private static final OUTSIDE_ODD_WIDEST:[I


# instance fields
.field private final possibleLeftPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/Pair;",
            ">;"
        }
    .end annotation
.end field

.field private final possibleRightPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/Pair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const/16 v0, 0x46

    .line 2
    .line 3
    const/16 v1, 0x7e

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/16 v3, 0xa

    .line 7
    .line 8
    const/16 v4, 0x22

    .line 9
    .line 10
    filled-new-array {v2, v3, v4, v0, v1}, [I

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_EVEN_TOTAL_SUBSET:[I

    .line 15
    .line 16
    const/16 v0, 0x30

    .line 17
    .line 18
    const/16 v1, 0x51

    .line 19
    .line 20
    const/4 v3, 0x4

    .line 21
    const/16 v4, 0x14

    .line 22
    .line 23
    filled-new-array {v3, v4, v0, v1}, [I

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_TOTAL_SUBSET:[I

    .line 28
    .line 29
    const/16 v0, 0x7df

    .line 30
    .line 31
    const/16 v1, 0xa9b

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    const/16 v5, 0xa1

    .line 35
    .line 36
    const/16 v6, 0x3c1

    .line 37
    .line 38
    filled-new-array {v4, v5, v6, v0, v1}, [I

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_GSUM:[I

    .line 43
    .line 44
    const/16 v0, 0x40c

    .line 45
    .line 46
    const/16 v1, 0x5ec

    .line 47
    .line 48
    const/16 v5, 0x150

    .line 49
    .line 50
    filled-new-array {v4, v5, v0, v1}, [I

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_GSUM:[I

    .line 55
    .line 56
    const/16 v0, 0x8

    .line 57
    .line 58
    const/4 v1, 0x6

    .line 59
    const/4 v5, 0x3

    .line 60
    filled-new-array {v0, v1, v3, v5, v2}, [I

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    sput-object v6, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_ODD_WIDEST:[I

    .line 65
    .line 66
    const/4 v6, 0x2

    .line 67
    filled-new-array {v6, v3, v1, v0}, [I

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    sput-object v7, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_WIDEST:[I

    .line 72
    .line 73
    const/16 v7, 0x9

    .line 74
    .line 75
    new-array v8, v7, [[I

    .line 76
    .line 77
    filled-new-array {v5, v0, v6, v2}, [I

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    aput-object v9, v8, v4

    .line 82
    .line 83
    const/4 v4, 0x5

    .line 84
    filled-new-array {v5, v4, v4, v2}, [I

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    aput-object v9, v8, v2

    .line 89
    .line 90
    const/4 v9, 0x7

    .line 91
    filled-new-array {v5, v5, v9, v2}, [I

    .line 92
    .line 93
    .line 94
    move-result-object v10

    .line 95
    aput-object v10, v8, v6

    .line 96
    .line 97
    filled-new-array {v5, v2, v7, v2}, [I

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    aput-object v10, v8, v5

    .line 102
    .line 103
    filled-new-array {v6, v9, v3, v2}, [I

    .line 104
    .line 105
    .line 106
    move-result-object v10

    .line 107
    aput-object v10, v8, v3

    .line 108
    .line 109
    filled-new-array {v6, v4, v1, v2}, [I

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    aput-object v3, v8, v4

    .line 114
    .line 115
    filled-new-array {v6, v5, v0, v2}, [I

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    aput-object v3, v8, v1

    .line 120
    .line 121
    filled-new-array {v2, v4, v9, v2}, [I

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    aput-object v1, v8, v9

    .line 126
    .line 127
    filled-new-array {v2, v5, v7, v2}, [I

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    aput-object v1, v8, v0

    .line 132
    .line 133
    sput-object v8, Lcom/google/zxing/oned/rss/RSS14Reader;->FINDER_PATTERNS:[[I

    .line 134
    .line 135
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    .line 17
    .line 18
    return-void
.end method

.method private static addOrTally(Ljava/util/Collection;Lcom/google/zxing/oned/rss/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/oned/rss/Pair;",
            ">;",
            "Lcom/google/zxing/oned/rss/Pair;",
            ")V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/google/zxing/oned/rss/Pair;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-ne v2, v3, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/Pair;->incrementCount()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method private adjustOddEvenCounts(ZI)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddCounts()[I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getEvenCounts()[I

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x4

    .line 18
    const/4 v3, 0x1

    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz p1, :cond_4

    .line 21
    .line 22
    const/16 v5, 0xc

    .line 23
    .line 24
    if-le v0, v5, :cond_0

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v7, 0x1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    if-ge v0, v2, :cond_1

    .line 30
    .line 31
    const/4 v6, 0x1

    .line 32
    :goto_0
    const/4 v7, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 v6, 0x0

    .line 35
    goto :goto_0

    .line 36
    :goto_1
    if-le v1, v5, :cond_2

    .line 37
    .line 38
    :goto_2
    const/4 v2, 0x0

    .line 39
    const/4 v5, 0x1

    .line 40
    goto :goto_7

    .line 41
    :cond_2
    if-ge v1, v2, :cond_3

    .line 42
    .line 43
    :goto_3
    const/4 v2, 0x1

    .line 44
    :goto_4
    const/4 v5, 0x0

    .line 45
    goto :goto_7

    .line 46
    :cond_3
    const/4 v2, 0x0

    .line 47
    goto :goto_4

    .line 48
    :cond_4
    const/16 v5, 0xb

    .line 49
    .line 50
    if-le v0, v5, :cond_5

    .line 51
    .line 52
    const/4 v6, 0x0

    .line 53
    const/4 v7, 0x1

    .line 54
    goto :goto_6

    .line 55
    :cond_5
    const/4 v5, 0x5

    .line 56
    if-ge v0, v5, :cond_6

    .line 57
    .line 58
    const/4 v6, 0x1

    .line 59
    :goto_5
    const/4 v7, 0x0

    .line 60
    goto :goto_6

    .line 61
    :cond_6
    const/4 v6, 0x0

    .line 62
    goto :goto_5

    .line 63
    :goto_6
    const/16 v5, 0xa

    .line 64
    .line 65
    if-le v1, v5, :cond_7

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_7
    if-ge v1, v2, :cond_3

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :goto_7
    add-int v8, v0, v1

    .line 72
    .line 73
    sub-int/2addr v8, p2

    .line 74
    and-int/lit8 p2, v0, 0x1

    .line 75
    .line 76
    if-ne p2, p1, :cond_8

    .line 77
    .line 78
    const/4 p1, 0x1

    .line 79
    goto :goto_8

    .line 80
    :cond_8
    const/4 p1, 0x0

    .line 81
    :goto_8
    and-int/lit8 p2, v1, 0x1

    .line 82
    .line 83
    if-ne p2, v3, :cond_9

    .line 84
    .line 85
    const/4 v4, 0x1

    .line 86
    :cond_9
    const/4 p2, -0x1

    .line 87
    if-eq v8, p2, :cond_13

    .line 88
    .line 89
    if-eqz v8, :cond_e

    .line 90
    .line 91
    if-ne v8, v3, :cond_d

    .line 92
    .line 93
    if-eqz p1, :cond_b

    .line 94
    .line 95
    if-nez v4, :cond_a

    .line 96
    .line 97
    move v3, v6

    .line 98
    :goto_9
    const/4 v7, 0x1

    .line 99
    goto :goto_b

    .line 100
    :cond_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    throw p1

    .line 105
    :cond_b
    if-eqz v4, :cond_c

    .line 106
    .line 107
    move v3, v6

    .line 108
    :goto_a
    const/4 v5, 0x1

    .line 109
    goto :goto_b

    .line 110
    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    throw p1

    .line 115
    :cond_d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    throw p1

    .line 120
    :cond_e
    if-eqz p1, :cond_11

    .line 121
    .line 122
    if-eqz v4, :cond_10

    .line 123
    .line 124
    if-ge v0, v1, :cond_f

    .line 125
    .line 126
    goto :goto_a

    .line 127
    :cond_f
    move v3, v6

    .line 128
    const/4 v2, 0x1

    .line 129
    goto :goto_9

    .line 130
    :cond_10
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    throw p1

    .line 135
    :cond_11
    if-nez v4, :cond_12

    .line 136
    .line 137
    move v3, v6

    .line 138
    goto :goto_b

    .line 139
    :cond_12
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    throw p1

    .line 144
    :cond_13
    if-eqz p1, :cond_15

    .line 145
    .line 146
    if-nez v4, :cond_14

    .line 147
    .line 148
    goto :goto_b

    .line 149
    :cond_14
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    throw p1

    .line 154
    :cond_15
    if-eqz v4, :cond_1c

    .line 155
    .line 156
    move v3, v6

    .line 157
    const/4 v2, 0x1

    .line 158
    :goto_b
    if-eqz v3, :cond_17

    .line 159
    .line 160
    if-nez v7, :cond_16

    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddCounts()[I

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    invoke-static {p1, p2}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->increment([I[F)V

    .line 171
    .line 172
    .line 173
    goto :goto_c

    .line 174
    :cond_16
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    throw p1

    .line 179
    :cond_17
    :goto_c
    if-eqz v7, :cond_18

    .line 180
    .line 181
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddCounts()[I

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    invoke-static {p1, p2}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->decrement([I[F)V

    .line 190
    .line 191
    .line 192
    :cond_18
    if-eqz v2, :cond_1a

    .line 193
    .line 194
    if-nez v5, :cond_19

    .line 195
    .line 196
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getEvenCounts()[I

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    invoke-static {p1, p2}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->increment([I[F)V

    .line 205
    .line 206
    .line 207
    goto :goto_d

    .line 208
    :cond_19
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    throw p1

    .line 213
    :cond_1a
    :goto_d
    if-eqz v5, :cond_1b

    .line 214
    .line 215
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getEvenCounts()[I

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getEvenRoundingErrors()[F

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    invoke-static {p1, p2}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->decrement([I[F)V

    .line 224
    .line 225
    .line 226
    :cond_1b
    return-void

    .line 227
    :cond_1c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    throw p1
.end method

.method private static checkChecksum(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    mul-int/lit8 v1, v1, 0x10

    .line 10
    .line 11
    add-int/2addr v1, v0

    .line 12
    rem-int/lit8 v1, v1, 0x4f

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    mul-int/lit8 p0, p0, 0x9

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    add-int/2addr p1, p0

    .line 33
    const/16 p0, 0x48

    .line 34
    .line 35
    if-le p1, p0, :cond_0

    .line 36
    .line 37
    add-int/lit8 p1, p1, -0x1

    .line 38
    .line 39
    :cond_0
    const/16 p0, 0x8

    .line 40
    .line 41
    if-le p1, p0, :cond_1

    .line 42
    .line 43
    add-int/lit8 p1, p1, -0x1

    .line 44
    .line 45
    :cond_1
    if-ne v1, p1, :cond_2

    .line 46
    .line 47
    const/4 p0, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 p0, 0x0

    .line 50
    :goto_0
    return p0
.end method

.method private static constructResult(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Lcom/google/zxing/Result;
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    .line 6
    .line 7
    .line 8
    move-result v4

    .line 9
    int-to-long v4, v4

    .line 10
    const-wide/32 v6, 0x453af5

    .line 11
    .line 12
    .line 13
    mul-long v4, v4, v6

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    int-to-long v6, v6

    .line 20
    add-long/2addr v4, v6

    .line 21
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    new-instance v5, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const/16 v6, 0xe

    .line 28
    .line 29
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    const/16 v7, 0xd

    .line 37
    .line 38
    rsub-int/lit8 v6, v6, 0xd

    .line 39
    .line 40
    :goto_0
    const/16 v8, 0x30

    .line 41
    .line 42
    if-lez v6, :cond_0

    .line 43
    .line 44
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    add-int/lit8 v6, v6, -0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    const/4 v6, 0x0

    .line 55
    :goto_1
    if-ge v4, v7, :cond_2

    .line 56
    .line 57
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    sub-int/2addr v9, v8

    .line 62
    and-int/lit8 v10, v4, 0x1

    .line 63
    .line 64
    if-nez v10, :cond_1

    .line 65
    .line 66
    mul-int/lit8 v9, v9, 0x3

    .line 67
    .line 68
    :cond_1
    add-int/2addr v6, v9

    .line 69
    add-int/2addr v4, v3

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    const/16 v4, 0xa

    .line 72
    .line 73
    rem-int/2addr v6, v4

    .line 74
    rsub-int/lit8 v6, v6, 0xa

    .line 75
    .line 76
    if-ne v6, v4, :cond_3

    .line 77
    .line 78
    const/4 v6, 0x0

    .line 79
    :cond_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    new-instance v4, Lcom/google/zxing/Result;

    .line 99
    .line 100
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    aget-object v6, p0, v2

    .line 105
    .line 106
    aget-object p0, p0, v3

    .line 107
    .line 108
    aget-object v7, p1, v2

    .line 109
    .line 110
    aget-object p1, p1, v3

    .line 111
    .line 112
    const/4 v8, 0x4

    .line 113
    new-array v8, v8, [Lcom/google/zxing/ResultPoint;

    .line 114
    .line 115
    aput-object v6, v8, v2

    .line 116
    .line 117
    aput-object p0, v8, v3

    .line 118
    .line 119
    aput-object v7, v8, v0

    .line 120
    .line 121
    aput-object p1, v8, v1

    .line 122
    .line 123
    sget-object p0, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    .line 124
    .line 125
    const/4 p1, 0x0

    .line 126
    invoke-direct {v4, v5, p1, v8, p0}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 127
    .line 128
    .line 129
    sget-object p0, Lcom/google/zxing/ResultMetadataType;->SYMBOLOGY_IDENTIFIER:Lcom/google/zxing/ResultMetadataType;

    .line 130
    .line 131
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 132
    .line 133
    new-array v0, v0, [J

    .line 134
    .line 135
    fill-array-data v0, :array_0

    .line 136
    .line 137
    .line 138
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {v4, p0, p1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    return-object v4

    .line 149
    :array_0
    .array-data 8
        -0x4ba1812042ec08f2L    # -1.9432918417090905E-56
        -0x100561831b34353cL    # -2.5829139897370265E231
    .end array-data
.end method

.method private decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getDataCharacterCounters()[I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz p3, :cond_0

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    aget p2, p2, v1

    .line 17
    .line 18
    invoke-static {p1, p2, v0}, Lcom/google/zxing/oned/OneDReader;->recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    aget p2, p2, v2

    .line 27
    .line 28
    invoke-static {p1, p2, v0}, Lcom/google/zxing/oned/OneDReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 29
    .line 30
    .line 31
    array-length p1, v0

    .line 32
    sub-int/2addr p1, v2

    .line 33
    const/4 p2, 0x0

    .line 34
    :goto_0
    if-ge p2, p1, :cond_1

    .line 35
    .line 36
    aget v3, v0, p2

    .line 37
    .line 38
    aget v4, v0, p1

    .line 39
    .line 40
    aput v4, v0, p2

    .line 41
    .line 42
    aput v3, v0, p1

    .line 43
    .line 44
    add-int/lit8 p2, p2, 0x1

    .line 45
    .line 46
    add-int/lit8 p1, p1, -0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    .line 50
    .line 51
    const/16 p1, 0x10

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    const/16 p1, 0xf

    .line 55
    .line 56
    :goto_2
    invoke-static {v0}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    int-to-float p2, p2

    .line 61
    int-to-float v3, p1

    .line 62
    div-float/2addr p2, v3

    .line 63
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddCounts()[I

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getEvenCounts()[I

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getEvenRoundingErrors()[F

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    const/4 v7, 0x0

    .line 80
    :goto_3
    array-length v8, v0

    .line 81
    if-ge v7, v8, :cond_6

    .line 82
    .line 83
    aget v8, v0, v7

    .line 84
    .line 85
    int-to-float v8, v8

    .line 86
    div-float/2addr v8, p2

    .line 87
    const/high16 v9, 0x3f000000    # 0.5f

    .line 88
    .line 89
    add-float/2addr v9, v8

    .line 90
    float-to-int v9, v9

    .line 91
    if-ge v9, v2, :cond_3

    .line 92
    .line 93
    const/4 v9, 0x1

    .line 94
    goto :goto_4

    .line 95
    :cond_3
    const/16 v10, 0x8

    .line 96
    .line 97
    if-le v9, v10, :cond_4

    .line 98
    .line 99
    const/16 v9, 0x8

    .line 100
    .line 101
    :cond_4
    :goto_4
    div-int/lit8 v10, v7, 0x2

    .line 102
    .line 103
    and-int/lit8 v11, v7, 0x1

    .line 104
    .line 105
    if-nez v11, :cond_5

    .line 106
    .line 107
    aput v9, v3, v10

    .line 108
    .line 109
    int-to-float v9, v9

    .line 110
    sub-float/2addr v8, v9

    .line 111
    aput v8, v5, v10

    .line 112
    .line 113
    goto :goto_5

    .line 114
    :cond_5
    aput v9, v4, v10

    .line 115
    .line 116
    int-to-float v9, v9

    .line 117
    sub-float/2addr v8, v9

    .line 118
    aput v8, v6, v10

    .line 119
    .line 120
    :goto_5
    add-int/lit8 v7, v7, 0x1

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_6
    invoke-direct {p0, p3, p1}, Lcom/google/zxing/oned/rss/RSS14Reader;->adjustOddEvenCounts(ZI)V

    .line 124
    .line 125
    .line 126
    array-length p1, v3

    .line 127
    sub-int/2addr p1, v2

    .line 128
    const/4 p2, 0x0

    .line 129
    const/4 v0, 0x0

    .line 130
    :goto_6
    if-ltz p1, :cond_7

    .line 131
    .line 132
    mul-int/lit8 p2, p2, 0x9

    .line 133
    .line 134
    aget v5, v3, p1

    .line 135
    .line 136
    add-int/2addr p2, v5

    .line 137
    add-int/2addr v0, v5

    .line 138
    add-int/lit8 p1, p1, -0x1

    .line 139
    .line 140
    goto :goto_6

    .line 141
    :cond_7
    array-length p1, v4

    .line 142
    sub-int/2addr p1, v2

    .line 143
    const/4 v5, 0x0

    .line 144
    const/4 v6, 0x0

    .line 145
    :goto_7
    if-ltz p1, :cond_8

    .line 146
    .line 147
    mul-int/lit8 v5, v5, 0x9

    .line 148
    .line 149
    aget v7, v4, p1

    .line 150
    .line 151
    add-int/2addr v5, v7

    .line 152
    add-int/2addr v6, v7

    .line 153
    add-int/lit8 p1, p1, -0x1

    .line 154
    .line 155
    goto :goto_7

    .line 156
    :cond_8
    mul-int/lit8 v5, v5, 0x3

    .line 157
    .line 158
    add-int/2addr v5, p2

    .line 159
    const/4 p1, 0x4

    .line 160
    if-eqz p3, :cond_a

    .line 161
    .line 162
    and-int/lit8 p2, v0, 0x1

    .line 163
    .line 164
    if-nez p2, :cond_9

    .line 165
    .line 166
    const/16 p2, 0xc

    .line 167
    .line 168
    if-gt v0, p2, :cond_9

    .line 169
    .line 170
    if-lt v0, p1, :cond_9

    .line 171
    .line 172
    sub-int/2addr p2, v0

    .line 173
    div-int/lit8 p2, p2, 0x2

    .line 174
    .line 175
    sget-object p1, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_ODD_WIDEST:[I

    .line 176
    .line 177
    aget p1, p1, p2

    .line 178
    .line 179
    rsub-int/lit8 p3, p1, 0x9

    .line 180
    .line 181
    invoke-static {v3, p1, v1}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    invoke-static {v4, p3, v2}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    .line 186
    .line 187
    .line 188
    move-result p3

    .line 189
    sget-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_EVEN_TOTAL_SUBSET:[I

    .line 190
    .line 191
    aget v0, v0, p2

    .line 192
    .line 193
    sget-object v1, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_GSUM:[I

    .line 194
    .line 195
    aget p2, v1, p2

    .line 196
    .line 197
    new-instance v1, Lcom/google/zxing/oned/rss/DataCharacter;

    .line 198
    .line 199
    mul-int p1, p1, v0

    .line 200
    .line 201
    add-int/2addr p1, p3

    .line 202
    add-int/2addr p1, p2

    .line 203
    invoke-direct {v1, p1, v5}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    .line 204
    .line 205
    .line 206
    return-object v1

    .line 207
    :cond_9
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    throw p1

    .line 212
    :cond_a
    and-int/lit8 p2, v6, 0x1

    .line 213
    .line 214
    if-nez p2, :cond_b

    .line 215
    .line 216
    const/16 p2, 0xa

    .line 217
    .line 218
    if-gt v6, p2, :cond_b

    .line 219
    .line 220
    if-lt v6, p1, :cond_b

    .line 221
    .line 222
    sub-int/2addr p2, v6

    .line 223
    div-int/lit8 p2, p2, 0x2

    .line 224
    .line 225
    sget-object p1, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_WIDEST:[I

    .line 226
    .line 227
    aget p1, p1, p2

    .line 228
    .line 229
    rsub-int/lit8 p3, p1, 0x9

    .line 230
    .line 231
    invoke-static {v3, p1, v2}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    invoke-static {v4, p3, v1}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    .line 236
    .line 237
    .line 238
    move-result p3

    .line 239
    sget-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_TOTAL_SUBSET:[I

    .line 240
    .line 241
    aget v0, v0, p2

    .line 242
    .line 243
    sget-object v1, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_GSUM:[I

    .line 244
    .line 245
    aget p2, v1, p2

    .line 246
    .line 247
    new-instance v1, Lcom/google/zxing/oned/rss/DataCharacter;

    .line 248
    .line 249
    mul-int p3, p3, v0

    .line 250
    .line 251
    add-int/2addr p3, p1

    .line 252
    add-int/2addr p3, p2

    .line 253
    invoke-direct {v1, p3, v5}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    .line 254
    .line 255
    .line 256
    return-object v1

    .line 257
    :cond_b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    throw p1
.end method

.method private decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "ZI",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/oned/rss/Pair;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/oned/rss/RSS14Reader;->findFinderPattern(Lcom/google/zxing/common/BitArray;Z)[I

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-direct {p0, p1, p3, p2, v1}, Lcom/google/zxing/oned/rss/RSS14Reader;->parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ[I)Lcom/google/zxing/oned/rss/FinderPattern;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-nez p4, :cond_0

    .line 11
    .line 12
    move-object p4, v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v2, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    .line 15
    .line 16
    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p4

    .line 20
    check-cast p4, Lcom/google/zxing/ResultPointCallback;

    .line 21
    .line 22
    :goto_0
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x1

    .line 24
    if-eqz p4, :cond_2

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    aget v5, v4, v2

    .line 31
    .line 32
    aget v4, v4, v3

    .line 33
    .line 34
    add-int/2addr v5, v4

    .line 35
    sub-int/2addr v5, v3

    .line 36
    int-to-float v4, v5

    .line 37
    const/high16 v5, 0x40000000    # 2.0f

    .line 38
    .line 39
    div-float/2addr v4, v5

    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    sub-int/2addr p2, v3

    .line 47
    int-to-float p2, p2

    .line 48
    sub-float v4, p2, v4

    .line 49
    .line 50
    :cond_1
    new-instance p2, Lcom/google/zxing/ResultPoint;

    .line 51
    .line 52
    int-to-float p3, p3

    .line 53
    invoke-direct {p2, v4, p3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p4, p2}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-direct {p0, p1, v1, v3}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-direct {p0, p1, v1, v2}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    new-instance p3, Lcom/google/zxing/oned/rss/Pair;

    .line 68
    .line 69
    invoke-virtual {p2}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    .line 70
    .line 71
    .line 72
    move-result p4

    .line 73
    mul-int/lit16 p4, p4, 0x63d

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    add-int/2addr p4, v2

    .line 80
    invoke-virtual {p2}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    mul-int/lit8 p1, p1, 0x4

    .line 89
    .line 90
    add-int/2addr p1, p2

    .line 91
    invoke-direct {p3, p4, p1, v1}, Lcom/google/zxing/oned/rss/Pair;-><init>(IILcom/google/zxing/oned/rss/FinderPattern;)V
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    .line 94
    return-object p3

    .line 95
    :catch_0
    return-object v0
.end method

.method private findFinderPattern(Lcom/google/zxing/common/BitArray;Z)[I
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getDecodeFinderCounters()[I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    aput v1, v0, v1

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    aput v1, v0, v2

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    aput v1, v0, v3

    .line 13
    .line 14
    const/4 v4, 0x3

    .line 15
    aput v1, v0, v4

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x0

    .line 23
    :goto_0
    if-ge v6, v5, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    xor-int/2addr v7, v2

    .line 30
    if-ne p2, v7, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    :goto_1
    move p2, v6

    .line 37
    const/4 v8, 0x0

    .line 38
    :goto_2
    if-ge v6, v5, :cond_5

    .line 39
    .line 40
    invoke-virtual {p1, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 41
    .line 42
    .line 43
    move-result v9

    .line 44
    if-eq v9, v7, :cond_2

    .line 45
    .line 46
    aget v9, v0, v8

    .line 47
    .line 48
    add-int/2addr v9, v2

    .line 49
    aput v9, v0, v8

    .line 50
    .line 51
    goto :goto_4

    .line 52
    :cond_2
    if-ne v8, v4, :cond_4

    .line 53
    .line 54
    invoke-static {v0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->isFinderPattern([I)Z

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    if-eqz v9, :cond_3

    .line 59
    .line 60
    filled-new-array {p2, v6}, [I

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1

    .line 65
    :cond_3
    aget v9, v0, v1

    .line 66
    .line 67
    aget v10, v0, v2

    .line 68
    .line 69
    add-int/2addr v9, v10

    .line 70
    add-int/2addr p2, v9

    .line 71
    aget v9, v0, v3

    .line 72
    .line 73
    aput v9, v0, v1

    .line 74
    .line 75
    aget v9, v0, v4

    .line 76
    .line 77
    aput v9, v0, v2

    .line 78
    .line 79
    aput v1, v0, v3

    .line 80
    .line 81
    aput v1, v0, v4

    .line 82
    .line 83
    add-int/lit8 v8, v8, -0x1

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 87
    .line 88
    :goto_3
    aput v2, v0, v8

    .line 89
    .line 90
    xor-int/lit8 v7, v7, 0x1

    .line 91
    .line 92
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    throw p1
.end method

.method private parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ[I)Lcom/google/zxing/oned/rss/FinderPattern;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p4, v0

    .line 3
    .line 4
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    aget v2, p4, v0

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    sub-int/2addr v2, v3

    .line 12
    :goto_0
    if-ltz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-eq v1, v4, :cond_0

    .line 19
    .line 20
    add-int/lit8 v2, v2, -0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    add-int/2addr v2, v3

    .line 24
    aget v1, p4, v0

    .line 25
    .line 26
    sub-int/2addr v1, v2

    .line 27
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->getDecodeFinderCounters()[I

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    array-length v5, v4

    .line 32
    sub-int/2addr v5, v3

    .line 33
    invoke-static {v4, v0, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    .line 35
    .line 36
    aput v1, v4, v0

    .line 37
    .line 38
    sget-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->FINDER_PATTERNS:[[I

    .line 39
    .line 40
    invoke-static {v4, v0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->parseFinderValue([I[[I)I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    aget v0, p4, v3

    .line 45
    .line 46
    if-eqz p3, :cond_1

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    sub-int/2addr p3, v3

    .line 53
    sub-int/2addr p3, v2

    .line 54
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    sub-int/2addr p1, v3

    .line 59
    sub-int/2addr p1, v0

    .line 60
    move v9, p1

    .line 61
    move v8, p3

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    move v9, v0

    .line 64
    move v8, v2

    .line 65
    :goto_1
    new-instance p1, Lcom/google/zxing/oned/rss/FinderPattern;

    .line 66
    .line 67
    aget p3, p4, v3

    .line 68
    .line 69
    filled-new-array {v2, p3}, [I

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    move-object v5, p1

    .line 74
    move v10, p2

    .line 75
    invoke-direct/range {v5 .. v10}, Lcom/google/zxing/oned/rss/FinderPattern;-><init>(I[IIII)V

    .line 76
    .line 77
    .line 78
    return-object p1
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p2, v0, p1, p3}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/Pair;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    .line 7
    .line 8
    invoke-static {v1, v0}, Lcom/google/zxing/oned/rss/RSS14Reader;->addOrTally(Ljava/util/Collection;Lcom/google/zxing/oned/rss/Pair;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-direct {p0, p2, v0, p1, p3}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/Pair;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p3, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    .line 20
    .line 21
    invoke-static {p3, p1}, Lcom/google/zxing/oned/rss/RSS14Reader;->addOrTally(Ljava/util/Collection;Lcom/google/zxing/oned/rss/Pair;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_2

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    check-cast p2, Lcom/google/zxing/oned/rss/Pair;

    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/google/zxing/oned/rss/Pair;->getCount()I

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    if-le p3, v0, :cond_0

    .line 50
    .line 51
    iget-object p3, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_0

    .line 62
    .line 63
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lcom/google/zxing/oned/rss/Pair;

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/Pair;->getCount()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-le v2, v0, :cond_1

    .line 74
    .line 75
    invoke-static {p2, v1}, Lcom/google/zxing/oned/rss/RSS14Reader;->checkChecksum(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_1

    .line 80
    .line 81
    invoke-static {p2, v1}, Lcom/google/zxing/oned/rss/RSS14Reader;->constructResult(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Lcom/google/zxing/Result;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    return-object p1

    .line 86
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    throw p1
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
