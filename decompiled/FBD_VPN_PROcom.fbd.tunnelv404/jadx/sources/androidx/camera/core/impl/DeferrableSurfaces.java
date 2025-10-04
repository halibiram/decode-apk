package androidx.camera.core.impl;

import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.DeferrableSurfaces;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.RunnableC0450xb2a4f6ac;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public final class DeferrableSurfaces {

    /* renamed from: androidx.camera.core.impl.DeferrableSurfaces$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements FutureCallback<List<Surface>> {
        final /* synthetic */ CallbackToFutureAdapter.Completer val$completer;
        final /* synthetic */ boolean val$removeNullSurfaces;

        public AnonymousClass1(boolean z, CallbackToFutureAdapter.Completer completer) {
            r1 = z;
            r2 = completer;
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onFailure(@NonNull Throwable th) {
            if (th instanceof TimeoutException) {
                r2.setException(th);
            } else {
                r2.set(Collections.emptyList());
            }
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onSuccess(@Nullable List<Surface> list) {
            Preconditions.checkNotNull(list);
            ArrayList arrayList = new ArrayList(list);
            if (r1) {
                arrayList.removeAll(Collections.singleton(null));
            }
            r2.set(arrayList);
        }
    }

    private DeferrableSurfaces() {
    }

    public static void decrementAll(@NonNull List<DeferrableSurface> list) {
        Iterator<DeferrableSurface> it = list.iterator();
        while (it.hasNext()) {
            it.next().decrementUseCount();
        }
    }

    public static void incrementAll(@NonNull List<DeferrableSurface> list) {
        if (!list.isEmpty()) {
            int i = 0;
            do {
                try {
                    list.get(i).incrementUseCount();
                    i++;
                } catch (DeferrableSurface.SurfaceClosedException e) {
                    for (int i2 = i - 1; i2 >= 0; i2--) {
                        list.get(i2).decrementUseCount();
                    }
                    throw e;
                }
            } while (i < list.size());
        }
    }

    public static /* synthetic */ Object lambda$surfaceListWithTimeout$1(ListenableFuture listenableFuture, Executor executor, boolean z, Collection collection, CallbackToFutureAdapter.Completer completer) {
        completer.addCancellationListener(new RunnableC0450xb2a4f6ac(listenableFuture, 14), executor);
        Futures.addCallback(listenableFuture, new FutureCallback<List<Surface>>() { // from class: androidx.camera.core.impl.DeferrableSurfaces.1
            final /* synthetic */ CallbackToFutureAdapter.Completer val$completer;
            final /* synthetic */ boolean val$removeNullSurfaces;

            public AnonymousClass1(boolean z2, CallbackToFutureAdapter.Completer completer2) {
                r1 = z2;
                r2 = completer2;
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onFailure(@NonNull Throwable th) {
                if (th instanceof TimeoutException) {
                    r2.setException(th);
                } else {
                    r2.set(Collections.emptyList());
                }
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onSuccess(@Nullable List<Surface> list) {
                Preconditions.checkNotNull(list);
                ArrayList arrayList = new ArrayList(list);
                if (r1) {
                    arrayList.removeAll(Collections.singleton(null));
                }
                r2.set(arrayList);
            }
        }, executor);
        return "surfaceList[" + collection + "]";
    }

    @NonNull
    public static ListenableFuture<List<Surface>> surfaceListWithTimeout(@NonNull final Collection<DeferrableSurface> collection, final boolean z, long j, @NonNull final Executor executor, @NonNull ScheduledExecutorService scheduledExecutorService) {
        ArrayList arrayList = new ArrayList();
        Iterator<DeferrableSurface> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(Futures.nonCancellationPropagating(it.next().getSurface()));
        }
        final ListenableFuture makeTimeoutFuture = Futures.makeTimeoutFuture(j, scheduledExecutorService, Futures.successfulAsList(arrayList));
        return CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: 뒉딸땲듸뎻뒻뒝듨딹듔딃딠땸뒀돵돼땰딝뎬될딌땳돛됩딨뒋드뒛뎰돶뒈돸됫땀됩뒵듽듨듰뒹뎸돼딌딹둠딟딜딝둣뒾됴듻돸딅듼뎨뒛되듰땱딜디땻땥뒹뒨땣돳돨딀뎽딞딎둥됴뒐땮뒛땮돵딹둔뒈듼땥든딅듸땐뒐돵뒾뎰돸딸땻뒋뒛땯돴땪뎠딎둘돵뒹듼뎸딻뎽뒋돷될딤뒵뒙듨땜드돸딠땥땅뒬듰딻뒨돤뒼뎬
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                Object lambda$surfaceListWithTimeout$1;
                lambda$surfaceListWithTimeout$1 = DeferrableSurfaces.lambda$surfaceListWithTimeout$1(ListenableFuture.this, executor, z, collection, completer);
                return lambda$surfaceListWithTimeout$1;
            }
        });
    }

    public static boolean tryIncrementAll(@NonNull List<DeferrableSurface> list) {
        try {
            incrementAll(list);
            return true;
        } catch (DeferrableSurface.SurfaceClosedException unused) {
            return false;
        }
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫 */
    public static /* synthetic */ void m266x3271d0aa(ListenableFuture listenableFuture) {
        listenableFuture.cancel(true);
    }
}
