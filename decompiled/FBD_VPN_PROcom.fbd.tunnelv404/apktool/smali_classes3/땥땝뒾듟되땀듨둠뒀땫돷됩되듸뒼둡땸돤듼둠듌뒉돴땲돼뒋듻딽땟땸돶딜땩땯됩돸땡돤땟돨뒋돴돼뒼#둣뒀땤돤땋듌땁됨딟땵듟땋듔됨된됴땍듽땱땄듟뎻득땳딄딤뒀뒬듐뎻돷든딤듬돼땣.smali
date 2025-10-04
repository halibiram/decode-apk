.class public abstract L땥땝뒾듟되땀듨둠뒀땫돷됩되듸뒼둡땸돤듼둠듌뒉돴땲돼뒋듻딽땟땸돶딜땩땯됩돸땡돤땟돨뒋돴돼뒼딠뒐땩땮뒹도듬뒀땋땧딞땬뒷땐딎딜뎸돨땬들드됨두땍디땥돼뒋듼땮뎸돤둥뒬땱됨뒾뒐뒼된뒬뒼딀땸딤뒨듌땥뒋돠둣뒀땤돤땋듌땁됨딟땵듟땋듔됨된됴땍듽땱땄듟뎻득땳딄딤뒀뒬듐뎻돷든딤듬돼땣;
.super L땥땀딞둠둔뒷둘딻딟둣땰뒀둬뎹땮땡돨땟듬뒵되듟땔땁됐둔딅뒙돵땋딝돛땣돳딹두됴딝뒷딸듬땸뎹둬둣뒐될뎨돴딻되들딃뒷땥땍돵듼된도돵돨뎹땨뒾땔뒾뒨땋뒷돵듽땄뒷뎽뒈땋둣듻돰땃뒛뎠둘땱딸딄땹땜땩됨딅딀뒀돴뎻땍듰딅땫뎽땳둘딻땥딤돵뒤돳뒝됩돴됐둥땵됐뎽딨둘땹뒋땵딜땰딽땬땅뒨듬듸;
.source "SourceFile"


# direct methods
.method public static final appendln(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 1
    .param p0    # Ljava/lang/Appendable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "Use appendLine instead. Note that the new method always appends the line feed character \'\\n\' regardless of the system line separator."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "appendLine()"
            imports = {}
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/DeprecatedSinceKotlin;
        errorSince = "2.1"
        warningSince = "1.4"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, L땩뒘땰뎹돸듌돳땫땮듻땣땵드땸둣도딻돝드땥뒵돵둣딐될두뎠돤들뒉돰돳돠돨땧딞땭땣딸땵듸돨듽땲땁듽땡땰뎡딀딠둠딨돴땫돰뒛뎰땀뒼뎽땹땠뎠돴땦듽땤땩들땥뒋땰듽돨둘땠되딝땋딝둠돷둑듻둥둘딅딐듌딝땀돶되뒘딤됴땃돷듨돷둠땦땤땐땠땩됩땻든딻땵됨됫뒵땫땜딽됫두뒐뒈땭듬뎻든딁땤듨돤;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p0

    const-string v0, "append(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final appendln(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0    # Ljava/lang/StringBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "Use appendLine instead. Note that the new method always appends the line feed character \'\\n\' regardless of the system line separator."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "appendLine()"
            imports = {}
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/DeprecatedSinceKotlin;
        errorSince = "2.1"
        warningSince = "1.4"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, L땩뒘땰뎹돸듌돳땫땮듻땣땵드땸둣도딻돝드땥뒵돵둣딐될두뎠돤들뒉돰돳돠돨땧딞땭땣딸땵듸돨듽땲땁듽땡땰뎡딀딠둠딨돴땫돰뒛뎰땀뒼뎽땹땠뎠돴땦듽땤땩들땥뒋땰듽돨둘땠되딝땋딝둠돷둑듻둥둘딅딐듌딝땀돶되뒘딤됴땃돷듨돷둠땦땤땐땠땩됩땻든딻땵됨됫뒵땫땜딽됫두뒐뒈땭듬뎻든딁땤듨돤;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "append(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final clear(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0    # Ljava/lang/StringBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
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
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method
