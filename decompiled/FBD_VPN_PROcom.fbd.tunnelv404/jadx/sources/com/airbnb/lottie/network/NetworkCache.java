package com.airbnb.lottie.network;

import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.WorkerThread;
import com.airbnb.lottie.utils.Logger;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class NetworkCache {

    @NonNull
    private final LottieNetworkCacheProvider cacheProvider;

    public NetworkCache(@NonNull LottieNetworkCacheProvider lottieNetworkCacheProvider) {
        this.cacheProvider = lottieNetworkCacheProvider;
    }

    private static String filenameForUrl(String str, FileExtension fileExtension, boolean z) {
        String str2;
        String obfuscatedString = new ObfuscatedString(new long[]{-5862610243461139356L, 2668988153836829145L, -5801677264821829496L}).toString();
        if (z) {
            str2 = fileExtension.tempExtension();
        } else {
            str2 = fileExtension.extension;
        }
        String replaceAll = str.replaceAll(new ObfuscatedString(new long[]{4268457081458958182L, -3594130859467313867L}).toString(), new ObfuscatedString(new long[]{6382053351843633922L}).toString());
        int length = (255 - obfuscatedString.length()) - str2.length();
        if (replaceAll.length() > length) {
            replaceAll = getMD5(replaceAll, length);
        }
        return AbstractC0362x4440ab85.m2953x742e2fda(obfuscatedString, replaceAll, str2);
    }

    @Nullable
    private File getCachedFile(String str) {
        File file = new File(parentDir(), filenameForUrl(str, FileExtension.JSON, false));
        if (file.exists()) {
            return file;
        }
        File file2 = new File(parentDir(), filenameForUrl(str, FileExtension.ZIP, false));
        if (file2.exists()) {
            return file2;
        }
        File file3 = new File(parentDir(), filenameForUrl(str, FileExtension.GZIP, false));
        if (file3.exists()) {
            return file3;
        }
        return null;
    }

    private static String getMD5(String str, int i) {
        try {
            byte[] digest = MessageDigest.getInstance(new ObfuscatedString(new long[]{-8118772726107818440L, -1662308217609280783L}).toString()).digest(str.getBytes());
            StringBuilder sb = new StringBuilder();
            for (byte b : digest) {
                sb.append(String.format(new ObfuscatedString(new long[]{1473441532086381898L, 7813731099600039800L}).toString(), Byte.valueOf(b)));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException unused) {
            return str.substring(0, i);
        }
    }

    private File parentDir() {
        File cacheDir = this.cacheProvider.getCacheDir();
        if (cacheDir.isFile()) {
            cacheDir.delete();
        }
        if (!cacheDir.exists()) {
            cacheDir.mkdirs();
        }
        return cacheDir;
    }

    public void clear() {
        File parentDir = parentDir();
        if (parentDir.exists()) {
            File[] listFiles = parentDir.listFiles();
            if (listFiles != null && listFiles.length > 0) {
                for (File file : listFiles) {
                    file.delete();
                }
            }
            parentDir.delete();
        }
    }

    @Nullable
    @WorkerThread
    public Pair<FileExtension, InputStream> fetch(String str) {
        FileExtension fileExtension;
        try {
            File cachedFile = getCachedFile(str);
            if (cachedFile == null) {
                return null;
            }
            FileInputStream fileInputStream = new FileInputStream(cachedFile);
            if (cachedFile.getAbsolutePath().endsWith(new ObfuscatedString(new long[]{-8895145100570258142L, -3351614855589014620L}).toString())) {
                fileExtension = FileExtension.ZIP;
            } else if (cachedFile.getAbsolutePath().endsWith(new ObfuscatedString(new long[]{-7389981140542845590L, 1279654460755325529L}).toString())) {
                fileExtension = FileExtension.GZIP;
            } else {
                fileExtension = FileExtension.JSON;
            }
            Logger.debug(new ObfuscatedString(new long[]{6259290236686146459L, 1501218320893392859L, -5462063619379763678L}).toString() + str + new ObfuscatedString(new long[]{6310355348227588732L, 7311304943999664946L}).toString() + cachedFile.getAbsolutePath());
            return new Pair<>(fileExtension, fileInputStream);
        } catch (FileNotFoundException unused) {
            return null;
        }
    }

    public void renameTempFile(String str, FileExtension fileExtension) {
        File file = new File(parentDir(), filenameForUrl(str, fileExtension, true));
        File file2 = new File(file.getAbsolutePath().replace(new ObfuscatedString(new long[]{-8538515141326047252L, 2659026014109622437L}).toString(), new ObfuscatedString(new long[]{5637280409858946211L}).toString()));
        boolean renameTo = file.renameTo(file2);
        Logger.debug(new ObfuscatedString(new long[]{-2573188952615617104L, 2931208043279515694L, -5063918864353450253L, -8175191919012312650L, 1078992960669915463L}).toString() + file2 + new ObfuscatedString(new long[]{1839496027442456309L, -6129317534034423024L}).toString());
        if (!renameTo) {
            Logger.warning(new ObfuscatedString(new long[]{-2988647474909372508L, -2363932193926997072L, 6897145447901140193L, -1064482023639148187L, 6623532107597152246L}).toString() + file.getAbsolutePath() + new ObfuscatedString(new long[]{-942323327759067175L, -6001780090573204778L}).toString() + file2.getAbsolutePath() + new ObfuscatedString(new long[]{-2940398622142266696L, 455820131217936858L}).toString());
        }
    }

    public File writeTempCacheFile(String str, InputStream inputStream, FileExtension fileExtension) {
        File file = new File(parentDir(), filenameForUrl(str, fileExtension, true));
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read != -1) {
                        fileOutputStream.write(bArr, 0, read);
                    } else {
                        fileOutputStream.flush();
                        fileOutputStream.close();
                        return file;
                    }
                }
            } catch (Throwable th) {
                fileOutputStream.close();
                throw th;
            }
        } finally {
            inputStream.close();
        }
    }
}
