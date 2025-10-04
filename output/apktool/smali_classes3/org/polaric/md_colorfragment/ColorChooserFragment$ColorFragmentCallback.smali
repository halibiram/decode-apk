.class public interface abstract Lorg/polaric/md_colorfragment/ColorChooserFragment$ColorFragmentCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/polaric/md_colorfragment/ColorChooserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ColorFragmentCallback"
.end annotation


# virtual methods
.method public abstract onColorSelection(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
.end method

.method public abstract onFragmentDone(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
