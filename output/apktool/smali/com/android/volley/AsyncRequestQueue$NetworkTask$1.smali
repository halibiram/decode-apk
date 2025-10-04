.class Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/AsyncNetwork$OnRequestComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/AsyncRequestQueue$NetworkTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/volley/AsyncRequestQueue$NetworkTask;

.field final synthetic val$startTimeMs:J


# direct methods
.method public constructor <init>(Lcom/android/volley/AsyncRequestQueue$NetworkTask;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;->this$1:Lcom/android/volley/AsyncRequestQueue$NetworkTask;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;->val$startTimeMs:J

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onError(Lcom/android/volley/VolleyError;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;->val$startTimeMs:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    invoke-virtual {p1, v0, v1}, Lcom/android/volley/VolleyError;->setNetworkTimeMs(J)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;->this$1:Lcom/android/volley/AsyncRequestQueue$NetworkTask;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/volley/AsyncRequestQueue$NetworkTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/android/volley/AsyncRequestQueue;->access$500(Lcom/android/volley/AsyncRequestQueue;)Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lcom/android/volley/AsyncRequestQueue$ParseErrorTask;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;->this$1:Lcom/android/volley/AsyncRequestQueue$NetworkTask;

    .line 22
    .line 23
    iget-object v3, v2, Lcom/android/volley/AsyncRequestQueue$NetworkTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    .line 24
    .line 25
    iget-object v2, v2, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 26
    .line 27
    invoke-direct {v1, v3, v2, p1}, Lcom/android/volley/AsyncRequestQueue$ParseErrorTask;-><init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onSuccess(Lcom/android/volley/NetworkResponse;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;->this$1:Lcom/android/volley/AsyncRequestQueue$NetworkTask;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 4
    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-boolean v0, p1, Lcom/android/volley/NetworkResponse;->notModified:Z

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;->this$1:Lcom/android/volley/AsyncRequestQueue$NetworkTask;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/android/volley/Request;->hasHadResponseDelivered()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;->this$1:Lcom/android/volley/AsyncRequestQueue$NetworkTask;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 40
    .line 41
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    const/4 v1, 0x3

    .line 44
    new-array v1, v1, [J

    .line 45
    .line 46
    fill-array-data v1, :array_1

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;->this$1:Lcom/android/volley/AsyncRequestQueue$NetworkTask;

    .line 60
    .line 61
    iget-object p1, p1, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/android/volley/Request;->notifyListenerResponseNotUsable()V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;->this$1:Lcom/android/volley/AsyncRequestQueue$NetworkTask;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/android/volley/AsyncRequestQueue$NetworkTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    .line 70
    .line 71
    invoke-static {v0}, Lcom/android/volley/AsyncRequestQueue;->access$500(Lcom/android/volley/AsyncRequestQueue;)Ljava/util/concurrent/ExecutorService;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    new-instance v1, Lcom/android/volley/AsyncRequestQueue$NetworkParseTask;

    .line 76
    .line 77
    iget-object v2, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;->this$1:Lcom/android/volley/AsyncRequestQueue$NetworkTask;

    .line 78
    .line 79
    iget-object v3, v2, Lcom/android/volley/AsyncRequestQueue$NetworkTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    .line 80
    .line 81
    iget-object v2, v2, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    .line 82
    .line 83
    invoke-direct {v1, v3, v2, p1}, Lcom/android/volley/AsyncRequestQueue$NetworkParseTask;-><init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/NetworkResponse;)V

    .line 84
    .line 85
    .line 86
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    nop

    .line 91
    :array_0
    .array-data 8
        -0x3b35dbf67f8b8d37L    # -2.4689259203288805E23
        -0x31901622efcbfe81L    # -6.883096406437523E69
        0x5898949a3775757L
        -0x180a6f9d8fd60805L    # -6.149029926056214E192
    .end array-data

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    :array_1
    .array-data 8
        -0x76a674297524b50aL
        -0x2636f939f35d9171L    # -3.3087780851478893E124
        -0xfcf53206e02fab2L    # -2.588868384822041E232
    .end array-data
.end method
