.class Lcom/android/volley/toolbox/BasicAsyncNetwork$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/toolbox/AsyncHttpStack$OnRequestComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/BasicAsyncNetwork;->performRequest(Lcom/android/volley/Request;Lcom/android/volley/AsyncNetwork$OnRequestComplete;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/volley/toolbox/BasicAsyncNetwork;

.field final synthetic val$callback:Lcom/android/volley/AsyncNetwork$OnRequestComplete;

.field final synthetic val$request:Lcom/android/volley/Request;

.field final synthetic val$requestStartMs:J


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/BasicAsyncNetwork;Lcom/android/volley/Request;JLcom/android/volley/AsyncNetwork$OnRequestComplete;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$1;->this$0:Lcom/android/volley/toolbox/BasicAsyncNetwork;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$1;->val$request:Lcom/android/volley/Request;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$1;->val$requestStartMs:J

    .line 6
    .line 7
    iput-object p5, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$1;->val$callback:Lcom/android/volley/AsyncNetwork$OnRequestComplete;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onAuthError(Lcom/android/volley/AuthFailureError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$1;->val$callback:Lcom/android/volley/AsyncNetwork$OnRequestComplete;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/android/volley/AsyncNetwork$OnRequestComplete;->onError(Lcom/android/volley/VolleyError;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onError(Ljava/io/IOException;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$1;->this$0:Lcom/android/volley/toolbox/BasicAsyncNetwork;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$1;->val$request:Lcom/android/volley/Request;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$1;->val$callback:Lcom/android/volley/AsyncNetwork$OnRequestComplete;

    .line 6
    .line 7
    iget-wide v4, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$1;->val$requestStartMs:J

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v7, 0x0

    .line 11
    move-object v3, p1

    .line 12
    invoke-static/range {v0 .. v7}, Lcom/android/volley/toolbox/BasicAsyncNetwork;->access$100(Lcom/android/volley/toolbox/BasicAsyncNetwork;Lcom/android/volley/Request;Lcom/android/volley/AsyncNetwork$OnRequestComplete;Ljava/io/IOException;JLcom/android/volley/toolbox/HttpResponse;[B)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onSuccess(Lcom/android/volley/toolbox/HttpResponse;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$1;->this$0:Lcom/android/volley/toolbox/BasicAsyncNetwork;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$1;->val$request:Lcom/android/volley/Request;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$1;->val$requestStartMs:J

    .line 6
    .line 7
    iget-object v5, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$1;->val$callback:Lcom/android/volley/AsyncNetwork$OnRequestComplete;

    .line 8
    .line 9
    move-object v4, p1

    .line 10
    invoke-static/range {v0 .. v5}, Lcom/android/volley/toolbox/BasicAsyncNetwork;->access$000(Lcom/android/volley/toolbox/BasicAsyncNetwork;Lcom/android/volley/Request;JLcom/android/volley/toolbox/HttpResponse;Lcom/android/volley/AsyncNetwork$OnRequestComplete;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
