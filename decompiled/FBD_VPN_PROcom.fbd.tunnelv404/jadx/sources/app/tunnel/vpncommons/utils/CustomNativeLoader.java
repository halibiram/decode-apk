package app.tunnel.vpncommons.utils;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* loaded from: classes.dex */
public class CustomNativeLoader {
    public static File loadNativeBinary(Context context, String str, File file) {
        try {
            File file2 = new File(context.getApplicationInfo().nativeLibraryDir, str + ".so");
            if (file2.exists()) {
                if (file2.canExecute()) {
                    return file2;
                }
                file2.setReadable(true);
                file2.setExecutable(true);
                file2.setWritable(false);
                file2.setWritable(true, true);
                if (file2.canExecute()) {
                    return file2;
                }
            } else if (file.exists()) {
                if (file.canExecute()) {
                    return file;
                }
                file.setReadable(true);
                file.setExecutable(true);
                file.setWritable(false);
                file.setWritable(true, true);
                if (file.canExecute()) {
                    return file;
                }
            }
            ArrayList arrayList = new ArrayList();
            String[] strArr = Build.SUPPORTED_ABIS;
            if (strArr != null) {
                for (String str2 : strArr) {
                    if (!TextUtils.isEmpty(str2)) {
                        arrayList.add(str2);
                    }
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                String str3 = (String) it.next();
                String property = System.getProperty("os.arch");
                if (property != null && property.contains("686")) {
                    str3 = "x86";
                }
                if (m923xfbe0c504(context, str, file, str3)) {
                    return file;
                }
            }
            return null;
        } catch (Throwable th) {
            th.getMessage();
            return null;
        }
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static boolean m923xfbe0c504(Context context, String str, File file, String str2) {
        ZipFile zipFile;
        InputStream inputStream = null;
        try {
            zipFile = new ZipFile(context.getApplicationInfo().sourceDir);
        } catch (Exception unused) {
            zipFile = null;
        } catch (Throwable th) {
            th = th;
            zipFile = null;
        }
        try {
            ZipEntry entry = zipFile.getEntry("lib/" + str2 + "/" + str + ".so");
            if (entry == null) {
                entry = zipFile.getEntry("jni/" + str2 + "/" + str + ".so");
                if (entry == null) {
                    throw new Exception("Unable to find file in apk:lib/" + str2 + "/" + str);
                }
            }
            InputStream inputStream2 = zipFile.getInputStream(entry);
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            byte[] bArr = new byte[4096];
            while (true) {
                int read = inputStream2.read(bArr);
                if (read <= 0) {
                    break;
                }
                Thread.yield();
                fileOutputStream.write(bArr, 0, read);
            }
            fileOutputStream.close();
            file.setReadable(true, false);
            file.setExecutable(true, false);
            file.setWritable(true);
            try {
                inputStream2.close();
            } catch (Exception unused2) {
            }
            try {
                zipFile.close();
            } catch (Exception unused3) {
            }
            return true;
        } catch (Exception unused4) {
            if (0 != 0) {
                try {
                    inputStream.close();
                } catch (Exception unused5) {
                }
            }
            if (zipFile != null) {
                try {
                    zipFile.close();
                } catch (Exception unused6) {
                }
            }
            return false;
        } catch (Throwable th2) {
            th = th2;
            if (0 != 0) {
                try {
                    inputStream.close();
                } catch (Exception unused7) {
                }
            }
            if (zipFile != null) {
                try {
                    zipFile.close();
                    throw th;
                } catch (Exception unused8) {
                    throw th;
                }
            }
            throw th;
        }
    }
}
