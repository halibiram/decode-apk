package net.openvpn.openvpn;

import androidx.lifecycle.CoroutineLiveDataKt;

/* loaded from: classes3.dex */
public class OpenVPNClientThread extends ClientAPI_OpenVPNClient implements Runnable {
    private int bytes_in_index;
    private int bytes_out_index;
    private boolean connect_called = false;
    private ClientAPI_Status m_connect_status;
    private EventReceiver parent;
    private Thread thread;
    private TunBuilder tun_builder;

    /* loaded from: classes3.dex */
    public static class ConnectCalledTwice extends RuntimeException {
    }

    /* loaded from: classes3.dex */
    public interface EventReceiver {
        void done(ClientAPI_Status clientAPI_Status);

        void event(ClientAPI_Event clientAPI_Event);

        void external_pki_cert_request(ClientAPI_ExternalPKICertRequest clientAPI_ExternalPKICertRequest);

        void external_pki_sign_request(ClientAPI_ExternalPKISignRequest clientAPI_ExternalPKISignRequest);

        void log(ClientAPI_LogInfo clientAPI_LogInfo);

        boolean pause_on_connection_timeout();

        boolean socket_protect(int i);

        TunBuilder tun_builder_new();
    }

    /* loaded from: classes3.dex */
    public interface TunBuilder {
        boolean tun_builder_add_address(String str, int i, String str2, boolean z, boolean z2);

        boolean tun_builder_add_dns_server(String str, boolean z);

        boolean tun_builder_add_route(String str, int i, boolean z);

        boolean tun_builder_add_search_domain(String str);

        int tun_builder_establish();

        boolean tun_builder_exclude_route(String str, int i, boolean z);

        boolean tun_builder_reroute_gw(boolean z, boolean z2, long j);

        boolean tun_builder_set_mtu(int i);

        boolean tun_builder_set_remote_address(String str, boolean z);

        boolean tun_builder_set_session_name(String str);

        void tun_builder_teardown(boolean z);
    }

    public OpenVPNClientThread() {
        this.bytes_in_index = -1;
        this.bytes_out_index = -1;
        int stats_n = ClientAPI_OpenVPNClient.stats_n();
        for (int i = 0; i < stats_n; i++) {
            String stats_name = ClientAPI_OpenVPNClient.stats_name(i);
            if (stats_name.equals("BYTES_IN")) {
                this.bytes_in_index = i;
            }
            if (stats_name.equals("BYTES_OUT")) {
                this.bytes_out_index = i;
            }
        }
    }

    private void call_done(ClientAPI_Status clientAPI_Status) {
        EventReceiver finalize_thread = finalize_thread(clientAPI_Status);
        if (finalize_thread != null) {
            finalize_thread.done(this.m_connect_status);
        }
    }

    private synchronized EventReceiver finalize_thread(ClientAPI_Status clientAPI_Status) {
        EventReceiver eventReceiver;
        eventReceiver = this.parent;
        if (eventReceiver != null) {
            this.m_connect_status = clientAPI_Status;
            this.parent = null;
            this.tun_builder = null;
            this.thread = null;
        }
        return eventReceiver;
    }

    public long bytes_in() {
        return super.stats_value(this.bytes_in_index);
    }

    public long bytes_out() {
        return super.stats_value(this.bytes_out_index);
    }

    public void connect(EventReceiver eventReceiver) {
        if (!this.connect_called) {
            this.connect_called = true;
            this.parent = eventReceiver;
            this.m_connect_status = null;
            Thread thread = new Thread(this, "OpenVPNClientThread");
            this.thread = thread;
            thread.start();
            return;
        }
        throw new ConnectCalledTwice();
    }

    @Override // net.openvpn.openvpn.ClientAPI_OpenVPNClient
    public void event(ClientAPI_Event clientAPI_Event) {
        EventReceiver eventReceiver = this.parent;
        if (eventReceiver != null) {
            eventReceiver.event(clientAPI_Event);
        }
    }

    @Override // net.openvpn.openvpn.ClientAPI_OpenVPNClient
    public void external_pki_cert_request(ClientAPI_ExternalPKICertRequest clientAPI_ExternalPKICertRequest) {
        EventReceiver eventReceiver = this.parent;
        if (eventReceiver != null) {
            eventReceiver.external_pki_cert_request(clientAPI_ExternalPKICertRequest);
        }
    }

    @Override // net.openvpn.openvpn.ClientAPI_OpenVPNClient
    public void external_pki_sign_request(ClientAPI_ExternalPKISignRequest clientAPI_ExternalPKISignRequest) {
        EventReceiver eventReceiver = this.parent;
        if (eventReceiver != null) {
            eventReceiver.external_pki_sign_request(clientAPI_ExternalPKISignRequest);
        }
    }

    @Override // net.openvpn.openvpn.ClientAPI_OpenVPNClient
    public void log(ClientAPI_LogInfo clientAPI_LogInfo) {
        EventReceiver eventReceiver = this.parent;
        if (eventReceiver != null) {
            eventReceiver.log(clientAPI_LogInfo);
        }
    }

    @Override // net.openvpn.openvpn.ClientAPI_OpenVPNClient
    public boolean pause_on_connection_timeout() {
        EventReceiver eventReceiver = this.parent;
        if (eventReceiver != null) {
            return eventReceiver.pause_on_connection_timeout();
        }
        return false;
    }

