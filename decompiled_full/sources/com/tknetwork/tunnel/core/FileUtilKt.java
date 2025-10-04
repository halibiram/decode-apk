package com.tknetwork.tunnel.core;

import android.content.Context;
import android.net.Uri;
import com.panda912.muddy.ObfuscatedString;
import com.tknetwork.tunnel.utils.c_12;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import kotlin.Metadata;
import kotlin.io.CloseableKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0007J \u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0005H\u0007¨\u0006\u000f"}, d2 = {"Lcom/tknetwork/tunnel/core/FileUtilKt;", "", "<init>", "()V", "readFromFile", "", "context", "Landroid/content/Context;", "uri", "Landroid/net/Uri;", "writeToFile", "", "path", "filename", "data", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class FileUtilKt {

    @NotNull
    public static final FileUtilKt INSTANCE = new FileUtilKt();

    private FileUtilKt() {
    }

    @JvmStatic
    @Nullable
    public static final String readFromFile(@NotNull Context context, @NotNull Uri uri) {
        Intrinsics.checkNotNullParameter(context, new ObfuscatedString(new long[]{-4500426427740659181L, 7382930479996911887L}).toString());
        Intrinsics.checkNotNullParameter(uri, new ObfuscatedString(new long[]{-4347087435213543810L, 362846940800293362L}).toString());
        try {
            InputStreamReader inputStreamReader = new InputStreamReader(context.getContentResolver().openInputStream(uri));
            try {
                BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
                StringBuilder sb = new StringBuilder();
                char[] cArr = new char[4096];
                while (true) {
                    int read = bufferedReader.read(cArr, 0, 4096);
                    if (read <= 0) {
                        String sb2 = sb.toString();
                        CloseableKt.closeFinally(inputStreamReader, null);
                        return sb2;
                    }
                    sb.append(cArr, 0, read);
                    Intrinsics.checkNotNullExpressionValue(sb, new ObfuscatedString(new long[]{1224653833393907782L, -902014135062644957L, 902095167593365984L}).toString());
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(inputStreamReader, th);
                    throw th2;
                }
            }
        } catch (IOException unused) {
            return null;
        }
    }

    @JvmStatic
    public static final void writeToFile(@NotNull String path, @NotNull String filename, @NotNull String data) {
        Intrinsics.checkNotNullParameter(path, new ObfuscatedString(new long[]{-5772109884805993524L, -794980938772827684L}).toString());
        Intrinsics.checkNotNullParameter(filename, new ObfuscatedString(new long[]{4689346554133265490L, -3654426228241581965L}).toString());
        Intrinsics.checkNotNullParameter(data, new ObfuscatedString(new long[]{2495749142409411205L, -1277461283021849397L}).toString());
        try {
            File file = new File(path, filename + ".cloud");
            if (file.exists()) {
                file.delete();
            }
            String parse = c_12.Parser.parse(data);
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            Intrinsics.checkNotNull(parse);
            byte[] bytes = parse.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, new ObfuscatedString(new long[]{5609411935270013510L, -6128268128289258544L, 1396714843222608107L}).toString());
            fileOutputStream.write(bytes);
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
