.class public final Landroidx/camera/video/QualitySelector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "QualitySelector"


# instance fields
.field private final mFallbackStrategy:Landroidx/camera/video/FallbackStrategy;

.field private final mPreferredQualityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/video/Quality;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroidx/camera/video/FallbackStrategy;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/video/FallbackStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/video/Quality;",
            ">;",
            "Landroidx/camera/video/FallbackStrategy;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    sget-object v0, Landroidx/camera/video/FallbackStrategy;->NONE:Landroidx/camera/video/FallbackStrategy;

    .line 11
    .line 12
    if-eq p2, v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 18
    :goto_1
    const-string v1, "No preferred quality and fallback strategy."

    .line 19
    .line 20
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Landroidx/camera/video/QualitySelector;->mPreferredQualityList:Ljava/util/List;

    .line 33
    .line 34
    iput-object p2, p0, Landroidx/camera/video/QualitySelector;->mFallbackStrategy:Landroidx/camera/video/FallbackStrategy;

    .line 35
    .line 36
    return-void
.end method

.method private addByFallbackStrategy(Ljava/util/List;Ljava/util/Set;)V
    .locals 10
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/video/Quality;",
            ">;",
            "Ljava/util/Set<",
            "Landroidx/camera/video/Quality;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "Select quality by fallbackStrategy = "

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Landroidx/camera/video/QualitySelector;->mFallbackStrategy:Landroidx/camera/video/FallbackStrategy;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "QualitySelector"

    .line 32
    .line 33
    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Landroidx/camera/video/QualitySelector;->mFallbackStrategy:Landroidx/camera/video/FallbackStrategy;

    .line 37
    .line 38
    sget-object v2, Landroidx/camera/video/FallbackStrategy;->NONE:Landroidx/camera/video/FallbackStrategy;

    .line 39
    .line 40
    if-ne v0, v2, :cond_2

    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    instance-of v0, v0, Landroidx/camera/video/FallbackStrategy$RuleStrategy;

    .line 44
    .line 45
    const-string v2, "Currently only support type RuleStrategy"

    .line 46
    .line 47
    invoke-static {v0, v2}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Landroidx/camera/video/QualitySelector;->mFallbackStrategy:Landroidx/camera/video/FallbackStrategy;

    .line 51
    .line 52
    check-cast v0, Landroidx/camera/video/FallbackStrategy$RuleStrategy;

    .line 53
    .line 54
    invoke-static {}, Landroidx/camera/video/Quality;->getSortedQualities()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v0}, Landroidx/camera/video/FallbackStrategy$RuleStrategy;->getFallbackQuality()Landroidx/camera/video/Quality;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    sget-object v4, Landroidx/camera/video/Quality;->HIGHEST:Landroidx/camera/video/Quality;

    .line 63
    .line 64
    const/4 v5, 0x0

    .line 65
    const/4 v6, 0x1

    .line 66
    if-ne v3, v4, :cond_3

    .line 67
    .line 68
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Landroidx/camera/video/Quality;

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    invoke-virtual {v0}, Landroidx/camera/video/FallbackStrategy$RuleStrategy;->getFallbackQuality()Landroidx/camera/video/Quality;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    sget-object v4, Landroidx/camera/video/Quality;->LOWEST:Landroidx/camera/video/Quality;

    .line 80
    .line 81
    if-ne v3, v4, :cond_4

    .line 82
    .line 83
    invoke-static {v6, v2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(ILjava/util/List;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    check-cast v3, Landroidx/camera/video/Quality;

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    invoke-virtual {v0}, Landroidx/camera/video/FallbackStrategy$RuleStrategy;->getFallbackQuality()Landroidx/camera/video/Quality;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    :goto_0
    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    const/4 v7, -0x1

    .line 99
    if-eq v4, v7, :cond_5

    .line 100
    .line 101
    const/4 v5, 0x1

    .line 102
    :cond_5
    invoke-static {v5}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 103
    .line 104
    .line 105
    new-instance v5, Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .line 109
    .line 110
    add-int/lit8 v7, v4, -0x1

    .line 111
    .line 112
    :goto_1
    if-ltz v7, :cond_7

    .line 113
    .line 114
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    check-cast v8, Landroidx/camera/video/Quality;

    .line 119
    .line 120
    invoke-interface {p1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    if-eqz v9, :cond_6

    .line 125
    .line 126
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    :cond_6
    add-int/lit8 v7, v7, -0x1

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_7
    new-instance v7, Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .line 136
    .line 137
    add-int/2addr v4, v6

    .line 138
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    if-ge v4, v8, :cond_9

    .line 143
    .line 144
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    check-cast v8, Landroidx/camera/video/Quality;

    .line 149
    .line 150
    invoke-interface {p1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    if-eqz v9, :cond_8

    .line 155
    .line 156
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string v4, "sizeSortedQualities = "

    .line 165
    .line 166
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v2, ", fallback quality = "

    .line 173
    .line 174
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v2, ", largerQualities = "

    .line 181
    .line 182
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v2, ", smallerQualities = "

    .line 189
    .line 190
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-static {v1, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0}, Landroidx/camera/video/FallbackStrategy$RuleStrategy;->getFallbackRule()I

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    if-eqz p1, :cond_e

    .line 208
    .line 209
    if-eq p1, v6, :cond_d

    .line 210
    .line 211
    const/4 v0, 0x2

    .line 212
    if-eq p1, v0, :cond_c

    .line 213
    .line 214
    const/4 v0, 0x3

    .line 215
    if-eq p1, v0, :cond_b

    .line 216
    .line 217
    const/4 v0, 0x4

    .line 218
    if-ne p1, v0, :cond_a

    .line 219
    .line 220
    invoke-interface {p2, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 221
    .line 222
    .line 223
    goto :goto_3

    .line 224
    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    .line 225
    .line 226
    new-instance p2, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    const-string v0, "Unhandled fallback strategy: "

    .line 229
    .line 230
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    iget-object v0, p0, Landroidx/camera/video/QualitySelector;->mFallbackStrategy:Landroidx/camera/video/FallbackStrategy;

    .line 234
    .line 235
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    throw p1

    .line 246
    :cond_b
    invoke-interface {p2, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 247
    .line 248
    .line 249
    invoke-interface {p2, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 250
    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_c
    invoke-interface {p2, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 254
    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_d
    invoke-interface {p2, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 258
    .line 259
    .line 260
    invoke-interface {p2, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 261
    .line 262
    .line 263
    :cond_e
    :goto_3
    return-void
.end method

.method private static checkQualityConstantsOrThrow(Landroidx/camera/video/Quality;)V
    .locals 3
    .param p0    # Landroidx/camera/video/Quality;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-static {p0}, Landroidx/camera/video/Quality;->containsQuality(Landroidx/camera/video/Quality;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid quality: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method private static checkQualityConstantsOrThrow(Ljava/util/List;)V
    .locals 4
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/video/Quality;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/video/Quality;

    .line 2
    invoke-static {v0}, Landroidx/camera/video/Quality;->containsQuality(Landroidx/camera/video/Quality;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "qualities contain invalid quality: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static from(Landroidx/camera/video/Quality;)Landroidx/camera/video/QualitySelector;
    .locals 1
    .param p0    # Landroidx/camera/video/Quality;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/camera/video/FallbackStrategy;->NONE:Landroidx/camera/video/FallbackStrategy;

    invoke-static {p0, v0}, Landroidx/camera/video/QualitySelector;->from(Landroidx/camera/video/Quality;Landroidx/camera/video/FallbackStrategy;)Landroidx/camera/video/QualitySelector;

    move-result-object p0

    return-object p0
.end method

.method public static from(Landroidx/camera/video/Quality;Landroidx/camera/video/FallbackStrategy;)Landroidx/camera/video/QualitySelector;
    .locals 1
    .param p0    # Landroidx/camera/video/Quality;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/camera/video/FallbackStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    const-string v0, "quality cannot be null"

    invoke-static {p0, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-string v0, "fallbackStrategy cannot be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p0}, Landroidx/camera/video/QualitySelector;->checkQualityConstantsOrThrow(Landroidx/camera/video/Quality;)V

    .line 5
    new-instance v0, Landroidx/camera/video/QualitySelector;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/camera/video/QualitySelector;-><init>(Ljava/util/List;Landroidx/camera/video/FallbackStrategy;)V

    return-object v0
.end method

.method public static fromOrderedList(Ljava/util/List;)Landroidx/camera/video/QualitySelector;
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/video/Quality;",
            ">;)",
            "Landroidx/camera/video/QualitySelector;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/camera/video/FallbackStrategy;->NONE:Landroidx/camera/video/FallbackStrategy;

    invoke-static {p0, v0}, Landroidx/camera/video/QualitySelector;->fromOrderedList(Ljava/util/List;Landroidx/camera/video/FallbackStrategy;)Landroidx/camera/video/QualitySelector;

    move-result-object p0

    return-object p0
.end method

.method public static fromOrderedList(Ljava/util/List;Landroidx/camera/video/FallbackStrategy;)Landroidx/camera/video/QualitySelector;
    .locals 2
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/camera/video/FallbackStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/video/Quality;",
            ">;",
            "Landroidx/camera/video/FallbackStrategy;",
            ")",
            "Landroidx/camera/video/QualitySelector;"
        }
    .end annotation

    .line 2
    const-string v0, "qualities cannot be null"

    invoke-static {p0, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-string v0, "fallbackStrategy cannot be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "qualities cannot be empty"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 5
    invoke-static {p0}, Landroidx/camera/video/QualitySelector;->checkQualityConstantsOrThrow(Ljava/util/List;)V

    .line 6
    new-instance v0, Landroidx/camera/video/QualitySelector;

    invoke-direct {v0, p0, p1}, Landroidx/camera/video/QualitySelector;-><init>(Ljava/util/List;Landroidx/camera/video/FallbackStrategy;)V

    return-object v0
.end method

.method private static getProfileVideoSize(Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;)Landroid/util/Size;
    .locals 2
    .param p0    # Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;->getDefaultVideoProfile()Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Landroid/util/Size;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public static getQualityToResolutionMap(Landroidx/camera/video/VideoCapabilities;Landroidx/camera/core/DynamicRange;)Ljava/util/Map;
    .locals 4
    .param p0    # Landroidx/camera/video/VideoCapabilities;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/camera/core/DynamicRange;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/video/VideoCapabilities;",
            "Landroidx/camera/core/DynamicRange;",
            ")",
            "Ljava/util/Map<",
            "Landroidx/camera/video/Quality;",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, p1}, Landroidx/camera/video/VideoCapabilities;->getSupportedQualities(Landroidx/camera/core/DynamicRange;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroidx/camera/video/Quality;

    .line 25
    .line 26
    invoke-interface {p0, v2, p1}, Landroidx/camera/video/VideoCapabilities;->getProfiles(Landroidx/camera/video/Quality;Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-static {v3}, Landroidx/camera/video/QualitySelector;->getProfileVideoSize(Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;)Landroid/util/Size;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-object v0
.end method

.method public static getResolution(Landroidx/camera/core/CameraInfo;Landroidx/camera/video/Quality;)Landroid/util/Size;
    .locals 1
    .param p0    # Landroidx/camera/core/CameraInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/camera/video/Quality;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/camera/video/QualitySelector;->checkQualityConstantsOrThrow(Landroidx/camera/video/Quality;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroidx/camera/video/Recorder;->getVideoCapabilities(Landroidx/camera/core/CameraInfo;)Landroidx/camera/video/VideoCapabilities;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    sget-object v0, Landroidx/camera/core/DynamicRange;->SDR:Landroidx/camera/core/DynamicRange;

    .line 9
    .line 10
    invoke-interface {p0, p1, v0}, Landroidx/camera/video/VideoCapabilities;->getProfiles(Landroidx/camera/video/Quality;Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-static {p0}, Landroidx/camera/video/QualitySelector;->getProfileVideoSize(Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;)Landroid/util/Size;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return-object p0
.end method

.method public static getSupportedQualities(Landroidx/camera/core/CameraInfo;)Ljava/util/List;
    .locals 1
    .param p0    # Landroidx/camera/core/CameraInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/CameraInfo;",
            ")",
            "Ljava/util/List<",
            "Landroidx/camera/video/Quality;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/camera/video/Recorder;->getVideoCapabilities(Landroidx/camera/core/CameraInfo;)Landroidx/camera/video/VideoCapabilities;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Landroidx/camera/core/DynamicRange;->SDR:Landroidx/camera/core/DynamicRange;

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroidx/camera/video/VideoCapabilities;->getSupportedQualities(Landroidx/camera/core/DynamicRange;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static isQualitySupported(Landroidx/camera/core/CameraInfo;Landroidx/camera/video/Quality;)Z
    .locals 1
    .param p0    # Landroidx/camera/core/CameraInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/camera/video/Quality;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/camera/video/Recorder;->getVideoCapabilities(Landroidx/camera/core/CameraInfo;)Landroidx/camera/video/VideoCapabilities;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Landroidx/camera/core/DynamicRange;->SDR:Landroidx/camera/core/DynamicRange;

    .line 6
    .line 7
    invoke-interface {p0, p1, v0}, Landroidx/camera/video/VideoCapabilities;->isQualitySupported(Landroidx/camera/video/Quality;Landroidx/camera/core/DynamicRange;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method


# virtual methods
.method public getPrioritizedQualities(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/video/Quality;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/camera/video/Quality;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "QualitySelector"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p1, "No supported quality on the device."

    .line 10
    .line 11
    invoke-static {v1, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "supportedQualities = "

    .line 23
    .line 24
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Landroidx/camera/video/QualitySelector;->mPreferredQualityList:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_4

    .line 53
    .line 54
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Landroidx/camera/video/Quality;

    .line 59
    .line 60
    sget-object v4, Landroidx/camera/video/Quality;->HIGHEST:Landroidx/camera/video/Quality;

    .line 61
    .line 62
    if-ne v3, v4, :cond_1

    .line 63
    .line 64
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    sget-object v4, Landroidx/camera/video/Quality;->LOWEST:Landroidx/camera/video/Quality;

    .line 69
    .line 70
    if-ne v3, v4, :cond_2

    .line 71
    .line 72
    new-instance v1, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 78
    .line 79
    .line 80
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_3

    .line 89
    .line 90
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v5, "quality is not supported and will be ignored: "

    .line 97
    .line 98
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-static {v1, v3}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_4
    :goto_1
    invoke-direct {p0, p1, v0}, Landroidx/camera/video/QualitySelector;->addByFallbackStrategy(Ljava/util/List;Ljava/util/Set;)V

    .line 113
    .line 114
    .line 115
    new-instance p1, Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 118
    .line 119
    .line 120
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "QualitySelector{preferredQualities="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/camera/video/QualitySelector;->mPreferredQualityList:Ljava/util/List;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", fallbackStrategy="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/camera/video/QualitySelector;->mFallbackStrategy:Landroidx/camera/video/FallbackStrategy;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "}"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method
