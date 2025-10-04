.class public interface abstract Lcom/trilead/ssh2/ConnectionMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SERVER_BANNER:I = 0x65


# virtual methods
.method public abstract connectionLost(Ljava/lang/Throwable;)V
.end method

.method public abstract log(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onReceiveInfo(ILjava/lang/String;)V
.end method
