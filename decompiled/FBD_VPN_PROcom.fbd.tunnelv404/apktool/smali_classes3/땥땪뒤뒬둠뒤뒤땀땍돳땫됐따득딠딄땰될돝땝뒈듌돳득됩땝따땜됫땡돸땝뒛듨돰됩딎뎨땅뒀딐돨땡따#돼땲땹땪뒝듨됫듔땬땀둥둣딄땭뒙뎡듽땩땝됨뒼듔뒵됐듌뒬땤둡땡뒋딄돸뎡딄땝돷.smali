.class public abstract L땥땪뒤뒬둠뒤뒤땀땍돳땫됐따득딠딄땰될돝땝뒈듌돳득됩땝따땜됫땡돸땝뒛듨돰됩딎뎨땅뒀딐돨땡따뒀땠뒼땻딜뒘뒈뎡든뎡딅땨돨땮뒛될뒼됩둥땄딤땻땣됫딌듬됨땣땁둠땨땦될돳뒤뒈딐뎰땮둠듸땨뒨돰딌뒹땯돵듔땻돼땲땹땪뒝듨됫듔땬땀둥둣딄땭뒙뎡듽땩땝됨뒼듔뒵됐듌뒬땤둡땡뒋딄돸뎡딄땝돷;
.super L땥땝뒾듟되땀듨둠뒀땫돷됩되듸뒼둡땸돤듼둠듌뒉돴땲돼뒋듻딽땟땸돶딜땩땯됩돸땡돤땟돨뒋돴돼뒼딠뒐땩땮뒹도듬뒀땋땧딞땬뒷땐딎딜뎸돨땬들드됨두땍디땥돼뒋듼땮뎸돤둥뒬땱됨뒾뒐뒼된뒬뒼딀땸딤뒨듌땥뒋돠둣뒀땤돤땋듌땁됨딟땵듟땋듔됨된됴땍듽땱땄듟뎻득땳딄딤뒀뒬듐뎻돷든딤듬돼땣;
.source "SourceFile"


# direct methods
.method public static final varargs append(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 3
    .param p0    # Ljava/lang/StringBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 4
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static final varargs append(Ljava/lang/StringBuilder;[Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 3
    .param p0    # Ljava/lang/StringBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
