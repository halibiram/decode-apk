package androidx.work;

import android.content.Context;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0001J \u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fR\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Landroidx/work/DelegatingWorkerFactory;", "Landroidx/work/WorkerFactory;", "()V", "factories", "", "addFactory", "", "workerFactory", "createWorker", "Landroidx/work/ListenableWorker;", "appContext", "Landroid/content/Context;", "workerClassName", "", "workerParameters", "Landroidx/work/WorkerParameters;", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public class DelegatingWorkerFactory extends WorkerFactory {

    @NotNull
    private final List<WorkerFactory> factories = new CopyOnWriteArrayList();

    public final void addFactory(@NotNull WorkerFactory workerFactory) {
        Intrinsics.checkNotNullParameter(workerFactory, "workerFactory");
        this.factories.add(workerFactory);
    }

    @Override // androidx.work.WorkerFactory
    @Nullable
    public final ListenableWorker createWorker(@NotNull Context appContext, @NotNull String workerClassName, @NotNull WorkerParameters workerParameters) {
        String str;
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Intrinsics.checkNotNullParameter(workerClassName, "workerClassName");
        Intrinsics.checkNotNullParameter(workerParameters, "workerParameters");
        Iterator<T> it = this.factories.iterator();
        while (it.hasNext()) {
            try {
                ListenableWorker createWorker = ((WorkerFactory) it.next()).createWorker(appContext, workerClassName, workerParameters);
                if (createWorker != null) {
                    return createWorker;
                }
            } catch (Throwable th) {
                Logger logger = Logger.get();
                str = DelegatingWorkerFactoryKt.TAG;
                logger.error(str, "Unable to instantiate a ListenableWorker (" + workerClassName + ')', th);
                throw th;
            }
        }
        return null;
    }
}
