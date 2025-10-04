.class public final L땟땪땋돶뎽들뎸됨되뒷뎻뎸땦땳듌딟뒉둥뒐뒉땠땤딅딸딅뒈딁뒐뎹뒝듌뒤땋딄듬듻둣도듰땥뎹딝뒼뒤둬땝될두딨땰돸딅뒐딎땲되돼딃땤땳돨땐땥딨땪뒘듬뒨듻둔돴됩뎹땰돼땜딄돠듐뒛둘딽둘뒋드땧땄뒬됨들뒨딀듐딄땭듼됐돨돠둡따들듔뒾뒉딎딻땦딽될딞딠됫땁듸땮뒬딄듨땭딟땫땦든딝듨듨땤땩돳;
.super Lokio/AsyncTimeout;
.source "SourceFile"


# instance fields
.field public final 뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;)V
    .locals 1

    .line 1
    const-string v0, "socket"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lokio/AsyncTimeout;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, L땟땪땋돶뎽들뎸됨되뒷뎻뎸땦땳듌딟뒉둥뒐뒉땠땤딅딸딅뒈딁뒐뎹뒝듌뒤땋딄듬듻둣도듰땥뎹딝뒼뒤둬땝될두딨땰돸딅뒐딎땲되돼딃땤땳돨땐땥딨땪뒘듬뒨듻둔돴됩뎹땰돼땜딄돠듐뒛둘딽둘뒋드땧땄뒬됨들뒨딀듐딄땭듼됐돨돠둡따들듔뒾뒉딎딻땦딽될딞딠됫땁듸땮뒬딄듨땭딟땫땦든딝듨듨땤땩돳;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀:Ljava/net/Socket;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 1
    new-instance v0, Ljava/net/SocketTimeoutException;

    .line 2
    .line 3
    const-string v1, "timeout"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 11
    .line 12
    .line 13
    :cond_0
    return-object v0
.end method

.method public final timedOut()V
    .locals 6

    .line 1
    const-string v0, "Failed to close timed out socket "

    .line 2
    .line 3
    iget-object v1, p0, L땟땪땋돶뎽들뎸됨되뒷뎻뎸땦땳듌딟뒉둥뒐뒉땠땤딅딸딅뒈딁뒐뎹뒝듌뒤땋딄듬듻둣도듰땥뎹딝뒼뒤둬땝될두딨땰돸딅뒐딎땲되돼딃땤땳돨땐땥딨땪뒘듬뒨듻둔돴됩뎹땰돼땜딄돠듐뒛둘딽둘뒋드땧땄뒬됨들뒨딀듐딄땭듼됐돨돠둡따들듔뒾뒉딎딻땦딽될딞딠됫땁듸땮뒬딄듨땭딟땫땦든딝듨듨땤땩돳;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀:Ljava/net/Socket;

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v2

    .line 10
    invoke-static {v2}, Lokio/Okio;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sget-object v3, L딤딅딻듽듻땋됨딨돨돶땅땦듰듰딁됴땪딽땜듬딄둬땋땥둑두든땐뒨돵딟뒵딃땦땝딤딠듼듔땹돳땃뒼뒐땮땯딜둥딞땨뎸뒀딻땲땬듸뒵뒉뒈돠뒘됫둠딄둔땀뒬두뒋땨돶뒵듟돠딄두됴뒾땝땅땳됐뎰디땮둡땨뒵딀듸땥됩뎻딃둘뒬듸딠듰뒬딟딜뒋듽딐땨돷됫뒀땸뒻땦땔딃딠도딝뒘땭딨뒐딃돛땦돨돸뒐땀땹딤;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/util/logging/Logger;

    .line 17
    .line 18
    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 19
    .line 20
    new-instance v5, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v3, v4, v0, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    throw v2

    .line 37
    :catch_1
    move-exception v2

    .line 38
    sget-object v3, L딤딅딻듽듻땋됨딨돨돶땅땦듰듰딁됴땪딽땜듬딄둬땋땥둑두든땐뒨돵딟뒵딃땦땝딤딠듼듔땹돳땃뒼뒐땮땯딜둥딞땨뎸뒀딻땲땬듸뒵뒉뒈돠뒘됫둠딄둔땀뒬두뒋땨돶뒵듟돠딄두됴뒾땝땅땳됐뎰디땮둡땨뒵딀듸땥됩뎻딃둘뒬듸딠듰뒬딟딜뒋듽딐땨돷됫뒀땸뒻땦땔딃딠도딝뒘땭딨뒐딃돛땦돨돸뒐땀땹딤;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/util/logging/Logger;

    .line 39
    .line 40
    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 41
    .line 42
    new-instance v5, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v3, v4, v0, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method
