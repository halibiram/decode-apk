.class public interface abstract Lnet/openvpn/openvpn/OpenVPNClientThread$EventReceiver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openvpn/openvpn/OpenVPNClientThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventReceiver"
.end annotation


# virtual methods
.method public abstract done(Lnet/openvpn/openvpn/ClientAPI_Status;)V
.end method

.method public abstract event(Lnet/openvpn/openvpn/ClientAPI_Event;)V
.end method

.method public abstract external_pki_cert_request(Lnet/openvpn/openvpn/ClientAPI_ExternalPKICertRequest;)V
.end method

.method public abstract external_pki_sign_request(Lnet/openvpn/openvpn/ClientAPI_ExternalPKISignRequest;)V
.end method

.method public abstract log(Lnet/openvpn/openvpn/ClientAPI_LogInfo;)V
.end method

.method public abstract pause_on_connection_timeout()Z
.end method

.method public abstract socket_protect(I)Z
.end method

.method public abstract tun_builder_new()Lnet/openvpn/openvpn/OpenVPNClientThread$TunBuilder;
.end method
