package com.google.zxing;

/* loaded from: classes3.dex */
public final class NotFoundException extends ReaderException {
    private static final NotFoundException INSTANCE;

    static {
        NotFoundException notFoundException = new NotFoundException();
        INSTANCE = notFoundException;
        notFoundException.setStackTrace(ReaderException.NO_TRACE);
    }

    private NotFoundException() {
    }

    public static NotFoundException getNotFoundInstance() {
        if (ReaderException.isStackTrace) {
            return new NotFoundException();
        }
        return INSTANCE;
    }
}
