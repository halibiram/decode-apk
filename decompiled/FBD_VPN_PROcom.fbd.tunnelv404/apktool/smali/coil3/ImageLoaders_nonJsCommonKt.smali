.class public final Lcoil3/ImageLoaders_nonJsCommonKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "executeBlocking",
        "Lcoil3/request/ImageResult;",
        "Lcoil3/ImageLoader;",
        "request",
        "Lcoil3/request/ImageRequest;",
        "coil-core_release"
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
.method public static final executeBlocking(Lcoil3/ImageLoader;Lcoil3/request/ImageRequest;)Lcoil3/request/ImageResult;
    .locals 2
    .param p0    # Lcoil3/ImageLoader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcoil3/request/ImageRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, L듼든땄됩뒻듼뒘디듻땱딄땨돠둬뒵돼딹땣뒙땣둠뒾딀땪딞돰딸딜뒨딀딎듻딸딁득됐땣땪뎸땔뒾딜들듨뎹땅땯딹땪딎둣땬듽됴돼돸땳둔땤되뒤둔돛듌돼둑땫땡듟뒨뒵딨디드땳듌땸듼땟둠돷뒾뒀뎸뎠드됨둣뎡딜딽뒝듬딜되땹뒐둘득됨땜땬됨땭땯땹땧됐땳두딟디될땍뒙땁땍듐둘둬땵뎸디듟뎸뎰둘뒵돰땅;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, L듼든땄됩뒻듼뒘디듻땱딄땨돠둬뒵돼딹땣뒙땣둠뒾딀땪딞돰딸딜뒨딀딎듻딸딁득됐땣땪뎸땔뒾딜들듨뎹땅땯딹땪딎둣땬듽됴돼돸땳둔땤되뒤둔돛듌돼둑땫땡듟뒨뒵딨디드땳듌땸듼땟둠돷뒾뒀뎸뎠드됨둣뎡딜딽뒝듬딜되땹뒐둘득됨땜땬됨땭땯땹땧됐땳두딟디될땍뒙땁땍듐둘둬땵뎸디듟뎸뎰둘뒵돰땅;-><init>(Lcoil3/ImageLoader;Lcoil3/request/ImageRequest;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    invoke-static {v1, v0, p0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcoil3/request/ImageResult;

    .line 13
    .line 14
    return-object p0
.end method
