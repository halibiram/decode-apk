package androidx.room;

import android.annotation.SuppressLint;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.LiveData;
import androidx.room.InvalidationTracker;
import androidx.room.RoomTrackingLiveData;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0001\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B=\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\n\u0012\u000e\u0010\u000b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\r0\f¢\u0006\u0002\u0010\u000eJ\b\u0010+\u001a\u00020,H\u0014J\b\u0010-\u001a\u00020,H\u0014R\u0019\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\n¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0011\u0010\u0019\u001a\u00020\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0014R\u0011\u0010\u001b\u001a\u00020\u001c¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0011\u0010\u001f\u001a\u00020 ¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0011\u0010#\u001a\u00020$8F¢\u0006\u0006\u001a\u0004\b%\u0010&R\u0011\u0010'\u001a\u00020\u001c¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\u001eR\u0011\u0010)\u001a\u00020\u0012¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\u0014¨\u0006."}, d2 = {"Landroidx/room/RoomTrackingLiveData;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/LiveData;", "database", "Landroidx/room/RoomDatabase;", "container", "Landroidx/room/InvalidationLiveDataContainer;", "inTransaction", "", "computeFunction", "Ljava/util/concurrent/Callable;", "tableNames", "", "", "(Landroidx/room/RoomDatabase;Landroidx/room/InvalidationLiveDataContainer;ZLjava/util/concurrent/Callable;[Ljava/lang/String;)V", "getComputeFunction", "()Ljava/util/concurrent/Callable;", "computing", "Ljava/util/concurrent/atomic/AtomicBoolean;", "getComputing", "()Ljava/util/concurrent/atomic/AtomicBoolean;", "getDatabase", "()Landroidx/room/RoomDatabase;", "getInTransaction", "()Z", "invalid", "getInvalid", "invalidationRunnable", "Ljava/lang/Runnable;", "getInvalidationRunnable", "()Ljava/lang/Runnable;", "observer", "Landroidx/room/InvalidationTracker$Observer;", "getObserver", "()Landroidx/room/InvalidationTracker$Observer;", "queryExecutor", "Ljava/util/concurrent/Executor;", "getQueryExecutor", "()Ljava/util/concurrent/Executor;", "refreshRunnable", "getRefreshRunnable", "registeredObserver", "getRegisteredObserver", "onActive", "", "onInactive", "room-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SuppressLint({"RestrictedApi"})
/* loaded from: classes.dex */
public final class RoomTrackingLiveData<T> extends LiveData<T> {

    @NotNull
    private final Callable<T> computeFunction;

    @NotNull
    private final AtomicBoolean computing;

    @NotNull
    private final InvalidationLiveDataContainer container;

    @NotNull
    private final RoomDatabase database;
    private final boolean inTransaction;

    @NotNull
    private final AtomicBoolean invalid;

    @NotNull
    private final Runnable invalidationRunnable;

    @NotNull
    private final InvalidationTracker.Observer observer;

    @NotNull
    private final Runnable refreshRunnable;

    @NotNull
    private final AtomicBoolean registeredObserver;

