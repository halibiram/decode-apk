package com.google.common.util.concurrent.internal;

/* loaded from: classes2.dex */
public final class InternalFutures {
    private InternalFutures() {
    }

    public static Throwable tryInternalFastPathGetFailure(InternalFutureFailureAccess internalFutureFailureAccess) {
        return internalFutureFailureAccess.tryInternalFastPathGetFailure();
    }
}
