package androidx.work.impl.constraints;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import androidx.annotation.GuardedBy;
import androidx.annotation.RequiresApi;
import androidx.work.Logger;
import androidx.work.impl.constraints.ConstraintsState;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@RequiresApi(30)
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÃ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J4\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\t2\u0016\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005j\u0002`\bJ\u0018\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0014H\u0016R,\u0010\u0003\u001a\u001e\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005j\u0002`\b\u0012\u0004\u0012\u00020\t0\u00048\u0002X\u0083\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Landroidx/work/impl/constraints/SharedNetworkCallback;", "Landroid/net/ConnectivityManager$NetworkCallback;", "()V", "requests", "", "Lkotlin/Function1;", "Landroidx/work/impl/constraints/ConstraintsState;", "", "Landroidx/work/impl/constraints/OnConstraintState;", "Landroid/net/NetworkRequest;", "requestsLock", "", "addCallback", "Lkotlin/Function0;", "connManager", "Landroid/net/ConnectivityManager;", "networkRequest", "onConstraintState", "onCapabilitiesChanged", "network", "Landroid/net/Network;", "networkCapabilities", "Landroid/net/NetworkCapabilities;", "onLost", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nWorkConstraintsTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkConstraintsTracker.kt\nandroidx/work/impl/constraints/SharedNetworkCallback\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,315:1\n1#2:316\n1855#3,2:317\n1855#3,2:319\n*S KotlinDebug\n*F\n+ 1 WorkConstraintsTracker.kt\nandroidx/work/impl/constraints/SharedNetworkCallback\n*L\n272#1:317,2\n286#1:319,2\n*E\n"})
/* loaded from: classes.dex */
final class SharedNetworkCallback extends ConnectivityManager.NetworkCallback {

    @NotNull
    public static final SharedNetworkCallback INSTANCE = new SharedNetworkCallback();

    @NotNull
    private static final Object requestsLock = new Object();

    @GuardedBy("requestsLock")
    @NotNull
    private static final Map<Function1<ConstraintsState, Unit>, NetworkRequest> requests = new LinkedHashMap();

    private SharedNetworkCallback() {
    }

    @NotNull
    public final Function0<Unit> addCallback(@NotNull final ConnectivityManager connManager, @NotNull NetworkRequest networkRequest, @NotNull final Function1<? super ConstraintsState, Unit> onConstraintState) {
        String str;
        Intrinsics.checkNotNullParameter(connManager, "connManager");
        Intrinsics.checkNotNullParameter(networkRequest, "networkRequest");
        Intrinsics.checkNotNullParameter(onConstraintState, "onConstraintState");
        synchronized (requestsLock) {
            Map<Function1<ConstraintsState, Unit>, NetworkRequest> map = requests;
            boolean isEmpty = map.isEmpty();
            map.put(onConstraintState, networkRequest);
            if (isEmpty) {
                Logger logger = Logger.get();
                str = WorkConstraintsTrackerKt.TAG;
                logger.debug(str, "NetworkRequestConstraintController register shared callback");
                connManager.registerDefaultNetworkCallback(this);
            }
        }
        return new Function0<Unit>() { // from class: androidx.work.impl.constraints.SharedNetworkCallback$addCallback$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                Object obj;
                Map map2;
                Map map3;
                String str2;
                obj = SharedNetworkCallback.requestsLock;
                Function1<ConstraintsState, Unit> function1 = onConstraintState;
                ConnectivityManager connectivityManager = connManager;
                SharedNetworkCallback sharedNetworkCallback = this;
                synchronized (obj) {
                    map2 = SharedNetworkCallback.requests;
                    map2.remove(function1);
                    map3 = SharedNetworkCallback.requests;
                    if (map3.isEmpty()) {
                        Logger logger2 = Logger.get();
                        str2 = WorkConstraintsTrackerKt.TAG;
                        logger2.debug(str2, "NetworkRequestConstraintController unregister shared callback");
                        connectivityManager.unregisterNetworkCallback(sharedNetworkCallback);
                    }
                }
            }
        };
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onCapabilitiesChanged(@NotNull Network network, @NotNull NetworkCapabilities networkCapabilities) {
        String str;
        List<Map.Entry> list;
        boolean canBeSatisfiedBy;
        ConstraintsState constraintsNotMet;
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(networkCapabilities, "networkCapabilities");
        Logger logger = Logger.get();
        str = WorkConstraintsTrackerKt.TAG;
        logger.debug(str, "NetworkRequestConstraintController onCapabilitiesChanged callback");
        synchronized (requestsLock) {
            list = CollectionsKt___CollectionsKt.toList(requests.entrySet());
        }
        for (Map.Entry entry : list) {
            Function1 function1 = (Function1) entry.getKey();
            canBeSatisfiedBy = ((NetworkRequest) entry.getValue()).canBeSatisfiedBy(networkCapabilities);
            if (canBeSatisfiedBy) {
                constraintsNotMet = ConstraintsState.ConstraintsMet.INSTANCE;
            } else {
                constraintsNotMet = new ConstraintsState.ConstraintsNotMet(7);
            }
            function1.invoke(constraintsNotMet);
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLost(@NotNull Network network) {
        String str;
        List list;
        Intrinsics.checkNotNullParameter(network, "network");
        Logger logger = Logger.get();
        str = WorkConstraintsTrackerKt.TAG;
        logger.debug(str, "NetworkRequestConstraintController onLost callback");
        synchronized (requestsLock) {
            list = CollectionsKt___CollectionsKt.toList(requests.keySet());
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((Function1) it.next()).invoke(new ConstraintsState.ConstraintsNotMet(7));
        }
    }
}
