package slowdns.app.tunnel.slowdns.process;

import android.content.Context;
import android.os.Bundle;
import app.tunnel.vpncommons.utils.CustomNativeLoader;
import app.tunnel.vpncommons.utils.StreamGobbler;
import app.tunnel.vpncommons.utils.VpnUtils;
import de.blinkt.openvpn.core.TkLogStatus;
import java.io.File;
import java.io.IOException;
import slowdns.app.tunnel.slowdns.core.SlowDnsConstants;

/* loaded from: classes3.dex */
public class SlowDnsProcess extends Thread implements StreamGobbler.OnLineListener {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final String[] f3708xfbe0c504 = {"UDP:53", "DNS-over-TLS:853", "DNS-over-HTTPs:853"};

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public OnDnsTunnelThreadListener f3709x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public Process f3710x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public File f3711x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public final Context f3712x9738a56c;

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public final Bundle f3713x9e171bf9;

    /* loaded from: classes3.dex */
    public interface OnDnsTunnelThreadListener {
        void onStart();

        void onStop();
    }

    public SlowDnsProcess(Context context, Bundle bundle) {
        this.f3712x9738a56c = context;
        this.f3713x9e171bf9 = bundle;
    }

    @Override // java.lang.Thread
    public synchronized void interrupt() {
        super.interrupt();
        Process process = this.f3710x1378447b;
        if (process != null) {
            process.destroy();
        }
        try {
            File file = this.f3711x75d576dc;
            if (file != null) {
                VpnUtils.killProcess(file);
            }
        } catch (Exception e) {
            TkLogStatus.logInfo("Failed to interrupt DNSTT " + e.getMessage());
        }
        this.f3710x1378447b = null;
        this.f3711x75d576dc = null;
    }

    @Override // app.tunnel.vpncommons.utils.StreamGobbler.OnLineListener
    public void onLine(String str) {
        TkLogStatus.logInfo("DNSTunnelThread: " + str);
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        File loadNativeBinary;
        Context context = this.f3712x9738a56c;
        Bundle bundle = this.f3713x9e171bf9;
        OnDnsTunnelThreadListener onDnsTunnelThreadListener = this.f3709x3271d0aa;
        if (onDnsTunnelThreadListener != null) {
            onDnsTunnelThreadListener.onStart();
        }
        try {
            loadNativeBinary = CustomNativeLoader.loadNativeBinary(context, "libdnstt", new File(context.getFilesDir(), "libdnstt"));
            this.f3711x75d576dc = loadNativeBinary;
        } catch (IOException e) {
            TkLogStatus.logException("DNSTunnelThread Error", e);
        } catch (Exception e2) {
            TkLogStatus.logInfo("DNSTunnelThread  Error: " + e2);
        }
        if (loadNativeBinary != null) {
            String string = bundle.getString(SlowDnsConstants.SLOW_DNS_RESOLVER_ADDRESS);
            String string2 = bundle.getString(SlowDnsConstants.SLOW_DNS_PUB_KEY);
            String string3 = bundle.getString(SlowDnsConstants.SLOW_DNS_NAME_SERVER);
            this.f3710x1378447b = Runtime.getRuntime().exec(this.f3711x75d576dc.getCanonicalPath() + " -udp " + string + ":53 -pubkey " + string2 + " " + string3 + " 127.0.0.1:7000");
            String str = this.f3708xfbe0c504[0];
            StringBuilder sb = new StringBuilder("<strong>SlowDNS (DNSTT) Connection: ");
            sb.append(str);
            sb.append("</strong>");
            TkLogStatus.logInfo(sb.toString());
            StreamGobbler streamGobbler = new StreamGobbler(this.f3710x1378447b.getInputStream(), this);
            StreamGobbler streamGobbler2 = new StreamGobbler(this.f3710x1378447b.getErrorStream(), this);
            streamGobbler.start();
            streamGobbler2.start();
            this.f3710x1378447b.waitFor();
            this.f3710x1378447b = null;
            OnDnsTunnelThreadListener onDnsTunnelThreadListener2 = this.f3709x3271d0aa;
            if (onDnsTunnelThreadListener2 != null) {
                onDnsTunnelThreadListener2.onStop();
                return;
            }
            return;
        }
        throw new IOException("Bin not found");
    }

    public void setOnDNSTunnelThreadListener(OnDnsTunnelThreadListener onDnsTunnelThreadListener) {
        this.f3709x3271d0aa = onDnsTunnelThreadListener;
    }
}
