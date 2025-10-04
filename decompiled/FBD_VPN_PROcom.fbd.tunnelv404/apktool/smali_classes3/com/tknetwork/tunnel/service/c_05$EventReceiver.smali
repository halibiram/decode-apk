.class public interface abstract Lcom/tknetwork/tunnel/service/c_05$EventReceiver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/service/c_05;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventReceiver"
.end annotation


# virtual methods
.method public abstract event(Lcom/tknetwork/tunnel/service/c_05$EventMsg;)V
.end method

.method public abstract get_configure_intent(I)Landroid/app/PendingIntent;
.end method

.method public abstract log(Lcom/tknetwork/tunnel/service/c_05$LogMsg;)V
.end method
