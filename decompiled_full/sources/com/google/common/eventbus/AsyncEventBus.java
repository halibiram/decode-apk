package com.google.common.eventbus;

import com.google.common.eventbus.EventBus;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Executor;

@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public class AsyncEventBus extends EventBus {
    public AsyncEventBus(String str, Executor executor) {
        super(str, executor, Dispatcher.legacyAsync(), EventBus.LoggingHandler.INSTANCE);
    }

    public AsyncEventBus(Executor executor, SubscriberExceptionHandler subscriberExceptionHandler) {
        super(new ObfuscatedString(new long[]{-9060513420979644632L, -5748182129420457116L}).toString(), executor, Dispatcher.legacyAsync(), subscriberExceptionHandler);
    }

    public AsyncEventBus(Executor executor) {
        super(new ObfuscatedString(new long[]{1970212051518784784L, 7943209795208332841L}).toString(), executor, Dispatcher.legacyAsync(), EventBus.LoggingHandler.INSTANCE);
    }
}
