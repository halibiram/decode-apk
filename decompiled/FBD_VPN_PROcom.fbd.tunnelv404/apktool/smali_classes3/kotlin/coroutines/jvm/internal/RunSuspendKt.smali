.class public final Lkotlin/coroutines/jvm/internal/RunSuspendKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u001a+\u0010\u0000\u001a\u00020\u00012\u001c\u0010\u0002\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0003H\u0001\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "runSuspend",
        "",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Lkotlin/jvm/functions/Function1;)V",
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
.method public static final runSuspend(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p0    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .line 1
    const-string v0, "block"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, L땋땫둔둘뒻뒀둣뒙될돳뎨땧뒝딌땅땦뒝뒬땡된뎸듸땄땔땤듼뒵땫돸딁딀된땮될땫땥듔뎨돠땅됫땨딟듽딅땍됨뒾땜둣뒘둔드땡둑될됫듰드땣뒵돴뎨뒙뒨딀땅디듨돼돼딁딸뒙딎뒾돵딟둥듻뒵뒋됐뒨땩둠듌뒉딄돝땠뒙땸땡딤땦둘뎬땣둡듨딝뒨땫딄뒾땻든뎠듔땃됩땔됩딅돴땪뒹돳땀됩뎰듌딠돨땸땰둬딟돝;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0}, Lkotlin/coroutines/ContinuationKt;->startCoroutine(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :goto_0
    :try_start_0
    iget-object p0, v0, L땋땫둔둘뒻뒀둣뒙될돳뎨땧뒝딌땅땦뒝뒬땡된뎸듸땄땔땤듼뒵땫돸딁딀된땮될땫땥듔뎨돠땅됫땨딟듽딅땍됨뒾땜둣뒘둔드땡둑될됫듰드땣뒵돴뎨뒙뒨딀땅디듨돼돼딁딸뒙딎뒾돵딟둥듻뒵뒋됐뒨땩둠듌뒉딄돝땠뒙땸땡딤땦둘뎬땣둡듨딝뒨땫딄뒾땻든뎠듔땃됩땔됩딅돴땪뒹돳땀됩뎰듌딠돨땸땰둬딟돝;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lkotlin/Result;

    .line 16
    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    const-string p0, "null cannot be cast to non-null type java.lang.Object"

    .line 20
    .line 21
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-virtual {p0}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit v0

    .line 40
    throw p0
.end method
