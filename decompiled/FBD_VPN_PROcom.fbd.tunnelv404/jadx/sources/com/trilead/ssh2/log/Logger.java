package com.trilead.ssh2.log;

import com.panda912.muddy.ObfuscatedString;
import com.trilead.ssh2.DebugLogger;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes3.dex */
public class Logger {
    public static boolean enabled = false;
    public static DebugLogger logger;
    private String className;

    public Logger(Class<?> cls) {
        this.className = cls.getName();
    }

    public static Logger getLogger(Class<?> cls) {
        return new Logger(cls);
    }

    public final boolean isEnabled() {
        return enabled;
    }

    public final void log(int i, String str, Throwable th) {
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(str);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{639463821406407059L, -8659497819545365329L}).toString());
        m3341xc20437a5.append(th);
        log(i, m3341xc20437a5.toString());
    }

    public final void log(int i, String str) {
        DebugLogger debugLogger;
        if (enabled && (debugLogger = logger) != null) {
            debugLogger.log(i, this.className, str);
        }
    }
}
