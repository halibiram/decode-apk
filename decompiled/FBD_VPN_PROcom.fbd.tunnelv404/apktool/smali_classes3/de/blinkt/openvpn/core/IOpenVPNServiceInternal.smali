.class public interface abstract Lde/blinkt/openvpn/core/IOpenVPNServiceInternal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/blinkt/openvpn/core/IOpenVPNServiceInternal$Stub;,
        Lde/blinkt/openvpn/core/IOpenVPNServiceInternal$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "de.blinkt.openvpn.core.IOpenVPNServiceInternal"


# virtual methods
.method public abstract challengeResponse(Ljava/lang/String;)V
.end method

.method public abstract protect(I)Z
.end method

.method public abstract stopVPN(Z)Z
.end method

.method public abstract userPause(Z)V
.end method
