.class public interface abstract Lcom/tknetwork/tunnel/json/JsonManager$ExpiryUpdate$ExpireDateListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/json/JsonManager$ExpiryUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExpireDateListener"
.end annotation


# virtual methods
.method public abstract onAuthFailed(Ljava/lang/String;)V
.end method

.method public abstract onDeviceNotMatch(Ljava/lang/String;)V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onExpireDate(Ljava/lang/String;)V
.end method
