.class Lcom/android/volley/toolbox/ImageLoader$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/ImageLoader;->makeImageRequest(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/android/volley/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/volley/toolbox/ImageLoader;

.field final synthetic val$cacheKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/ImageLoader;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$3;->this$0:Lcom/android/volley/toolbox/ImageLoader;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/volley/toolbox/ImageLoader$3;->val$cacheKey:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$3;->this$0:Lcom/android/volley/toolbox/ImageLoader;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/volley/toolbox/ImageLoader$3;->val$cacheKey:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/android/volley/toolbox/ImageLoader;->onGetImageError(Ljava/lang/String;Lcom/android/volley/VolleyError;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
