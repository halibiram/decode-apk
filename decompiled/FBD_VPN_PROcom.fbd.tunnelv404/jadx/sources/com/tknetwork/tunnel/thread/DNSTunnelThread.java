package com.tknetwork.tunnel.thread;

import android.content.Context;
import app.tunnel.ssh2.tunnel.vpn.TunnelUtils;
import app.tunnel.vpncommons.utils.CustomNativeLoader;
import app.tunnel.vpncommons.utils.VpnUtils;
import com.fbd.tunnel.R;
import com.panda912.muddy.ObfuscatedString;
import config.ConfigUtil;
import de.blinkt.openvpn.core.TkLogStatus;
import defpackage.AbstractC0749x8313616e;
import defpackage.C0419x35cc9f53;
import java.io.File;
import java.io.IOException;

/* loaded from: classes3.dex */
public class DNSTunnelThread extends Thread {
    private static final String DNS_BIN = new ObfuscatedString(new long[]{8091325406236179534L, 4414114807866206225L}).toString();
    private final Context context;
    private Process dnsProcess;
    private File filedns;
    private final ConfigUtil mConfig;

    public DNSTunnelThread(Context context) {
        this.context = context;
        this.mConfig = ConfigUtil.getInstance(context);
    }

    private void addLogInfo(String str) {
        if (TunnelUtils.isNetworkOnline(this.context) && TkLogStatus.isTunnelActive()) {
            if (str.contains(this.mConfig.getDNSaddress()) || str.contains(this.mConfig.getDNSserverName())) {
                str = str.trim().replace(this.mConfig.getDNSaddress(), new ObfuscatedString(new long[]{2847769357466778588L, 3142322594247600742L, 771528182486495145L}).toString()).replace(this.mConfig.getDNSserverName(), new ObfuscatedString(new long[]{3604786735308935125L, 725523084123208600L, 1004949667548756154L}).toString());
            }
            if (!str.contains(new ObfuscatedString(new long[]{4078174172456179684L, -4032775585840903384L, -7744497028712903465L, -4132889583960969195L}).toString()) && TunnelUtils.isNetworkOnline(this.context) && !str.contains(new ObfuscatedString(new long[]{-6014992952027660153L, 7591457683672171732L, -7947675130309152608L, -7939322929572347203L}).toString())) {
                TkLogStatus.logInfo(str);
            }
        }
    }

    public /* synthetic */ void lambda$run$0(String str) {
        addLogInfo(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{8969459357952889586L, 6368974670842089518L, -950650482177414823L, -7817004118607548072L}), new StringBuilder(), str));
        if (str.contains(new ObfuscatedString(new long[]{2441651066929904541L, 518015293195206548L, -1886695380725836911L, 471317102790354890L, 2585318567312501644L}).toString()) && this.mConfig.getDNSpublicKey().isEmpty() && TkLogStatus.isTunnelActive()) {
            addLogInfo(new ObfuscatedString(new long[]{1309707031055736016L, -7768203411755254125L, 8338457310222300780L, 8344879686643054998L, 8938149457249994718L, 1493243158937429906L}).toString());
        }
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸 */
    public static /* synthetic */ void m1608xfbe0c504(DNSTunnelThread dNSTunnelThread, String str) {
        dNSTunnelThread.lambda$run$0(str);
    }

    @Override // java.lang.Thread
    public void interrupt() {
        super.interrupt();
        Process process = this.dnsProcess;
        if (process != null) {
            process.destroy();
        }
        try {
            File file = this.filedns;
            if (file != null) {
                VpnUtils.killProcess(file);
            }
        } catch (Exception unused) {
        }
        this.dnsProcess = null;
        this.filedns = null;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        StringBuilder sb;
        File loadNativeBinary;
        super.run();
        try {
            TkLogStatus.updateStateString(new ObfuscatedString(new long[]{-5347356946809605288L, 3501630277766819972L, -8173410821908793179L}).toString(), this.context.getString(R.string.connecting));
            sb = new StringBuilder();
            loadNativeBinary = CustomNativeLoader.loadNativeBinary(this.context, new ObfuscatedString(new long[]{-6180795923662532110L, -1725778942572773420L}).toString(), new File(this.context.getFilesDir(), new ObfuscatedString(new long[]{-1084693740051880595L, -770856742329503183L}).toString()));
            this.filedns = loadNativeBinary;
        } catch (IOException e) {
            e = e;
            interrupt();
            addLogInfo(new ObfuscatedString(new long[]{6462334370413577463L, 2598446745445580756L, -7655124002813215457L, -7523667106597046370L}).toString() + e.getMessage());
        } catch (InterruptedException e2) {
            e = e2;
            interrupt();
            addLogInfo(new ObfuscatedString(new long[]{6462334370413577463L, 2598446745445580756L, -7655124002813215457L, -7523667106597046370L}).toString() + e.getMessage());
        } catch (Exception e3) {
            TkLogStatus.logDebug(new ObfuscatedString(new long[]{-1978265540942644790L, 8369070878532620864L, 9106399223085696620L}).toString() + e3.getMessage());
        }
        if (loadNativeBinary != null) {
            sb.append(loadNativeBinary.getCanonicalPath());
            sb.append(new ObfuscatedString(new long[]{-7719502148736714719L, -8576058620726751525L}).toString());
            sb.append(this.mConfig.getDNSaddress());
            sb.append(new ObfuscatedString(new long[]{-1271018657682687729L, 8787292685440842407L, 7206229490359987744L}).toString());
            sb.append(this.mConfig.getDNSpublicKey());
            sb.append(new ObfuscatedString(new long[]{-9183892636441710290L, -7582570286833543108L}).toString());
            sb.append(this.mConfig.getDNSserverName());
            sb.append(new ObfuscatedString(new long[]{3390108400416877620L, 2307502309679091588L}).toString());
            sb.append(new ObfuscatedString(new long[]{-2929687764469399298L, -8065588301805934524L, -2148501856173782489L}).toString());
            Process exec = Runtime.getRuntime().exec(sb.toString());
            this.dnsProcess = exec;
            C0419x35cc9f53 c0419x35cc9f53 = new C0419x35cc9f53(this, 10);
            StreamGobbler streamGobbler = new StreamGobbler(exec.getInputStream(), c0419x35cc9f53);
            StreamGobbler streamGobbler2 = new StreamGobbler(this.dnsProcess.getErrorStream(), c0419x35cc9f53);
            streamGobbler.start();
            streamGobbler2.start();
            this.dnsProcess.waitFor();
            this.dnsProcess = null;
            return;
        }
        interrupt();
        throw new IOException(new ObfuscatedString(new long[]{-4491853803643029300L, 5005046952842755797L, -3668804443722088301L, -8104577875876741339L, 8639037719561061194L, 3643745532520329000L}).toString());
    }
}
