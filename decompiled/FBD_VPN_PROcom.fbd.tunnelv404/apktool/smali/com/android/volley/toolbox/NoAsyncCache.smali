.class public Lcom/android/volley/toolbox/NoAsyncCache;
.super Lcom/android/volley/AsyncCache;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/volley/AsyncCache;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public clear(Lcom/android/volley/AsyncCache$OnWriteCompleteCallback;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/android/volley/AsyncCache$OnWriteCompleteCallback;->onWriteComplete()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public get(Ljava/lang/String;Lcom/android/volley/AsyncCache$OnGetCompleteCallback;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-interface {p2, p1}, Lcom/android/volley/AsyncCache$OnGetCompleteCallback;->onGetComplete(Lcom/android/volley/Cache$Entry;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public initialize(Lcom/android/volley/AsyncCache$OnWriteCompleteCallback;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/android/volley/AsyncCache$OnWriteCompleteCallback;->onWriteComplete()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public invalidate(Ljava/lang/String;ZLcom/android/volley/AsyncCache$OnWriteCompleteCallback;)V
    .locals 0

    .line 1
    invoke-interface {p3}, Lcom/android/volley/AsyncCache$OnWriteCompleteCallback;->onWriteComplete()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;Lcom/android/volley/AsyncCache$OnWriteCompleteCallback;)V
    .locals 0

    .line 1
    invoke-interface {p3}, Lcom/android/volley/AsyncCache$OnWriteCompleteCallback;->onWriteComplete()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public remove(Ljava/lang/String;Lcom/android/volley/AsyncCache$OnWriteCompleteCallback;)V
    .locals 0

    .line 1
    invoke-interface {p2}, Lcom/android/volley/AsyncCache$OnWriteCompleteCallback;->onWriteComplete()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
