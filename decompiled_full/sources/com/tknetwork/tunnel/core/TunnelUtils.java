package com.tknetwork.tunnel.core;

import android.util.ArrayMap;
import com.panda912.muddy.ObfuscatedString;
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
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public class TunnelUtils {
    public static Map<String, CharSequence> BBCODES_LIST;
    private static final Map<Integer, Integer> lastRotateList = new ArrayMap();
    private static String lastPayload = new ObfuscatedString(new long[]{-5349406496612374005L}).toString();

    public static String formatCustomPayload(String str, int i, String str2) {
        ArrayMap arrayMap = new ArrayMap();
        BBCODES_LIST = arrayMap;
        arrayMap.put(new ObfuscatedString(new long[]{2261329536850723066L, -2846923283508057117L}).toString(), new ObfuscatedString(new long[]{-801500455914986277L, 5916751125084767820L}).toString());
        BBCODES_LIST.put(new ObfuscatedString(new long[]{-683498347947002071L, 9113155105616025988L}).toString(), str);
        BBCODES_LIST.put(new ObfuscatedString(new long[]{-8092868747364581874L, 189779064281643628L}).toString(), Integer.toString(i));
        BBCODES_LIST.put(new ObfuscatedString(new long[]{3550379995372071653L, -698474079102343126L, -5233471039027678680L}).toString(), String.format(new ObfuscatedString(new long[]{701404381849960121L, 190448028137827370L}).toString(), str, Integer.valueOf(i)));
        BBCODES_LIST.put(new ObfuscatedString(new long[]{6766383157422120729L, 7063132447097817888L, 1275639177498589742L}).toString(), new ObfuscatedString(new long[]{-1574282836292349266L, 8092999102069615835L}).toString());
        BBCODES_LIST.put(new ObfuscatedString(new long[]{-64985313589276402L, 5884709219670221965L}).toString(), String.format(new ObfuscatedString(new long[]{-133066723222954300L, 7309111784393888120L}).toString(), str, Integer.valueOf(i)));
        BBCODES_LIST.put(new ObfuscatedString(new long[]{1319142851725575418L, -2182616638585785412L}).toString(), new ObfuscatedString(new long[]{-1753394549643139259L, 451840771666281203L}).toString());
        BBCODES_LIST.put(new ObfuscatedString(new long[]{3194954254625753587L, 337532585352122974L}).toString(), new ObfuscatedString(new long[]{-6487237967763663419L, -2211597935299475798L}).toString());
        BBCODES_LIST.put(new ObfuscatedString(new long[]{-3904527251155024359L, -4920566428016938852L}).toString(), new ObfuscatedString(new long[]{-7070213462096428876L, -5962957510067775906L}).toString());
        BBCODES_LIST.put(new ObfuscatedString(new long[]{-2126592666380321169L, 9205890395022075062L}).toString(), new ObfuscatedString(new long[]{-9207221167735788405L, 1350135357218896089L}).toString());
        BBCODES_LIST.put(new ObfuscatedString(new long[]{1823606836180380093L, 7438723494163053280L}).toString(), new ObfuscatedString(new long[]{-7950186330087117805L, -6770231368167684764L}).toString());
        BBCODES_LIST.put(new ObfuscatedString(new long[]{-8013127431806146482L, -3270372813766721492L}).toString(), new ObfuscatedString(new long[]{-3856028398658850939L, -624929612684696870L}).toString());
        String property = System.getProperty(new ObfuscatedString(new long[]{7085589279882507851L, 9148399875435317852L, -5781026327821437280L}).toString());
        Map<String, CharSequence> map = BBCODES_LIST;
        String obfuscatedString = new ObfuscatedString(new long[]{-593744095090886432L, 7969336435970232350L}).toString();
        if (property == null) {
            property = new ObfuscatedString(new long[]{8443789368964235679L, -6424318438075364370L, 291491197593117750L, 1143116475010169577L, 5021103790397322980L, 1102967146390241476L, -7997335066349531979L, 705604178620143355L, -391595111653519529L, 8798081097770836852L, -9367877315264738L, 757929449189937092L, 113600615775990963L, 2188797709882169777L, 4653448012083635082L}).toString();
        }
        map.put(obfuscatedString, property);
        if (!str2.isEmpty()) {
            Iterator<String> it = BBCODES_LIST.keySet().iterator();
            while (it.hasNext()) {
                String lowerCase = it.next().toLowerCase();
                str2 = str2.replace(lowerCase, BBCODES_LIST.get(lowerCase));
            }
            return parseRandom(parseRotate(str2));
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
            return new ObfuscatedString(new long[]{-7942862005146422092L, 1365923784977330108L, -1508413401926506543L}).toString();
        } catch (SocketException unused) {
            return new ObfuscatedString(new long[]{4702145630937330722L, -6581888827388129885L, 6473250514098957533L, -478330362222939143L}).toString();
        }
    }

    private static boolean injectSimpleSplit(String str, OutputStream outputStream) {
        if (!str.contains(new ObfuscatedString(new long[]{-1689431098343649650L, 5156109351260455820L}).toString())) {
            return false;
        }
        String[] split = str.split(Pattern.quote(new ObfuscatedString(new long[]{-204699910585642563L, -7205889817776405151L}).toString()));
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
        if (str.contains(new ObfuscatedString(new long[]{913432843755989720L, -8623677255341323593L, -2478432137886584543L}).toString())) {
            String[] split = str.split(Pattern.quote(new ObfuscatedString(new long[]{-5000629640194225271L, 5618648411693083342L, -5451092240199378929L}).toString()));
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

    public static String parseRandom(String str) {
        Matcher matcher = Pattern.compile(new ObfuscatedString(new long[]{-5815945180661139166L, 6214202062592884254L, 3076578554766319256L}).toString()).matcher(str);
        while (matcher.find()) {
            String[] split = matcher.group(1).split(new ObfuscatedString(new long[]{-5874155338754173354L, 8131469768951147789L}).toString());
            if (split.length > 0) {
                int nextInt = new Random().nextInt(split.length);
                if (nextInt >= split.length || nextInt < 0) {
                    nextInt = 0;
                }
                str = str.replace(matcher.group(0), split[nextInt]);
            }
        }
        return str;
    }

    public static String parseRotate(String str) {
        int i;
        Matcher matcher = Pattern.compile(new ObfuscatedString(new long[]{1465824501157638835L, -4218552735295549727L, -1025885148610263151L}).toString()).matcher(str);
        if (!lastPayload.equals(str)) {
            restartRotateAndRandom();
            lastPayload = str;
        }
        int i2 = 0;
        while (matcher.find()) {
            String[] split = matcher.group(1).split(new ObfuscatedString(new long[]{1319718756620584148L, -1349276479824847622L}).toString());
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
        return str;
    }

    public static void restartRotateAndRandom() {
        lastRotateList.clear();
    }
}
