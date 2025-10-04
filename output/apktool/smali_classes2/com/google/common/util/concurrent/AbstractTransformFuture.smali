.class abstract Lcom/google/common/util/concurrent/AbstractTransformFuture;
.super Lcom/google/common/util/concurrent/FluentFuture$TrustedFuture;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation runtime Lcom/google/common/util/concurrent/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AbstractTransformFuture$TransformFuture;,
        Lcom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/FluentFuture$TrustedFuture<",
        "TO;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field function:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TI;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TI;>;TF;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/FluentFuture$TrustedFuture;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 11
    .line 12
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    .line 17
    .line 18
    return-void
.end method

.method public static create(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TI;>;",
            "Lcom/google/common/base/Function<",
            "-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TO;>;"
        }
    .end annotation

    .line 4
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lcom/google/common/util/concurrent/AbstractTransformFuture$TransformFuture;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/AbstractTransformFuture$TransformFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)V

    .line 6
    invoke-static {p2, v0}, Lcom/google/common/util/concurrent/MoreExecutors;->rejectionPropagatingExecutor(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/AbstractFuture;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static create(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TI;>;",
            "Lcom/google/common/util/concurrent/AsyncFunction<",
            "-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TO;>;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)V

    .line 3
    invoke-static {p2, v0}, Lcom/google/common/util/concurrent/MoreExecutors;->rejectionPropagatingExecutor(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/AbstractFuture;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public final afterDone()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->maybePropagateCancellationTo(Ljava/util/concurrent/Future;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

.method public abstract doTransform(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
        .end annotation
    .end param
    .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/ForOverride;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TI;)TT;"
        }
    .end annotation
.end method

.method public pendingToString()Ljava/lang/String;
    .locals 10
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-super {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->pendingToString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    new-array v6, v6, [J

    .line 15
    .line 16
    const-wide v7, 0x424f4c275510a100L    # 2.688432645452578E11

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    const/4 v9, 0x0

    .line 22
    aput-wide v7, v6, v9

    .line 23
    .line 24
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    add-int/lit8 v5, v5, 0x10

    .line 42
    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 46
    .line 47
    .line 48
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    new-array v7, v1, [J

    .line 51
    .line 52
    fill-array-data v7, :array_0

    .line 53
    .line 54
    .line 55
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    new-array v5, v0, [J

    .line 71
    .line 72
    fill-array-data v5, :array_1

    .line 73
    .line 74
    .line 75
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-static {v2, v6}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    :cond_0
    if-eqz v3, :cond_1

    .line 83
    .line 84
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    const/16 v3, 0xb

    .line 89
    .line 90
    invoke-static {v3, v5}, L땸득뎸뒬둥따듔도디돨듽둘땫땍뎰땸되뒈땲돰됴뎠땍뒨돶뎸뎡듐땁뎠뒉드땣듔딨듸뒬땤들됩땄뒵딠듰뒷뒛뒙딌들딜돸딌땁뒛딨돝땯땣땁돤뒋땩돶뎸뒛뒛뒾듼딜뒀둣됨뎰땄돤딌둠뎰둔뒼두땟두땝땲딻뒉땜땯뒉되뒵딽득돳땃땥땠땫땋듬듼듟딀돛돷뒘드뒵둣뒘땫뎡땐둠뒤땲땁땹듰땫되득뒀땥뒹딠디딅뒨;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(ILjava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    add-int/2addr v4, v3

    .line 99
    invoke-static {v4, v5}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 104
    .line 105
    new-array v1, v1, [J

    .line 106
    .line 107
    fill-array-data v1, :array_2

    .line 108
    .line 109
    .line 110
    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 124
    .line 125
    new-array v0, v0, [J

    .line 126
    .line 127
    fill-array-data v0, :array_3

    .line 128
    .line 129
    .line 130
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 131
    .line 132
    .line 133
    invoke-static {v1, v3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    return-object v0

    .line 138
    :cond_1
    if-eqz v4, :cond_3

    .line 139
    .line 140
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-eqz v1, :cond_2

    .line 149
    .line 150
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    goto :goto_0

    .line 155
    :cond_2
    new-instance v1, Ljava/lang/String;

    .line 156
    .line 157
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    move-object v0, v1

    .line 161
    :goto_0
    return-object v0

    .line 162
    :cond_3
    const/4 v0, 0x0

    .line 163
    return-object v0

    .line 164
    nop

    .line 165
    :array_0
    .array-data 8
        0x249b1a6cb9b45174L    # 2.386507651799901E-132
        -0x324297d9b1283d82L    # -3.0969011354285403E66
        0x5dcaee6b3c842192L    # 6.568189142410197E143
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
    .line 178
    .line 179
    .line 180
    .line 181
    :array_1
    .array-data 8
        0x2c75ff2cf03a02adL    # 1.6477088360871186E-94
        -0x5b289bfd3aba24e4L    # -3.295372479471715E-131
    .end array-data

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
        -0x51b989acb2ab0df3L    # -9.033243148252675E-86
        0xebd395a098d0a1cL
        0x443360cd9305e830L    # 3.574635304519278E20
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
    :array_3
    .array-data 8
        0x3a5a989670c8c527L    # 1.342757155880607E-27
        0x35b2514e873dae7cL    # 4.895864687176562E-50
    .end array-data
.end method

.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/FluentFuture$TrustedFuture;->isCancelled()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v5, 0x0

    .line 16
    :goto_0
    or-int/2addr v2, v5

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    const/4 v3, 0x0

    .line 21
    :goto_1
    or-int/2addr v2, v3

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    const/4 v2, 0x0

    .line 26
    iput-object v2, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_3
    :try_start_0
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :try_start_1
    invoke-virtual {p0, v1, v0}, Lcom/google/common/util/concurrent/AbstractTransformFuture;->doTransform(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    iput-object v2, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractTransformFuture;->setResult(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    .line 55
    .line 56
    iput-object v2, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    .line 57
    .line 58
    return-void

    .line 59
    :catchall_1
    move-exception v0

    .line 60
    iput-object v2, p0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->function:Ljava/lang/Object;

    .line 61
    .line 62
    throw v0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :catch_1
    move-exception v0

    .line 69
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :catch_2
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :catch_3
    invoke-virtual {p0, v4}, Lcom/google/common/util/concurrent/FluentFuture$TrustedFuture;->cancel(Z)Z

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public abstract setResult(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/ForOverride;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
