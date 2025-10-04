.class Lcom/android/volley/toolbox/ImageLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/ImageLoader;->getImageListener(Landroid/widget/ImageView;II)Lcom/android/volley/toolbox/ImageLoader$ImageListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$defaultImageResId:I

.field final synthetic val$errorImageResId:I

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(ILandroid/widget/ImageView;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/volley/toolbox/ImageLoader$1;->val$errorImageResId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/volley/toolbox/ImageLoader$1;->val$view:Landroid/widget/ImageView;

    .line 4
    .line 5
    iput p3, p0, Lcom/android/volley/toolbox/ImageLoader$1;->val$defaultImageResId:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/volley/toolbox/ImageLoader$1;->val$errorImageResId:I

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$1;->val$view:Landroid/widget/ImageView;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Lcom/android/volley/toolbox/ImageLoader$1;->val$view:Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget p1, p0, Lcom/android/volley/toolbox/ImageLoader$1;->val$defaultImageResId:I

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object p2, p0, Lcom/android/volley/toolbox/ImageLoader$1;->val$view:Landroid/widget/ImageView;

    .line 22
    .line 23
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method
