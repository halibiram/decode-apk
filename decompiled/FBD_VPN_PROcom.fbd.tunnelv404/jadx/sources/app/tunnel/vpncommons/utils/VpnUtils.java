package app.tunnel.vpncommons.utils;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import app.tunnel.ssh2.tunnel.vpn.TunnelConstants;
import app.tunnel.vpncommons.VpnConstants;
import de.blinkt.openvpn.core.TkLogStatus;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationTargetException;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.NetworkInterface;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class VpnUtils {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final Pattern f432xfbe0c504 = Pattern.compile("^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$");

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final Pattern f433x3271d0aa = Pattern.compile("^(?:[0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}$");

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static final Pattern f434x1378447b = Pattern.compile("^((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)::((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)$");

    /* loaded from: classes.dex */
    public static class PrivateAddress {
        public final String mIpAddress;
        public final int mPrefixLength;
        public final String mRouter;
        public final String mSubnet;

        public PrivateAddress(String str, String str2, int i, String str3) {
            this.mIpAddress = str;
            this.mSubnet = str2;
            this.mPrefixLength = i;
            this.mRouter = str3;
        }
    }

    public static String convertToTime(long j) {
        return String.format(Locale.ENGLISH, "%02d:%02d:%02d", Long.valueOf((j / 3600000) % 24), Long.valueOf((j / 60000) % 60), Long.valueOf((j / 1000) % 60));
    }

    public static int findAvailablePort(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            try {
                Socket socket = new Socket();
                try {
                    socket.connect(new InetSocketAddress("127.0.0.1", i3), 1000);
                    socket.close();
                } catch (Throwable th) {
                    try {
                        socket.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                    break;
                }
            } catch (SocketTimeoutException unused) {
                continue;
            } catch (IOException unused2) {
                return i3;
            }
        }
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x005c, code lost:
    
        r2 = r2 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int findProcessId(String str) {
        String[] strArr = {"ps -ef", "ps -A", TunnelConstants.SHELL_CMD_PS};
        int i = 0;
        while (i < 3) {
            Process exec = Runtime.getRuntime().exec(strArr[i]);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    if (!readLine.contains("PID") && readLine.contains(str)) {
                        String[] split = readLine.split("\\s+");
                        try {
                            try {
                                int parseInt = Integer.parseInt(split[1]);
                                try {
                                    exec.destroy();
                                } catch (Exception unused) {
                                }
                                return parseInt;
                            } catch (NumberFormatException unused2) {
                                int parseInt2 = Integer.parseInt(split[0]);
                                try {
                                    exec.destroy();
                                } catch (Exception unused3) {
                                }
                                return parseInt2;
                            }
                        } catch (Throwable th) {
                            try {
                                exec.destroy();
                            } catch (Exception unused4) {
                            }
                            throw th;
                        }
                    }
                }
            }
        }
        return -1;
    }

    public static List<String> getActiveNetworkDnsResolver(Context context) {
        ArrayList arrayList = new ArrayList();
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            Class.forName("android.net.LinkProperties");
            Object invoke = ConnectivityManager.class.getMethod("getActiveLinkProperties", null).invoke(connectivityManager, null);
            if (invoke != null) {
                arrayList.addAll(((LinkProperties) invoke).getDnsServers());
            }
            if (!arrayList.isEmpty()) {
                ArrayList arrayList2 = new ArrayList();
                Iterator it = arrayList.iterator();
                int i = 2;
                while (it.hasNext()) {
                    String inetAddress = ((InetAddress) it.next()).toString();
                    if (inetAddress.startsWith("/")) {
                        inetAddress = inetAddress.substring(1);
                    }
                    if (!inetAddress.contains(":")) {
                        arrayList2.add(inetAddress);
                        i--;
                        if (i <= 0) {
                            break;
                        }
                    }
                }
                return arrayList2;
            }
            throw new Exception("no active network DNS resolver");
        } catch (ClassNotFoundException | IllegalAccessException | IllegalArgumentException | NoSuchMethodException | NullPointerException | InvocationTargetException e) {
            throw new Exception("getActiveNetworkDnsResolvers failed", e);
        }
    }

    public static PendingIntent getGraphPendingIntent(Context context) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, context.getPackageName() + ".MainActivity"));
        intent.putExtra("PAGE", "graph");
        intent.addFlags(131072);
        PendingIntent activity = PendingIntent.getActivity(context, 0, intent, AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL);
        intent.addFlags(131072);
        return activity;
    }

    public static List<String> getNetworkDnsServer(Context context) {
        ArrayList arrayList = new ArrayList();
        try {
            return getActiveNetworkDnsResolver(context);
        } catch (Exception unused) {
            arrayList.add(VpnConstants.DEFAULT_SECONDARY_DNS);
            arrayList.add(VpnConstants.DEFAULT_PRIMARY_DNS);
            return arrayList;
        }
    }

    public static boolean isIPv4Address(String str) {
        return f432xfbe0c504.matcher(str).matches();
    }

    public static boolean isIPv6Address(String str) {
        if (!isIPv6StdAddress(str) && !isIPv6HexCompressedAddress(str)) {
            return false;
        }
        return true;
    }

    public static boolean isIPv6HexCompressedAddress(String str) {
        return f434x1378447b.matcher(str).matches();
    }

    public static boolean isIPv6StdAddress(String str) {
        return f433x3271d0aa.matcher(str).matches();
    }

    public static void killProcess(File file) {
        killProcess(file, "-9");
    }

    public static PrivateAddress selectPrivateAddress() {
        HashMap hashMap = new HashMap();
        hashMap.put("10", new PrivateAddress("10.0.0.1", "10.0.0.0", 8, "10.0.0.2"));
        hashMap.put("172", new PrivateAddress("172.16.0.1", "172.16.0.0", 12, "172.16.0.2"));
        hashMap.put("192", new PrivateAddress("192.168.0.1", "192.168.0.0", 16, "192.168.0.2"));
        hashMap.put("169", new PrivateAddress("169.254.1.1", "169.254.1.0", 24, "169.254.1.2"));
        try {
            Iterator it = Collections.list(NetworkInterface.getNetworkInterfaces()).iterator();
            while (it.hasNext()) {
                Iterator it2 = Collections.list(((NetworkInterface) it.next()).getInetAddresses()).iterator();
                while (it2.hasNext()) {
                    InetAddress inetAddress = (InetAddress) it2.next();
                    if (!inetAddress.isLoopbackAddress() && (inetAddress instanceof Inet4Address)) {
                        String hostAddress = inetAddress.getHostAddress();
                        if (hostAddress.startsWith("10.")) {
                            hashMap.remove("10");
                        } else if (hostAddress.length() >= 6 && hostAddress.substring(0, 6).compareTo("172.16") >= 0 && hostAddress.substring(0, 6).compareTo("172.31") <= 0) {
                            hashMap.remove("172");
                        } else if (hostAddress.startsWith("192.168")) {
                            hashMap.remove("192");
                        }
                    }
                }
            }
            if (hashMap.size() > 0) {
                return (PrivateAddress) hashMap.values().iterator().next();
            }
            throw new Exception("no private address available");
        } catch (SocketException e) {
            e.printStackTrace();
            throw new Exception("selectPrivateAddress failed", e);
        }
    }

    public static int killProcess(File file, String str) {
        int i = 0;
        do {
            int findProcessId = findProcessId(file.getName());
            if (findProcessId == -1) {
                return findProcessId;
            }
            i++;
            String valueOf = String.valueOf(findProcessId);
            String[] strArr = {"", "busybox ", "toolbox "};
            for (int i2 = 0; i2 < 3; i2++) {
                String str2 = strArr[i2];
                try {
                    Runtime.getRuntime().exec(str2 + "killall " + str + " " + file.getName());
                } catch (IOException unused) {
                }
                try {
                    Runtime.getRuntime().exec(str2 + "killall " + str + " " + file.getCanonicalPath());
                } catch (IOException unused2) {
                }
            }
            killProcess(valueOf, str);
            try {
                Thread.sleep(1000L);
            } catch (InterruptedException unused3) {
            }
        } while (i <= 4);
        throw new Exception("Cannot kill: " + file.getAbsolutePath());
    }

    public static void killProcess(String str, String str2) {
        String[] strArr = {"", "toolbox ", "busybox "};
        for (int i = 0; i < 3; i++) {
            String str3 = strArr[i];
            try {
                Runtime.getRuntime().exec(str3 + "kill " + str2 + " " + str);
            } catch (IOException e) {
                TkLogStatus.logDebug("error killing process: " + str + ", " + e.getMessage());
            }
        }
    }
}