    @Override // java.lang.Runnable
    public void run() {
        call_done(super.connect());
    }

    @Override // net.openvpn.openvpn.ClientAPI_OpenVPNClient
    public boolean socket_protect(int i) {
        EventReceiver eventReceiver = this.parent;
        if (eventReceiver != null) {
            return eventReceiver.socket_protect(i);
        }
        return false;
    }

    @Override // net.openvpn.openvpn.ClientAPI_TunBuilderBase
    public boolean tun_builder_add_address(String str, int i, String str2, boolean z, boolean z2) {
        TunBuilder tunBuilder = this.tun_builder;
        if (tunBuilder != null) {
            return tunBuilder.tun_builder_add_address(str, i, str2, z, z2);
        }
        return false;
    }

    @Override // net.openvpn.openvpn.ClientAPI_TunBuilderBase
    public boolean tun_builder_add_dns_server(String str, boolean z) {
        TunBuilder tunBuilder = this.tun_builder;
        if (tunBuilder != null) {
            return tunBuilder.tun_builder_add_dns_server(str, z);
        }
        return false;
    }

    @Override // net.openvpn.openvpn.ClientAPI_TunBuilderBase
    public boolean tun_builder_add_route(String str, int i, int i2, boolean z) {
        TunBuilder tunBuilder = this.tun_builder;
        if (tunBuilder != null) {
            return tunBuilder.tun_builder_add_route(str, i, z);
        }
        return false;
    }

    @Override // net.openvpn.openvpn.ClientAPI_TunBuilderBase
    public boolean tun_builder_add_search_domain(String str) {
        TunBuilder tunBuilder = this.tun_builder;
        if (tunBuilder != null) {
            return tunBuilder.tun_builder_add_search_domain(str);
        }
        return false;
    }

    @Override // net.openvpn.openvpn.ClientAPI_TunBuilderBase
    public int tun_builder_establish() {
        TunBuilder tunBuilder = this.tun_builder;
        if (tunBuilder != null) {
            return tunBuilder.tun_builder_establish();
        }
        return -1;
    }

    @Override // net.openvpn.openvpn.ClientAPI_TunBuilderBase
    public boolean tun_builder_exclude_route(String str, int i, int i2, boolean z) {
        TunBuilder tunBuilder = this.tun_builder;
        if (tunBuilder != null) {
            return tunBuilder.tun_builder_exclude_route(str, i, z);
        }
        return false;
    }

    @Override // net.openvpn.openvpn.ClientAPI_TunBuilderBase
    public boolean tun_builder_new() {
        EventReceiver eventReceiver = this.parent;
        if (eventReceiver == null) {
            return false;
        }
        TunBuilder tun_builder_new = eventReceiver.tun_builder_new();
        this.tun_builder = tun_builder_new;
        if (tun_builder_new == null) {
            return false;
        }
        return true;
    }

    @Override // net.openvpn.openvpn.ClientAPI_TunBuilderBase
    public boolean tun_builder_reroute_gw(boolean z, boolean z2, long j) {
        TunBuilder tunBuilder = this.tun_builder;
        if (tunBuilder != null) {
            return tunBuilder.tun_builder_reroute_gw(z, z2, j);
        }
        return false;
    }

    @Override // net.openvpn.openvpn.ClientAPI_TunBuilderBase
    public boolean tun_builder_set_mtu(int i) {
        TunBuilder tunBuilder = this.tun_builder;
        if (tunBuilder != null) {
            return tunBuilder.tun_builder_set_mtu(i);
        }
        return false;
    }

    @Override // net.openvpn.openvpn.ClientAPI_TunBuilderBase
    public boolean tun_builder_set_remote_address(String str, boolean z) {
        TunBuilder tunBuilder = this.tun_builder;
        if (tunBuilder != null) {
            return tunBuilder.tun_builder_set_remote_address(str, z);
        }
        return false;
    }

    @Override // net.openvpn.openvpn.ClientAPI_TunBuilderBase
    public boolean tun_builder_set_session_name(String str) {
        TunBuilder tunBuilder = this.tun_builder;
        if (tunBuilder != null) {
            return tunBuilder.tun_builder_set_session_name(str);
        }
        return false;
    }

    @Override // net.openvpn.openvpn.ClientAPI_TunBuilderBase
    public void tun_builder_teardown(boolean z) {
        TunBuilder tunBuilder = this.tun_builder;
        if (tunBuilder != null) {
            tunBuilder.tun_builder_teardown(z);
        }
    }

    public void wait_thread_long() {
        if (this.thread == null) {
            return;
        }
        while (true) {
            try {
                this.thread.join();
                return;
            } catch (InterruptedException unused) {
                super.stop();
            }
        }
    }

    public void wait_thread_short() {
        Thread thread = this.thread;
        if (thread != null) {
            try {
                thread.join(CoroutineLiveDataKt.DEFAULT_TIMEOUT);
            } catch (InterruptedException unused) {
            }
            if (thread.isAlive()) {
                ClientAPI_Status clientAPI_Status = new ClientAPI_Status();
                clientAPI_Status.setError(true);
                clientAPI_Status.setMessage("CORE_THREAD_ABANDONED");
                call_done(clientAPI_Status);
            }
        }
    }
}
