.class public interface abstract Lcom/airbnb/lottie/animation/content/DrawingContent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/Content;


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILcom/airbnb/lottie/utils/DropShadow;)V
    .param p4    # Lcom/airbnb/lottie/utils/DropShadow;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
.end method
