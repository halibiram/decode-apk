package com.trilead.ssh2.util;

import java.io.Closeable;
import java.io.IOException;

/* loaded from: classes3.dex */
public class IOUtils {
    public static void closeQuietly(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException unused) {
        }
    }
}
