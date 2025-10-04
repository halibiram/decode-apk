.class public final Landroidx/work/impl/utils/RawQueries;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001c\u0010\u0000\u001a\u00020\u00012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002\u001a\n\u0010\u0007\u001a\u00020\u0008*\u00020\t\u00a8\u0006\n"
    }
    d2 = {
        "bindings",
        "",
        "builder",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "count",
        "",
        "toRawQuery",
        "Landroidx/sqlite/db/SupportSQLiteQuery;",
        "Landroidx/work/WorkQuery;",
        "work-runtime_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/JvmName;
    name = "RawQueries"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRawQueries.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RawQueries.kt\nandroidx/work/impl/utils/RawQueries\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,73:1\n1549#2:74\n1620#2,3:75\n1549#2:78\n1620#2,3:79\n37#3,2:82\n1#4:84\n*S KotlinDebug\n*F\n+ 1 RawQueries.kt\nandroidx/work/impl/utils/RawQueries\n*L\n35#1:74\n35#1:75,3\n43#1:78\n43#1:79,3\n64#1:82,2\n*E\n"
    }
.end annotation


# direct methods
.method private static final bindings(Ljava/lang/StringBuilder;I)V
    .locals 9

    .line 1
    if-gtz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, p1, :cond_1

    .line 11
    .line 12
    const-string v2, "?"

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/16 v7, 0x3e

    .line 21
    .line 22
    const/4 v8, 0x0

    .line 23
    const-string v1, ","

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v6, 0x0

    .line 30
    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public static final toRawQuery(Landroidx/work/WorkQuery;)Landroidx/sqlite/db/SupportSQLiteQuery;
    .locals 8
    .param p0    # Landroidx/work/WorkQuery;
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
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "SELECT * FROM workspec"

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/work/WorkQuery;->getStates()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/util/Collection;

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const-string v3, ")"

    .line 29
    .line 30
    const/16 v4, 0xa

    .line 31
    .line 32
    const-string v5, " AND"

    .line 33
    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/work/WorkQuery;->getStates()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/lang/Iterable;

    .line 41
    .line 42
    new-instance v6, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-static {v2, v4}, L됴됐듔땬뒤땟땧딃듸듬딎둥딁땋뒐뒵딠뒉득됫땁된둔뎻두돛땔땪땳뒷듰딄뒤딝땧돝딽땔뎸듔뒀돛땳뒘돝돝땣뎻땃듼뎡뒹돤땸뎹딄득땡돷듟돶둑딎두돷듨땨둔됨뒹둘딄됩땫땵딀뒝딐뒝땋뎻땄뎻뎸딞듬돤뒼따딜두딎뒙돷뒘돨듨딽땣뒾땬듰땬듸딤뎨뎰땧둔듽돶뎰땋땍돳돶딤땅돴듸땝돰뎽땪땩둣땅뒹뒬땅;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-eqz v7, :cond_0

    .line 60
    .line 61
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    check-cast v7, Landroidx/work/WorkInfo$State;

    .line 66
    .line 67
    invoke-static {v7}, Landroidx/work/impl/model/WorkTypeConverters;->stateToInt(Landroidx/work/WorkInfo$State;)I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    const-string v2, " WHERE state IN ("

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    invoke-static {v1, v2}, Landroidx/work/impl/utils/RawQueries;->bindings(Ljava/lang/StringBuilder;I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    .line 96
    .line 97
    move-object v2, v5

    .line 98
    goto :goto_1

    .line 99
    :cond_1
    const-string v2, " WHERE"

    .line 100
    .line 101
    :goto_1
    invoke-virtual {p0}, Landroidx/work/WorkQuery;->getIds()Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    check-cast v6, Ljava/util/Collection;

    .line 106
    .line 107
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    if-nez v6, :cond_3

    .line 112
    .line 113
    invoke-virtual {p0}, Landroidx/work/WorkQuery;->getIds()Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    check-cast v6, Ljava/lang/Iterable;

    .line 118
    .line 119
    new-instance v7, Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-static {v6, v4}, L됴됐듔땬뒤땟땧딃듸듬딎둥딁땋뒐뒵딠뒉득됫땁된둔뎻두돛땔땪땳뒷듰딄뒤딝땧돝딽땔뎸듔뒀돛땳뒘돝돝땣뎻땃듼뎡뒹돤땸뎹딄득땡돷듟돶둑딎두돷듨땨둔됨뒹둘딄됩땫땵딀뒝딐뒝땋뎻땄뎻뎸딞듬돤뒼따딜두딎뒙돷뒘돨듨딽땣뒾땬듰땬듸딤뎨뎰땧둔듽돶뎰땋땍돳돶딤땅돴듸땝돰뎽땪땩둣땅뒹뒬땅;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 126
    .line 127
    .line 128
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    if-eqz v6, :cond_2

    .line 137
    .line 138
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    check-cast v6, Ljava/util/UUID;

    .line 143
    .line 144
    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    invoke-interface {v7, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_2
    const-string v4, " id IN ("

    .line 153
    .line 154
    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Landroidx/work/WorkQuery;->getIds()Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    invoke-static {v1, v2}, Landroidx/work/impl/utils/RawQueries;->bindings(Ljava/lang/StringBuilder;I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-interface {v0, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 176
    .line 177
    .line 178
    move-object v2, v5

    .line 179
    :cond_3
    invoke-virtual {p0}, Landroidx/work/WorkQuery;->getTags()Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    check-cast v3, Ljava/util/Collection;

    .line 184
    .line 185
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    const-string v4, "))"

    .line 190
    .line 191
    if-nez v3, :cond_4

    .line 192
    .line 193
    const-string v3, " id IN (SELECT work_spec_id FROM worktag WHERE tag IN ("

    .line 194
    .line 195
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0}, Landroidx/work/WorkQuery;->getTags()Ljava/util/List;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    invoke-static {v1, v2}, Landroidx/work/impl/utils/RawQueries;->bindings(Ljava/lang/StringBuilder;I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0}, Landroidx/work/WorkQuery;->getTags()Ljava/util/List;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    check-cast v2, Ljava/util/Collection;

    .line 221
    .line 222
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 223
    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_4
    move-object v5, v2

    .line 227
    :goto_3
    invoke-virtual {p0}, Landroidx/work/WorkQuery;->getUniqueWorkNames()Ljava/util/List;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    check-cast v2, Ljava/util/Collection;

    .line 232
    .line 233
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    if-nez v2, :cond_5

    .line 238
    .line 239
    const-string v2, " id IN (SELECT work_spec_id FROM workname WHERE name IN ("

    .line 240
    .line 241
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0}, Landroidx/work/WorkQuery;->getUniqueWorkNames()Ljava/util/List;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    invoke-static {v1, v2}, Landroidx/work/impl/utils/RawQueries;->bindings(Ljava/lang/StringBuilder;I)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0}, Landroidx/work/WorkQuery;->getUniqueWorkNames()Ljava/util/List;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    check-cast p0, Ljava/util/Collection;

    .line 267
    .line 268
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 269
    .line 270
    .line 271
    :cond_5
    const-string p0, ";"

    .line 272
    .line 273
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    new-instance p0, Landroidx/sqlite/db/SimpleSQLiteQuery;

    .line 277
    .line 278
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    const-string v2, "builder.toString()"

    .line 283
    .line 284
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    const/4 v2, 0x0

    .line 288
    new-array v2, v2, [Ljava/lang/Object;

    .line 289
    .line 290
    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-direct {p0, v1, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    return-object p0
.end method
