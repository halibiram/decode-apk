.class public final Lkotlinx/serialization/internal/MapEntrySerializer;
.super Lkotlinx/serialization/internal/KeyValueSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/serialization/internal/KeyValueSerializer<",
        "TK;TV;",
        "Ljava/util/Map$Entry<",
        "+TK;+TV;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010&\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0001\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022 \u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00040\u0003:\u0001\u0017B#\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ+\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u0006\u0010\n\u001a\u00028\u00002\u0006\u0010\u000b\u001a\u00028\u0001H\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0013\u001a\u00020\u000e8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R$\u0010\n\u001a\u00028\u0000*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00048TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R$\u0010\u000b\u001a\u00028\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00048TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0015\u00a8\u0006\u0018"
    }
    d2 = {
        "Lkotlinx/serialization/internal/MapEntrySerializer;",
        "K",
        "V",
        "Lkotlinx/serialization/internal/KeyValueSerializer;",
        "",
        "Lkotlinx/serialization/KSerializer;",
        "keySerializer",
        "valueSerializer",
        "<init>",
        "(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V",
        "key",
        "value",
        "toResult",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "\ub3a0\ub544\ub490\ub3f8\ub4cc\ub3db\ub490\ub480\ub4f8\ub510\ub503\ub541\ub4d4\ub3a1\ub4cc\ub500\ub46c\ub480\ub418\ub573\ub573\ub4a4\ub4bc\ub460\ub56e\ub544\ub564\ub450\ub54d\ub3bb\ub567\ub53b\ub3c4\ub4fc\ub4ac\ub561\ub480\ub4fb\ub520\ub3f7\ub3b8\ub451\ub3f5\ub46c\ub539\ub550\ub42b\ub545\ub3a1\ub51f\ub420\ub56f\ub554\ub54b\ub51f\ub573\ub503\ub3f3\ub49d\ub514\ub4a8\ub4df\ub3f6\ub51c\ub573\ub51f\ub544\ub480\ub3dd\ub56e\ub3c4\ub3c4\ub504\ub56f\ub4f0\ub56e\ub3a1\ub3a1\ub4df\ub4fb\ub544\ub480\ub4bb\ub56d\ub451\ub4e8\ub4e4\ub4e4\ub578\ub4df\ub418\ub46c\ub49d\ub3f0\ub4d4\ub429\ub528\ub4cc\ub51c\ub4fb\ub3dd\ub4dc\ub4be\ub451\ub3a1\ub4f0\ub545\ub503\ub524\ub545\ub4a8\ub488\ub4b9\ub420\ub4f8\ub3f5\ub458\ub490\ub56d\ub541\ub4f8\ub56e\ub489\ub56a\ub51f\ub4e0\ub57b\ub571\ub4fb\ub489",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "getDescriptor",
        "()Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "descriptor",
        "getKey",
        "(Ljava/util/Map$Entry;)Ljava/lang/Object;",
        "getValue",
        "\ub510\ub50e\ub540\ub488\ub566\ub461\ub505\ub568\ub4f8\ub51d\ub567\ub51d\ub503\ub578\ub501\ub51f\ub4fd\ub573\ub56c\ub461\ub538\ub4fc\ub4f0\ub454\ub54b\ub540\ub504\ub501\ub3db\ub4f0\ub51c\ub49d\ub54d\ub54d\ub4b9\ub545\ub51d\ub578\ub4f0\ub57b\ub4b5\ub454\ub3f7\ub490\ub54d\ub454\ub48b\ub504\ub434\ub3f3\ub4ac\ub504\ub514\ub564\ub520\ub56c\ub504\ub56a\ub3b8\ub3b9\ub3a1\ub4fc\ub567\ub461\ub498\ub4e0\ub575\ub4a4\ub53d\ub503\ub53d\ub56c\ub4fc\ub510\ub418\ub4a4\ub499\ub56c\ub4dc\ub499\ub490\ub3e4\ub4bb\ub499\ub498\ub541\ub461\ub4ec\ub3b9\ub573\ub4bb\ub550\ub451\ub454\ub3db\ub410\ub49d\ub55f\ub4fb\ub458\ub4a8\ub41c\ub4cc\ub4bc\ub50c\ub4a8\ub3bb\ub3a0\ub4d0\ub490\ub4be\ub545\ub540\ub56e\ub4a4\ub54d\ub4a8\ub579\ub572\ub4be\ub4dd\ub3e8\ub49b\ub3fc\ub489\ub3a0\ub3bd\ub560\ub4a4\ub561",
        "kotlinx-serialization-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/PublishedApi;
.end annotation


# instance fields
.field public final 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V
    .locals 4
    .param p1    # Lkotlinx/serialization/KSerializer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/serialization/KSerializer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/KSerializer<",
            "TK;>;",
            "Lkotlinx/serialization/KSerializer<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "keySerializer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "valueSerializer"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, p2, v0}, Lkotlinx/serialization/internal/KeyValueSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lkotlinx/serialization/descriptors/StructureKind$MAP;->INSTANCE:Lkotlinx/serialization/descriptors/StructureKind$MAP;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    new-array v1, v1, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 19
    .line 20
    new-instance v2, L딐듨돼뒼땪뒋딜뒉돰땔딅돛돤땔돵딻듬뎽땁딄딠땋둑땲둣땵될뒾듼땍뎻되뎨뒾뒹땃땧땄땧땤땭딟둠드딃땮됨땝땀땋뎻땨땄둣됩딹땃뒼땱딻땝돼땻듻딎둣딅뒛뒝뒷도뒘뒷땹듐뒹딜뎸땍듟뒙딅돨땸땵땳딻뒤땥땭듬땩땔두딤뒈둥되땥든뎡뒤돰땫득딞디땯두돳듌땤땮땰듼돛땀둔뎽돸뒉딤듸됫뒈딻뎠돸땦듟;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-direct {v2, p1, p2, v3}, L딐듨돼뒼땪뒋딜뒉돰땔딅돛돤땔돵딻듬뎽땁딄딠땋둑땲둣땵될뒾듼땍뎻되뎨뒾뒹땃땧땄땧땤땭딟둠드딃땮됨땝땀땋뎻땨땄둣됩딹땃뒼땱딻땝돼땻듻딎둣딅뒛뒝뒷도뒘뒷땹듐뒹딜뎸땍듟뒙딅돨땸땵땳딻뒤땥땭듬땩땔두딤뒈둥되땥든뎡뒤돰땫득딞디땯두돳듌땤땮땰듼돛땀둔뎽돸뒉딤듸됫뒈딻뎠돸땦듟;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 24
    .line 25
    .line 26
    const-string p1, "kotlin.collections.Map.Entry"

    .line 27
    .line 28
    invoke-static {p1, v0, v1, v2}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->buildSerialDescriptor(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialKind;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lkotlinx/serialization/internal/MapEntrySerializer;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/internal/MapEntrySerializer;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/MapEntrySerializer;->getKey(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getKey(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/util/Map$Entry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)TK;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/MapEntrySerializer;->getValue(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/util/Map$Entry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)TV;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toResult(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/MapEntrySerializer;->toResult(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public toResult(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, L딐딎땀뒈땦둡딅땨듸딝땧딝딃땸딁딟듽땳땬둡딸듼듰둔땋땀딄딁돛듰딜뒝땍땍뒹땅딝땸듰땻뒵둔돷뒐땍둔뒋딄됴돳뒬딄디땤딠땬딄땪뎸뎹뎡듼땧둡뒘든땵뒤딽딃딽땬듼딐되뒤뒙땬드뒙뒐돤뒻뒙뒘땁둡듬뎹땳뒻땐둑둔돛됐뒝땟듻둘뒨된듌뒼딌뒨뎻뎠듐뒐뒾땅땀땮뒤땍뒨땹땲뒾득돨뒛돼뒉뎠뎽땠뒤땡;

    invoke-direct {v0, p1, p2}, L딐딎땀뒈땦둡딅땨듸딝땧딝딃땸딁딟듽땳땬둡딸듼듰둔땋땀딄딁돛듰딜뒝땍땍뒹땅딝땸듰땻뒵둔돷뒐땍둔뒋딄됴돳뒬딄디땤딠땬딄땪뎸뎹뎡듼땧둡뒘든땵뒤딽딃딽땬듼딐되뒤뒙땬드뒙뒐돤뒻뒙뒘땁둡듬뎹땳뒻땐둑둔돛됐뒝땟듻둘뒨된듌뒼딌뒨뎻뎠듐뒐뒾땅땀땮뒤땍뒨땹땲뒾득돨뒛돼뒉뎠뎽땠뒤땡;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
