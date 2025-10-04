.class public abstract L땥땀딞둠둔뒷둘딻딟둣땰뒀둬뎹땮땡돨땟듬뒵되듟땔땁됐둔딅뒙돵땋딝돛땣돳딹두됴딝뒷딸듬땸뎹둬둣뒐될뎨돴딻되들딃뒷땥땍돵듼된도돵돨뎹땨뒾땔뒾뒨땋뒷돵듽땄뒷뎽뒈땋둣듻돰땃뒛뎠둘땱딸딄땹땜땩됨딅딀뒀돴뎻땍듰딅땫뎽땳둘딻땥딤돵뒤돳뒝됩돴됐둥땵됐뎽딨둘땹뒋땵딜땰딽땬땅뒨듬듸;
.super L땥두돷딅딀땱딄땣돶뒉돼됫듼뎡듨딞땅땪땣돴뒬듬둡돨듽뒙땣땟딝듌뒀딤돨뒈딌돳땜딠둘딁딽뒘땮땃딐땦득딅땡됫딌딄듔땫뒷듰둡뒷듼뎡땫둔둠둑뎠듸됨듬땤뎨돴둘될뎸돼땲뒼땵뒹뎸두땡딨딄듼됐땫딻뒘땳땨땣딄뎸딁땃뒉땨돳땅땤둡땵땣딸든땰땣돨뎻듐듐딎득돤돳땅땳땧돝딠뒙둡뎰딠땍돛땤듐딞;
.source "SourceFile"


