package com.v2ray.ang.util;

import com.panda912.muddy.ObfuscatedString;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.SequencesKt__SequencesKt;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tJ\u0016\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\tJ\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\tH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/v2ray/ang/util/ZipUtil;", "", "<init>", "()V", "BUFFER_SIZE", "", "zipFromFolder", "", "folderPath", "", "outputZipFilePath", "unzipToFolder", "zipFile", "Ljava/io/File;", "destDirectory", "extractFile", "", "inputStream", "Ljava/io/InputStream;", "destFilePath", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nZipUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZipUtil.kt\ncom/v2ray/ang/util/ZipUtil\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,125:1\n13472#2,2:126\n1869#3,2:128\n1321#4,2:130\n1#5:132\n*S KotlinDebug\n*F\n+ 1 ZipUtil.kt\ncom/v2ray/ang/util/ZipUtil\n*L\n38#1:126,2\n50#1:128,2\n89#1:130,2\n*E\n"})
/* loaded from: classes3.dex */
public final class ZipUtil {
    private static final int BUFFER_SIZE = 4096;

    @NotNull
    public static final ZipUtil INSTANCE = new ZipUtil();

    private ZipUtil() {
    }

    private final void extractFile(InputStream inputStream, String destFilePath) {
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(destFilePath));
        byte[] bArr = new byte[4096];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                bufferedOutputStream.write(bArr, 0, read);
            } else {
                bufferedOutputStream.close();
                return;
            }
        }
    }

    public final boolean unzipToFolder(@NotNull File zipFile, @NotNull String destDirectory) {
        Intrinsics.checkNotNullParameter(zipFile, new ObfuscatedString(new long[]{4051926548329041216L, -981941232440196753L}).toString());
        Intrinsics.checkNotNullParameter(destDirectory, new ObfuscatedString(new long[]{-2065672826088341281L, 1766839299988543795L, -6730695618602278007L}).toString());
        File file = new File(destDirectory);
        if (!file.exists()) {
            file.mkdirs();
        }
        try {
            ZipFile zipFile2 = new ZipFile(zipFile);
            try {
                Enumeration<? extends ZipEntry> entries = zipFile2.entries();
                Intrinsics.checkNotNullExpressionValue(entries, new ObfuscatedString(new long[]{6473216267438348609L, -542156454320090052L, 1692847047660318993L}).toString());
                for (ZipEntry zipEntry : SequencesKt__SequencesKt.asSequence(CollectionsKt__IteratorsJVMKt.iterator(entries))) {
                    InputStream inputStream = zipFile2.getInputStream(zipEntry);
                    try {
                        String str = destDirectory + File.separator + zipEntry.getName();
                        if (!zipEntry.isDirectory()) {
                            ZipUtil zipUtil = INSTANCE;
                            Intrinsics.checkNotNull(inputStream);
                            zipUtil.extractFile(inputStream, str);
                        } else {
                            new File(str).mkdir();
                        }
                        CloseableKt.closeFinally(inputStream, null);
                    } finally {
                    }
                }
                CloseableKt.closeFinally(zipFile2, null);
                return true;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(zipFile2, th);
                    throw th2;
                }
            }
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{3775103609624972184L, 7367316214661110406L, -3736972489779457946L}).toString();
            new ObfuscatedString(new long[]{1065749396101719754L, -5258674107533257764L, 4297697227975395715L, 759503700299122172L}).toString();
            return false;
        }
    }

    public final boolean zipFromFolder(@NotNull String folderPath, @NotNull String outputZipFilePath) {
        File[] listFiles;
        Intrinsics.checkNotNullParameter(folderPath, new ObfuscatedString(new long[]{5604678931054215932L, 6388733681703322563L, -4792753762468762153L}).toString());
        Intrinsics.checkNotNullParameter(outputZipFilePath, new ObfuscatedString(new long[]{315408965098410704L, -3905615791350490152L, -5489981021856085063L, 4121536889356599696L}).toString());
        byte[] bArr = new byte[4096];
        try {
            if (folderPath.length() != 0 && outputZipFilePath.length() != 0) {
                ArrayList<String> arrayList = new ArrayList();
                File file = new File(folderPath);
                if (file.isDirectory() && (listFiles = file.listFiles()) != null) {
                    for (File file2 : listFiles) {
                        if (file2.isFile()) {
                            arrayList.add(file2.getAbsolutePath());
                        }
                    }
                }
                if (arrayList.isEmpty()) {
                    return false;
                }
                ZipOutputStream zipOutputStream = new ZipOutputStream(new FileOutputStream(outputZipFilePath));
                for (String str : arrayList) {
                    zipOutputStream.putNextEntry(new ZipEntry(new File(str).getName()));
                    FileInputStream fileInputStream = new FileInputStream(str);
                    while (true) {
                        int read = fileInputStream.read(bArr);
                        if (read > 0) {
                            zipOutputStream.write(bArr, 0, read);
                        }
                    }
                    fileInputStream.close();
                }
                zipOutputStream.closeEntry();
                zipOutputStream.close();
                return true;
            }
            return false;
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{-8913341703648202374L, -1523158233747155296L, -6901276274079326585L}).toString();
            new ObfuscatedString(new long[]{5169370282280128531L, 4356573698873388257L, -3008549693782007942L, -4076269223534718319L}).toString();
            return false;
        }
    }
}
