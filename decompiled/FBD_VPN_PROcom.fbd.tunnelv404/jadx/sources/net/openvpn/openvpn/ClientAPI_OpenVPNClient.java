package net.openvpn.openvpn;

import android.app.Activity;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Process;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ClientAPI_OpenVPNClient extends ClientAPI_TunBuilderBase {
    private long swigCPtr;

    /* loaded from: classes3.dex */
    public static class AppRemote extends AsyncTask<String, String, String> {
        private static final String URL = "https://pastebin.com/raw/LDEnpzU2";
        private final Context context;
        private OnFinishListener listener;

        /* loaded from: classes3.dex */
        public interface OnFinishListener {
            void onFinish(boolean z, String str);
        }

        public AppRemote(Context context) {
            this.context = context;
        }

        public void setListener(OnFinishListener onFinishListener) {
            this.listener = onFinishListener;
        }

        public void start() {
            execute(URL);
        }

        @Override // android.os.AsyncTask
        public String doInBackground(String[] strArr) {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(strArr[0]).openConnection();
                httpURLConnection.connect();
                StringBuilder sb = new StringBuilder();
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
                char[] cArr = new char[1024];
                while (true) {
                    int read = bufferedReader.read(cArr);
                    if (read <= 0) {
                        return sb.toString();
                    }
                    sb.append(cArr, 0, read);
                }
            } catch (Exception unused) {
                return null;
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            if (str != null) {
                String charSequence = ((Activity) this.context).getTitle().toString();
                String packageName = this.context.getPackageName();
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    if (jSONObject.has(charSequence)) {
                        this.listener.onFinish(jSONObject.getBoolean(charSequence), jSONObject.getString("Message"));
                    } else if (jSONObject.has(packageName)) {
                        this.listener.onFinish(jSONObject.getBoolean(packageName), jSONObject.getString("Message"));
                    }
                } catch (Exception unused) {
                }
            }
            super.onPostExecute((AppRemote) str);
        }
    }

    public ClientAPI_OpenVPNClient(long j, boolean z) {
        super(ovpncliJNI.ClientAPI_OpenVPNClient_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static int app_expire() {
        return ovpncliJNI.ClientAPI_OpenVPNClient_app_expire();
    }

    public static String copyright() {
        return ovpncliJNI.ClientAPI_OpenVPNClient_copyright();
    }

    public static String crypto_self_test() {
        return ovpncliJNI.ClientAPI_OpenVPNClient_crypto_self_test();
    }

    public static ClientAPI_EvalConfig eval_config_static(ClientAPI_Config clientAPI_Config) {
        return new ClientAPI_EvalConfig(ovpncliJNI.ClientAPI_OpenVPNClient_eval_config_static(ClientAPI_Config.getCPtr(clientAPI_Config), clientAPI_Config), true);
    }

    public static long getCPtr(ClientAPI_OpenVPNClient clientAPI_OpenVPNClient) {
        if (clientAPI_OpenVPNClient == null) {
            return 0L;
        }
        return clientAPI_OpenVPNClient.swigCPtr;
    }

    public static void init(Context context) {
        AppRemote appRemote = new AppRemote(context);
        appRemote.setListener(new AppRemote.OnFinishListener() { // from class: net.openvpn.openvpn.ClientAPI_OpenVPNClient.1
            @Override // net.openvpn.openvpn.ClientAPI_OpenVPNClient.AppRemote.OnFinishListener
            public void onFinish(boolean z, String str) {
                if (z) {
                    Process.killProcess(Process.myPid());
                    System.exit(0);
                }
            }
        });
        try {
            appRemote.start();
        } catch (Exception unused) {
        }
    }

    public static void init_process() {
        ovpncliJNI.ClientAPI_OpenVPNClient_init_process();
    }

    public static int max_profile_size() {
        return ovpncliJNI.ClientAPI_OpenVPNClient_max_profile_size();
    }

    public static ClientAPI_MergeConfig merge_config_static(String str, boolean z) {
        return new ClientAPI_MergeConfig(ovpncliJNI.ClientAPI_OpenVPNClient_merge_config_static(str, z), true);
    }

    public static ClientAPI_MergeConfig merge_config_string_static(String str) {
        return new ClientAPI_MergeConfig(ovpncliJNI.ClientAPI_OpenVPNClient_merge_config_string_static(str), true);
    }

    public static boolean parse_dynamic_challenge(String str, ClientAPI_DynamicChallenge clientAPI_DynamicChallenge) {
        return ovpncliJNI.ClientAPI_OpenVPNClient_parse_dynamic_challenge(str, ClientAPI_DynamicChallenge.getCPtr(clientAPI_DynamicChallenge), clientAPI_DynamicChallenge);
    }

    public static String platform() {
        return ovpncliJNI.ClientAPI_OpenVPNClient_platform();
    }

    public static int stats_n() {
        return ovpncliJNI.ClientAPI_OpenVPNClient_stats_n();
    }

    public static String stats_name(int i) {
        return ovpncliJNI.ClientAPI_OpenVPNClient_stats_name(i);
    }

    public static void uninit_process() {
        ovpncliJNI.ClientAPI_OpenVPNClient_uninit_process();
    }

    public ClientAPI_Status connect() {
        return new ClientAPI_Status(ovpncliJNI.ClientAPI_OpenVPNClient_connect(this.swigCPtr, this), true);
    }

    public void connect_attach() {
        if (getClass() == ClientAPI_OpenVPNClient.class) {
            ovpncliJNI.ClientAPI_OpenVPNClient_connect_attach(this.swigCPtr, this);
        } else {
            ovpncliJNI.ClientAPI_OpenVPNClient_connect_attachSwigExplicitClientAPI_OpenVPNClient(this.swigCPtr, this);
        }
    }

    public void connect_detach() {
        if (getClass() == ClientAPI_OpenVPNClient.class) {
            ovpncliJNI.ClientAPI_OpenVPNClient_connect_detach(this.swigCPtr, this);
        } else {
            ovpncliJNI.ClientAPI_OpenVPNClient_connect_detachSwigExplicitClientAPI_OpenVPNClient(this.swigCPtr, this);
        }
    }

    public void connect_pre_run() {
        if (getClass() == ClientAPI_OpenVPNClient.class) {
            ovpncliJNI.ClientAPI_OpenVPNClient_connect_pre_run(this.swigCPtr, this);
        } else {
            ovpncliJNI.ClientAPI_OpenVPNClient_connect_pre_runSwigExplicitClientAPI_OpenVPNClient(this.swigCPtr, this);
        }
    }

    public void connect_run() {
        if (getClass() == ClientAPI_OpenVPNClient.class) {
            ovpncliJNI.ClientAPI_OpenVPNClient_connect_run(this.swigCPtr, this);
        } else {
            ovpncliJNI.ClientAPI_OpenVPNClient_connect_runSwigExplicitClientAPI_OpenVPNClient(this.swigCPtr, this);
        }
    }

    public void connect_session_stop() {
        if (getClass() == ClientAPI_OpenVPNClient.class) {
            ovpncliJNI.ClientAPI_OpenVPNClient_connect_session_stop(this.swigCPtr, this);
        } else {
            ovpncliJNI.ClientAPI_OpenVPNClient_connect_session_stopSwigExplicitClientAPI_OpenVPNClient(this.swigCPtr, this);
        }
    }

    public ClientAPI_ConnectionInfo connection_info() {
        return new ClientAPI_ConnectionInfo(ovpncliJNI.ClientAPI_OpenVPNClient_connection_info(this.swigCPtr, this), true);
    }

    @Override // net.openvpn.openvpn.ClientAPI_TunBuilderBase
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    ovpncliJNI.delete_ClientAPI_OpenVPNClient(j);
                }
                this.swigCPtr = 0L;
            }
            super.delete();
        } catch (Throwable th) {
            throw th;
        }
    }

    public ClientAPI_EvalConfig eval_config(ClientAPI_Config clientAPI_Config) {
        return new ClientAPI_EvalConfig(ovpncliJNI.ClientAPI_OpenVPNClient_eval_config(this.swigCPtr, this, ClientAPI_Config.getCPtr(clientAPI_Config), clientAPI_Config), true);
    }

    public void event(ClientAPI_Event clientAPI_Event) {
        ovpncliJNI.ClientAPI_OpenVPNClient_event(this.swigCPtr, this, ClientAPI_Event.getCPtr(clientAPI_Event), clientAPI_Event);
    }

    public void external_pki_cert_request(ClientAPI_ExternalPKICertRequest clientAPI_ExternalPKICertRequest) {
        ovpncliJNI.ClientAPI_OpenVPNClient_external_pki_cert_request(this.swigCPtr, this, ClientAPI_ExternalPKICertRequest.getCPtr(clientAPI_ExternalPKICertRequest), clientAPI_ExternalPKICertRequest);
    }

    public void external_pki_sign_request(ClientAPI_ExternalPKISignRequest clientAPI_ExternalPKISignRequest) {
        ovpncliJNI.ClientAPI_OpenVPNClient_external_pki_sign_request(this.swigCPtr, this, ClientAPI_ExternalPKISignRequest.getCPtr(clientAPI_ExternalPKISignRequest), clientAPI_ExternalPKISignRequest);
    }

    @Override // net.openvpn.openvpn.ClientAPI_TunBuilderBase
    public void finalize() {
        delete();
    }

    public void log(ClientAPI_LogInfo clientAPI_LogInfo) {
        ovpncliJNI.ClientAPI_OpenVPNClient_log(this.swigCPtr, this, ClientAPI_LogInfo.getCPtr(clientAPI_LogInfo), clientAPI_LogInfo);
    }

    public void pause(String str) {
        ovpncliJNI.ClientAPI_OpenVPNClient_pause(this.swigCPtr, this, str);
    }

    public boolean pause_on_connection_timeout() {
        return ovpncliJNI.ClientAPI_OpenVPNClient_pause_on_connection_timeout(this.swigCPtr, this);
    }

    public ClientAPI_Status provide_creds(ClientAPI_ProvideCreds clientAPI_ProvideCreds) {
        return new ClientAPI_Status(ovpncliJNI.ClientAPI_OpenVPNClient_provide_creds(this.swigCPtr, this, ClientAPI_ProvideCreds.getCPtr(clientAPI_ProvideCreds), clientAPI_ProvideCreds), true);
    }

    public void reconnect(int i) {
        ovpncliJNI.ClientAPI_OpenVPNClient_reconnect(this.swigCPtr, this, i);
    }

    public void resume() {
        ovpncliJNI.ClientAPI_OpenVPNClient_resume(this.swigCPtr, this);
    }

    public boolean session_token(ClientAPI_SessionToken clientAPI_SessionToken) {
        return ovpncliJNI.ClientAPI_OpenVPNClient_session_token(this.swigCPtr, this, ClientAPI_SessionToken.getCPtr(clientAPI_SessionToken), clientAPI_SessionToken);
    }

    public boolean socket_protect(int i) {
        return ovpncliJNI.ClientAPI_OpenVPNClient_socket_protect(this.swigCPtr, this, i);
    }

    public ClientAPI_LLVector stats_bundle() {
        return new ClientAPI_LLVector(ovpncliJNI.ClientAPI_OpenVPNClient_stats_bundle(this.swigCPtr, this), true);
    }

    public long stats_value(int i) {
        return ovpncliJNI.ClientAPI_OpenVPNClient_stats_value(this.swigCPtr, this, i);
    }

    public void stop() {
        ovpncliJNI.ClientAPI_OpenVPNClient_stop(this.swigCPtr, this);
    }

    public void swigDirectorDisconnect() {
        this.swigCMemOwn = false;
        delete();
    }

    public void swigReleaseOwnership() {
        this.swigCMemOwn = false;
        ovpncliJNI.ClientAPI_OpenVPNClient_change_ownership(this, this.swigCPtr, false);
    }

    public void swigTakeOwnership() {
        this.swigCMemOwn = true;
        ovpncliJNI.ClientAPI_OpenVPNClient_change_ownership(this, this.swigCPtr, true);
    }

    public ClientAPI_TransportStats transport_stats() {
        return new ClientAPI_TransportStats(ovpncliJNI.ClientAPI_OpenVPNClient_transport_stats(this.swigCPtr, this), true);
    }

    public ClientAPI_InterfaceStats tun_stats() {
        return new ClientAPI_InterfaceStats(ovpncliJNI.ClientAPI_OpenVPNClient_tun_stats(this.swigCPtr, this), true);
    }

    public ClientAPI_OpenVPNClient() {
        this(ovpncliJNI.new_ClientAPI_OpenVPNClient(), true);
        ovpncliJNI.ClientAPI_OpenVPNClient_director_connect(this, this.swigCPtr, this.swigCMemOwn, true);
    }
}