# direct methods
.method public static final prependIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "indent"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->lineSequence(Ljava/lang/CharSequence;)Lkotlin/sequences/Sequence;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    new-instance v0, L땥뒘될딝땩듨듼되땲뎡돶땁듟땝디뒾땱듸돤뒤디땸땀듰둣땵뒵딻뒐땤땋딞돠딨돳딹둘딄듌뎹됐뒋뎡딽됴딻둣뎽뎻딎딎뒹딤땹된땋듟땳듬땫딎땫둣땍둘뒾뒹뎸딌땮따돼듼딜된도딜땥딀돶들땡땀된딸돴뒉딸딹듰딌딄땃됨뒷듐딨돵뒙따딀뎸뒋땜뎹딞든뎹뎠두될뒵딝땻땔뒻돛되땫뒼땠뎰뎸뒋뎸땜뒨돶돠딁;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, p1, v1}, L땥뒘될딝땩듨듼되땲뎡돶땁듟땝디뒾땱듸돤뒤디땸땀듰둣땵뒵딻뒐땤땋딞돠딨돳딹둘딄듌뎹됐뒋뎡딽됴딻둣뎽뎻딎딎뒹딤땹된땋듟땳듬땫딎땫둣땍둘뒾뒹뎸딌땮따돼듼딜된도딜땥딀돶들땡땀된딸돴뒉딸딹듰딌딄땃됨뒷듐딨돵뒙따딀뎸뒋땜뎹딞든뎹뎠두될뒵딝땻땔뒻돛되땫뒼땠뎰뎸뒋뎸땜뒨돶돠딁;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v8, 0x0

    .line 27
    const-string v3, "\n"

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x0

    .line 32
    const/16 v9, 0x3e

    .line 33
    .line 34
    const/4 v10, 0x0

    .line 35
    invoke-static/range {v2 .. v10}, Lkotlin/sequences/SequencesKt___SequencesKt;->joinToString$default(Lkotlin/sequences/Sequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method public static synthetic prependIndent$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const-string p1, "    "

    .line 6
    .line 7
    :cond_0
    invoke-static {p0, p1}, L땥땀딞둠둔뒷둘딻딟둣땰뒀둬뎹땮땡돨땟듬뒵되듟땔땁됐둔딅뒙돵땋딝돛땣돳딹두됴딝뒷딸듬땸뎹둬둣뒐될뎨돴딻되들딃뒷땥땍돵듼된도돵돨뎹땨뒾땔뒾뒨땋뒷돵듽땄뒷뎽뒈땋둣듻돰땃뒛뎠둘땱딸딄땹땜땩됨딅딀뒀돴뎻땍듰딅땫뎽땳둘딻땥딤돵뒤돳뒝됩돴됐둥땵됐뎽딨둘땹뒋땵딜땰딽땬땅뒨듬듸;->prependIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static final replaceIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "<this>"

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "newIndent"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static/range {p0 .. p0}, Lkotlin/text/StringsKt__StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    move-object v3, v1

    .line 20
    check-cast v3, Ljava/lang/Iterable;

    .line 21
    .line 22
    new-instance v4, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_1

    .line 36
    .line 37
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    move-object v6, v5

    .line 42
    check-cast v6, Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v6}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-nez v6, :cond_0

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    .line 55
    .line 56
    const/16 v5, 0xa

    .line 57
    .line 58
    invoke-static {v4, v5}, L됴됐듔땬뒤땟땧딃듸듬딎둥딁땋뒐뒵딠뒉득됫땁된둔뎻두돛땔땪땳뒷듰딄뒤딝땧돝딽땔뎸듔뒀돛땳뒘돝돝땣뎻땃듼뎡뒹돤땸뎹딄득땡돷듟돶둑딎두돷듨땨둔됨뒹둘딄됩땫땵딀뒝딐뒝땋뎻땄뎻뎸딞듬돤뒼따딜두딎뒙돷뒘돨듨딽땣뒾땬듰땬듸딤뎨뎰땧둔듽돶뎰땋땍돳돶딤땅돴듸땝돰뎽땪땩둣땅뒹뒬땅;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    const/4 v6, 0x0

    .line 74
    if-eqz v5, :cond_5

    .line 75
    .line 76
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    check-cast v5, Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    :goto_2
    const/4 v8, -0x1

    .line 87
    if-ge v6, v7, :cond_3

    .line 88
    .line 89
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    invoke-static {v9}, Lkotlin/text/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;->isWhitespace(C)Z

    .line 94
    .line 95
    .line 96
    move-result v9

    .line 97
    if-nez v9, :cond_2

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_3
    const/4 v6, -0x1

    .line 104
    :goto_3
    if-ne v6, v8, :cond_4

    .line 105
    .line 106
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_5
    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->minOrNull(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    check-cast v3, Ljava/lang/Integer;

    .line 123
    .line 124
    if-eqz v3, :cond_6

    .line 125
    .line 126
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    goto :goto_4

    .line 131
    :cond_6
    const/4 v3, 0x0

    .line 132
    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    mul-int v5, v5, v4

    .line 145
    .line 146
    add-int/2addr v5, v2

    .line 147
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-nez v2, :cond_7

    .line 152
    .line 153
    new-instance v0, L둬땹돸따땃뎰뎡들땟됐땵됫땍땟땡딠돵뒘듽땨땹땬돸땨딸땀뎰딐딄됴땟듨딅땫땸딄땁딃뒼듌뒉돸듼돝뒵땨땫둬딹땧듬드땦뒋듐듼딜땳딠뒋돸땄딽듸돠돴딄돸땬뎽땵뒋뎸듌땍뎸땃뒈땪딝땹땠땰딞땁돠땦뎸돝땹딄땡땝땣듰뒬듟뒀돛뒙딜딅땜땲땻땰뎹돴땔뒈땪듰뎠땤따땟됨땧딨땦딄뒙땪뎹뎨듼뒙둔땩딤;

    .line 154
    .line 155
    const/16 v2, 0x1a

    .line 156
    .line 157
    invoke-direct {v0, v2}, L둬땹돸따땃뎰뎡들땟됐땵됫땍땟땡딠돵뒘듽땨땹땬돸땨딸땀뎰딐딄됴땟듨딅땫땸딄땁딃뒼듌뒉돸듼돝뒵땨땫둬딹땧듬드땦뒋듐듼딜땳딠뒋돸땄딽듸돠돴딄돸땬뎽땵뒋뎸듌땍뎸땃뒈땪딝땹땠땰딞땁돠땦뎸돝땹딄땡땝땣듰뒬듟뒀돛뒙딜딅땜땲땻땰뎹돴땔뒈땪듰뎠땤따땟됨땧딨땦딄뒙땪뎹뎨듼뒙둔땩딤;-><init>(I)V

    .line 158
    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_7
    new-instance v2, L땥뒘될딝땩듨듼되땲뎡돶땁듟땝디뒾땱듸돤뒤디땸땀듰둣땵뒵딻뒐땤땋딞돠딨돳딹둘딄듌뎹됐뒋뎡딽됴딻둣뎽뎻딎딎뒹딤땹된땋듟땳듬땫딎땫둣땍둘뒾뒹뎸딌땮따돼듼딜된도딜땥딀돶들땡땀된딸돴뒉딸딹듰딌딄땃됨뒷듐딨돵뒙따딀뎸뒋땜뎹딞든뎹뎠두될뒵딝땻땔뒻돛되땫뒼땠뎰뎸뒋뎸땜뒨돶돠딁;

    .line 162
    .line 163
    const/4 v4, 0x1

    .line 164
    invoke-direct {v2, v0, v4}, L땥뒘될딝땩듨듼되땲뎡돶땁듟땝디뒾땱듸돤뒤디땸땀듰둣땵뒵딻뒐땤땋딞돠딨돳딹둘딄듌뎹됐뒋뎡딽됴딻둣뎽뎻딎딎뒹딤땹된땋듟땳듬땫딎땫둣땍둘뒾뒹뎸딌땮따돼듼딜된도딜땥딀돶들땡땀된딸돴뒉딸딹듰딌딄땃됨뒷듐딨돵뒙따딀뎸뒋땜뎹딞든뎹뎠두될뒵딝땻땔뒻돛되땫뒼땠뎰뎸뒋뎸땜뒨돶돠딁;-><init>(Ljava/lang/String;I)V

    .line 165
    .line 166
    .line 167
    move-object v0, v2

    .line 168
    :goto_5
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    check-cast v1, Ljava/lang/Iterable;

    .line 173
    .line 174
    new-instance v7, Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 184
    .line 185
    .line 186
    move-result v4

    .line 187
    if-eqz v4, :cond_e

    .line 188
    .line 189
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    add-int/lit8 v8, v6, 0x1

    .line 194
    .line 195
    if-gez v6, :cond_8

    .line 196
    .line 197
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    .line 198
    .line 199
    .line 200
    :cond_8
    check-cast v4, Ljava/lang/String;

    .line 201
    .line 202
    if-eqz v6, :cond_9

    .line 203
    .line 204
    if-ne v6, v2, :cond_a

    .line 205
    .line 206
    :cond_9
    invoke-static {v4}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    if-eqz v6, :cond_a

    .line 211
    .line 212
    const/4 v4, 0x0

    .line 213
    goto :goto_7

    .line 214
    :cond_a
    invoke-static {v4, v3}, Lkotlin/text/StringsKt___StringsKt;->drop(Ljava/lang/String;I)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    if-eqz v6, :cond_c

    .line 219
    .line 220
    invoke-interface {v0, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    check-cast v6, Ljava/lang/String;

    .line 225
    .line 226
    if-nez v6, :cond_b

    .line 227
    .line 228
    goto :goto_7

    .line 229
    :cond_b
    move-object v4, v6

    .line 230
    :cond_c
    :goto_7
    if-eqz v4, :cond_d

    .line 231
    .line 232
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    :cond_d
    move v6, v8

    .line 236
    goto :goto_6

    .line 237
    :cond_e
    new-instance v8, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 240
    .line 241
    .line 242
    const/4 v13, 0x0

    .line 243
    const/4 v14, 0x0

    .line 244
    const-string v9, "\n"

    .line 245
    .line 246
    const/4 v10, 0x0

    .line 247
    const/4 v11, 0x0

    .line 248
    const/4 v12, 0x0

    .line 249
    const/16 v15, 0x7c

    .line 250
    .line 251
    const/16 v16, 0x0

    .line 252
    .line 253
    invoke-static/range {v7 .. v16}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    check-cast v0, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    return-object v0
.end method

.method public static synthetic replaceIndent$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const-string p1, ""

    .line 6
    .line 7
    :cond_0
    invoke-static {p0, p1}, L땥땀딞둠둔뒷둘딻딟둣땰뒀둬뎹땮땡돨땟듬뒵되듟땔땁됐둔딅뒙돵땋딝돛땣돳딹두됴딝뒷딸듬땸뎹둬둣뒐될뎨돴딻되들딃뒷땥땍돵듼된도돵돨뎹땨뒾땔뒾뒨땋뒷돵듽땄뒷뎽뒈땋둣듻돰땃뒛뎠둘땱딸딄땹땜땩됨딅딀뒀돴뎻땍듰딅땫뎽땳둘딻땥딤돵뒤돳뒝됩돴됐둥땵됐뎽딨둘땹뒋땵딜땰딽땬땅뒨듬듸;->replaceIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static final replaceIndentByMargin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "<this>"

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "newIndent"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "marginPrefix"

    .line 16
    .line 17
    move-object/from16 v8, p2

    .line 18
    .line 19
    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static/range {p2 .. p2}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_c

    .line 27
    .line 28
    invoke-static/range {p0 .. p0}, Lkotlin/text/StringsKt__StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    mul-int v4, v4, v3

    .line 45
    .line 46
    add-int v9, v4, v2

    .line 47
    .line 48
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_0

    .line 53
    .line 54
    new-instance v0, L둬땹돸따땃뎰뎡들땟됐땵됫땍땟땡딠돵뒘듽땨땹땬돸땨딸땀뎰딐딄됴땟듨딅땫땸딄땁딃뒼듌뒉돸듼돝뒵땨땫둬딹땧듬드땦뒋듐듼딜땳딠뒋돸땄딽듸돠돴딄돸땬뎽땵뒋뎸듌땍뎸땃뒈땪딝땹땠땰딞땁돠땦뎸돝땹딄땡땝땣듰뒬듟뒀돛뒙딜딅땜땲땻땰뎹돴땔뒈땪듰뎠땤따땟됨땧딨땦딄뒙땪뎹뎨듼뒙둔땩딤;

    .line 55
    .line 56
    const/16 v2, 0x1a

    .line 57
    .line 58
    invoke-direct {v0, v2}, L둬땹돸따땃뎰뎡들땟됐땵됫땍땟땡딠돵뒘듽땨땹땬돸땨딸땀뎰딐딄됴땟듨딅땫땸딄땁딃뒼듌뒉돸듼돝뒵땨땫둬딹땧듬드땦뒋듐듼딜땳딠뒋돸땄딽듸돠돴딄돸땬뎽땵뒋뎸듌땍뎸땃뒈땪딝땹땠땰딞땁돠땦뎸돝땹딄땡땝땣듰뒬듟뒀돛뒙딜딅땜땲땻땰뎹돴땔뒈땪듰뎠땤따땟됨땧딨땦딄뒙땪뎹뎨듼뒙둔땩딤;-><init>(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    new-instance v2, L땥뒘될딝땩듨듼되땲뎡돶땁듟땝디뒾땱듸돤뒤디땸땀듰둣땵뒵딻뒐땤땋딞돠딨돳딹둘딄듌뎹됐뒋뎡딽됴딻둣뎽뎻딎딎뒹딤땹된땋듟땳듬땫딎땫둣땍둘뒾뒹뎸딌땮따돼듼딜된도딜땥딀돶들땡땀된딸돴뒉딸딹듰딌딄땃됨뒷듐딨돵뒙따딀뎸뒋땜뎹딞든뎹뎠두될뒵딝땻땔뒻돛되땫뒼땠뎰뎸뒋뎸땜뒨돶돠딁;

    .line 63
    .line 64
    const/4 v3, 0x1

    .line 65
    invoke-direct {v2, v0, v3}, L땥뒘될딝땩듨듼되땲뎡돶땁듟땝디뒾땱듸돤뒤디땸땀듰둣땵뒵딻뒐땤땋딞돠딨돳딹둘딄듌뎹됐뒋뎡딽됴딻둣뎽뎻딎딎뒹딤땹된땋듟땳듬땫딎땫둣땍둘뒾뒹뎸딌땮따돼듼딜된도딜땥딀돶들땡땀된딸돴뒉딸딹듰딌딄땃됨뒷듐딨돵뒙따딀뎸뒋땜뎹딞든뎹뎠두될뒵딝땻땔뒻돛되땫뒼땠뎰뎸뒋뎸땜뒨돶돠딁;-><init>(Ljava/lang/String;I)V

    .line 66
    .line 67
    .line 68
    move-object v0, v2

    .line 69
    :goto_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    .line 70
    .line 71
    .line 72
    move-result v10

    .line 73
    check-cast v1, Ljava/lang/Iterable;

    .line 74
    .line 75
    new-instance v11, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const/4 v12, 0x0

    .line 85
    const/4 v2, 0x0

    .line 86
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_b

    .line 91
    .line 92
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    add-int/lit8 v13, v2, 0x1

    .line 97
    .line 98
    if-gez v2, :cond_1

    .line 99
    .line 100
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    .line 101
    .line 102
    .line 103
    :cond_1
    move-object v14, v3

    .line 104
    check-cast v14, Ljava/lang/String;

    .line 105
    .line 106
    const/4 v15, 0x0

    .line 107
    if-eqz v2, :cond_2

    .line 108
    .line 109
    if-ne v2, v10, :cond_3

    .line 110
    .line 111
    :cond_2
    invoke-static {v14}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-eqz v2, :cond_3

    .line 116
    .line 117
    move-object v14, v15

    .line 118
    goto :goto_5

    .line 119
    :cond_3
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    const/4 v3, 0x0

    .line 124
    :goto_2
    const/4 v4, -0x1

    .line 125
    if-ge v3, v2, :cond_5

    .line 126
    .line 127
    invoke-virtual {v14, v3}, Ljava/lang/String;->charAt(I)C

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    invoke-static {v5}, Lkotlin/text/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;->isWhitespace(C)Z

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    if-nez v5, :cond_4

    .line 136
    .line 137
    move v7, v3

    .line 138
    goto :goto_3

    .line 139
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_5
    const/4 v7, -0x1

    .line 143
    :goto_3
    if-ne v7, v4, :cond_6

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_6
    const/16 v16, 0x0

    .line 147
    .line 148
    const/4 v5, 0x0

    .line 149
    const/4 v6, 0x4

    .line 150
    move-object v2, v14

    .line 151
    move-object/from16 v3, p2

    .line 152
    .line 153
    move v4, v7

    .line 154
    move/from16 v17, v7

    .line 155
    .line 156
    move-object/from16 v7, v16

    .line 157
    .line 158
    invoke-static/range {v2 .. v7}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->startsWith$default(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-eqz v2, :cond_7

    .line 163
    .line 164
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    add-int v2, v2, v17

    .line 169
    .line 170
    const-string v3, "null cannot be cast to non-null type java.lang.String"

    .line 171
    .line 172
    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v14, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v15

    .line 179
    const-string v2, "substring(...)"

    .line 180
    .line 181
    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :cond_7
    :goto_4
    if-eqz v15, :cond_9

    .line 185
    .line 186
    invoke-interface {v0, v15}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    check-cast v2, Ljava/lang/String;

    .line 191
    .line 192
    if-nez v2, :cond_8

    .line 193
    .line 194
    goto :goto_5

    .line 195
    :cond_8
    move-object v14, v2

    .line 196
    :cond_9
    :goto_5
    if-eqz v14, :cond_a

    .line 197
    .line 198
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    :cond_a
    move v2, v13

    .line 202
    goto :goto_1

    .line 203
    :cond_b
    new-instance v12, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 206
    .line 207
    .line 208
    const/16 v17, 0x0

    .line 209
    .line 210
    const/16 v18, 0x0

    .line 211
    .line 212
    const-string v13, "\n"

    .line 213
    .line 214
    const/4 v14, 0x0

    .line 215
    const/4 v15, 0x0

    .line 216
    const/16 v16, 0x0

    .line 217
    .line 218
    const/16 v19, 0x7c

    .line 219
    .line 220
    const/16 v20, 0x0

    .line 221
    .line 222
    invoke-static/range {v11 .. v20}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    check-cast v0, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    return-object v0

    .line 233
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 234
    .line 235
    const-string v1, "marginPrefix must be non-blank string."

    .line 236
    .line 237
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    throw v0
.end method

.method public static synthetic replaceIndentByMargin$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const-string p1, ""

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    const-string p2, "|"

    .line 12
    .line 13
    :cond_1
    invoke-static {p0, p1, p2}, L땥땀딞둠둔뒷둘딻딟둣땰뒀둬뎹땮땡돨땟듬뒵되듟땔땁됐둔딅뒙돵땋딝돛땣돳딹두됴딝뒷딸듬땸뎹둬둣뒐될뎨돴딻되들딃뒷땥땍돵듼된도돵돨뎹땨뒾땔뒾뒨땋뒷돵듽땄뒷뎽뒈땋둣듻돰땃뒛뎠둘땱딸딄땹땜땩됨딅딀뒀돴뎻땍듰딅땫뎽땳둘딻땥딤돵뒤돳뒝됩돴됐둥땵됐뎽딨둘땹뒋땵딜땰딽땬땅뒨듬듸;->replaceIndentByMargin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static trimIndent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/internal/IntrinsicConstEvaluation;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, ""

    .line 7
    .line 8
    invoke-static {p0, v0}, L땥땀딞둠둔뒷둘딻딟둣땰뒀둬뎹땮땡돨땟듬뒵되듟땔땁됐둔딅뒙돵땋딝돛땣돳딹두됴딝뒷딸듬땸뎹둬둣뒐될뎨돴딻되들딃뒷땥땍돵듼된도돵돨뎹땨뒾땔뒾뒨땋뒷돵듽땄뒷뎽뒈땋둣듻돰땃뒛뎠둘땱딸딄땹땜땩됨딅딀뒀돴뎻땍듰딅땫뎽땳둘딻땥딤돵뒤돳뒝됩돴됐둥땵됐뎽딨둘땹뒋땵딜땰딽땬땅뒨듬듸;->replaceIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static final trimMargin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/internal/IntrinsicConstEvaluation;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "marginPrefix"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, ""

    .line 12
    .line 13
    invoke-static {p0, v0, p1}, L땥땀딞둠둔뒷둘딻딟둣땰뒀둬뎹땮땡돨땟듬뒵되듟땔땁됐둔딅뒙돵땋딝돛땣돳딹두됴딝뒷딸듬땸뎹둬둣뒐될뎨돴딻되들딃뒷땥땍돵듼된도돵돨뎹땨뒾땔뒾뒨땋뒷돵듽땄뒷뎽뒈땋둣듻돰땃뒛뎠둘땱딸딄땹땜땩됨딅딀뒀돴뎻땍듰딅땫뎽땳둘딻땥딤돵뒤돳뒝됩돴됐둥땵됐뎽딨둘땹뒋땵딜땰딽땬땅뒨듬듸;->replaceIndentByMargin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static synthetic trimMargin$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const-string p1, "|"

    .line 6
    .line 7
    :cond_0
    invoke-static {p0, p1}, L땥땀딞둠둔뒷둘딻딟둣땰뒀둬뎹땮땡돨땟듬뒵되듟땔땁됐둔딅뒙돵땋딝돛땣돳딹두됴딝뒷딸듬땸뎹둬둣뒐될뎨돴딻되들딃뒷땥땍돵듼된도돵돨뎹땨뒾땔뒾뒨땋뒷돵듽땄뒷뎽뒈땋둣듻돰땃뒛뎠둘땱딸딄땹땜땩됨딅딀뒀돴뎻땍듰딅땫뎽땳둘딻땥딤돵뒤돳뒝됩돴됐둥땵됐뎽딨둘땹뒋땵딜땰딽땬땅뒨듬듸;->trimMargin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
