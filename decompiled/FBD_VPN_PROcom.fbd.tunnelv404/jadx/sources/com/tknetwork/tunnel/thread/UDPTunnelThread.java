package com.tknetwork.tunnel.thread;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.TrafficStats;
import androidx.preference.PreferenceManager;
import app.tunnel.logger.utils.TrafficData;
import com.fbd.tunnel.R;
import com.panda912.muddy.ObfuscatedString;
import com.tknetwork.tunnel.service.c_06;
import com.tknetwork.tunnel.service.c_09;
import com.tknetwork.tunnel.utils.VPNUtil;
import config.ConfigUtil;
import de.blinkt.openvpn.core.TkLogStatus;
import defpackage.C0419x35cc9f53;
import j$.util.Objects;
import java.io.File;
import java.io.IOException;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class UDPTunnelThread extends Thread {
    private static final String DNS_BIN = new ObfuscatedString(new long[]{-855636199216227850L, -2801324294509681848L, -1155006380742889976L}).toString();
    public static SocksListener socksListener;
    private Process dnsProcess;
    private File filled;
    private final ConfigUtil mConfig;
    private final Context mContext;
    private long mLastReceived;
    private long mLastSent;
    private long mReceived;
    private long mSent;
    private final SharedPreferences sharedPreferences;
    private Timer timer;

    /* renamed from: com.tknetwork.tunnel.thread.UDPTunnelThread$1 */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends TimerTask {
        public AnonymousClass1() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            long j;
            long totalRxBytes = TrafficStats.getTotalRxBytes();
            UDPTunnelThread uDPTunnelThread = UDPTunnelThread.this;
            uDPTunnelThread.mReceived = totalRxBytes - uDPTunnelThread.mLastReceived;
            UDPTunnelThread.this.mLastReceived = totalRxBytes;
            SharedPreferences.Editor edit = UDPTunnelThread.this.sharedPreferences.edit();
            String obfuscatedString = new ObfuscatedString(new long[]{-5367978574609210301L, -6516978337975561903L, -4472939889682775317L}).toString();
            long j2 = 0;
            if (UDPTunnelThread.this.mLastReceived <= totalRxBytes) {
                j = UDPTunnelThread.this.mLastReceived;
            } else {
                j = 0;
            }
            edit.putLong(obfuscatedString, j).apply();
            long totalTxBytes = TrafficStats.getTotalTxBytes();
            UDPTunnelThread uDPTunnelThread2 = UDPTunnelThread.this;
            uDPTunnelThread2.mSent = totalTxBytes - uDPTunnelThread2.mLastSent;
            UDPTunnelThread.this.mLastSent = totalTxBytes;
            SharedPreferences.Editor edit2 = UDPTunnelThread.this.sharedPreferences.edit();
            String obfuscatedString2 = new ObfuscatedString(new long[]{8313732222398058979L, 6938260577762957364L, -254275580699718873L}).toString();
            if (UDPTunnelThread.this.mLastSent <= totalTxBytes) {
                j2 = UDPTunnelThread.this.mLastSent;
            }
            edit2.putLong(obfuscatedString2, j2).apply();
            TrafficData.addBytesDownload(UDPTunnelThread.this.mReceived);
            TrafficData.addBytesSend(UDPTunnelThread.this.mSent);
        }
    }

    /* loaded from: classes3.dex */
    public interface SocksListener {
        void addStatus(String str);

        void startSocksOpenVPN();

        void stopSocksOpenVPN();
    }

    public UDPTunnelThread(Context context) {
        this.mConfig = ConfigUtil.getInstance(context);
        this.sharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        this.mContext = context;
    }

    private String excludeIps() {
        try {
            return InetAddress.getByName(this.mConfig.getSSHHost()).getHostAddress();
        } catch (UnknownHostException unused) {
            socksListener.stopSocksOpenVPN();
            interrupt();
            return null;
        }
    }

    private Inet4Address getIPv4Addresses(InetAddress[] inetAddressArr) {
        for (InetAddress inetAddress : inetAddressArr) {
            if (inetAddress instanceof Inet4Address) {
                return (Inet4Address) inetAddress;
            }
        }
        return null;
    }

    public /* synthetic */ void lambda$run$0(String str) {
        if (str.toLowerCase().contains(new ObfuscatedString(new long[]{-3271297654431188632L, 5142468660808959427L, -7103402364470203995L}).toString())) {
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{1832912854062987512L, 3179707744211337815L, 9088777137007100959L, -81203903963422422L}).toString());
            String excludeIps = excludeIps();
            Objects.requireNonNull(excludeIps);
            sb.append(str.replace(excludeIps, new ObfuscatedString(new long[]{6692723660733148706L, -2920324918852219189L}).toString()));
            logs(sb.toString());
            socksListener.startSocksOpenVPN();
            c_06.startmanager();
            return;
        }
        if (str.toLowerCase().contains(new ObfuscatedString(new long[]{2401299276227973027L, 3970715303737852046L, -540533343220059228L}).toString())) {
            logs(new ObfuscatedString(new long[]{-4075950306731242516L, 8735606070827019890L, -4420088880716429063L, 6026798801909986646L, -7181647335265401250L, 3954373851172063798L, 7109276749795683544L, 1162977227300702303L, -8309453136745984488L, 3284385798170073461L, 624990411676353935L}).toString());
            TkLogStatus.updateStateString(new ObfuscatedString(new long[]{2067402058547440289L, -2539635888456509661L, 5161988117389952277L, 2597436211181619645L}).toString(), this.mContext.getString(R.string.state_auth_failed));
            socksListener.stopSocksOpenVPN();
            c_09.stopSocksHttp(this.mContext);
            return;
        }
        if (str.toLowerCase().contains(new ObfuscatedString(new long[]{3493245123751072711L, 5330726445113308884L}).toString())) {
            socksListener.stopSocksOpenVPN();
            c_09.stopSocksHttp(this.mContext);
            return;
        }
        if (str.toLowerCase().contains(new ObfuscatedString(new long[]{-4215764616384941360L, 5142250231399268282L, 3557271005587770509L}).toString())) {
            socksListener.stopSocksOpenVPN();
            c_09.stopSocksHttp(this.mContext);
            return;
        }
        if (str.toLowerCase().contains(new ObfuscatedString(new long[]{8154703281250914201L, -3053317097677544283L, 7599675580886592357L}).toString())) {
            socksListener.startSocksOpenVPN();
            c_06.startmanager();
            return;
        }
        if (str.toLowerCase().contains(new ObfuscatedString(new long[]{-7457906279927629915L, -9071405614824265219L, 1151663365229568112L, 1444039050495259056L}).toString())) {
            logs(new ObfuscatedString(new long[]{8338315557485008459L, 8264402356384661462L, -4013990174482761598L, 5616664036253084217L}).toString());
            return;
        }
        if (str.toLowerCase().contains(new ObfuscatedString(new long[]{-7337343520617086952L, 158796796058098539L, -4866814780384691557L}).toString())) {
            logs(new ObfuscatedString(new long[]{-8558491640870989633L, -9193465782280989189L, 8069897259505445305L, -6063877948063043294L, 6386834591348319447L, -4006829332664617352L}).toString());
            interrupt();
        } else if (str.contains(new ObfuscatedString(new long[]{-7582248344880226159L, -6689621793445795101L}).toString())) {
            logs(new ObfuscatedString(new long[]{-6329098718528557850L, -4726002065422985970L, -5085409022981532016L, 4111482007814591374L}).toString() + str);
            interrupt();
        }
    }

    private File makeConfig(File file, String str) {
        File file2 = new File(file, new ObfuscatedString(new long[]{-7448652848475630931L, -8795150574927102876L, -2416636705451402364L}).toString());
        if (file2.exists()) {
            file2.deleteOnExit();
        }
        VPNUtil.saveTextFile(file2, str);
        File file3 = new File(file, new ObfuscatedString(new long[]{1560251699479005699L, 7487864254858325268L, 5536997466088751081L}).toString());
        boolean createNewFile = file3.createNewFile();
        if (!file3.exists() && !createNewFile) {
            try {
                throw new IOException(new ObfuscatedString(new long[]{4094159130079081418L, 8185721061619879806L, -4363361536033134933L, -7705023746868841325L, 3585392422763455729L, 4275156367476972127L, -8599157121977858336L, -8852118290151172281L, 7534428822663571463L}).toString());
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
        return file2;
    }

    public static void setSocksListener(SocksListener socksListener2) {
        socksListener = socksListener2;
    }

    private void updateByteCount() {
        this.mLastReceived = this.sharedPreferences.getLong(new ObfuscatedString(new long[]{6223265027750975835L, 511455683691955032L, 5311114669088125458L}).toString(), 0L);
        this.mLastSent = this.sharedPreferences.getLong(new ObfuscatedString(new long[]{7305365775560430031L, 522560218765889041L, -2695099233369868471L}).toString(), 0L);
        TkLogStatus.startNetStat();
        this.timer = new Timer();
        this.timer.schedule(new TimerTask() { // from class: com.tknetwork.tunnel.thread.UDPTunnelThread.1
            public AnonymousClass1() {
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                long j;
                long totalRxBytes = TrafficStats.getTotalRxBytes();
                UDPTunnelThread uDPTunnelThread = UDPTunnelThread.this;
                uDPTunnelThread.mReceived = totalRxBytes - uDPTunnelThread.mLastReceived;
                UDPTunnelThread.this.mLastReceived = totalRxBytes;
                SharedPreferences.Editor edit = UDPTunnelThread.this.sharedPreferences.edit();
                String obfuscatedString = new ObfuscatedString(new long[]{-5367978574609210301L, -6516978337975561903L, -4472939889682775317L}).toString();
                long j2 = 0;
                if (UDPTunnelThread.this.mLastReceived <= totalRxBytes) {
                    j = UDPTunnelThread.this.mLastReceived;
                } else {
                    j = 0;
                }
                edit.putLong(obfuscatedString, j).apply();
                long totalTxBytes = TrafficStats.getTotalTxBytes();
                UDPTunnelThread uDPTunnelThread2 = UDPTunnelThread.this;
                uDPTunnelThread2.mSent = totalTxBytes - uDPTunnelThread2.mLastSent;
                UDPTunnelThread.this.mLastSent = totalTxBytes;
                SharedPreferences.Editor edit2 = UDPTunnelThread.this.sharedPreferences.edit();
                String obfuscatedString2 = new ObfuscatedString(new long[]{8313732222398058979L, 6938260577762957364L, -254275580699718873L}).toString();
                if (UDPTunnelThread.this.mLastSent <= totalTxBytes) {
                    j2 = UDPTunnelThread.this.mLastSent;
                }
                edit2.putLong(obfuscatedString2, j2).apply();
                TrafficData.addBytesDownload(UDPTunnelThread.this.mReceived);
                TrafficData.addBytesSend(UDPTunnelThread.this.mSent);
            }
        }, 0L, 1000L);
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸 */
    public static /* synthetic */ void m1609xfbe0c504(UDPTunnelThread uDPTunnelThread, String str) {
        uDPTunnelThread.lambda$run$0(str);
    }

    @Override // java.lang.Thread
    public void interrupt() {
        if (this.dnsProcess != null) {
            socksListener.addStatus(new ObfuscatedString(new long[]{-4714228952317916878L, 1293684835301259359L, -7257930249044235319L}).toString());
            this.dnsProcess.destroy();
        }
        try {
            File file = this.filled;
            if (file != null) {
                VPNUtil.killProcess(file);
            }
        } catch (Exception unused) {
        }
        Timer timer = this.timer;
        if (timer != null) {
            timer.cancel();
        }
        TkLogStatus.stopNetStat();
        this.dnsProcess = null;
        this.filled = null;
        super.interrupt();
    }

    public void logs(String str) {
        TkLogStatus.logInfo(str);
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Inet4Address iPv4Addresses;
        super.run();
        try {
            TkLogStatus.updateStateString(new ObfuscatedString(new long[]{-4264676203082340508L, 132391301122385273L, -8709537466870057500L}).toString(), this.mContext.getString(R.string.state_connecting));
            StringBuilder sb = new StringBuilder();
            this.filled = new File(this.mContext.getApplicationInfo().nativeLibraryDir, new ObfuscatedString(new long[]{2388602282450259397L, -7287189197133648800L, 7922843691597392953L}).toString());
            ConfigUtil configUtil = new ConfigUtil(this.mContext);
            JSONObject jSONObject = new JSONObject(configUtil.getUDPConfig());
            if (jSONObject.has(new ObfuscatedString(new long[]{1610363721485974524L, -115225605910607878L}).toString())) {
                String string = jSONObject.getString(new ObfuscatedString(new long[]{1960509356892774463L, -5414733034180318069L}).toString());
                if (string.equals(new ObfuscatedString(new long[]{1778514886226255352L, -3189429465908655822L}).toString())) {
                    string = "boy";
                }
                jSONObject.put(new ObfuscatedString(new long[]{638402804869970673L, 5042452432296613538L}).toString(), string);
            }
            String str = jSONObject.getString(new ObfuscatedString(new long[]{3519289369690724910L, 1418866481109849889L}).toString()).replace(new ObfuscatedString(new long[]{-3386379703487839137L, 334881375285943555L}).toString(), configUtil.getSSHHost()).split(new ObfuscatedString(new long[]{-7102641546244049663L, 4919928560987522257L}).toString())[0];
            InetAddress[] inetAddressArr = new InetAddress[0];
            try {
                inetAddressArr = InetAddress.getAllByName(str);
            } catch (UnknownHostException e) {
                e.printStackTrace();
            }
            if (inetAddressArr == null) {
                return;
            }
            try {
                iPv4Addresses = getIPv4Addresses(inetAddressArr);
            } catch (Exception unused) {
            }
            if (iPv4Addresses == null) {
                return;
            }
            str = iPv4Addresses.getHostAddress();
            jSONObject.put(new ObfuscatedString(new long[]{-1129865014638893136L, 8838230263325317470L}).toString(), str + new ObfuscatedString(new long[]{-8606232146979185760L, -5975598289921584124L}).toString() + jSONObject.getString(new ObfuscatedString(new long[]{516139715155946173L, -3798156848838402583L}).toString()).split(new ObfuscatedString(new long[]{5645260622356798096L, 4157252038408837669L}).toString())[1]);
            String jSONObject2 = jSONObject.toString();
            configUtil.setSSHHost(str);
            File makeConfig = makeConfig(this.mContext.getFilesDir(), jSONObject2);
            sb.append(this.filled.getCanonicalPath());
            sb.append(new ObfuscatedString(new long[]{-7749153595378502244L, -4904283843576500658L}).toString());
            sb.append(makeConfig.getPath());
            sb.append(new ObfuscatedString(new long[]{8569740863913169803L, -4422770290666545026L}).toString());
            this.dnsProcess = Runtime.getRuntime().exec(sb.toString());
            TkLogStatus.updateStateString(new ObfuscatedString(new long[]{2806629790330358530L, -3109025943032133853L, -3204394104629288356L, -2606022069884403809L}).toString(), this.mContext.getString(R.string.state_get_config));
            logs(new ObfuscatedString(new long[]{8007629633619282454L, 452856065209397432L, -6750558303206777504L, 4806589014990346685L}).toString() + this.mContext.getString(R.string.state_get_config));
            logs(new ObfuscatedString(new long[]{-7365214960623668197L, -2260738665374289466L, -2662281955448057833L, 2888763475597048876L}).toString() + this.mContext.getString(R.string.state_wait));
            C0419x35cc9f53 c0419x35cc9f53 = new C0419x35cc9f53(this, 26);
            StreamGobbler streamGobbler = new StreamGobbler(this.dnsProcess.getInputStream(), c0419x35cc9f53);
            StreamGobbler streamGobbler2 = new StreamGobbler(this.dnsProcess.getErrorStream(), c0419x35cc9f53);
            streamGobbler.start();
            streamGobbler2.start();
            updateByteCount();
            this.dnsProcess.waitFor();
        } catch (IOException e2) {
            e = e2;
            logs(new ObfuscatedString(new long[]{8732701334646503070L, -8653393485518275200L, -2877129213899299543L}).toString() + e);
        } catch (InterruptedException e3) {
            e = e3;
            logs(new ObfuscatedString(new long[]{8732701334646503070L, -8653393485518275200L, -2877129213899299543L}).toString() + e);
        } catch (JSONException e4) {
            interrupt();
            logs(new ObfuscatedString(new long[]{-4404561983466081612L, -3892967896716028190L, -5665362221408454211L}).toString() + e4.getMessage());
            TkLogStatus.logInfo(new ObfuscatedString(new long[]{-1167286791055451921L, 7221571976518435095L, -2627597162490681371L, -1182353901732153107L, 5402549616495125034L, 4206988833767969533L, -4711249813587261974L, -6406656953316478882L}).toString());
        }
    }
}
