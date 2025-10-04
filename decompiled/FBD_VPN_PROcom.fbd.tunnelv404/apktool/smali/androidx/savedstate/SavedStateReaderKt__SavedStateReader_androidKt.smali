.class final synthetic Landroidx/savedstate/SavedStateReaderKt__SavedStateReader_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0002\u001a!\u0010\u0000\u001a\u00020\u0001*\u00060\u0002j\u0002`\u00032\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0002\u00a2\u0006\u0002\u0008\u0005\u001a\u0015\u0010\u0006\u001a\u00020\u0007*\u00060\u0002j\u0002`\u0003H\u0002\u00a2\u0006\u0002\u0008\u0008\u001a3\u0010\t\u001a\u00020\n*\u00060\u0002j\u0002`\u00032\n\u0010\u000b\u001a\u00060\u000cj\u0002`\r2\u0010\u0010\u000e\u001a\u000c\u0012\u0008\u0012\u00060\u0002j\u0002`\u00030\u000fH\u0002\u00a2\u0006\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "contentDeepEquals",
        "",
        "Landroid/os/Bundle;",
        "Landroidx/savedstate/SavedState;",
        "other",
        "contentDeepEquals$SavedStateReaderKt__SavedStateReader_androidKt",
        "contentDeepHashCode",
        "",
        "contentDeepHashCode$SavedStateReaderKt__SavedStateReader_androidKt",
        "contentDeepToString",
        "",
        "result",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "processed",
        "",
        "contentDeepToString$SavedStateReaderKt__SavedStateReader_androidKt",
        "savedstate_release"
    }
    k = 0x5
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
    xs = "androidx/savedstate/SavedStateReaderKt"
.end annotation


# direct methods
.method public static final synthetic access$contentDeepEquals(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/savedstate/SavedStateReaderKt__SavedStateReader_androidKt;->contentDeepEquals$SavedStateReaderKt__SavedStateReader_androidKt(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$contentDeepHashCode(Landroid/os/Bundle;)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/savedstate/SavedStateReaderKt__SavedStateReader_androidKt;->contentDeepHashCode$SavedStateReaderKt__SavedStateReader_androidKt(Landroid/os/Bundle;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$contentDeepToString(Landroid/os/Bundle;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/savedstate/SavedStateReaderKt__SavedStateReader_androidKt;->contentDeepToString$SavedStateReaderKt__SavedStateReader_androidKt(Landroid/os/Bundle;Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final contentDeepEquals$SavedStateReaderKt__SavedStateReader_androidKt(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/os/BaseBundle;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/os/BaseBundle;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eq v1, v2, :cond_1

    .line 15
    .line 16
    return v3

    .line 17
    :cond_1
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_f

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-eq v4, v2, :cond_2

    .line 46
    .line 47
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-nez v5, :cond_2

    .line 52
    .line 53
    if-eqz v4, :cond_e

    .line 54
    .line 55
    if-nez v2, :cond_3

    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :cond_3
    instance-of v5, v4, Landroid/os/Bundle;

    .line 60
    .line 61
    if-eqz v5, :cond_4

    .line 62
    .line 63
    instance-of v5, v2, Landroid/os/Bundle;

    .line 64
    .line 65
    if-eqz v5, :cond_4

    .line 66
    .line 67
    check-cast v4, Landroid/os/Bundle;

    .line 68
    .line 69
    check-cast v2, Landroid/os/Bundle;

    .line 70
    .line 71
    invoke-static {v4, v2}, Landroidx/savedstate/SavedStateReaderKt__SavedStateReader_androidKt;->contentDeepEquals$SavedStateReaderKt__SavedStateReader_androidKt(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-nez v2, :cond_2

    .line 76
    .line 77
    return v3

    .line 78
    :cond_4
    instance-of v5, v4, [Ljava/lang/Object;

    .line 79
    .line 80
    if-eqz v5, :cond_5

    .line 81
    .line 82
    instance-of v5, v2, [Ljava/lang/Object;

    .line 83
    .line 84
    if-eqz v5, :cond_5

    .line 85
    .line 86
    check-cast v4, [Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v2, [Ljava/lang/Object;

    .line 89
    .line 90
    invoke-static {v4, v2}, L도땱되돤딝땡땩땐딌땸딀뒷땹뒈뒾돵둘땪딝돼땤뒛뒋되뒷땲뒷됐딎돶땭되듟땹돶땬땟돨뒵돸듔들듨딅땠둡듬든딅둠뒹뎻듬땝됐된딹땠돳땫듼땀딝딝둬돷뎰딹딹딤딀딎땪땮딅딟돸뎽뒀딜딸땅둬됫뎹듌둘듐딻돰땵땪땵땱땫둠도땃뎽딜땳따땄된따듻뎬듔둬땰땄뎨들돵뒛땹디듸돵됩돛디됨됐뒤땟딝땄땟딅;->contentDeepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-nez v2, :cond_2

    .line 95
    .line 96
    return v3

    .line 97
    :cond_5
    instance-of v5, v4, [B

    .line 98
    .line 99
    if-eqz v5, :cond_6

    .line 100
    .line 101
    instance-of v5, v2, [B

    .line 102
    .line 103
    if-eqz v5, :cond_6

    .line 104
    .line 105
    check-cast v4, [B

    .line 106
    .line 107
    check-cast v2, [B

    .line 108
    .line 109
    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-nez v2, :cond_2

    .line 114
    .line 115
    return v3

    .line 116
    :cond_6
    instance-of v5, v4, [S

    .line 117
    .line 118
    if-eqz v5, :cond_7

    .line 119
    .line 120
    instance-of v5, v2, [S

    .line 121
    .line 122
    if-eqz v5, :cond_7

    .line 123
    .line 124
    check-cast v4, [S

    .line 125
    .line 126
    check-cast v2, [S

    .line 127
    .line 128
    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([S[S)Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-nez v2, :cond_2

    .line 133
    .line 134
    return v3

    .line 135
    :cond_7
    instance-of v5, v4, [I

    .line 136
    .line 137
    if-eqz v5, :cond_8

    .line 138
    .line 139
    instance-of v5, v2, [I

    .line 140
    .line 141
    if-eqz v5, :cond_8

    .line 142
    .line 143
    check-cast v4, [I

    .line 144
    .line 145
    check-cast v2, [I

    .line 146
    .line 147
    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([I[I)Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-nez v2, :cond_2

    .line 152
    .line 153
    return v3

    .line 154
    :cond_8
    instance-of v5, v4, [J

    .line 155
    .line 156
    if-eqz v5, :cond_9

    .line 157
    .line 158
    instance-of v5, v2, [J

    .line 159
    .line 160
    if-eqz v5, :cond_9

    .line 161
    .line 162
    check-cast v4, [J

    .line 163
    .line 164
    check-cast v2, [J

    .line 165
    .line 166
    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([J[J)Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-nez v2, :cond_2

    .line 171
    .line 172
    return v3

    .line 173
    :cond_9
    instance-of v5, v4, [F

    .line 174
    .line 175
    if-eqz v5, :cond_a

    .line 176
    .line 177
    instance-of v5, v2, [F

    .line 178
    .line 179
    if-eqz v5, :cond_a

    .line 180
    .line 181
    check-cast v4, [F

    .line 182
    .line 183
    check-cast v2, [F

    .line 184
    .line 185
    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([F[F)Z

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    if-nez v2, :cond_2

    .line 190
    .line 191
    return v3

    .line 192
    :cond_a
    instance-of v5, v4, [D

    .line 193
    .line 194
    if-eqz v5, :cond_b

    .line 195
    .line 196
    instance-of v5, v2, [D

    .line 197
    .line 198
    if-eqz v5, :cond_b

    .line 199
    .line 200
    check-cast v4, [D

    .line 201
    .line 202
    check-cast v2, [D

    .line 203
    .line 204
    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([D[D)Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-nez v2, :cond_2

    .line 209
    .line 210
    return v3

    .line 211
    :cond_b
    instance-of v5, v4, [C

    .line 212
    .line 213
    if-eqz v5, :cond_c

    .line 214
    .line 215
    instance-of v5, v2, [C

    .line 216
    .line 217
    if-eqz v5, :cond_c

    .line 218
    .line 219
    check-cast v4, [C

    .line 220
    .line 221
    check-cast v2, [C

    .line 222
    .line 223
    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([C[C)Z

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    if-nez v2, :cond_2

    .line 228
    .line 229
    return v3

    .line 230
    :cond_c
    instance-of v5, v4, [Z

    .line 231
    .line 232
    if-eqz v5, :cond_d

    .line 233
    .line 234
    instance-of v5, v2, [Z

    .line 235
    .line 236
    if-eqz v5, :cond_d

    .line 237
    .line 238
    check-cast v4, [Z

    .line 239
    .line 240
    check-cast v2, [Z

    .line 241
    .line 242
    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([Z[Z)Z

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    if-nez v2, :cond_2

    .line 247
    .line 248
    return v3

    .line 249
    :cond_d
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    if-nez v2, :cond_2

    .line 254
    .line 255
    :cond_e
    :goto_0
    return v3

    .line 256
    :cond_f
    return v0
.end method

.method private static final contentDeepHashCode$SavedStateReaderKt__SavedStateReader_androidKt(Landroid/os/Bundle;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_b

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    instance-of v3, v2, Landroid/os/Bundle;

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    check-cast v2, Landroid/os/Bundle;

    .line 31
    .line 32
    invoke-static {v2}, Landroidx/savedstate/SavedStateReaderKt__SavedStateReader_androidKt;->contentDeepHashCode$SavedStateReaderKt__SavedStateReader_androidKt(Landroid/os/Bundle;)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    goto/16 :goto_1

    .line 37
    .line 38
    :cond_0
    instance-of v3, v2, [Ljava/lang/Object;

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    check-cast v2, [Ljava/lang/Object;

    .line 43
    .line 44
    invoke-static {v2}, L도땁땭땀뒵딌돸듌딀뒻땫땻뒹뒙땋땬둔땬땟땦듼딝땋뒈땍뒛땦듰땹땔됫둠땯땻듬땵땸뎹뎠땨둡듽딝뎸뒤듽뎬뒐뒹땬땅뒵둑됴딐딟돷듨듻땸둔듟뒋땸땀딄돰뒷뒘딸땬땡딻뒝땨땥듰뒙땦돶딠될듽된땔뎽뒻든땣돝땱도뒝땟든땃돷돨땦뒘땣돤딃뒉딻땋땣드듻뒾땟뒬드딠듐돠뒈뎸땲도따땸땋땯됫돨땡듼듌땮;->contentDeepHashCode([Ljava/lang/Object;)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    instance-of v3, v2, [B

    .line 50
    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    check-cast v2, [B

    .line 54
    .line 55
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    instance-of v3, v2, [S

    .line 61
    .line 62
    if-eqz v3, :cond_3

    .line 63
    .line 64
    check-cast v2, [S

    .line 65
    .line 66
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([S)I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    instance-of v3, v2, [I

    .line 72
    .line 73
    if-eqz v3, :cond_4

    .line 74
    .line 75
    check-cast v2, [I

    .line 76
    .line 77
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    goto :goto_1

    .line 82
    :cond_4
    instance-of v3, v2, [J

    .line 83
    .line 84
    if-eqz v3, :cond_5

    .line 85
    .line 86
    check-cast v2, [J

    .line 87
    .line 88
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([J)I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    goto :goto_1

    .line 93
    :cond_5
    instance-of v3, v2, [F

    .line 94
    .line 95
    if-eqz v3, :cond_6

    .line 96
    .line 97
    check-cast v2, [F

    .line 98
    .line 99
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    goto :goto_1

    .line 104
    :cond_6
    instance-of v3, v2, [D

    .line 105
    .line 106
    if-eqz v3, :cond_7

    .line 107
    .line 108
    check-cast v2, [D

    .line 109
    .line 110
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([D)I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    goto :goto_1

    .line 115
    :cond_7
    instance-of v3, v2, [C

    .line 116
    .line 117
    if-eqz v3, :cond_8

    .line 118
    .line 119
    check-cast v2, [C

    .line 120
    .line 121
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([C)I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    goto :goto_1

    .line 126
    :cond_8
    instance-of v3, v2, [Z

    .line 127
    .line 128
    if-eqz v3, :cond_9

    .line 129
    .line 130
    check-cast v2, [Z

    .line 131
    .line 132
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Z)I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    goto :goto_1

    .line 137
    :cond_9
    if-eqz v2, :cond_a

    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    goto :goto_1

    .line 144
    :cond_a
    const/4 v2, 0x0

    .line 145
    :goto_1
    mul-int/lit8 v1, v1, 0x1f

    .line 146
    .line 147
    add-int/2addr v1, v2

    .line 148
    goto/16 :goto_0

    .line 149
    .line 150
    :cond_b
    return v1
.end method

.method private static final contentDeepToString$SavedStateReaderKt__SavedStateReader_androidKt(Landroid/os/Bundle;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, "[...]"

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    move-object v0, p2

    .line 14
    check-cast v0, Ljava/util/Collection;

    .line 15
    .line 16
    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    const/16 v0, 0x5b

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/Iterable;

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x0

    .line 35
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_d

    .line 40
    .line 41
    add-int/lit8 v2, v1, 0x1

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Ljava/lang/String;

    .line 48
    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    const-string v1, ", "

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const/16 v4, 0x3d

    .line 65
    .line 66
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-nez v1, :cond_2

    .line 81
    .line 82
    const-string v1, "null"

    .line 83
    .line 84
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    goto/16 :goto_1

    .line 88
    .line 89
    :cond_2
    instance-of v3, v1, Landroid/os/Bundle;

    .line 90
    .line 91
    if-eqz v3, :cond_3

    .line 92
    .line 93
    check-cast v1, Landroid/os/Bundle;

    .line 94
    .line 95
    invoke-static {v1, p1, p2}, Landroidx/savedstate/SavedStateReaderKt__SavedStateReader_androidKt;->contentDeepToString$SavedStateReaderKt__SavedStateReader_androidKt(Landroid/os/Bundle;Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_1

    .line 99
    .line 100
    :cond_3
    instance-of v3, v1, [Ljava/lang/Object;

    .line 101
    .line 102
    if-eqz v3, :cond_4

    .line 103
    .line 104
    check-cast v1, [Ljava/lang/Object;

    .line 105
    .line 106
    invoke-static {v1}, L도땱되돤딝땡땩땐딌땸딀뒷땹뒈뒾돵둘땪딝돼땤뒛뒋되뒷땲뒷됐딎돶땭되듟땹돶땬땟돨뒵돸듔들듨딅땠둡듬든딅둠뒹뎻듬땝됐된딹땠돳땫듼땀딝딝둬돷뎰딹딹딤딀딎땪땮딅딟돸뎽뒀딜딸땅둬됫뎹듌둘듐딻돰땵땪땵땱땫둠도땃뎽딜땳따땄된따듻뎬듔둬땰땄뎨들돵뒛땹디듸돵됩돛디됨됐뒤땟딝땄땟딅;->contentDeepToString([Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    goto/16 :goto_1

    .line 114
    .line 115
    :cond_4
    instance-of v3, v1, [B

    .line 116
    .line 117
    const-string v4, "toString(...)"

    .line 118
    .line 119
    if-eqz v3, :cond_5

    .line 120
    .line 121
    check-cast v1, [B

    .line 122
    .line 123
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    goto/16 :goto_1

    .line 134
    .line 135
    :cond_5
    instance-of v3, v1, [S

    .line 136
    .line 137
    if-eqz v3, :cond_6

    .line 138
    .line 139
    check-cast v1, [S

    .line 140
    .line 141
    invoke-static {v1}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    goto/16 :goto_1

    .line 152
    .line 153
    :cond_6
    instance-of v3, v1, [I

    .line 154
    .line 155
    if-eqz v3, :cond_7

    .line 156
    .line 157
    check-cast v1, [I

    .line 158
    .line 159
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_7
    instance-of v3, v1, [J

    .line 171
    .line 172
    if-eqz v3, :cond_8

    .line 173
    .line 174
    check-cast v1, [J

    .line 175
    .line 176
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_8
    instance-of v3, v1, [F

    .line 188
    .line 189
    if-eqz v3, :cond_9

    .line 190
    .line 191
    check-cast v1, [F

    .line 192
    .line 193
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    goto :goto_1

    .line 204
    :cond_9
    instance-of v3, v1, [D

    .line 205
    .line 206
    if-eqz v3, :cond_a

    .line 207
    .line 208
    check-cast v1, [D

    .line 209
    .line 210
    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    goto :goto_1

    .line 221
    :cond_a
    instance-of v3, v1, [C

    .line 222
    .line 223
    if-eqz v3, :cond_b

    .line 224
    .line 225
    check-cast v1, [C

    .line 226
    .line 227
    invoke-static {v1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    goto :goto_1

    .line 238
    :cond_b
    instance-of v3, v1, [Z

    .line 239
    .line 240
    if-eqz v3, :cond_c

    .line 241
    .line 242
    check-cast v1, [Z

    .line 243
    .line 244
    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    goto :goto_1

    .line 255
    :cond_c
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    :goto_1
    move v1, v2

    .line 263
    goto/16 :goto_0

    .line 264
    .line 265
    :cond_d
    const/16 p0, 0x5d

    .line 266
    .line 267
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-static {p2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    .line 271
    .line 272
    .line 273
    move-result p0

    .line 274
    invoke-interface {p2, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    return-void
.end method
