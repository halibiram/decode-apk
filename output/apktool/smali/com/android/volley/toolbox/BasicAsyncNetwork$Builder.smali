.class public Lcom/android/volley/toolbox/BasicAsyncNetwork$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/BasicAsyncNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final DEFAULT_POOL_SIZE:I = 0x1000


# instance fields
.field private mAsyncStack:Lcom/android/volley/toolbox/AsyncHttpStack;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mPool:Lcom/android/volley/toolbox/ByteArrayPool;


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/AsyncHttpStack;)V
    .locals 0
    .param p1    # Lcom/android/volley/toolbox/AsyncHttpStack;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$Builder;->mAsyncStack:Lcom/android/volley/toolbox/AsyncHttpStack;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$Builder;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public build()Lcom/android/volley/toolbox/BasicAsyncNetwork;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$Builder;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/volley/toolbox/ByteArrayPool;

    .line 6
    .line 7
    const/16 v1, 0x1000

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/android/volley/toolbox/ByteArrayPool;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$Builder;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    .line 13
    .line 14
    :cond_0
    new-instance v0, Lcom/android/volley/toolbox/BasicAsyncNetwork;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$Builder;->mAsyncStack:Lcom/android/volley/toolbox/AsyncHttpStack;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$Builder;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/toolbox/BasicAsyncNetwork;-><init>(Lcom/android/volley/toolbox/AsyncHttpStack;Lcom/android/volley/toolbox/ByteArrayPool;Lcom/android/volley/toolbox/BasicAsyncNetwork$1;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public setPool(Lcom/android/volley/toolbox/ByteArrayPool;)Lcom/android/volley/toolbox/BasicAsyncNetwork$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$Builder;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    .line 2
    .line 3
    return-object p0
.end method
