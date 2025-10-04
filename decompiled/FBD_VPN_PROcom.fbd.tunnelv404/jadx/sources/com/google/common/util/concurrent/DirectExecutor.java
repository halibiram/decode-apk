package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Executor;

@ElementTypesAreNonnullByDefault
@GwtCompatible
/* loaded from: classes2.dex */
enum DirectExecutor implements Executor {
    INSTANCE;

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        runnable.run();
    }

    @Override // java.lang.Enum
    public String toString() {
        return new ObfuscatedString(new long[]{8697271236753733032L, -6093150212837425773L, 8163822573103681976L, -8856276804254851849L, -6779907928839369422L}).toString();
    }
}
