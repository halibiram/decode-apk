package net.openvpn.openvpn;

/* loaded from: classes3.dex */
public class ClientAPI_TunBuilderBase {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public ClientAPI_TunBuilderBase(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(ClientAPI_TunBuilderBase clientAPI_TunBuilderBase) {
        if (clientAPI_TunBuilderBase == null) {
            return 0L;
        }
        return clientAPI_TunBuilderBase.swigCPtr;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    ovpncliJNI.delete_ClientAPI_TunBuilderBase(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void finalize() {
        delete();
    }

    public boolean tun_builder_add_address(String str, int i, String str2, boolean z, boolean z2) {
        return ovpncliJNI.ClientAPI_TunBuilderBase_tun_builder_add_address(this.swigCPtr, this, str, i, str2, z, z2);
    }

    public boolean tun_builder_add_dns_server(String str, boolean z) {
        return ovpncliJNI.ClientAPI_TunBuilderBase_tun_builder_add_dns_server(this.swigCPtr, this, str, z);
    }

    public boolean tun_builder_add_proxy_bypass(String str) {
        return ovpncliJNI.ClientAPI_TunBuilderBase_tun_builder_add_proxy_bypass(this.swigCPtr, this, str);
    }

    public boolean tun_builder_add_route(String str, int i, int i2, boolean z) {
        return ovpncliJNI.ClientAPI_TunBuilderBase_tun_builder_add_route(this.swigCPtr, this, str, i, i2, z);
    }

    public boolean tun_builder_add_search_domain(String str) {
        return ovpncliJNI.ClientAPI_TunBuilderBase_tun_builder_add_search_domain(this.swigCPtr, this, str);
    }

    public boolean tun_builder_add_wins_server(String str) {
        return ovpncliJNI.ClientAPI_TunBuilderBase_tun_builder_add_wins_server(this.swigCPtr, this, str);
    }

    public int tun_builder_establish() {
        return ovpncliJNI.ClientAPI_TunBuilderBase_tun_builder_establish(this.swigCPtr, this);
    }

    public void tun_builder_establish_lite() {
        ovpncliJNI.ClientAPI_TunBuilderBase_tun_builder_establish_lite(this.swigCPtr, this);
    }

    public boolean tun_builder_exclude_route(String str, int i, int i2, boolean z) {
        return ovpncliJNI.ClientAPI_TunBuilderBase_tun_builder_exclude_route(this.swigCPtr, this, str, i, i2, z);
    }

    public boolean tun_builder_new() {
        return ovpncliJNI.ClientAPI_TunBuilderBase_tun_builder_new(this.swigCPtr, this);
    }

    public boolean tun_builder_persist() {
        return ovpncliJNI.ClientAPI_TunBuilderBase_tun_builder_persist(this.swigCPtr, this);
    }

    public boolean tun_builder_reroute_gw(boolean z, boolean z2, long j) {
        return ovpncliJNI.ClientAPI_TunBuilderBase_tun_builder_reroute_gw(this.swigCPtr, this, z, z2, j);
    }

    public boolean tun_builder_set_adapter_domain_suffix(String str) {
        return ovpncliJNI.ClientAPI_TunBuilderBase_tun_builder_set_adapter_domain_suffix(this.swigCPtr, this, str);
    }

    public boolean tun_builder_set_block_ipv6(boolean z) {
        return ovpncliJNI.ClientAPI_TunBuilderBase_tun_builder_set_block_ipv6(this.swigCPtr, this, z);
    }

    public boolean tun_builder_set_layer(int i) {
        return ovpncliJNI.ClientAPI_TunBuilderBase_tun_builder_set_layer(this.swigCPtr, this, i);
    }

    public boolean tun_builder_set_mtu(int i) {
        return ovpncliJNI.ClientAPI_TunBuilderBase_tun_builder_set_mtu(this.swigCPtr, this, i);
    }

    public boolean tun_builder_set_proxy_auto_config_url(String str) {
        return ovpncliJNI.ClientAPI_TunBuilderBase_tun_builder_set_proxy_auto_config_url(this.swigCPtr, this, str);
    }

    public boolean tun_builder_set_proxy_http(String str, int i) {
        return ovpncliJNI.ClientAPI_TunBuilderBase_tun_builder_set_proxy_http(this.swigCPtr, this, str, i);
    }

    public boolean tun_builder_set_proxy_https(String str, int i) {
        return ovpncliJNI.ClientAPI_TunBuilderBase_tun_builder_set_proxy_https(this.swigCPtr, this, str, i);
    }

    public boolean tun_builder_set_remote_address(String str, boolean z) {
        return ovpncliJNI.ClientAPI_TunBuilderBase_tun_builder_set_remote_address(this.swigCPtr, this, str, z);
    }

    public boolean tun_builder_set_route_metric_default(int i) {
        return ovpncliJNI.ClientAPI_TunBuilderBase_tun_builder_set_route_metric_default(this.swigCPtr, this, i);
    }

    public boolean tun_builder_set_session_name(String str) {
        return ovpncliJNI.ClientAPI_TunBuilderBase_tun_builder_set_session_name(this.swigCPtr, this, str);
    }

    public void tun_builder_teardown(boolean z) {
        ovpncliJNI.ClientAPI_TunBuilderBase_tun_builder_teardown(this.swigCPtr, this, z);
    }

    public ClientAPI_TunBuilderBase() {
        this(ovpncliJNI.new_ClientAPI_TunBuilderBase(), true);
    }
}
