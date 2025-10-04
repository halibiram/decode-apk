.class public interface abstract Lcom/trilead/ssh2/InteractiveCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract connectionLost(Ljava/lang/Throwable;)V
.end method

.method public abstract log(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onReceiveInfo(ILjava/lang/String;)V
.end method

.method public abstract replyToChallenge(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Z)[Ljava/lang/String;
.end method
