.class public interface abstract Lde/blinkt/openvpn/core/IServiceStatus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/blinkt/openvpn/core/IServiceStatus$_Parcel;,
        Lde/blinkt/openvpn/core/IServiceStatus$Stub;,
        Lde/blinkt/openvpn/core/IServiceStatus$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "de.blinkt.openvpn.core.IServiceStatus"


# virtual methods
.method public abstract getLastConnectedVPN()Ljava/lang/String;
.end method

.method public abstract getTrafficHistory()Lde/blinkt/openvpn/core/TrafficHistory;
.end method

.method public abstract registerStatusCallback(Lde/blinkt/openvpn/core/IStatusCallbacks;)Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract setCachedPassword(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract unregisterStatusCallback(Lde/blinkt/openvpn/core/IStatusCallbacks;)V
.end method
