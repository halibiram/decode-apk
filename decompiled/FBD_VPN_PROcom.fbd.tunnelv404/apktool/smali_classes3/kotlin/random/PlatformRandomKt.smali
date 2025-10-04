.class public final Lkotlin/random/PlatformRandomKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0003\u001a\u0013\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u001a\u0013\u0010\u0004\u001a\u00020\u0000*\u00020\u0001H\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u001a\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006H\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lkotlin/random/Random;",
        "Ljava/util/Random;",
        "asJavaRandom",
        "(Lkotlin/random/Random;)Ljava/util/Random;",
        "asKotlinRandom",
        "(Ljava/util/Random;)Lkotlin/random/Random;",
        "",
        "hi26",
        "low27",
        "",
        "doubleFromParts",
        "(II)D",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final asJavaRandom(Lkotlin/random/Random;)Ljava/util/Random;
    .locals 1
    .param p0    # Lkotlin/random/Random;
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
    instance-of v0, p0, Lkotlin/random/AbstractPlatformRandom;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    move-object v0, p0

    .line 11
    check-cast v0, Lkotlin/random/AbstractPlatformRandom;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lkotlin/random/AbstractPlatformRandom;->getImpl()Ljava/util/Random;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    :cond_1
    new-instance v0, L딃딤땋돠땧땄듰두돤딻땱뒵땰돶땸뒨디땁딄뎸땦도땁땱뎬땳땦돛듸듰딅뎡딜땡되돰땳땻둠땧듸드땱딽땮딅땅땃땔뎰딻된땫딜들땝땍땹뒤딐땁둘땜돤됫딤뒾딁뎨된득땻땭땄뎽돝땯땯들도딄땡딄땠땸뒋둑뒙땀든딽땯도뎬땅듼뎹땭듽돰딠둘뒾뎻땲딃땍뒬땔땲딸듽듨딎뎰땪뒛딁돛뒉뒙땠따둑따딐뒾딸딠돵;

    .line 24
    .line 25
    invoke-direct {v0, p0}, L딃딤땋돠땧땄듰두돤딻땱뒵땰돶땸뒨디땁딄뎸땦도땁땱뎬땳땦돛듸듰딅뎡딜땡되돰땳땻둠땧듸드땱딽땮딅땅땃땔뎰딻된땫딜들땝땍땹뒤딐땁둘땜돤됫딤뒾딁뎨된득땻땭땄뎽돝땯땯들도딄땡딄땠땸뒋둑뒙땀든딽땯도뎬땅듼뎹땭듽돰딠둘뒾뎻땲딃땍뒬땔땲딸듽듨딎뎰땪뒛딁돛뒉뒙땠따둑따딐뒾딸딠돵;-><init>(Lkotlin/random/Random;)V

    .line 26
    .line 27
    .line 28
    :cond_2
    return-object v0
.end method

.method public static final asKotlinRandom(Ljava/util/Random;)Lkotlin/random/Random;
    .locals 1
    .param p0    # Ljava/util/Random;
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
    instance-of v0, p0, L딃딤땋돠땧땄듰두돤딻땱뒵땰돶땸뒨디땁딄뎸땦도땁땱뎬땳땦돛듸듰딅뎡딜땡되돰땳땻둠땧듸드땱딽땮딅땅땃땔뎰딻된땫딜들땝땍땹뒤딐땁둘땜돤됫딤뒾딁뎨된득땻땭땄뎽돝땯땯들도딄땡딄땠땸뒋둑뒙땀든딽땯도뎬땅듼뎹땭듽돰딠둘뒾뎻땲딃땍뒬땔땲딸듽듨딎뎰땪뒛딁돛뒉뒙땠따둑따딐뒾딸딠돵;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    move-object v0, p0

    .line 11
    check-cast v0, L딃딤땋돠땧땄듰두돤딻땱뒵땰돶땸뒨디땁딄뎸땦도땁땱뎬땳땦돛듸듰딅뎡딜땡되돰땳땻둠땧듸드땱딽땮딅땅땃땔뎰딻된땫딜들땝땍땹뒤딐땁둘땜돤됫딤뒾딁뎨된득땻땭땄뎽돝땯땯들도딄땡딄땠땸뒋둑뒙땀든딽땯도뎬땅듼뎹땭듽돰딠둘뒾뎻땲딃땍뒬땔땲딸듽듨딎뎰땪뒛딁돛뒉뒙땠따둑따딐뒾딸딠돵;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, v0, L딃딤땋돠땧땄듰두돤딻땱뒵땰돶땸뒨디땁딄뎸땦도땁땱뎬땳땦돛듸듰딅뎡딜땡되돰땳땻둠땧듸드땱딽땮딅땅땃땔뎰딻된땫딜들땝땍땹뒤딐땁둘땜돤됫딤뒾딁뎨된득땻땭땄뎽돝땯땯들도딄땡딄땠땸뒋둑뒙땀든딽땯도뎬땅듼뎹땭듽돰딠둘뒾뎻땲딃땍뒬땔땲딸듽듨딎뎰땪뒛딁돛뒉뒙땠따둑따딐뒾딸딠돵;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lkotlin/random/Random;

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    :cond_1
    new-instance v0, L딹돵딎딀둘돶땭땦땭둔둡듸둘땪땀둡땳땹뒨따두땜듻땰됫뎡돳딟뒵들돤뎻됫뒋땯돵뒹뒋딠땣땪땡둬땐둬뒝둥딹됐뎹딀땮듸딃뒵디돴땳뎡딐땤뒝뎰딌둣딤딃땅땍되땱디뎹딄딜땮뎨뒻됩뒀도땄듰돼딤땳돷뒋뒘뒋된뒾뒨뒘뎸됨딨땁됐땠돰땣둔땩뒵듐땪땠뒨돳뒤뒙딅든땹땤딐둔뎰땃돛딟딄들둑된뒐뎡뒻땵;

    .line 22
    .line 23
    invoke-direct {v0, p0}, L딹돵딎딀둘돶땭땦땭둔둡듸둘땪땀둡땳땹뒨따두땜듻땰됫뎡돳딟뒵들돤뎻됫뒋땯돵뒹뒋딠땣땪땡둬땐둬뒝둥딹됐뎹딀땮듸딃뒵디돴땳뎡딐땤뒝뎰딌둣딤딃땅땍되땱디뎹딄딜땮뎨뒻됩뒀도땄듰돼딤땳돷뒋뒘뒋된뒾뒨뒘뎸됨딨땁됐땠돰땣둔땩뒵듐땪땠뒨돳뒤뒙딅든땹땤딐둔뎰땃돛딟딄들둑된뒐뎡뒻땵;-><init>(Ljava/util/Random;)V

    .line 24
    .line 25
    .line 26
    :cond_2
    return-object v0
.end method

.method public static final doubleFromParts(II)D
    .locals 2

    int-to-long v0, p0

    const/16 p0, 0x1b

    shl-long/2addr v0, p0

    int-to-long p0, p1

    add-long/2addr v0, p0

    long-to-double p0, v0

    const-wide/high16 v0, 0x4340000000000000L    # 9.007199254740992E15

    div-double/2addr p0, v0

    return-wide p0
.end method
