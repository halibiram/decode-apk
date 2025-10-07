.class public abstract L뒵둡딁딻뎸둣뎠땳됨뒉땟딀땝뒈돰뎠딄딞뒤땤됐듼둠딤땨따뎰딻돛뒛득뒷듻딅듟뒹뒛땹됨뒹돝둑둣딄땪뒹땨듔땠될들땬됴뒾돛뎰뒷든득됴딌땡딹땪땨됴뒋듐딄땵듽든땄뎠딄따뎸뎹땫뎠듐돴뒛들됐땳둡땦뒈땜뎹땠뒬땔땐뒻땟뒉돼땍딽뎰딹듬땪도듻됐땄딨땥뒐딌뒋딃뒾땳뒈땣뒝둔됫뒐돸둘둬듔땦땤뒀;
.super L뒬땧땀듐뒼듰딄뒝둑땃돳둡듼됨땸뒉될뒛딽땍땻됩됨땻땨뎽땹돳둥땃딅됫듼됨뒘땻땄땍듰땋됐땍둑땫땐땐디돸땯땬됐된딜땵둣뒵뒤디들돨됨땫딠듟디딃돰돵땄땝듽돛땡됩돨딀둬뎨땧둘뒹땐돠딽뎽땸딅땁땮듽딞듼뎽딐뒝돸둬땤뎽돠땬땦됴딅땬됐듐땟땥듰둑땧듔됨둬둠땲땣딨땥듟뒬뒬드듸딌됨돰땣딌;
.source "SourceFile"


