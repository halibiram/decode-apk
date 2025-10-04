.class Lcom/android/volley/toolbox/AdaptedHttpStack;
.super Lcom/android/volley/toolbox/BaseHttpStack;
.source "SourceFile"


# instance fields
.field private final mHttpStack:Lcom/android/volley/toolbox/HttpStack;


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/HttpStack;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/volley/toolbox/BaseHttpStack;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/volley/toolbox/AdaptedHttpStack;->mHttpStack:Lcom/android/volley/toolbox/HttpStack;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public executeRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lcom/android/volley/toolbox/HttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/volley/toolbox/HttpResponse;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/volley/toolbox/AdaptedHttpStack;->mHttpStack:Lcom/android/volley/toolbox/HttpStack;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/android/volley/toolbox/HttpStack;->performRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    .line 4
    .line 5
    .line 6
    move-result-object p1
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    array-length v2, v0

    .line 22
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    .line 24
    .line 25
    array-length v2, v0

    .line 26
    const/4 v3, 0x0

    .line 27
    :goto_0
    if-ge v3, v2, :cond_0

    .line 28
    .line 29
    aget-object v4, v0, v3

    .line 30
    .line 31
    new-instance v5, Lcom/android/volley/Header;

    .line 32
    .line 33
    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-direct {v5, v6, v4}, Lcom/android/volley/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    new-instance p1, Lcom/android/volley/toolbox/HttpResponse;

    .line 57
    .line 58
    invoke-direct {p1, p2, v1}, Lcom/android/volley/toolbox/HttpResponse;-><init>(ILjava/util/List;)V

    .line 59
    .line 60
    .line 61
    return-object p1

    .line 62
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    .line 67
    .line 68
    .line 69
    move-result-wide v2

    .line 70
    long-to-int v0, v2

    .line 71
    int-to-long v4, v0

    .line 72
    cmp-long v0, v4, v2

    .line 73
    .line 74
    if-nez v0, :cond_2

    .line 75
    .line 76
    new-instance v0, Lcom/android/volley/toolbox/HttpResponse;

    .line 77
    .line 78
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    .line 83
    .line 84
    .line 85
    move-result-wide v2

    .line 86
    long-to-int v3, v2

    .line 87
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-direct {v0, p2, v1, v3, p1}, Lcom/android/volley/toolbox/HttpResponse;-><init>(ILjava/util/List;ILjava/io/InputStream;)V

    .line 96
    .line 97
    .line 98
    return-object v0

    .line 99
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 100
    .line 101
    new-instance p2, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 107
    .line 108
    const/4 v1, 0x4

    .line 109
    new-array v1, v1, [J

    .line 110
    .line 111
    fill-array-data v1, :array_0

    .line 112
    .line 113
    .line 114
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 115
    .line 116
    .line 117
    invoke-static {v0, p2, v2, v3}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;J)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p1

    .line 125
    :catch_0
    move-exception p1

    .line 126
    new-instance p2, Ljava/net/SocketTimeoutException;

    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-direct {p2, p1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p2

    .line 136
    nop

    .line 137
    :array_0
    .array-data 8
        0x10d3fe0aea580918L
        0x64e258665e1736ccL    # 9.29249972895381E177
        0x7774b702eaf6d7e1L    # 2.671768112174801E267
        -0xbce15d2751eb270L
    .end array-data
.end method
