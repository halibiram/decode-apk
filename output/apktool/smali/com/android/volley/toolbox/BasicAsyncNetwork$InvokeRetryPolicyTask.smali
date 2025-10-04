.class Lcom/android/volley/toolbox/BasicAsyncNetwork$InvokeRetryPolicyTask;
.super Lcom/android/volley/RequestTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/BasicAsyncNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InvokeRetryPolicyTask"
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
.field final callback:Lcom/android/volley/AsyncNetwork$OnRequestComplete;

.field final request:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request<",
            "TT;>;"
        }
    .end annotation
.end field

.field final retryInfo:Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;

.field final synthetic this$0:Lcom/android/volley/toolbox/BasicAsyncNetwork;


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/BasicAsyncNetwork;Lcom/android/volley/Request;Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;Lcom/android/volley/AsyncNetwork$OnRequestComplete;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "TT;>;",
            "Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;",
            "Lcom/android/volley/AsyncNetwork$OnRequestComplete;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$InvokeRetryPolicyTask;->this$0:Lcom/android/volley/toolbox/BasicAsyncNetwork;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/android/volley/RequestTask;-><init>(Lcom/android/volley/Request;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$InvokeRetryPolicyTask;->request:Lcom/android/volley/Request;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$InvokeRetryPolicyTask;->retryInfo:Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$InvokeRetryPolicyTask;->callback:Lcom/android/volley/AsyncNetwork$OnRequestComplete;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$InvokeRetryPolicyTask;->request:Lcom/android/volley/Request;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$InvokeRetryPolicyTask;->retryInfo:Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/volley/toolbox/NetworkUtility;->attemptRetryOnException(Lcom/android/volley/Request;Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$InvokeRetryPolicyTask;->this$0:Lcom/android/volley/toolbox/BasicAsyncNetwork;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$InvokeRetryPolicyTask;->request:Lcom/android/volley/Request;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$InvokeRetryPolicyTask;->callback:Lcom/android/volley/AsyncNetwork$OnRequestComplete;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/android/volley/toolbox/BasicAsyncNetwork;->performRequest(Lcom/android/volley/Request;Lcom/android/volley/AsyncNetwork$OnRequestComplete;)V
    :try_end_0
    .catch Lcom/android/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    iget-object v1, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$InvokeRetryPolicyTask;->callback:Lcom/android/volley/AsyncNetwork$OnRequestComplete;

    .line 20
    .line 21
    invoke-interface {v1, v0}, Lcom/android/volley/AsyncNetwork$OnRequestComplete;->onError(Lcom/android/volley/VolleyError;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method
