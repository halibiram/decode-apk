package com.google.common.eventbus;

import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.j2objc.annotations.Weak;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Executor;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public class Subscriber {

    @Weak
    private EventBus bus;
    private final Executor executor;
    private final Method method;

    @VisibleForTesting
    final Object target;

    @VisibleForTesting
    /* loaded from: classes2.dex */
    public static final class SynchronizedSubscriber extends Subscriber {
        @Override // com.google.common.eventbus.Subscriber
        public void invokeSubscriberMethod(Object obj) {
            synchronized (this) {
                super.invokeSubscriberMethod(obj);
            }
        }

        private SynchronizedSubscriber(EventBus eventBus, Object obj, Method method) {
            super(eventBus, obj, method);
        }
    }

    private SubscriberExceptionContext context(Object obj) {
        return new SubscriberExceptionContext(this.bus, obj, this.target, this.method);
    }

    public static Subscriber create(EventBus eventBus, Object obj, Method method) {
        if (isDeclaredThreadSafe(method)) {
            return new Subscriber(eventBus, obj, method);
        }
        return new SynchronizedSubscriber(eventBus, obj, method);
    }

    private static boolean isDeclaredThreadSafe(Method method) {
        if (method.getAnnotation(AllowConcurrentEvents.class) != null) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dispatchEvent$0(Object obj) {
        try {
            invokeSubscriberMethod(obj);
        } catch (InvocationTargetException e) {
            this.bus.handleSubscriberException(e.getCause(), context(obj));
        }
    }

    public final void dispatchEvent(final Object obj) {
        this.executor.execute(new Runnable() { // from class: com.google.common.eventbus.뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸
            @Override // java.lang.Runnable
            public final void run() {
                this.lambda$dispatchEvent$0(obj);
            }
        });
    }

    public final boolean equals(@CheckForNull Object obj) {
        if (!(obj instanceof Subscriber)) {
            return false;
        }
        Subscriber subscriber = (Subscriber) obj;
        if (this.target != subscriber.target || !this.method.equals(subscriber.method)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return System.identityHashCode(this.target) + ((this.method.hashCode() + 31) * 31);
    }

    @VisibleForTesting
    public void invokeSubscriberMethod(Object obj) {
        try {
            this.method.invoke(this.target, Preconditions.checkNotNull(obj));
        } catch (IllegalAccessException e) {
            String valueOf = String.valueOf(obj);
            throw new Error(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{2808272258134056433L, 6082569216016330962L, 4901890419645670863L, 4552713111203757936L, -5374517385253110529L}), new StringBuilder(valueOf.length() + 28), valueOf), e);
        } catch (IllegalArgumentException e2) {
            String valueOf2 = String.valueOf(obj);
            throw new Error(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-2705506913452285417L, -36836722048433590L, -6486472633370979766L, 2749308800409819276L, -5657628361170185752L, 6319141175667467831L}), new StringBuilder(valueOf2.length() + 33), valueOf2), e2);
        } catch (InvocationTargetException e3) {
            if (e3.getCause() instanceof Error) {
                throw ((Error) e3.getCause());
            }
            throw e3;
        }
    }

    private Subscriber(EventBus eventBus, Object obj, Method method) {
        this.bus = eventBus;
        this.target = Preconditions.checkNotNull(obj);
        this.method = method;
        method.setAccessible(true);
        this.executor = eventBus.executor();
    }
}
