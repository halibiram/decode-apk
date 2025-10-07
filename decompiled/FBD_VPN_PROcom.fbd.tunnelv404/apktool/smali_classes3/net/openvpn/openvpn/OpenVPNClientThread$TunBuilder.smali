.class public interface abstract Lnet/openvpn/openvpn/OpenVPNClientThread$TunBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openvpn/openvpn/OpenVPNClientThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TunBuilder"
.end annotation


# virtual methods
.method public abstract tun_builder_add_address(Ljava/lang/String;ILjava/lang/String;ZZ)Z
.end method

.method public abstract tun_builder_add_dns_server(Ljava/lang/String;Z)Z
.end method

.method public abstract tun_builder_add_route(Ljava/lang/String;IZ)Z
.end method

.method public abstract tun_builder_add_search_domain(Ljava/lang/String;)Z
.end method

.method public abstract tun_builder_establish()I
.end method

.method public abstract tun_builder_exclude_route(Ljava/lang/String;IZ)Z
.end method

.method public abstract tun_builder_reroute_gw(ZZJ)Z
.end method

.method public abstract tun_builder_set_mtu(I)Z
.end method

.method public abstract tun_builder_set_remote_address(Ljava/lang/String;Z)Z
.end method

.method public abstract tun_builder_set_session_name(Ljava/lang/String;)Z
.end method

.method public abstract tun_builder_teardown(Z)V
.end method
