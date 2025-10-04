package com.tknetwork.tunnel.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.panda912.muddy.ObfuscatedString;
import com.tknetwork.tunnel.service.c_05;
import com.tknetwork.tunnel.utils.c_12;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.Socket;

/* loaded from: classes3.dex */
public class VPNUtil {
    private static VPNProtectListener Listener;
    private static c_05 mService;

    /* loaded from: classes3.dex */
    public interface VPNProtectListener {
        boolean protectSocket(Socket socket);
    }

    public static String decrypt(String str) {
        return c_12.Parser.d_01(str.replace(new ObfuscatedString(new long[]{7568596715817733167L, -3912792327466564343L}).toString(), new ObfuscatedString(new long[]{-6469755424299176121L}).toString()).replace(new ObfuscatedString(new long[]{2545442207956304851L, 3500449685696506792L}).toString(), new ObfuscatedString(new long[]{-1690517287038369840L}).toString()));
    }

    public static String encrypt(String str) {
        return c_12.Parser.parse(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0099, code lost:
    
        r4 = r4 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int findProcessId(String str) {
        String[] strArr = {new ObfuscatedString(new long[]{2627148917550408274L, 5791625732224418546L}).toString(), new ObfuscatedString(new long[]{-3336138288940032528L, -6771841698565397768L}).toString(), new ObfuscatedString(new long[]{6766797390479775583L, -1756805270568219816L, -2666965872886276812L}).toString()};
        int i = 0;
        while (i < 3) {
            Process exec = Runtime.getRuntime().exec(strArr[i]);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    if (!readLine.contains(new ObfuscatedString(new long[]{1017666674066394422L, -5372815219538034274L}).toString()) && readLine.contains(str)) {
                        String[] split = readLine.split(new ObfuscatedString(new long[]{-4873195627014572996L, 3372222918823306282L}).toString());
                        try {
                            try {
                                int parseInt = Integer.parseInt(split[1]);
                                try {
                                    exec.destroy();
                                } catch (Exception unused) {
                                }
                                return parseInt;
                            } catch (Throwable th) {
                                try {
                                    exec.destroy();
                                } catch (Exception unused2) {
                                }
                                throw th;
                            }
                        } catch (NumberFormatException unused3) {
                            int parseInt2 = Integer.parseInt(split[0]);
                            try {
                                exec.destroy();
                            } catch (Exception unused4) {
                            }
                            return parseInt2;
                        }
                    }
                }
            }
        }
        return -1;
    }

    public static c_05 getService() {
        return mService;
    }

    public static boolean isProtected(Socket socket) {
        VPNProtectListener vPNProtectListener = Listener;
        if (vPNProtectListener != null && vPNProtectListener.protectSocket(socket)) {
            return true;
        }
        return false;
    }

    public static void killProcess(File file) {
        killProcess(file, new ObfuscatedString(new long[]{9050602727746242795L, -1283439236723365050L}).toString());
    }

    public static String networkStateChange(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService(new ObfuscatedString(new long[]{-4624941254968899320L, -4503114143558896869L, 8200400156049520879L}).toString())).getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            if (activeNetworkInfo.getType() == 1) {
                return new ObfuscatedString(new long[]{-5909388974173278510L, 3069916301240320782L, -574610348613702580L}).toString();
            }
            if (activeNetworkInfo.getType() == 0) {
                int subtype = activeNetworkInfo.getSubtype();
                if (subtype != 1 && subtype != 2 && subtype != 4 && subtype != 7 && subtype != 11 && subtype != 16) {
                    if (subtype != 3 && subtype != 5 && subtype != 6 && subtype != 8 && subtype != 9 && subtype != 10 && subtype != 12 && subtype != 14 && subtype != 15 && subtype != 17) {
                        if (subtype != 13 && subtype != 18 && subtype != 19) {
                            if (subtype == 20) {
                                return new ObfuscatedString(new long[]{-938476877659058763L, -8049129884010907603L, 8298228268775178439L}).toString();
                            }
                        } else {
                            return new ObfuscatedString(new long[]{-2727620742370560347L, 589099986648213934L, -6134606612432566178L, -6129850161792104259L}).toString();
                        }
                    } else {
                        return new ObfuscatedString(new long[]{-7134216761612856708L, -8647158138113043870L, 718102517956163386L}).toString();
                    }
                } else {
                    return new ObfuscatedString(new long[]{8044499897495219629L, -2689877683661836781L, -7508823598796359523L}).toString();
                }
            }
            return new ObfuscatedString(new long[]{5695194966368488814L, 6360132197369029730L, -6467763340164646346L}).toString();
        }
        return new ObfuscatedString(new long[]{-4736022482292385718L, 2765612065787823276L, 4933516423316172709L}).toString();
    }

    public static boolean saveTextFile(File file, String str) {
        try {
            if (!file.exists()) {
                file.createNewFile();
            }
            FileWriter fileWriter = new FileWriter(file, false);
            fileWriter.write(str);
            fileWriter.close();
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static void setVPNProtectListener(VPNProtectListener vPNProtectListener) {
        Listener = vPNProtectListener;
    }

    public static void setVPNService(c_05 c_05Var) {
        mService = c_05Var;
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
            String[] strArr = {new ObfuscatedString(new long[]{1298191442307888621L}).toString(), new ObfuscatedString(new long[]{-7500733794702466731L, -4984469689906333168L}).toString(), new ObfuscatedString(new long[]{-8874113723626077853L, 676103669179502721L}).toString()};
            for (int i2 = 0; i2 < 3; i2++) {
                try {
                    Runtime.getRuntime().exec(strArr[i2] + new ObfuscatedString(new long[]{-2819042971209781168L, -167403015763300994L}).toString() + str + new ObfuscatedString(new long[]{3418953621674187875L, 5321764546701882730L}).toString() + file.getName());
                } catch (IOException unused) {
                }
                try {
                    Runtime.getRuntime().exec(strArr[i2] + new ObfuscatedString(new long[]{-4051100220194335381L, 1688804714024224891L}).toString() + str + new ObfuscatedString(new long[]{-6918779558843815119L, 4629529533946689762L}).toString() + file.getCanonicalPath());
                } catch (IOException unused2) {
                }
            }
            killProcess(valueOf, str);
            try {
                Thread.sleep(1000L);
            } catch (InterruptedException unused3) {
            }
        } while (i <= 4);
        throw new Exception(new ObfuscatedString(new long[]{701343511178400147L, 3692431216387296838L, 3827874577722983765L}).toString() + file.getAbsolutePath());
    }

    public static void killProcess(String str, String str2) {
        String[] strArr = {new ObfuscatedString(new long[]{-7570769425096647149L}).toString(), new ObfuscatedString(new long[]{7142824311335928413L, -581643134225538455L}).toString(), new ObfuscatedString(new long[]{7722824299285454620L, -7574381546179422966L}).toString()};
        for (int i = 0; i < 3; i++) {
            try {
                Runtime.getRuntime().exec(strArr[i] + new ObfuscatedString(new long[]{-8433748836616530165L, -1737717774862217550L}).toString() + str2 + new ObfuscatedString(new long[]{-7760985519605291197L, 4634455150546915895L}).toString() + str);
            } catch (IOException unused) {
            }
        }
    }
}
