package app.tunnel.vpncommons.utils;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Environment;
import androidx.appcompat.app.AlertDialog;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.fbd.tunnel.R;
import defpackage.DialogInterfaceOnClickListenerC0519xdc2f50a1;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.util.Locale;
import java.util.Scanner;

/* loaded from: classes.dex */
public class FileUtils {

    /* loaded from: classes.dex */
    public static class FileTooLarge extends IOException {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FileTooLarge(String str, long j) {
            super("Profile is too large (cannot exceed " + j + " bytes)");
            Locale locale = Locale.ENGLISH;
        }
    }

    public static void copiarArquivo(InputStream inputStream, OutputStream outputStream) {
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read > 0) {
                outputStream.write(bArr, 0, read);
            } else {
                inputStream.close();
                outputStream.close();
                return;
            }
        }
    }

    public static String dirname(String str) {
        if (str != null) {
            return new File(str).getParent();
        }
        return null;
    }

    public static boolean isExternalStorageReadable() {
        String externalStorageState = Environment.getExternalStorageState();
        if (!"mounted".equals(externalStorageState) && !"mounted_ro".equals(externalStorageState)) {
            return false;
        }
        return true;
    }

    public static boolean isExternalStorageWritable() {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    public static String readAsset(Context context, String str) {
        return readStream(context.getResources().getAssets().open(str), 0L, str);
    }

    public static String readFileAppPrivate(Context context, String str) {
        return readStream(context.openFileInput(str), 0L, str);
    }

    public static byte[] readFileByteArray(String str, long j) {
        File file = new File(str);
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            long length = file.length();
            if ((j <= 0 || length <= j) && length <= 2147483647L) {
                int i = (int) length;
                byte[] bArr = new byte[i];
                int i2 = 0;
                while (i2 < i) {
                    int read = fileInputStream.read(bArr, i2, i - i2);
                    if (read < 0) {
                        break;
                    }
                    i2 += read;
                }
                if (i2 >= i) {
                    return bArr;
                }
                throw new IOException("Could not completely read file: " + str);
            }
            throw new FileTooLarge(str, j);
        } finally {
            fileInputStream.close();
        }
    }

    public static String readFromRaw(Context context, int i) {
        Scanner useDelimiter = new Scanner(context.getResources().openRawResource(i), "UTF-8").useDelimiter("\\A");
        StringBuilder sb = new StringBuilder();
        while (useDelimiter.hasNext()) {
            sb.append(useDelimiter.next());
        }
        useDelimiter.close();
        return sb.toString();
    }

    public static String readStream(InputStream inputStream, long j, String str) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
            StringBuilder sb = new StringBuilder();
            char[] cArr = new char[4096];
            while (true) {
                int read = bufferedReader.read(cArr, 0, 4096);
                if (read <= 0) {
                    return sb.toString();
                }
                sb.append(cArr, 0, read);
                if (j > 0 && sb.length() > j) {
                    throw new FileTooLarge(str, j);
                }
            }
        } finally {
            inputStream.close();
        }
    }

    public static String readTextFile(File file) {
        StringBuilder sb = new StringBuilder();
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    sb.append(readLine);
                    sb.append("\n");
                } else {
                    bufferedReader.close();
                    return sb.toString();
                }
            }
        } catch (Exception unused) {
            return null;
        }
    }

    public static boolean renameFile(String str, String str2) {
        if (str != null && str2 != null) {
            return new File(str).renameTo(new File(str2));
        }
        return false;
    }

    public static void requestForPermissionExternalStorage(Activity activity) {
        if (ContextCompat.checkSelfPermission(activity, "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
            if (ActivityCompat.shouldShowRequestPermissionRationale(activity, "android.permission.WRITE_EXTERNAL_STORAGE")) {
                String string = activity.getString(R.string.error_request_permission);
                new AlertDialog.Builder(activity).setMessage(string).setPositiveButton(activity.getString(R.string.ok), new DialogInterfaceOnClickListenerC0519xdc2f50a1(activity, 2)).setNegativeButton(activity.getString(android.R.string.cancel), (DialogInterface.OnClickListener) null).create().show();
                return;
            }
            ActivityCompat.requestPermissions(activity, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 100);
        }
    }

    public static void saveTextFile(File file, String str) {
        try {
            if (!file.exists()) {
                file.createNewFile();
            }
            FileWriter fileWriter = new FileWriter(file, false);
            fileWriter.write(str);
            fileWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void writeFileAppPrivate(Context context, String str, String str2) {
        FileOutputStream openFileOutput = context.openFileOutput(str, 0);
        try {
            openFileOutput.write(str2.getBytes());
        } finally {
            openFileOutput.close();
        }
    }
}
