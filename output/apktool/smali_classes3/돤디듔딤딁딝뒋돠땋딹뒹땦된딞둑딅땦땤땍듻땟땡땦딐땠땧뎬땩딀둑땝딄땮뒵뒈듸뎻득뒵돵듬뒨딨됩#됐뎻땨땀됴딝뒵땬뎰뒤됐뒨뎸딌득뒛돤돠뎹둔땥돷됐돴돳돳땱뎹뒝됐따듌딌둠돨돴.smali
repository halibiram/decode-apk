.class public final L돤디듔딤딁딝뒋돠땋딹뒹땦된딞둑딅땦땤땍듻땟땡땦딐땠땧뎬땩딀둑땝딄땮뒵뒈듸뎻득뒵돵듬뒨딨됩딐뒝득돨뒈땪듟돼딐돴뒾땰뒨됫딞디뒹딽딝둣딐뒨딄돠딞돴딝땩뒼돤딀땧딄됩딟돸뎰땦땸딜뒤될땳둘딻딁딜되딌뒼됐뎻땨땀됴딝뒵땬뎰뒤됐뒨뎸딌득뒛돤돠뎹둔땥돷됐돴돳돳땱뎹뒝됐따듌딌둠돨돴;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Sink;


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    return-void
.end method

.method public final flush()V
    .locals 0

    .line 1
    return-void
.end method

.method public final timeout()Lokio/Timeout;
    .locals 1

    .line 1
    sget-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    .line 2
    .line 3
    return-object v0
.end method

.method public final write(Lokio/Buffer;J)V
    .locals 1

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p2, p3}, Lokio/Buffer;->skip(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
