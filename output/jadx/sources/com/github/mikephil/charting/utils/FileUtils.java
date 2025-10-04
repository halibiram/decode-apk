package com.github.mikephil.charting.utils;

import android.content.res.AssetManager;
import android.os.Environment;
import com.github.mikephil.charting.data.BarEntry;
import com.github.mikephil.charting.data.Entry;
import com.panda912.muddy.ObfuscatedString;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class FileUtils {
    private static final String LOG = new ObfuscatedString(new long[]{-7349507318750640338L, -6616456392542757877L, -486785928143015047L, 1945425361615015251L}).toString();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v7 */
    public static List<BarEntry> loadBarEntriesFromAssets(AssetManager assetManager, String str) {
        ObfuscatedString obfuscatedString;
        BufferedReader bufferedReader;
        ArrayList arrayList = new ArrayList();
        BufferedReader bufferedReader2 = null;
        float f = 0;
        BufferedReader bufferedReader3 = null;
        try {
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(assetManager.open(str), new ObfuscatedString(new long[]{-1560077857928135340L, 4921112352815033001L}).toString()));
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e) {
            e = e;
        }
        try {
            for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
                String[] split = readLine.split(new ObfuscatedString(new long[]{-7676957719394315287L, 4461981550401483047L}).toString());
                f = Float.parseFloat(split[1]);
                arrayList.add(new BarEntry(f, Float.parseFloat(split[0])));
            }
            try {
                bufferedReader.close();
                bufferedReader2 = f;
            } catch (IOException e2) {
                e = e2;
                obfuscatedString = new ObfuscatedString(new long[]{4731473218083156717L, 3638353374143131144L, 1781220369559451701L, 2697539883573846734L});
                obfuscatedString.toString();
                e.toString();
                return arrayList;
            }
        } catch (IOException e3) {
            e = e3;
            bufferedReader3 = bufferedReader;
            new ObfuscatedString(new long[]{-8443396346811904556L, 3554168710491594684L, -7281437651353694242L, -5969019626760078607L}).toString();
            e.toString();
            bufferedReader2 = bufferedReader3;
            if (bufferedReader3 != null) {
                try {
                    bufferedReader3.close();
                    bufferedReader2 = bufferedReader3;
                } catch (IOException e4) {
                    e = e4;
                    obfuscatedString = new ObfuscatedString(new long[]{682466042566200328L, -8467192100806702070L, 4208090511537576217L, -1371626191737766923L});
                    obfuscatedString.toString();
                    e.toString();
                    return arrayList;
                }
            }
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
            bufferedReader2 = bufferedReader;
            if (bufferedReader2 != null) {
                try {
                    bufferedReader2.close();
                } catch (IOException e5) {
                    new ObfuscatedString(new long[]{5508827831743723542L, 8891122547130461162L, -4031687742131322346L, 6271689282402688360L}).toString();
                    e5.toString();
                }
            }
            throw th;
        }
        return arrayList;
    }

    public static List<Entry> loadEntriesFromAssets(AssetManager assetManager, String str) {
        ObfuscatedString obfuscatedString;
        BufferedReader bufferedReader;
        ArrayList arrayList = new ArrayList();
        BufferedReader bufferedReader2 = null;
        try {
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(assetManager.open(str), new ObfuscatedString(new long[]{-6548718853394461035L, 767261476071834349L}).toString()));
            } catch (IOException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
                String[] split = readLine.split(new ObfuscatedString(new long[]{-8103772740480874671L, 342004614277715756L}).toString());
                if (split.length <= 2) {
                    arrayList.add(new Entry(Float.parseFloat(split[1]), Float.parseFloat(split[0])));
                } else {
                    int length = split.length - 1;
                    float[] fArr = new float[length];
                    for (int i = 0; i < length; i++) {
                        fArr[i] = Float.parseFloat(split[i]);
                    }
                    arrayList.add(new BarEntry(Integer.parseInt(split[split.length - 1]), fArr));
                }
            }
            try {
                bufferedReader.close();
            } catch (IOException e2) {
                e = e2;
                obfuscatedString = new ObfuscatedString(new long[]{699797597155729780L, -8676162357835895276L, -5027393675151429008L, -4791469688321603851L});
                obfuscatedString.toString();
                e.toString();
                return arrayList;
            }
        } catch (IOException e3) {
            e = e3;
            bufferedReader2 = bufferedReader;
            new ObfuscatedString(new long[]{-6018505509592864711L, -7892055617005077686L, 4055855503880398425L, -4843524569195717828L}).toString();
            e.toString();
            if (bufferedReader2 != null) {
                try {
                    bufferedReader2.close();
                } catch (IOException e4) {
                    e = e4;
                    obfuscatedString = new ObfuscatedString(new long[]{-5942258558854880201L, -3222886695269410838L, 3227622726252447181L, 6907421912652709882L});
                    obfuscatedString.toString();
                    e.toString();
                    return arrayList;
                }
            }
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
            bufferedReader2 = bufferedReader;
            if (bufferedReader2 != null) {
                try {
                    bufferedReader2.close();
                } catch (IOException e5) {
                    new ObfuscatedString(new long[]{846279742881979907L, -7027834495281341682L, 569252229096295549L, 6852579346374668677L}).toString();
                    e5.toString();
                }
            }
            throw th;
        }
        return arrayList;
    }

    public static List<Entry> loadEntriesFromFile(String str) {
        File file = new File(Environment.getExternalStorageDirectory(), str);
        ArrayList arrayList = new ArrayList();
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                String[] split = readLine.split(new ObfuscatedString(new long[]{8672922098002520504L, 6839679640190388829L}).toString());
                if (split.length <= 2) {
                    arrayList.add(new Entry(Float.parseFloat(split[0]), Integer.parseInt(split[1])));
                } else {
                    int length = split.length - 1;
                    float[] fArr = new float[length];
                    for (int i = 0; i < length; i++) {
                        fArr[i] = Float.parseFloat(split[i]);
                    }
                    arrayList.add(new BarEntry(Integer.parseInt(split[split.length - 1]), fArr));
                }
            }
        } catch (IOException e) {
            new ObfuscatedString(new long[]{790608053110734142L, -2589971033824307927L, -5790349949521952342L, -5964791166709613232L}).toString();
            e.toString();
        }
        return arrayList;
    }

    public static void saveToSdCard(List<Entry> list, String str) {
        File file = new File(Environment.getExternalStorageDirectory(), str);
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (IOException e) {
                new ObfuscatedString(new long[]{-7823365896399300169L, -5422052329206568771L, 7374524915848477482L, -7812425273073652750L}).toString();
                e.toString();
            }
        }
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file, true));
            for (Entry entry : list) {
                bufferedWriter.append((CharSequence) (entry.getY() + new ObfuscatedString(new long[]{7144839172615675172L, -4955453753883555335L}).toString() + entry.getX()));
                bufferedWriter.newLine();
            }
            bufferedWriter.close();
        } catch (IOException e2) {
            new ObfuscatedString(new long[]{-6461846453657155957L, -4826078862600439304L, 5233717648380166683L, 618060207587010278L}).toString();
            e2.toString();
        }
    }
}
