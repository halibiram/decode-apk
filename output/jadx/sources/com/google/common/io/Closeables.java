package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
@Beta
@GwtIncompatible
/* loaded from: classes2.dex */
public final class Closeables {

    @VisibleForTesting
    static final Logger logger = Logger.getLogger(Closeables.class.getName());

    private Closeables() {
    }

    public static void close(@CheckForNull Closeable closeable, boolean z) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (IOException e) {
            if (z) {
                logger.log(Level.WARNING, new ObfuscatedString(new long[]{6879403828248760288L, 6954338601029517005L, 5536110860211576525L, -806989397573790607L, 6247045250967800901L, 4875243786817268798L, 1791231471803494167L}).toString(), (Throwable) e);
                return;
            }
            throw e;
        }
    }

    public static void closeQuietly(@CheckForNull InputStream inputStream) {
        try {
            close(inputStream, true);
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    public static void closeQuietly(@CheckForNull Reader reader) {
        try {
            close(reader, true);
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
