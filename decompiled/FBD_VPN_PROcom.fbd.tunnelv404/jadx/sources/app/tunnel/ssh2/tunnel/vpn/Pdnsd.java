package app.tunnel.ssh2.tunnel.vpn;

import android.content.Context;
import app.tunnel.vpncommons.utils.CustomNativeLoader;
import app.tunnel.vpncommons.utils.FileUtils;
import app.tunnel.vpncommons.utils.StreamGobbler;
import app.tunnel.vpncommons.utils.VpnUtils;
import com.fbd.tunnel.R;
import de.blinkt.openvpn.core.TkLogStatus;
import defpackage.C0370x5ac5058d;
import java.io.File;
import java.io.IOException;

/* loaded from: classes.dex */
public class Pdnsd extends Thread {
    private static final String PDNSD_BIN = "libpdnsd";
    private static final String PDNSD_SERVER = "server {\n label= \"%1$s\";\n ip = %2$s;\n port = %3$d;\n uptest = none;\n }\n";
    private static final String PDNSD_SERVER_TEST = "server {\n label= \"%1$s\";\n ip = %2$s;\n port = %3$d;\n reject = ::/0;\n reject_policy = negate;\n reject_recursively = on;\n timeout = 5;\n }\n";
    private static final String TAG = "PdnsdThread";
    private File filePdnsd;
    private final Context mContext;
    private final String[] mDnsHosts;
    private final int mDnsPort;
    private OnPdnsdListener mListener;
    private final String mPdnsdHost;
    private final int mPdnsdPort;
    private Process mProcess;

    /* loaded from: classes.dex */
    public interface OnPdnsdListener {
        void onStart();

        void onStop();
    }

    public Pdnsd(Context context, String[] strArr, int i, String str, int i2) {
        this.mContext = context;
        this.mDnsHosts = strArr;
        this.mDnsPort = i;
        this.mPdnsdHost = str;
        this.mPdnsdPort = i2;
    }

    public static /* synthetic */ void lambda$run$0(String str) {
        TkLogStatus.logDebug("Pdnsd: " + str);
    }

    private File makePdnsdConf(File file, String[] strArr, int i, String str, int i2) {
        String readFromRaw = FileUtils.readFromRaw(this.mContext, R.raw.pdnsd_local);
        StringBuilder sb = new StringBuilder();
        int i3 = 0;
        while (i3 < strArr.length) {
            String str2 = strArr[i3];
            StringBuilder sb2 = new StringBuilder("server");
            i3++;
            sb2.append(i3);
            sb.append(String.format(PDNSD_SERVER, sb2.toString(), str2, Integer.valueOf(i)));
        }
        String format = String.format(readFromRaw, sb, file.getCanonicalPath(), str, Integer.valueOf(i2));
        File file2 = new File(file, "pdnsd.conf");
        if (file2.exists()) {
            file2.delete();
        }
        FileUtils.saveTextFile(file2, format);
        File file3 = new File(file, "pdnsd.cache");
        if (!file3.exists()) {
            try {
                file3.createNewFile();
            } catch (Exception unused) {
            }
        }
        return file2;
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸 */
    public static /* synthetic */ void m907xfbe0c504(String str) {
        lambda$run$0(str);
    }

    @Override // java.lang.Thread
    public synchronized void interrupt() {
        super.interrupt();
        Process process = this.mProcess;
        if (process != null) {
            process.destroy();
        }
        try {
            File file = this.filePdnsd;
            if (file != null) {
                VpnUtils.killProcess(file);
            }
        } catch (Exception unused) {
        }
        this.mProcess = null;
        this.filePdnsd = null;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        File loadNativeBinary;
        OnPdnsdListener onPdnsdListener = this.mListener;
        if (onPdnsdListener != null) {
            onPdnsdListener.onStart();
        }
        try {
            loadNativeBinary = CustomNativeLoader.loadNativeBinary(this.mContext, PDNSD_BIN, new File(this.mContext.getFilesDir(), PDNSD_BIN));
            this.filePdnsd = loadNativeBinary;
        } catch (IOException e) {
            TkLogStatus.logException("Pdnsd error", e);
        } catch (Exception e2) {
            TkLogStatus.logDebug("Pdnsd error: " + e2);
        }
        if (loadNativeBinary != null) {
            Process exec = Runtime.getRuntime().exec(this.filePdnsd.getCanonicalPath() + " -v9 -c " + makePdnsdConf(this.mContext.getFilesDir(), this.mDnsHosts, this.mDnsPort, this.mPdnsdHost, this.mPdnsdPort));
            this.mProcess = exec;
            C0370x5ac5058d c0370x5ac5058d = new C0370x5ac5058d(19);
            StreamGobbler streamGobbler = new StreamGobbler(exec.getInputStream(), c0370x5ac5058d);
            StreamGobbler streamGobbler2 = new StreamGobbler(this.mProcess.getErrorStream(), c0370x5ac5058d);
            streamGobbler.start();
            streamGobbler2.start();
            this.mProcess.waitFor();
            this.mProcess = null;
            OnPdnsdListener onPdnsdListener2 = this.mListener;
            if (onPdnsdListener2 != null) {
                onPdnsdListener2.onStop();
                return;
            }
            return;
        }
        throw new IOException("Pdnsd bin not found");
    }

    public void setOnPdnsdListener(OnPdnsdListener onPdnsdListener) {
        this.mListener = onPdnsdListener;
    }
}
