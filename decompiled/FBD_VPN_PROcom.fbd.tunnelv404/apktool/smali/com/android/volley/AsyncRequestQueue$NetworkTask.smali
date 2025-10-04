.class Lcom/android/volley/AsyncRequestQueue$NetworkTask;
.super Lcom/android/volley/RequestTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/AsyncRequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/RequestTask<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/volley/AsyncRequestQueue;


# direct methods
.method public constructor <init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/android/volley/RequestTask;-><init>(Lcom/android/volley/Request;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/volley/Request;->isCanceled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 10
    .line 11
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v2, 0x5

    .line 14
    new-array v2, v2, [J

    .line 15
    .line 16
    fill-array-data v2, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/android/volley/Request;->notifyListenerResponseNotUsable()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    iget-object v2, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 40
    .line 41
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    const/4 v4, 0x4

    .line 44
    new-array v4, v4, [J

    .line 45
    .line 46
    fill-array-data v4, :array_1

    .line 47
    .line 48
    .line 49
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v2, v3}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    .line 60
    .line 61
    invoke-static {v2}, Lcom/android/volley/AsyncRequestQueue;->access$600(Lcom/android/volley/AsyncRequestQueue;)Lcom/android/volley/AsyncNetwork;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    iget-object v3, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 66
    .line 67
    new-instance v4, Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;

    .line 68
    .line 69
    invoke-direct {v4, p0, v0, v1}, Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;-><init>(Lcom/android/volley/AsyncRequestQueue$NetworkTask;J)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v3, v4}, Lcom/android/volley/AsyncNetwork;->performRequest(Lcom/android/volley/Request;Lcom/android/volley/AsyncNetwork$OnRequestComplete;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    nop

    .line 77
    :array_0
    .array-data 8
        0x6baa1de848740190L    # 4.29306412540781E210
        0x4e1b0ab2ede51baL
        0xf03ca88c94cc51bL
        0x190b84b61cd4cffL
        -0xc9d2c707ac4af6dL    # -6.581637082932076E247
    .end array-data

    .line 78
    .line 79
    .line 80
    :array_1
    .array-data 8
        -0x2255f63b2d2b8ff6L    # -1.5875895858215258E143
        -0xc5c89bb7b4a0573L
        -0x962e4e786597486L
        0x52989b243b132785L    # 7.831773626294066E89
    .end array-data
.end method
