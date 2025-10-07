.class public interface abstract Lde/blinkt/openvpn/core/IStatusCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/blinkt/openvpn/core/IStatusCallbacks$_Parcel;,
        Lde/blinkt/openvpn/core/IStatusCallbacks$Stub;,
        Lde/blinkt/openvpn/core/IStatusCallbacks$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "de.blinkt.openvpn.core.IStatusCallbacks"


# virtual methods
.method public abstract connectedVPN(Ljava/lang/String;)V
.end method

.method public abstract newLogItem(Lde/blinkt/openvpn/core/LogItem;)V
.end method

.method public abstract updateByteCount(JJ)V
.end method

.method public abstract updateStateString(Ljava/lang/String;Ljava/lang/String;ILde/blinkt/openvpn/core/ConnectionStatus;Landroid/content/Intent;)V
.end method