# direct methods
.method public static final copyRecursively(Ljava/io/File;Ljava/io/File;ZLkotlin/jvm/functions/Function2;)Z
    .locals 11
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/io/File;",
            "-",
            "Ljava/io/IOException;",
            "+",
            "Lkotlin/io/OnErrorAction;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "target"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "onError"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    new-instance p1, Lkotlin/io/NoSuchFileException;

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    const-string v6, "The source file doesn\'t exist."

    .line 28
    .line 29
    const/4 v7, 0x2

    .line 30
    const/4 v8, 0x0

    .line 31
    move-object v3, p1

    .line 32
    move-object v4, p0

    .line 33
    invoke-direct/range {v3 .. v8}, Lkotlin/io/NoSuchFileException;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p3, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    sget-object p1, Lkotlin/io/OnErrorAction;->TERMINATE:Lkotlin/io/OnErrorAction;

    .line 41
    .line 42
    if-eq p0, p1, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v1, 0x0

    .line 46
    :goto_0
    return v1

    .line 47
    :cond_1
    :try_start_0
    invoke-static {p0}, L뒬땧땀듐뒼듰딄뒝둑땃돳둡듼됨땸뒉될뒛딽땍땻됩됨땻땨뎽땹돳둥땃딅됫듼됨뒘땻땄땍듰땋됐땍둑땫땐땐디돸땯땬됐된딜땵둣뒵뒤디들돨됨땫딠듟디딃돰돵땄땝듽돛땡됩돨딀둬뎨땧둘뒹땐돠딽뎽땸딅땁땮듽딞듼뎽딐뒝돸둬땤뎽돠땬땦됴딅땬됐듐땟땥듰둑땧듔됨둬둠땲땣딨땥듟뒬뒬드듸딌됨돰땣딌;->walkTopDown(Ljava/io/File;)Lkotlin/io/FileTreeWalk;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v3, L뒵뎰뎽뒷딽땐땍땹뎰땱딹둡둠돴땳딃땐딟뎰된돷딜땭돝땨드둥뒋듸둠딄뒝됴땋되돷땫땅딤둘뒹딞땨뒨뎻땰땳뒈듌들뒝땧뒨듽뒈땫뒬뒛돵땬뒻듌땁뎡됴땥딎듼뎻돰땭땁땔땩됴딁됩됴둡땜땫됐됨된땳돤돼뎰땡땟땭뒾둘듽땥딻땹뒐땵도뒈돝땋딁뒹뒤듰돛됴땐땔딁듬뎰땅딞뒛돨딀땫땻땻뎡둡땅땩뒋뒻돷딞;

    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    invoke-direct {v3, p3, v4}, L뒵뎰뎽뒷딽땐땍땹뎰땱딹둡둠돴땳딃땐딟뎰된돷딜땭돝땨드둥뒋듸둠딄뒝됴땋되돷땫땅딤둘뒹딞땨뒨뎻땰땳뒈듌들뒝땧뒨듽뒈땫뒬뒛돵땬뒻듌땁뎡됴땥딎듼뎻돰땭땁땔땩됴딁됩됴둡땜땫됐됨된땳돤돼뎰땡땟땭뒾둘듽땥딻땹뒐땵도뒈돝땋딁뒹뒤듰돛됴땐땔딁듬뎰땅딞뒛돨딀땫땻땻뎡둡땅땩뒋뒻돷딞;-><init>(Lkotlin/jvm/functions/Function2;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v3}, Lkotlin/io/FileTreeWalk;->onFail(Lkotlin/jvm/functions/Function2;)Lkotlin/io/FileTreeWalk;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lkotlin/io/FileTreeWalk;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_9

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Ljava/io/File;

    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-nez v4, :cond_3

    .line 82
    .line 83
    new-instance v10, Lkotlin/io/NoSuchFileException;

    .line 84
    .line 85
    const-string v7, "The source file doesn\'t exist."

    .line 86
    .line 87
    const/4 v9, 0x0

    .line 88
    const/4 v6, 0x0

    .line 89
    const/4 v8, 0x2

    .line 90
    move-object v4, v10

    .line 91
    move-object v5, v3

    .line 92
    invoke-direct/range {v4 .. v9}, Lkotlin/io/NoSuchFileException;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 93
    .line 94
    .line 95
    invoke-interface {p3, v3, v10}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    sget-object v4, Lkotlin/io/OnErrorAction;->TERMINATE:Lkotlin/io/OnErrorAction;

    .line 100
    .line 101
    if-ne v3, v4, :cond_2

    .line 102
    .line 103
    return v2

    .line 104
    :cond_3
    invoke-static {v3, p0}, L뒵둡딁딻뎸둣뎠땳됨뒉땟딀땝뒈돰뎠딄딞뒤땤됐듼둠딤땨따뎰딻돛뒛득뒷듻딅듟뒹뒛땹됨뒹돝둑둣딄땪뒹땨듔땠될들땬됴뒾돛뎰뒷든득됴딌땡딹땪땨됴뒋듐딄땵듽든땄뎠딄따뎸뎹땫뎠듐돴뒛들됐땳둡땦뒈땜뎹땠뒬땔땐뒻땟뒉돼땍딽뎰딹듬땪도듻됐땄딨땥뒐딌뒋딃뒾땳뒈땣뒝둔됫뒐돸둘둬듔땦땤뒀;->toRelativeString(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    new-instance v5, Ljava/io/File;

    .line 109
    .line 110
    invoke-direct {v5, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-eqz v4, :cond_7

    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    if-eqz v4, :cond_4

    .line 124
    .line 125
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-nez v4, :cond_7

    .line 130
    .line 131
    :cond_4
    if-nez p2, :cond_5

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_5
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    if-eqz v4, :cond_6

    .line 139
    .line 140
    invoke-static {v5}, L뒵둡딁딻뎸둣뎠땳됨뒉땟딀땝뒈돰뎠딄딞뒤땤됐듼둠딤땨따뎰딻돛뒛득뒷듻딅듟뒹뒛땹됨뒹돝둑둣딄땪뒹땨듔땠될들땬됴뒾돛뎰뒷든득됴딌땡딹땪땨됴뒋듐딄땵듽든땄뎠딄따뎸뎹땫뎠듐돴뒛들됐땳둡땦뒈땜뎹땠뒬땔땐뒻땟뒉돼땍딽뎰딹듬땪도듻됐땄딨땥뒐딌뒋딃뒾땳뒈땣뒝둔됫뒐돸둘둬듔땦땤뒀;->deleteRecursively(Ljava/io/File;)Z

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    if-nez v4, :cond_7

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_6
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-nez v4, :cond_7

    .line 152
    .line 153
    :goto_2
    new-instance v4, Lkotlin/io/FileAlreadyExistsException;

    .line 154
    .line 155
    const-string v6, "The destination file already exists."

    .line 156
    .line 157
    invoke-direct {v4, v3, v5, v6}, Lkotlin/io/FileAlreadyExistsException;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-interface {p3, v5, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    sget-object v4, Lkotlin/io/OnErrorAction;->TERMINATE:Lkotlin/io/OnErrorAction;

    .line 165
    .line 166
    if-ne v3, v4, :cond_2

    .line 167
    .line 168
    return v2

    .line 169
    :cond_7
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    if-eqz v4, :cond_8

    .line 174
    .line 175
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_8
    const/4 v9, 0x0

    .line 180
    const/4 v7, 0x0

    .line 181
    const/4 v8, 0x4

    .line 182
    move-object v4, v3

    .line 183
    move v6, p2

    .line 184
    invoke-static/range {v4 .. v9}, L뒵둡딁딻뎸둣뎠땳됨뒉땟딀땝뒈돰뎠딄딞뒤땤됐듼둠딤땨따뎰딻돛뒛득뒷듻딅듟뒹뒛땹됨뒹돝둑둣딄땪뒹땨듔땠될들땬됴뒾돛뎰뒷든득됴딌땡딹땪땨됴뒋듐딄땵듽든땄뎠딄따뎸뎹땫뎠듐돴뒛들됐땳둡땦뒈땜뎹땠뒬땔땐뒻땟뒉돼땍딽뎰딹듬땪도듻됐땄딨땥뒐딌뒋딃뒾땳뒈땣뒝둔됫뒐돸둘둬듔땦땤뒀;->copyTo$default(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 189
    .line 190
    .line 191
    move-result-wide v4

    .line 192
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 193
    .line 194
    .line 195
    move-result-wide v6

    .line 196
    cmp-long v8, v4, v6

    .line 197
    .line 198
    if-eqz v8, :cond_2

    .line 199
    .line 200
    new-instance v4, Ljava/io/IOException;

    .line 201
    .line 202
    const-string v5, "Source file wasn\'t copied completely, length of destination file differs."

    .line 203
    .line 204
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-interface {p3, v3, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    sget-object v4, Lkotlin/io/OnErrorAction;->TERMINATE:Lkotlin/io/OnErrorAction;
    :try_end_0
    .catch L땪듐땀뒋됫땟딹딅뒈둡딐딹뒹돨뒘둑돨뒙뒈뒹듟뒾됩딻땮땁뎨뒙돸돳된듬듸땤됐듌땦돶돶듟듬됩땥뎰돵땝듬딽땦땻뒘딨뎸둥땸따된뒙돠딀땨듸뒉딄듬돤땩땲땱땸둠돼돠듻뒘뎹디뎸땥딞땁돠딽딐딻땮되둔드땀듔됫땋둬땅땧돤딝딃뒈둥듨뒉듨딞땜된듸듔땃딞땱딜땔땋딐땋땳듸돸둥뎻뎸뎠뎹뎠딽뎽듌둡; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .line 213
    if-ne v3, v4, :cond_2

    .line 214
    .line 215
    return v2

    .line 216
    :cond_9
    return v1

    .line 217
    :catch_0
    return v2
.end method

.method public static synthetic copyRecursively$default(Ljava/io/File;Ljava/io/File;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Z
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 7
    .line 8
    if-eqz p4, :cond_1

    .line 9
    .line 10
    sget-object p3, L뒵뎻듨뎸드뎻땣둡딜될땠땩땯딻땋뎸뎰땋딻땄듸뎽뒉딝돴듬됨따뒷뒈따됩뒼땭딁두딹뒛딻둘딠듰돳뒉돨따땳뒈땟돼돳뒐땻뒝따땭뒘딟돛듻뎹둑딄듐땋뒻땀땪딤딝땩뒋뒨뎨둥돰듻뎹땹딜땲둬듌땅딌딟땃딹땥땍뒨드뒹땬돠둑듐땐된뒵돼땳듸돝돶됫뒘뒵뒨도둘듨됨둥땔돠돵땬딹딁땨뒉땱된든딅땄땠딠뎹;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:L뒵뎻듨뎸드뎻땣둡딜될땠땩땯딻땋뎸뎰땋딻땄듸뎽뒉딝돴듬됨따뒷뒈따됩뒼땭딁두딹뒛딻둘딠듰돳뒉돨따땳뒈땟돼돳뒐땻뒝따땭뒘딟돛듻뎹둑딄듐땋뒻땀땪딤딝땩뒋뒨뎨둥돰듻뎹땹딜땲둬듌땅딌딟땃딹땥땍뒨드뒹땬돠둑듐땐된뒵돼땳듸돝돶됫뒘뒵뒨도둘듨됨둥땔돠돵땬딹딁땨뒉땱된든딅땄땠딠뎹;

    .line 11
    .line 12
    :cond_1
    invoke-static {p0, p1, p2, p3}, L뒵둡딁딻뎸둣뎠땳됨뒉땟딀땝뒈돰뎠딄딞뒤땤됐듼둠딤땨따뎰딻돛뒛득뒷듻딅듟뒹뒛땹됨뒹돝둑둣딄땪뒹땨듔땠될들땬됴뒾돛뎰뒷든득됴딌땡딹땪땨됴뒋듐딄땵듽든땄뎠딄따뎸뎹땫뎠듐돴뒛들됐땳둡땦뒈땜뎹땠뒬땔땐뒻땟뒉돼땍딽뎰딹듬땪도듻됐땄딨땥뒐딌뒋딃뒾땳뒈땣뒝둔됫뒐돸둘둬듔땦땤뒀;->copyRecursively(Ljava/io/File;Ljava/io/File;ZLkotlin/jvm/functions/Function2;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public static final copyTo(Ljava/io/File;Ljava/io/File;ZI)Ljava/io/File;
    .locals 6
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
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
    const-string v0, "target"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_6

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p2, Lkotlin/io/FileAlreadyExistsException;

    .line 33
    .line 34
    const-string p3, "Tried to overwrite the destination, but failed to delete it."

    .line 35
    .line 36
    invoke-direct {p2, p0, p1, p3}, Lkotlin/io/FileAlreadyExistsException;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p2

    .line 40
    :cond_1
    new-instance p2, Lkotlin/io/FileAlreadyExistsException;

    .line 41
    .line 42
    const-string p3, "The destination file already exists."

    .line 43
    .line 44
    invoke-direct {p2, p0, p1, p3}, Lkotlin/io/FileAlreadyExistsException;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p2

    .line 48
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_4

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-eqz p2, :cond_3

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    new-instance p2, Lkotlin/io/FileSystemException;

    .line 62
    .line 63
    const-string p3, "Failed to create target directory."

    .line 64
    .line 65
    invoke-direct {p2, p0, p1, p3}, Lkotlin/io/FileSystemException;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p2

    .line 69
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    if-eqz p2, :cond_5

    .line 74
    .line 75
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 76
    .line 77
    .line 78
    :cond_5
    new-instance p2, Ljava/io/FileInputStream;

    .line 79
    .line 80
    invoke-direct {p2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 81
    .line 82
    .line 83
    :try_start_0
    new-instance p0, Ljava/io/FileOutputStream;

    .line 84
    .line 85
    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    .line 88
    :try_start_1
    invoke-static {p2, p0, p3}, Lkotlin/io/ByteStreamsKt;->copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 89
    .line 90
    .line 91
    const/4 p3, 0x0

    .line 92
    :try_start_2
    invoke-static {p0, p3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    .line 94
    .line 95
    invoke-static {p2, p3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    :goto_1
    return-object p1

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    goto :goto_2

    .line 101
    :catchall_1
    move-exception p1

    .line 102
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 103
    :catchall_2
    move-exception p3

    .line 104
    :try_start_4
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 105
    .line 106
    .line 107
    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 108
    :goto_2
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 109
    :catchall_3
    move-exception p1

    .line 110
    invoke-static {p2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    throw p1

    .line 114
    :cond_6
    new-instance p1, Lkotlin/io/NoSuchFileException;

    .line 115
    .line 116
    const/4 v4, 0x2

    .line 117
    const/4 v5, 0x0

    .line 118
    const/4 v2, 0x0

    .line 119
    const-string v3, "The source file doesn\'t exist."

    .line 120
    .line 121
    move-object v0, p1

    .line 122
    move-object v1, p0

    .line 123
    invoke-direct/range {v0 .. v5}, Lkotlin/io/NoSuchFileException;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 124
    .line 125
    .line 126
    throw p1
.end method

.method public static synthetic copyTo$default(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 7
    .line 8
    if-eqz p4, :cond_1

    .line 9
    .line 10
    const/16 p3, 0x2000

    .line 11
    .line 12
    :cond_1
    invoke-static {p0, p1, p2, p3}, L뒵둡딁딻뎸둣뎠땳됨뒉땟딀땝뒈돰뎠딄딞뒤땤됐듼둠딤땨따뎰딻돛뒛득뒷듻딅듟뒹뒛땹됨뒹돝둑둣딄땪뒹땨듔땠될들땬됴뒾돛뎰뒷든득됴딌땡딹땪땨됴뒋듐딄땵듽든땄뎠딄따뎸뎹땫뎠듐돴뒛들됐땳둡땦뒈땜뎹땠뒬땔땐뒻땟뒉돼땍딽뎰딹듬땪도듻됐땄딨땥뒐딌뒋딃뒾땳뒈땣뒝둔됫뒐돸둘둬듔땦땤뒀;->copyTo(Ljava/io/File;Ljava/io/File;ZI)Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static final createTempDir(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "Avoid creating temporary directories in the default temp location with this function due to too wide permissions on the newly created directory. Use kotlin.io.path.createTempDirectory instead."
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "prefix"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1, p2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 24
    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v0, "Unable to create temporary directory "

    .line 28
    .line 29
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const/16 p0, 0x2e

    .line 36
    .line 37
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1
.end method

.method public static synthetic createTempDir$default(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ILjava/lang/Object;)Ljava/io/File;
    .locals 1

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const-string p0, "tmp"

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p4, p3, 0x2

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p4, :cond_1

    .line 11
    .line 12
    move-object p1, v0

    .line 13
    :cond_1
    and-int/lit8 p3, p3, 0x4

    .line 14
    .line 15
    if-eqz p3, :cond_2

    .line 16
    .line 17
    move-object p2, v0

    .line 18
    :cond_2
    invoke-static {p0, p1, p2}, L뒵둡딁딻뎸둣뎠땳됨뒉땟딀땝뒈돰뎠딄딞뒤땤됐듼둠딤땨따뎰딻돛뒛득뒷듻딅듟뒹뒛땹됨뒹돝둑둣딄땪뒹땨듔땠될들땬됴뒾돛뎰뒷든득됴딌땡딹땪땨됴뒋듐딄땵듽든땄뎠딄따뎸뎹땫뎠듐돴뒛들됐땳둡땦뒈땜뎹땠뒬땔땐뒻땟뒉돼땍딽뎰딹듬땪도듻됐땄딨땥뒐딌뒋딃뒾땳뒈땣뒝둔됫뒐돸둘둬듔땦땤뒀;->createTempDir(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static final createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "Avoid creating temporary files in the default temp location with this function due to too wide permissions on the newly created file. Use kotlin.io.path.createTempFile instead or resort to java.io.File.createTempFile."
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "prefix"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1, p2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string p1, "createTempFile(...)"

    .line 11
    .line 12
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public static synthetic createTempFile$default(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ILjava/lang/Object;)Ljava/io/File;
    .locals 1

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const-string p0, "tmp"

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p4, p3, 0x2

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p4, :cond_1

    .line 11
    .line 12
    move-object p1, v0

    .line 13
    :cond_1
    and-int/lit8 p3, p3, 0x4

    .line 14
    .line 15
    if-eqz p3, :cond_2

    .line 16
    .line 17
    move-object p2, v0

    .line 18
    :cond_2
    invoke-static {p0, p1, p2}, L뒵둡딁딻뎸둣뎠땳됨뒉땟딀땝뒈돰뎠딄딞뒤땤됐듼둠딤땨따뎰딻돛뒛득뒷듻딅듟뒹뒛땹됨뒹돝둑둣딄땪뒹땨듔땠될들땬됴뒾돛뎰뒷든득됴딌땡딹땪땨됴뒋듐딄땵듽든땄뎠딄따뎸뎹땫뎠듐돴뒛들됐땳둡땦뒈땜뎹땠뒬땔땐뒻땟뒉돼땍딽뎰딹듬땪도듻됐땄딨땥뒐딌뒋딃뒾땳뒈땣뒝둔됫뒐돸둘둬듔땦땤뒀;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static deleteRecursively(Ljava/io/File;)Z
    .locals 4
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, L뒬땧땀듐뒼듰딄뒝둑땃돳둡듼됨땸뒉될뒛딽땍땻됩됨땻땨뎽땹돳둥땃딅됫듼됨뒘땻땄땍듰땋됐땍둑땫땐땐디돸땯땬됐된딜땵둣뒵뒤디들돨됨땫딠듟디딃돰돵땄땝듽돛땡됩돨딀둬뎨땧둘뒹땐돠딽뎽땸딅땁땮듽딞듼뎽딐뒝돸둬땤뎽돠땬땦됴딅땬됐듐땟땥듰둑땧듔됨둬둠땲땣딨땥듟뒬뒬드듸딌됨돰땣딌;->walkBottomUp(Ljava/io/File;)Lkotlin/io/FileTreeWalk;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const/4 v0, 0x1

    .line 15
    :goto_0
    const/4 v1, 0x1

    .line 16
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/io/File;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_0

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    :cond_0
    if-eqz v1, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v1, 0x0

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    return v1
.end method

.method public static final endsWith(Ljava/io/File;Ljava/io/File;)Z
    .locals 3
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, L뒬둥뎰땧뒤됫땥둡돴땐되땁듔뎨땍뒾땜뒷뒤두듔뎹듰딸됨딻돸듬딨뒉뒷뎹땤딝도뎰됫된땐딟뒙뒬된뒀돶땐땦뒈땵뒾땁땁듟둬땄듐돛땍따땸뒋뒤딜뒨뒬돶땩도돶둣듨땀땍딽딃뎬딌뎹뒀돴땫땡딐땱뎨뒻따됩딀땋됨딽딝두땧땯돤돤뒨뒬땯뒘땦땸딅땻뎡딃딸듐됫딸땹듨땰뒼뒻뒷뎨됴땟땁듼땩딜땧딄둠땄땬;->toComponents(Ljava/io/File;)Lkotlin/io/FilePathComponents;

    move-result-object v0

    .line 2
    invoke-static {p1}, L뒬둥뎰땧뒤됫땥둡돴땐되땁듔뎨땍뒾땜뒷뒤두듔뎹듰딸됨딻돸듬딨뒉뒷뎹땤딝도뎰됫된땐딟뒙뒬된뒀돶땐땦뒈땵뒾땁땁듟둬땄듐돛땍따땸뒋뒤딜뒨뒬돶땩도돶둣듨땀땍딽딃뎬딌뎹뒀돴땫땡딐땱뎨뒻따됩딀땋됨딽딝두땧땯돤돤뒨뒬땯뒘땦땸딅땻뎡딃딸듐됫딸땹듨땰뒼뒻뒷뎨됴땟땁듼땩딜땧딄둠땄땬;->toComponents(Ljava/io/File;)Lkotlin/io/FilePathComponents;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lkotlin/io/FilePathComponents;->isRooted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lkotlin/io/FilePathComponents;->getSize()I

    move-result p0

    invoke-virtual {v1}, Lkotlin/io/FilePathComponents;->getSize()I

    move-result p1

    sub-int/2addr p0, p1

    if-gez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lkotlin/io/FilePathComponents;->getSegments()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0}, Lkotlin/io/FilePathComponents;->getSize()I

    move-result v0

    invoke-interface {p1, p0, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1}, Lkotlin/io/FilePathComponents;->getSegments()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static final endsWith(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, L뒵둡딁딻뎸둣뎠땳됨뒉땟딀땝뒈돰뎠딄딞뒤땤됐듼둠딤땨따뎰딻돛뒛득뒷듻딅듟뒹뒛땹됨뒹돝둑둣딄땪뒹땨듔땠될들땬됴뒾돛뎰뒷든득됴딌땡딹땪땨됴뒋듐딄땵듽든땄뎠딄따뎸뎹땫뎠듐돴뒛들됐땳둡땦뒈땜뎹땠뒬땔땐뒻땟뒉돼땍딽뎰딹듬땪도듻됐땄딨땥뒐딌뒋딃뒾땳뒈땣뒝둔됫뒐돸둘둬듔땦땤뒀;->endsWith(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static final getExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/io/File;
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
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string v0, "getName(...)"

    .line 11
    .line 12
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/16 v0, 0x2e

    .line 16
    .line 17
    const-string v1, ""

    .line 18
    .line 19
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->substringAfterLast(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static final getInvariantSeparatorsPath(Ljava/io/File;)Ljava/lang/String;
    .locals 7
    .param p0    # Ljava/io/File;
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
    sget-char v2, Ljava/io/File;->separatorChar:C

    .line 7
    .line 8
    const/16 v0, 0x2f

    .line 9
    .line 10
    const-string v1, "getPath(...)"

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    if-eq v2, v0, :cond_0

    .line 20
    .line 21
    const/4 v5, 0x4

    .line 22
    const/4 v6, 0x0

    .line 23
    const/16 v3, 0x2f

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    move-object v1, p0

    .line 27
    invoke-static/range {v1 .. v6}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    :cond_0
    return-object p0
.end method

.method public static final getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/io/File;
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
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string v0, "getName(...)"

    .line 11
    .line 12
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    const/4 v1, 0x2

    .line 17
    const-string v2, "."

    .line 18
    .line 19
    invoke-static {p0, v2, v0, v1, v0}, Lkotlin/text/StringsKt__StringsKt;->substringBeforeLast$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static final normalize(Ljava/io/File;)Ljava/io/File;
    .locals 10
    .param p0    # Ljava/io/File;
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
    invoke-static {p0}, L뒬둥뎰땧뒤됫땥둡돴땐되땁듔뎨땍뒾땜뒷뒤두듔뎹듰딸됨딻돸듬딨뒉뒷뎹땤딝도뎰됫된땐딟뒙뒬된뒀돶땐땦뒈땵뒾땁땁듟둬땄듐돛땍따땸뒋뒤딜뒨뒬돶땩도돶둣듨땀땍딽딃뎬딌뎹뒀돴땫땡딐땱뎨뒻따됩딀땋됨딽딝두땧땯돤돤뒨뒬땯뒘땦땸딅땻뎡딃딸듐됫딸땹듨땰뒼뒻뒷뎨됴땟땁듼땩딜땧딄둠땄땬;->toComponents(Ljava/io/File;)Lkotlin/io/FilePathComponents;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lkotlin/io/FilePathComponents;->getRoot()Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lkotlin/io/FilePathComponents;->getSegments()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, L뒵둡딁딻뎸둣뎠땳됨뒉땟딀땝뒈돰뎠딄딞뒤땤됐듼둠딤땨따뎰딻돛뒛득뒷듻딅듟뒹뒛땹됨뒹돝둑둣딄땪뒹땨듔땠될들땬됴뒾돛뎰뒷든득됴딌땡딹땪땨됴뒋듐딄땵듽든땄뎠딄따뎸뎹땫뎠듐돴뒛들됐땳둡땦뒈땜뎹땠뒬땔땐뒻땟뒉돼땍딽뎰딹듬땪도듻됐땄딨땥뒐딌뒋딃뒾땳뒈땣뒝둔됫뒐돸둘둬듔땦땤뒀;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Ljava/util/List;)Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 23
    .line 24
    const-string p0, "separator"

    .line 25
    .line 26
    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x0

    .line 34
    const/16 v8, 0x3e

    .line 35
    .line 36
    const/4 v9, 0x0

    .line 37
    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {v0, p0}, L뒵둡딁딻뎸둣뎠땳됨뒉땟딀땝뒈돰뎠딄딞뒤땤됐듼둠딤땨따뎰딻돛뒛득뒷듻딅듟뒹뒛땹됨뒹돝둑둣딄땪뒹땨듔땠될들땬됴뒾돛뎰뒷든득됴딌땡딹땪땨됴뒋듐딄땵듽든땄뎠딄따뎸뎹땫뎠듐돴뒛들됐땳둡땦뒈땜뎹땠뒬땔땐뒻땟뒉돼땍딽뎰딹듬땪도듻됐땄딨땥뒐딌뒋딃뒾땳뒈땣뒝둔됫뒐돸둘둬듔땦땤뒀;->resolve(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public static final relativeTo(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 1
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
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
    const-string v0, "base"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/io/File;

    .line 12
    .line 13
    invoke-static {p0, p1}, L뒵둡딁딻뎸둣뎠땳됨뒉땟딀땝뒈돰뎠딄딞뒤땤됐듼둠딤땨따뎰딻돛뒛득뒷듻딅듟뒹뒛땹됨뒹돝둑둣딄땪뒹땨듔땠될들땬됴뒾돛뎰뒷든득됴딌땡딹땪땨됴뒋듐딄땵듽든땄뎠딄따뎸뎹땫뎠듐돴뒛들됐땳둡땦뒈땜뎹땠뒬땔땐뒻땟뒉돼땍딽뎰딹듬땪도듻됐땄딨땥뒐딌뒋딃뒾땳뒈땣뒝둔됫뒐돸둘둬듔땦땤뒀;->toRelativeString(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public static final relativeToOrNull(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 1
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "base"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1}, L뒵둡딁딻뎸둣뎠땳됨뒉땟딀땝뒈돰뎠딄딞뒤땤됐듼둠딤땨따뎰딻돛뒛득뒷듻딅듟뒹뒛땹됨뒹돝둑둣딄땪뒹땨듔땠될들땬됴뒾돛뎰뒷든득됴딌땡딹땪땨됴뒋듐딄땵듽든땄뎠딄따뎸뎹땫뎠듐돴뒛들됐땳둡땦뒈땜뎹땠뒬땔땐뒻땟뒉돼땍딽뎰딹듬땪도듻됐땄딨땥뒐딌뒋딃뒾땳뒈땣뒝둔됫뒐돸둘둬듔땦땤뒀;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    new-instance p1, Ljava/io/File;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    return-object p1
.end method

.method public static final relativeToOrSelf(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 1
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
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
    const-string v0, "base"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1}, L뒵둡딁딻뎸둣뎠땳됨뒉땟딀땝뒈돰뎠딄딞뒤땤됐듼둠딤땨따뎰딻돛뒛득뒷듻딅듟뒹뒛땹됨뒹돝둑둣딄땪뒹땨듔땠될들땬됴뒾돛뎰뒷든득됴딌땡딹땪땨됴뒋듐딄땵듽든땄뎠딄따뎸뎹땫뎠듐돴뒛들됐땳둡땦뒈땜뎹땠뒬땔땐뒻땟뒉돼땍딽뎰딹듬땪도듻됐땄딨땥뒐딌뒋딃뒾땳뒈땣뒝둔됫뒐돸둘둬듔땦땤뒀;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    new-instance p0, Ljava/io/File;

    .line 18
    .line 19
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-object p0
.end method

.method public static final resolve(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 4
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "relative"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, L뒬둥뎰땧뒤됫땥둡돴땐되땁듔뎨땍뒾땜뒷뒤두듔뎹듰딸됨딻돸듬딨뒉뒷뎹땤딝도뎰됫된땐딟뒙뒬된뒀돶땐땦뒈땵뒾땁땁듟둬땄듐돛땍따땸뒋뒤딜뒨뒬돶땩도돶둣듨땀땍딽딃뎬딌뎹뒀돴땫땡딐땱뎨뒻따됩딀땋됨딽딝두땧땯돤돤뒨뒬땯뒘땦땸딅땻뎡딃딸듐됫딸땹듨땰뒼뒻뒷뎨됴땟땁듼땩딜땧딄둠땄땬;->isRooted(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lkotlin/text/StringsKt__StringsKt;->endsWith$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method public static resolve(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "relative"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, L뒵둡딁딻뎸둣뎠땳됨뒉땟딀땝뒈돰뎠딄딞뒤땤됐듼둠딤땨따뎰딻돛뒛득뒷듻딅듟뒹뒛땹됨뒹돝둑둣딄땪뒹땨듔땠될들땬됴뒾돛뎰뒷든득됴딌땡딹땪땨됴뒋듐딄땵듽든땄뎠딄따뎸뎹땫뎠듐돴뒛들됐땳둡땦뒈땜뎹땠뒬땔땐뒻땟뒉돼땍딽뎰딹듬땪도듻됐땄딨땥뒐딌뒋딃뒾땳뒈땣뒝둔됫뒐돸둘둬듔땦땤뒀;->resolve(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final resolveSibling(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 2
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "relative"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, L뒬둥뎰땧뒤됫땥둡돴땐되땁듔뎨땍뒾땜뒷뒤두듔뎹듰딸됨딻돸듬딨뒉뒷뎹땤딝도뎰됫된땐딟뒙뒬된뒀돶땐땦뒈땵뒾땁땁듟둬땄듐돛땍따땸뒋뒤딜뒨뒬돶땩도돶둣듨땀땍딽딃뎬딌뎹뒀돴땫땡딐땱뎨뒻따됩딀땋됨딽딝두땧땯돤돤뒨뒬땯뒘땦땸딅땻뎡딃딸듐됫딸땹듨땰뒼뒻뒷뎨됴땟땁듼땩딜땧딄둠땄땬;->toComponents(Ljava/io/File;)Lkotlin/io/FilePathComponents;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lkotlin/io/FilePathComponents;->getSize()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, ".."

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlin/io/FilePathComponents;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lkotlin/io/FilePathComponents;->subPath(II)Ljava/io/File;

    move-result-object v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lkotlin/io/FilePathComponents;->getRoot()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, L뒵둡딁딻뎸둣뎠땳됨뒉땟딀땝뒈돰뎠딄딞뒤땤됐듼둠딤땨따뎰딻돛뒛득뒷듻딅듟뒹뒛땹됨뒹돝둑둣딄땪뒹땨듔땠될들땬됴뒾돛뎰뒷든득됴딌땡딹땪땨됴뒋듐딄땵듽든땄뎠딄따뎸뎹땫뎠듐돴뒛들됐땳둡땦뒈땜뎹땠뒬땔땐뒻땟뒉돼땍딽뎰딹듬땪도듻됐땄딨땥뒐딌뒋딃뒾땳뒈땣뒝둔됫뒐돸둘둬듔땦땤뒀;->resolve(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, L뒵둡딁딻뎸둣뎠땳됨뒉땟딀땝뒈돰뎠딄딞뒤땤됐듼둠딤땨따뎰딻돛뒛득뒷듻딅듟뒹뒛땹됨뒹돝둑둣딄땪뒹땨듔땠될들땬됴뒾돛뎰뒷든득됴딌땡딹땪땨됴뒋듐딄땵듽든땄뎠딄따뎸뎹땫뎠듐돴뒛들됐땳둡땦뒈땜뎹땠뒬땔땐뒻땟뒉돼땍딽뎰딹듬땪도듻됐땄딨땥뒐딌뒋딃뒾땳뒈땣뒝둔됫뒐돸둘둬듔땦땤뒀;->resolve(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final resolveSibling(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "relative"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, L뒵둡딁딻뎸둣뎠땳됨뒉땟딀땝뒈돰뎠딄딞뒤땤됐듼둠딤땨따뎰딻돛뒛득뒷듻딅듟뒹뒛땹됨뒹돝둑둣딄땪뒹땨듔땠될들땬됴뒾돛뎰뒷든득됴딌땡딹땪땨됴뒋듐딄땵듽든땄뎠딄따뎸뎹땫뎠듐돴뒛들됐땳둡땦뒈땜뎹땠뒬땔땐뒻땟뒉돼땍딽뎰딹듬땪도듻됐땄딨땥뒐딌뒋딃뒾땳뒈땣뒝둔됫뒐돸둘둬듔땦땤뒀;->resolveSibling(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final startsWith(Ljava/io/File;Ljava/io/File;)Z
    .locals 3
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, L뒬둥뎰땧뒤됫땥둡돴땐되땁듔뎨땍뒾땜뒷뒤두듔뎹듰딸됨딻돸듬딨뒉뒷뎹땤딝도뎰됫된땐딟뒙뒬된뒀돶땐땦뒈땵뒾땁땁듟둬땄듐돛땍따땸뒋뒤딜뒨뒬돶땩도돶둣듨땀땍딽딃뎬딌뎹뒀돴땫땡딐땱뎨뒻따됩딀땋됨딽딝두땧땯돤돤뒨뒬땯뒘땦땸딅땻뎡딃딸듐됫딸땹듨땰뒼뒻뒷뎨됴땟땁듼땩딜땧딄둠땄땬;->toComponents(Ljava/io/File;)Lkotlin/io/FilePathComponents;

    move-result-object p0

    .line 2
    invoke-static {p1}, L뒬둥뎰땧뒤됫땥둡돴땐되땁듔뎨땍뒾땜뒷뒤두듔뎹듰딸됨딻돸듬딨뒉뒷뎹땤딝도뎰됫된땐딟뒙뒬된뒀돶땐땦뒈땵뒾땁땁듟둬땄듐돛땍따땸뒋뒤딜뒨뒬돶땩도돶둣듨땀땍딽딃뎬딌뎹뒀돴땫땡딐땱뎨뒻따됩딀땋됨딽딝두땧땯돤돤뒨뒬땯뒘땦땸딅땻뎡딃딸듐됫딸땹듨땰뒼뒻뒷뎨됴땟땁듼땩딜땧딄둠땄땬;->toComponents(Ljava/io/File;)Lkotlin/io/FilePathComponents;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lkotlin/io/FilePathComponents;->getRoot()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Lkotlin/io/FilePathComponents;->getRoot()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lkotlin/io/FilePathComponents;->getSize()I

    move-result v0

    invoke-virtual {p1}, Lkotlin/io/FilePathComponents;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lkotlin/io/FilePathComponents;->getSegments()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lkotlin/io/FilePathComponents;->getSize()I

    move-result v0

    invoke-interface {p0, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lkotlin/io/FilePathComponents;->getSegments()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public static final startsWith(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, L뒵둡딁딻뎸둣뎠땳됨뒉땟딀땝뒈돰뎠딄딞뒤땤됐듼둠딤땨따뎰딻돛뒛득뒷듻딅듟뒹뒛땹됨뒹돝둑둣딄땪뒹땨듔땠될들땬됴뒾돛뎰뒷든득됴딌땡딹땪땨됴뒋듐딄땵듽든땄뎠딄따뎸뎹땫뎠듐돴뒛들됐땳둡땦뒈땜뎹땠뒬땔땐뒻땟뒉돼땍딽뎰딹듬땪도듻됐땄딨땥뒐딌뒋딃뒾땳뒈땣뒝둔됫뒐돸둘둬듔땦땤뒀;->startsWith(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static final toRelativeString(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
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
    const-string v0, "base"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1}, L뒵둡딁딻뎸둣뎠땳됨뒉땟딀땝뒈돰뎠딄딞뒤땤됐듼둠딤땨따뎰딻돛뒛득뒷듻딅듟뒹뒛땹됨뒹돝둑둣딄땪뒹땨듔땠될들땬됴뒾돛뎰뒷든득됴딌땡딹땪땨됴뒋듐딄땵듽든땄뎠딄따뎸뎹땫뎠듐돴뒛들됐땳둡땦뒈땜뎹땠뒬땔땐뒻땟뒉돼땍딽뎰딹듬땪도듻됐땄딨땥뒐딌뒋딃뒾땳뒈땣뒝둔됫뒐돸둘둬듔땦땤뒀;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "this and base files have different roots: "

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p0, " and "

    .line 31
    .line 32
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const/16 p0, 0x2e

    .line 39
    .line 40
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0
.end method

.method public static final 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/io/File;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, "."

    .line 31
    .line 32
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_0

    .line 37
    .line 38
    const-string v3, ".."

    .line 39
    .line 40
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_1

    .line 51
    .line 52
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Ljava/io/File;

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_1

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    add-int/lit8 v1, v1, -0x1

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    return-object v0
.end method

.method public static final 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .locals 17

    .line 1
    invoke-static/range {p0 .. p0}, L뒬둥뎰땧뒤됫땥둡돴땐되땁듔뎨땍뒾땜뒷뒤두듔뎹듰딸됨딻돸듬딨뒉뒷뎹땤딝도뎰됫된땐딟뒙뒬된뒀돶땐땦뒈땵뒾땁땁듟둬땄듐돛땍따땸뒋뒤딜뒨뒬돶땩도돶둣듨땀땍딽딃뎬딌뎹뒀돴땫땡딐땱뎨뒻따됩딀땋됨딽딝두땧땯돤돤뒨뒬땯뒘땦땸딅땻뎡딃딸듐됫딸땹듨땰뒼뒻뒷뎨됴땟땁듼땩딜땧딄둠땄땬;->toComponents(Ljava/io/File;)Lkotlin/io/FilePathComponents;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lkotlin/io/FilePathComponents;

    .line 6
    .line 7
    invoke-virtual {v0}, Lkotlin/io/FilePathComponents;->getRoot()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v0}, Lkotlin/io/FilePathComponents;->getSegments()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, L뒵둡딁딻뎸둣뎠땳됨뒉땟딀땝뒈돰뎠딄딞뒤땤됐듼둠딤땨따뎰딻돛뒛득뒷듻딅듟뒹뒛땹됨뒹돝둑둣딄땪뒹땨듔땠될들땬됴뒾돛뎰뒷든득됴딌땡딹땪땨됴뒋듐딄땵듽든땄뎠딄따뎸뎹땫뎠듐돴뒛들됐땳둡땦뒈땜뎹땠뒬땔땐뒻땟뒉돼땍딽뎰딹듬땪도듻됐땄딨땥뒐딌뒋딃뒾땳뒈땣뒝둔됫뒐돸둘둬듔땦땤뒀;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Ljava/util/List;)Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {v1, v2, v0}, Lkotlin/io/FilePathComponents;-><init>(Ljava/io/File;Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    invoke-static/range {p1 .. p1}, L뒬둥뎰땧뒤됫땥둡돴땐되땁듔뎨땍뒾땜뒷뒤두듔뎹듰딸됨딻돸듬딨뒉뒷뎹땤딝도뎰됫된땐딟뒙뒬된뒀돶땐땦뒈땵뒾땁땁듟둬땄듐돛땍따땸뒋뒤딜뒨뒬돶땩도돶둣듨땀땍딽딃뎬딌뎹뒀돴땫땡딐땱뎨뒻따됩딀땋됨딽딝두땧땯돤돤뒨뒬땯뒘땦땸딅땻뎡딃딸듐됫딸땹듨땰뒼뒻뒷뎨됴땟땁듼땩딜땧딄둠땄땬;->toComponents(Ljava/io/File;)Lkotlin/io/FilePathComponents;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v2, Lkotlin/io/FilePathComponents;

    .line 27
    .line 28
    invoke-virtual {v0}, Lkotlin/io/FilePathComponents;->getRoot()Ljava/io/File;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v0}, Lkotlin/io/FilePathComponents;->getSegments()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, L뒵둡딁딻뎸둣뎠땳됨뒉땟딀땝뒈돰뎠딄딞뒤땤됐듼둠딤땨따뎰딻돛뒛득뒷듻딅듟뒹뒛땹됨뒹돝둑둣딄땪뒹땨듔땠될들땬됴뒾돛뎰뒷든득됴딌땡딹땪땨됴뒋듐딄땵듽든땄뎠딄따뎸뎹땫뎠듐돴뒛들됐땳둡땦뒈땜뎹땠뒬땔땐뒻땟뒉돼땍딽뎰딹듬땪도듻됐땄딨땥뒐딌뒋딃뒾땳뒈땣뒝둔됫뒐돸둘둬듔땦땤뒀;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Ljava/util/List;)Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-direct {v2, v3, v0}, Lkotlin/io/FilePathComponents;-><init>(Ljava/io/File;Ljava/util/List;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Lkotlin/io/FilePathComponents;->getRoot()Ljava/io/File;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v2}, Lkotlin/io/FilePathComponents;->getRoot()Ljava/io/File;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/4 v3, 0x0

    .line 56
    if-nez v0, :cond_0

    .line 57
    .line 58
    return-object v3

    .line 59
    :cond_0
    invoke-virtual {v2}, Lkotlin/io/FilePathComponents;->getSize()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-virtual {v1}, Lkotlin/io/FilePathComponents;->getSize()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    const/4 v6, 0x0

    .line 72
    :goto_0
    if-ge v6, v5, :cond_1

    .line 73
    .line 74
    invoke-virtual {v1}, Lkotlin/io/FilePathComponents;->getSegments()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-virtual {v2}, Lkotlin/io/FilePathComponents;->getSegments()Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    if-eqz v7, :cond_1

    .line 95
    .line 96
    add-int/lit8 v6, v6, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    add-int/lit8 v7, v0, -0x1

    .line 105
    .line 106
    if-gt v6, v7, :cond_4

    .line 107
    .line 108
    :goto_1
    invoke-virtual {v2}, Lkotlin/io/FilePathComponents;->getSegments()Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    check-cast v8, Ljava/io/File;

    .line 117
    .line 118
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    const-string v9, ".."

    .line 123
    .line 124
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    if-eqz v8, :cond_2

    .line 129
    .line 130
    return-object v3

    .line 131
    :cond_2
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    if-eq v7, v6, :cond_3

    .line 135
    .line 136
    sget-char v8, Ljava/io/File;->separatorChar:C

    .line 137
    .line 138
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    :cond_3
    if-eq v7, v6, :cond_4

    .line 142
    .line 143
    add-int/lit8 v7, v7, -0x1

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_4
    if-ge v6, v4, :cond_6

    .line 147
    .line 148
    if-ge v6, v0, :cond_5

    .line 149
    .line 150
    sget-char v0, Ljava/io/File;->separatorChar:C

    .line 151
    .line 152
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    :cond_5
    invoke-virtual {v1}, Lkotlin/io/FilePathComponents;->getSegments()Ljava/util/List;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    check-cast v0, Ljava/lang/Iterable;

    .line 160
    .line 161
    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    move-object v7, v0

    .line 166
    check-cast v7, Ljava/lang/Iterable;

    .line 167
    .line 168
    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    .line 169
    .line 170
    const-string v0, "separator"

    .line 171
    .line 172
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    const/4 v13, 0x0

    .line 176
    const/4 v14, 0x0

    .line 177
    const/4 v10, 0x0

    .line 178
    const/4 v11, 0x0

    .line 179
    const/4 v12, 0x0

    .line 180
    const/16 v15, 0x7c

    .line 181
    .line 182
    const/16 v16, 0x0

    .line 183
    .line 184
    move-object v8, v5

    .line 185
    invoke-static/range {v7 .. v16}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable;

    .line 186
    .line 187
    .line 188
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    return-object v0
.end method
