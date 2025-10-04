.class Lcom/trilead/ssh2/transport/TransportManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/trilead/ssh2/transport/TransportManager;->initialize(Lcom/trilead/ssh2/crypto/CryptoWishList;Lcom/trilead/ssh2/ServerHostKeyVerifier;Lcom/trilead/ssh2/DHGexParameters;IILjava/security/SecureRandom;Lcom/trilead/ssh2/ProxyData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/trilead/ssh2/transport/TransportManager;


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/transport/TransportManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager$1;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/trilead/ssh2/transport/TransportManager$1;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    .line 4
    .line 5
    invoke-virtual {v2}, Lcom/trilead/ssh2/transport/TransportManager;->receiveLoop()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/lang/AssertionError;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v2

    .line 15
    invoke-static {}, Lcom/trilead/ssh2/transport/TransportManager;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉()Lcom/trilead/ssh2/log/Logger;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    iget-object v3, p0, Lcom/trilead/ssh2/transport/TransportManager$1;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/trilead/ssh2/transport/TransportManager;->isConnectionClosed()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    invoke-static {}, Lcom/trilead/ssh2/transport/TransportManager;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉()Lcom/trilead/ssh2/log/Logger;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    new-array v5, v0, [J

    .line 40
    .line 41
    fill-array-data v5, :array_0

    .line 42
    .line 43
    .line 44
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const/16 v5, 0xa

    .line 52
    .line 53
    invoke-virtual {v3, v5, v4, v2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    iget-object v3, p0, Lcom/trilead/ssh2/transport/TransportManager$1;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    .line 57
    .line 58
    invoke-virtual {v3, v2, v1}, Lcom/trilead/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-static {}, Lcom/trilead/ssh2/transport/TransportManager;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉()Lcom/trilead/ssh2/log/Logger;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v3}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_1

    .line 70
    .line 71
    invoke-static {}, Lcom/trilead/ssh2/transport/TransportManager;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉()Lcom/trilead/ssh2/log/Logger;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 76
    .line 77
    new-array v0, v0, [J

    .line 78
    .line 79
    fill-array-data v0, :array_1

    .line 80
    .line 81
    .line 82
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const/16 v4, 0x32

    .line 90
    .line 91
    invoke-virtual {v3, v4, v0}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_1
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager$1;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    .line 95
    .line 96
    iget-object v0, v0, Lcom/trilead/ssh2/transport/TransportManager;->km:Lcom/trilead/ssh2/transport/KexManager;

    .line 97
    .line 98
    if-eqz v0, :cond_2

    .line 99
    .line 100
    :try_start_1
    invoke-virtual {v0, v2}, Lcom/trilead/ssh2/transport/KexManager;->handleEndMessage(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :catch_1
    nop

    .line 105
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager$1;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    .line 106
    .line 107
    iget-object v0, v0, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-ge v1, v0, :cond_3

    .line 114
    .line 115
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager$1;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    .line 116
    .line 117
    iget-object v0, v0, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;

    .line 124
    .line 125
    :try_start_2
    iget-object v0, v0, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->mh:Lcom/trilead/ssh2/transport/MessageHandler;

    .line 126
    .line 127
    invoke-interface {v0, v2}, Lcom/trilead/ssh2/transport/MessageHandler;->handleEndMessage(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 128
    .line 129
    .line 130
    :catch_2
    add-int/lit8 v1, v1, 0x1

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_3
    return-void

    .line 134
    nop

    .line 135
    :array_0
    .array-data 8
        0x120c8ed2f5b50f20L
        -0x7fdf9c487a081aa7L    # -4.55848631106588E-308
        0x249a3e1905cfef8L
        -0x18add27a52edd899L    # -5.061964648486664E189
        0x4d85c32717944c19L    # 2.8647991135030173E65
        0x206a2eeeaec5cf0L
    .end array-data

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    :array_1
    .array-data 8
        -0x2a1cf9a94ddde216L    # -5.454157698250441E105
        0x7bbc4af95a72ecd4L    # 1.0770424859779122E288
        -0x4926a2e02102ee86L    # -1.777110426819204E-44
        0x68cc20d2a191662cL    # 6.570665264375505E196
        0x3d790931b2592d68L    # 1.4231269779573982E-12
        -0x5de7c84a2e623f3cL
    .end array-data
.end method
