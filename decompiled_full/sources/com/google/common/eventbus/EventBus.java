package com.google.common.eventbus;

import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.MoreExecutors;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC1320xaf50c7e8;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;

@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public class EventBus {
    private static final Logger logger = Logger.getLogger(EventBus.class.getName());
    private final Dispatcher dispatcher;
    private final SubscriberExceptionHandler exceptionHandler;
    private final Executor executor;
    private final String identifier;
    private final SubscriberRegistry subscribers;

    /* loaded from: classes2.dex */
    public static final class LoggingHandler implements SubscriberExceptionHandler {
        static final LoggingHandler INSTANCE = new LoggingHandler();

        private static Logger logger(SubscriberExceptionContext subscriberExceptionContext) {
            String name = EventBus.class.getName();
            String identifier = subscriberExceptionContext.getEventBus().identifier();
            StringBuilder m2938x1aebc6d9 = AbstractC0362x4440ab85.m2938x1aebc6d9(AbstractC1320xaf50c7e8.m4356x1378447b(name.length() + 1, identifier), name);
            m2938x1aebc6d9.append(new ObfuscatedString(new long[]{-8960704411104674487L, 1479063780949483226L}).toString());
            m2938x1aebc6d9.append(identifier);
            return Logger.getLogger(m2938x1aebc6d9.toString());
        }

        private static String message(SubscriberExceptionContext subscriberExceptionContext) {
            Method subscriberMethod = subscriberExceptionContext.getSubscriberMethod();
            String name = subscriberMethod.getName();
            String name2 = subscriberMethod.getParameterTypes()[0].getName();
            String valueOf = String.valueOf(subscriberExceptionContext.getSubscriber());
            String valueOf2 = String.valueOf(subscriberExceptionContext.getEvent());
            StringBuilder sb = new StringBuilder(valueOf2.length() + valueOf.length() + name2.length() + AbstractC1320xaf50c7e8.m4356x1378447b(80, name));
            sb.append(new ObfuscatedString(new long[]{-459348187662837770L, 7150964205853366093L, 3772085944382156686L, 6783380102091097689L, -7996142155249765188L, -2849012123624644499L}).toString());
            sb.append(name);
            sb.append('(');
            sb.append(name2);
            sb.append(')');
            sb.append(new ObfuscatedString(new long[]{-6739543648899301870L, 4814171865152263557L, 6654864626384072145L}).toString());
            sb.append(valueOf);
            return AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-169082479919521531L, -5977289929837478408L, 8228171214770402903L, -4652218188503766342L, -3283564144886253168L}), sb, valueOf2);
        }

        @Override // com.google.common.eventbus.SubscriberExceptionHandler
        public void handleException(Throwable th, SubscriberExceptionContext subscriberExceptionContext) {
            Logger logger = logger(subscriberExceptionContext);
            Level level = Level.SEVERE;
            if (logger.isLoggable(level)) {
                logger.log(level, message(subscriberExceptionContext), th);
            }
        }
    }

    public EventBus() {
        this(new ObfuscatedString(new long[]{-2092767832080338869L, -8983855984964806502L}).toString());
    }

    public final Executor executor() {
        return this.executor;
    }

    public void handleSubscriberException(Throwable th, SubscriberExceptionContext subscriberExceptionContext) {
        Preconditions.checkNotNull(th);
        Preconditions.checkNotNull(subscriberExceptionContext);
        try {
            this.exceptionHandler.handleException(th, subscriberExceptionContext);
        } catch (Throwable th2) {
            logger.log(Level.SEVERE, String.format(Locale.ROOT, new ObfuscatedString(new long[]{-3987756373826198885L, -7641979862651272765L, -7585423245258381479L, 1262923379212045359L, -5218639071324827496L, 1974563071928975725L, 6735318292270729682L}).toString(), th2, th), th2);
        }
    }

    public final String identifier() {
        return this.identifier;
    }

    public void post(Object obj) {
        Iterator<Subscriber> subscribers = this.subscribers.getSubscribers(obj);
        if (subscribers.hasNext()) {
            this.dispatcher.dispatch(obj, subscribers);
        } else if (!(obj instanceof DeadEvent)) {
            post(new DeadEvent(this, obj));
        }
    }

    public void register(Object obj) {
        this.subscribers.register(obj);
    }

    public String toString() {
        return MoreObjects.toStringHelper(this).addValue(this.identifier).toString();
    }

    public void unregister(Object obj) {
        this.subscribers.unregister(obj);
    }

    public EventBus(String str) {
        this(str, MoreExecutors.directExecutor(), Dispatcher.perThreadDispatchQueue(), LoggingHandler.INSTANCE);
    }

    public EventBus(SubscriberExceptionHandler subscriberExceptionHandler) {
        this(new ObfuscatedString(new long[]{2168572671676773812L, -6047627867489080051L}).toString(), MoreExecutors.directExecutor(), Dispatcher.perThreadDispatchQueue(), subscriberExceptionHandler);
    }

    public EventBus(String str, Executor executor, Dispatcher dispatcher, SubscriberExceptionHandler subscriberExceptionHandler) {
        this.subscribers = new SubscriberRegistry(this);
        this.identifier = (String) Preconditions.checkNotNull(str);
        this.executor = (Executor) Preconditions.checkNotNull(executor);
        this.dispatcher = (Dispatcher) Preconditions.checkNotNull(dispatcher);
        this.exceptionHandler = (SubscriberExceptionHandler) Preconditions.checkNotNull(subscriberExceptionHandler);
    }
}
