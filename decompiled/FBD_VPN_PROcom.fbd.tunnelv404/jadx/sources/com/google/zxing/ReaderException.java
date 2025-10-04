package com.google.zxing;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes3.dex */
public abstract class ReaderException extends Exception {
    protected static final StackTraceElement[] NO_TRACE;
    protected static boolean isStackTrace;

    static {
        boolean z;
        if (System.getProperty(new ObfuscatedString(new long[]{-1701354290520968581L, -7213914853384598807L, 1309083344092621322L, 7711539656937421906L}).toString()) != null) {
            z = true;
        } else {
            z = false;
        }
        isStackTrace = z;
        NO_TRACE = new StackTraceElement[0];
    }

    public ReaderException() {
    }

    public static void setStackTrace(boolean z) {
        isStackTrace = z;
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable fillInStackTrace() {
        return null;
    }

    public ReaderException(Throwable th) {
        super(th);
    }
}
