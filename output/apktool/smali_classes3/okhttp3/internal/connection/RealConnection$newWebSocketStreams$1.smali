.class public final Lokhttp3/internal/connection/RealConnection$newWebSocketStreams$1;
.super Lokhttp3/internal/ws/RealWebSocket$Streams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/connection/RealConnection;->newWebSocketStreams$okhttp(Lokhttp3/internal/connection/Exchange;)Lokhttp3/internal/ws/RealWebSocket$Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "okhttp3/internal/connection/RealConnection$newWebSocketStreams$1",
        "Lokhttp3/internal/ws/RealWebSocket$Streams;",
        "cancel",
        "",
        "close",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Lokhttp3/internal/connection/Exchange;


# direct methods
.method public constructor <init>(Lokio/BufferedSource;Lokio/BufferedSink;Lokhttp3/internal/connection/Exchange;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lokhttp3/internal/connection/RealConnection$newWebSocketStreams$1;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Lokhttp3/internal/connection/Exchange;

    .line 2
    .line 3
    const/4 p3, 0x1

    .line 4
    invoke-direct {p0, p3, p1, p2}, Lokhttp3/internal/ws/RealWebSocket$Streams;-><init>(ZLokio/BufferedSource;Lokio/BufferedSink;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection$newWebSocketStreams$1;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Lokhttp3/internal/connection/Exchange;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/internal/connection/Exchange;->cancel()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public close()V
    .locals 6

    .line 1
    const/4 v4, 0x1

    .line 2
    const/4 v5, 0x0

    .line 3
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection$newWebSocketStreams$1;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Lokhttp3/internal/connection/Exchange;

    .line 4
    .line 5
    const-wide/16 v1, -0x1

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-virtual/range {v0 .. v5}, Lokhttp3/internal/connection/Exchange;->bodyComplete(JZZLjava/io/IOException;)Ljava/io/IOException;

    .line 9
    .line 10
    .line 11
    return-void
.end method
