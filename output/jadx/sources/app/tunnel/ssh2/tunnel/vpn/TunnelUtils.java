package app.tunnel.ssh2.tunnel.vpn;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import android.util.ArrayMap;
import de.blinkt.openvpn.core.TkLogStatus;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.nio.charset.StandardCharsets;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class TunnelUtils {
    public static Map<String, CharSequence> BBCODES_LIST;
    private static final Map<Integer, Integer> lastRotateList = new ArrayMap();
    private static String lastPayload = "";

    public static String formatCustomPayload(String str, int i, String str2) {
        ArrayMap arrayMap = new ArrayMap();
        BBCODES_LIST = arrayMap;
        arrayMap.put("[method]", "CONNECT");
        BBCODES_LIST.put("[host]", str);
        BBCODES_LIST.put("[port]", Integer.toString(i));
        BBCODES_LIST.put("[host_port]", String.format("%s:%d", str, Integer.valueOf(i)));
        BBCODES_LIST.put("[protocol]", "HTTP/1.0");
        BBCODES_LIST.put("[ssh]", String.format("%s:%d", str, Integer.valueOf(i)));
        BBCODES_LIST.put("[crlf]", "\r\n");
        BBCODES_LIST.put("[cr]", "\r");
        BBCODES_LIST.put("[lf]", "\n");
        BBCODES_LIST.put("[lfcr]", "\n\r");
        BBCODES_LIST.put("\\n", "\n");
        BBCODES_LIST.put("\\r", "\r");
        String property = System.getProperty("http.agent");
        Map<String, CharSequence> map = BBCODES_LIST;
        if (property == null) {
            property = "Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36";
        }
        map.put("[ua]", property);
        if (!str2.isEmpty()) {
            Iterator<String> it = BBCODES_LIST.keySet().iterator();
            while (it.hasNext()) {
                String lowerCase = it.next().toLowerCase();
                str2 = str2.replace(lowerCase, BBCODES_LIST.get(lowerCase));
            }
            return parseRotate(str2);
        }
        return str2;
    }

    public static String getLocalIpAddress() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress nextElement = inetAddresses.nextElement();
                    if (!nextElement.isLoopbackAddress() && (nextElement instanceof Inet4Address)) {
                        return nextElement.getHostAddress();
                    }
                }
            }
            return "No IP Available";
        } catch (SocketException unused) {
            return "ERROR Obtaining IP";
        }
    }

    private static boolean injectSimpleSplit(String str, OutputStream outputStream) {
        if (!str.contains("[split]")) {
            return false;
        }
        String[] split = str.split(Pattern.quote("[split]"));
        for (int i = 0; i < split.length; i++) {
            try {
                outputStream.write(split[i].getBytes(StandardCharsets.ISO_8859_1));
            } catch (UnsupportedEncodingException unused) {
                outputStream.write(split[i].getBytes());
            }
            outputStream.flush();
        }
        return true;
    }

    public static boolean injectSplitPayload(String str, OutputStream outputStream) {
        if (str.contains("[delay_split]")) {
            String[] split = str.split(Pattern.quote("[delay_split]"));
            for (int i = 0; i < split.length; i++) {
                String str2 = split[i];
                if (!injectSimpleSplit(str2, outputStream)) {
                    try {
                        outputStream.write(str2.getBytes(StandardCharsets.ISO_8859_1));
                    } catch (UnsupportedEncodingException unused) {
                        outputStream.write(str2.getBytes());
                    }
                    outputStream.flush();
                }
                try {
                    if (i != split.length - 1) {
                        Thread.sleep(1000L);
                    }
                } catch (InterruptedException unused2) {
                }
            }
            return true;
        }
        return injectSimpleSplit(str, outputStream);
    }

    public static boolean isActiveVpn(Context context) {
        Network activeNetwork;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (Build.VERSION.SDK_INT >= 23) {
            activeNetwork = connectivityManager.getActiveNetwork();
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork);
            if (networkCapabilities == null || !networkCapabilities.hasTransport(4)) {
                return false;
            }
            return true;
        }
        NetworkInfo networkInfo = connectivityManager.getNetworkInfo(17);
        if (networkInfo == null || !networkInfo.isConnectedOrConnecting()) {
            return false;
        }
        return true;
    }

    public static boolean isNetworkOnline(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting()) {
            return true;
        }
        return false;
    }

    public static String parseRotate(String str) {
        int i;
        Matcher matcher = Pattern.compile("\\[rotate=(.*?)\\]").matcher(str);
        if (!lastPayload.equals(str)) {
            lastRotateList.clear();
            lastPayload = str;
        }
        int i2 = 0;
        while (matcher.find()) {
            String[] split = matcher.group(1).split(";");
            if (split.length > 0) {
                Map<Integer, Integer> map = lastRotateList;
                if (!map.containsKey(Integer.valueOf(i2)) || (i = map.get(Integer.valueOf(i2)).intValue() + 1) >= split.length) {
                    i = 0;
                }
                str = str.replace(matcher.group(0), split[i]);
                map.put(Integer.valueOf(i2), Integer.valueOf(i));
                i2++;
            }
        }
        TkLogStatus.logDebug("Payload: " + str.replace("\n", "\\n").replace("\r", "\\r"));
        return str;
    }

    public static void restartRotate() {
        lastRotateList.clear();
    }
}
