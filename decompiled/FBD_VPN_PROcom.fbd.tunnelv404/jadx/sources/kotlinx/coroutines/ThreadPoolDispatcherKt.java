package kotlinx.coroutines;

import defpackage.AbstractC0749x8313616e;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {}, d2 = {}, k = 4, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ThreadPoolDispatcherKt {
    @DelicateCoroutinesApi
    @NotNull
    public static final ExecutorCoroutineDispatcher newFixedThreadPoolContext(final int i, @NotNull final String str) {
        if (i >= 1) {
            final AtomicInteger atomicInteger = new AtomicInteger();
            return ExecutorsKt.from(Executors.unconfigurableExecutorService(Executors.newScheduledThreadPool(i, new ThreadFactory() { // from class: 땪딟듟돝되땐돠땅됐땵딎딜될듟듐됴됩뒷딄땧듰땥듔듨땟땀뒉둠되돠딸둠뎰됴둠둣둘뒘뒈되둘듸듬딝듸딝딠둡딀든땯땱뎠둘된돝된땃땥땨뒋돼됐둣듨땣딁딨땬돵딞딟딟뒻뎽땵듽돤딃딎뒈됐뒛딌들따둥듟뒹땱뒼돨딄땬딸돛뎻땨땦듨드되뒙딽뎽듌뎡땩딟딹돛땠된돵땩딠땭돠땅듌돼뒨디땡됫뒵뎽됴땹뒼
                @Override // java.util.concurrent.ThreadFactory
                public final Thread newThread(Runnable runnable) {
                    int i2 = i;
                    String str2 = str;
                    if (i2 != 1) {
                        str2 = str2 + '-' + atomicInteger.incrementAndGet();
                    }
                    Thread thread = new Thread(runnable, str2);
                    thread.setDaemon(true);
                    return thread;
                }
            })));
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3330x95f25580(i, "Expected at least one thread, but ", " specified").toString());
    }

    @DelicateCoroutinesApi
    @ExperimentalCoroutinesApi
    @NotNull
    public static final ExecutorCoroutineDispatcher newSingleThreadContext(@NotNull String str) {
        return newFixedThreadPoolContext(1, str);
    }
}
