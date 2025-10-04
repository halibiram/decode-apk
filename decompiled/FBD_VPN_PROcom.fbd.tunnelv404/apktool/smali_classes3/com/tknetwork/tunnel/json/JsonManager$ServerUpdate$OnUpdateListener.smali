.class public interface abstract Lcom/tknetwork/tunnel/json/JsonManager$ServerUpdate$OnUpdateListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/json/JsonManager$ServerUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnUpdateListener"
.end annotation


# virtual methods
.method public abstract onNoUpdateAvailable(Ljava/lang/String;)V
.end method

.method public abstract onShowUpdate(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onUpdateError(Ljava/lang/String;)V
.end method
