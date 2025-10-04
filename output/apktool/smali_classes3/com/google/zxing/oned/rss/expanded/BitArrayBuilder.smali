.class final Lcom/google/zxing/oned/rss/expanded/BitArrayBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static buildBitArray(Ljava/util/List;)Lcom/google/zxing/common/BitArray;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;)",
            "Lcom/google/zxing/common/BitArray;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    add-int/lit8 v1, v0, -0x1

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-static {v2, p0}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(ILjava/util/List;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 15
    .line 16
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    add-int/lit8 v1, v0, -0x2

    .line 23
    .line 24
    :cond_0
    mul-int/lit8 v1, v1, 0xc

    .line 25
    .line 26
    new-instance v0, Lcom/google/zxing/common/BitArray;

    .line 27
    .line 28
    invoke-direct {v0, v1}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    const/16 v4, 0xb

    .line 47
    .line 48
    const/16 v5, 0xb

    .line 49
    .line 50
    :goto_0
    if-ltz v5, :cond_2

    .line 51
    .line 52
    shl-int v6, v2, v5

    .line 53
    .line 54
    and-int/2addr v6, v3

    .line 55
    if-eqz v6, :cond_1

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->set(I)V

    .line 58
    .line 59
    .line 60
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 61
    .line 62
    add-int/lit8 v5, v5, -0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/4 v3, 0x1

    .line 66
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-ge v3, v5, :cond_7

    .line 71
    .line 72
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    check-cast v5, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 77
    .line 78
    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    const/16 v7, 0xb

    .line 87
    .line 88
    :goto_2
    if-ltz v7, :cond_4

    .line 89
    .line 90
    shl-int v8, v2, v7

    .line 91
    .line 92
    and-int/2addr v8, v6

    .line 93
    if-eqz v8, :cond_3

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->set(I)V

    .line 96
    .line 97
    .line 98
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 99
    .line 100
    add-int/lit8 v7, v7, -0x1

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_4
    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    if-eqz v6, :cond_6

    .line 108
    .line 109
    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    const/16 v6, 0xb

    .line 118
    .line 119
    :goto_3
    if-ltz v6, :cond_6

    .line 120
    .line 121
    shl-int v7, v2, v6

    .line 122
    .line 123
    and-int/2addr v7, v5

    .line 124
    if-eqz v7, :cond_5

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->set(I)V

    .line 127
    .line 128
    .line 129
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 130
    .line 131
    add-int/lit8 v6, v6, -0x1

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_7
    return-object v0
.end method