    public RoomTrackingLiveData(@NotNull RoomDatabase database, @NotNull InvalidationLiveDataContainer container, boolean z, @NotNull Callable<T> computeFunction, @NotNull final String[] tableNames) {
        Intrinsics.checkNotNullParameter(database, "database");
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(computeFunction, "computeFunction");
        Intrinsics.checkNotNullParameter(tableNames, "tableNames");
        this.database = database;
        this.container = container;
        this.inTransaction = z;
        this.computeFunction = computeFunction;
        this.observer = new InvalidationTracker.Observer(tableNames) { // from class: androidx.room.RoomTrackingLiveData$observer$1
            @Override // androidx.room.InvalidationTracker.Observer
            public void onInvalidated(@NotNull Set<String> tables) {
                Intrinsics.checkNotNullParameter(tables, "tables");
                ArchTaskExecutor.getInstance().executeOnMainThread(this.getInvalidationRunnable());
            }
        };
        this.invalid = new AtomicBoolean(true);
        final int i = 0;
        this.computing = new AtomicBoolean(false);
        this.registeredObserver = new AtomicBoolean(false);
        this.refreshRunnable = new Runnable(this) { // from class: 땋듐될딸땠딨되뒬뒐뒹듬둣딝듰땡딹뎨땐뎽딤땪땰뒐땄땲땵둔됐딐땯든땫딌딐땩돼땧땄돛됩뒛땻땬뒋돴돸뒘땳땨딐뒐도됐뒘딤됐둬듻뎸딁뎨듨듟됐땰뒘됴뎽땲돴뒻땯듽듻됨돝뒨뒾드뎠딌땠둠땐땐뒀돸든돤둑뒋뎽땫뒼땅돼땣딞돠뒤땨둑땀된땸듐뒵뒨됫듨땭됨뒀듼뒐듟뒋땍뒀뎻드딻땣딀뎠땟딌땍땻땰

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ RoomTrackingLiveData f5394x3271d0aa;

            {
                this.f5394x3271d0aa = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i) {
                    case 0:
                        RoomTrackingLiveData.refreshRunnable$lambda$0(this.f5394x3271d0aa);
                        return;
                    default:
                        RoomTrackingLiveData.invalidationRunnable$lambda$1(this.f5394x3271d0aa);
                        return;
                }
            }
        };
        final int i2 = 1;
        this.invalidationRunnable = new Runnable(this) { // from class: 땋듐될딸땠딨되뒬뒐뒹듬둣딝듰땡딹뎨땐뎽딤땪땰뒐땄땲땵둔됐딐땯든땫딌딐땩돼땧땄돛됩뒛땻땬뒋돴돸뒘땳땨딐뒐도됐뒘딤됐둬듻뎸딁뎨듨듟됐땰뒘됴뎽땲돴뒻땯듽듻됨돝뒨뒾드뎠딌땠둠땐땐뒀돸든돤둑뒋뎽땫뒼땅돼땣딞돠뒤땨둑땀된땸듐뒵뒨됫듨땭됨뒀듼뒐듟뒋땍뒀뎻드딻땣딀뎠땟딌땍땻땰

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ RoomTrackingLiveData f5394x3271d0aa;

            {
                this.f5394x3271d0aa = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i2) {
                    case 0:
                        RoomTrackingLiveData.refreshRunnable$lambda$0(this.f5394x3271d0aa);
                        return;
                    default:
                        RoomTrackingLiveData.invalidationRunnable$lambda$1(this.f5394x3271d0aa);
                        return;
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invalidationRunnable$lambda$1(RoomTrackingLiveData this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        boolean hasActiveObservers = this$0.hasActiveObservers();
        if (this$0.invalid.compareAndSet(false, true) && hasActiveObservers) {
            this$0.getQueryExecutor().execute(this$0.refreshRunnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void refreshRunnable$lambda$0(RoomTrackingLiveData this$0) {
        boolean z;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.registeredObserver.compareAndSet(false, true)) {
            this$0.database.getInvalidationTracker().addWeakObserver(this$0.observer);
        }
        do {
            if (this$0.computing.compareAndSet(false, true)) {
                T t = null;
                z = false;
                while (this$0.invalid.compareAndSet(true, false)) {
                    try {
                        try {
                            t = this$0.computeFunction.call();
                            z = true;
                        } catch (Exception e) {
                            throw new RuntimeException("Exception while computing database live data.", e);
                        }
                    } finally {
                        this$0.computing.set(false);
                    }
                }
                if (z) {
                    this$0.postValue(t);
                }
            } else {
                z = false;
            }
            if (!z) {
                return;
            }
        } while (this$0.invalid.get());
    }

    @NotNull
    public final Callable<T> getComputeFunction() {
        return this.computeFunction;
    }

    @NotNull
    public final AtomicBoolean getComputing() {
        return this.computing;
    }

    @NotNull
    public final RoomDatabase getDatabase() {
        return this.database;
    }

    public final boolean getInTransaction() {
        return this.inTransaction;
    }

    @NotNull
    public final AtomicBoolean getInvalid() {
        return this.invalid;
    }

    @NotNull
    public final Runnable getInvalidationRunnable() {
        return this.invalidationRunnable;
    }

    @NotNull
    public final InvalidationTracker.Observer getObserver() {
        return this.observer;
    }

    @NotNull
    public final Executor getQueryExecutor() {
        if (this.inTransaction) {
            return this.database.getTransactionExecutor();
        }
        return this.database.getQueryExecutor();
    }

    @NotNull
    public final Runnable getRefreshRunnable() {
        return this.refreshRunnable;
    }

    @NotNull
    public final AtomicBoolean getRegisteredObserver() {
        return this.registeredObserver;
    }

    @Override // androidx.lifecycle.LiveData
    public void onActive() {
        super.onActive();
        InvalidationLiveDataContainer invalidationLiveDataContainer = this.container;
        Intrinsics.checkNotNull(this, "null cannot be cast to non-null type androidx.lifecycle.LiveData<kotlin.Any>");
        invalidationLiveDataContainer.onActive(this);
        getQueryExecutor().execute(this.refreshRunnable);
    }

    @Override // androidx.lifecycle.LiveData
    public void onInactive() {
        super.onInactive();
        InvalidationLiveDataContainer invalidationLiveDataContainer = this.container;
        Intrinsics.checkNotNull(this, "null cannot be cast to non-null type androidx.lifecycle.LiveData<kotlin.Any>");
        invalidationLiveDataContainer.onInactive(this);
    }
}
