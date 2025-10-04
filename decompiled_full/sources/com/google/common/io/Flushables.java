package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.panda912.muddy.ObfuscatedString;
import java.io.Flushable;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

@ElementTypesAreNonnullByDefault
@Beta
@GwtIncompatible
/* loaded from: classes2.dex */
public final class Flushables {
    private static final Logger logger = Logger.getLogger(Flushables.class.getName());

    private Flushables() {
    }

    public static void flush(Flushable flushable, boolean z) {
        try {
            flushable.flush();
        } catch (IOException e) {
            if (z) {
                logger.log(Level.WARNING, new ObfuscatedString(new long[]{-1124077568592086954L, 2346210162943944087L, 1261374349969980509L, 2827380261133347401L, -19225909946353227L, -6630450999766878895L, -1617929584918531776L}).toString(), (Throwable) e);
                return;
            }
            throw e;
        }
    }

    public static void flushQuietly(Flushable flushable) {
        try {
            flush(flushable, true);
        } catch (IOException e) {
            logger.log(Level.SEVERE, new ObfuscatedString(new long[]{-745267603238762803L, -7072005035768886244L, -2727234612859151297L, 4414941334647753704L, -5094592930806676137L, -7504886964882073229L}).toString(), (Throwable) e);
        }
    }
}
