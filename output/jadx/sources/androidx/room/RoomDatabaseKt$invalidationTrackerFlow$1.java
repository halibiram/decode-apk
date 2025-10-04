package androidx.room;

import androidx.room.InvalidationTracker;
import defpackage.AbstractC0892xc141c517;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\u0010\u0000\u001a\u00020\u0001*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;", "", ""}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.room.RoomDatabaseKt$invalidationTrackerFlow$1", f = "RoomDatabaseExt.kt", i = {}, l = {235}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class RoomDatabaseKt$invalidationTrackerFlow$1 extends SuspendLambda implements Function2<ProducerScope<? super Set<? extends String>>, Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $emitInitialState;
    final /* synthetic */ String[] $tables;
    final /* synthetic */ RoomDatabase $this_invalidationTrackerFlow;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RoomDatabaseKt$invalidationTrackerFlow$1(boolean z, RoomDatabase roomDatabase, String[] strArr, Continuation<? super RoomDatabaseKt$invalidationTrackerFlow$1> continuation) {
        super(2, continuation);
        this.$emitInitialState = z;
        this.$this_invalidationTrackerFlow = roomDatabase;
        this.$tables = strArr;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        RoomDatabaseKt$invalidationTrackerFlow$1 roomDatabaseKt$invalidationTrackerFlow$1 = new RoomDatabaseKt$invalidationTrackerFlow$1(this.$emitInitialState, this.$this_invalidationTrackerFlow, this.$tables, continuation);
        roomDatabaseKt$invalidationTrackerFlow$1.L$0 = obj;
        return roomDatabaseKt$invalidationTrackerFlow$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(ProducerScope<? super Set<? extends String>> producerScope, Continuation<? super Unit> continuation) {
        return invoke2((ProducerScope<? super Set<String>>) producerScope, continuation);
    }

    /* JADX WARN: Type inference failed for: r5v0, types: [androidx.room.RoomDatabaseKt$invalidationTrackerFlow$1$observer$1] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        ContinuationInterceptor queryDispatcher;
        Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            ResultKt.throwOnFailure(obj);
            final ProducerScope producerScope = (ProducerScope) this.L$0;
            final AtomicBoolean atomicBoolean = new AtomicBoolean(this.$emitInitialState);
            final String[] strArr = this.$tables;
            ?? r5 = new InvalidationTracker.Observer(strArr) { // from class: androidx.room.RoomDatabaseKt$invalidationTrackerFlow$1$observer$1
                @Override // androidx.room.InvalidationTracker.Observer
                public void onInvalidated(@NotNull Set<String> tables) {
                    if (atomicBoolean.get()) {
                        return;
                    }
                    producerScope.mo2254trySendJP2dKIU(tables);
                }
            };
            TransactionElement transactionElement = (TransactionElement) producerScope.getCoroutineContext().get(TransactionElement.INSTANCE);
            if (transactionElement == null || (queryDispatcher = transactionElement.getTransactionDispatcher()) == null) {
                queryDispatcher = CoroutinesRoomKt.getQueryDispatcher(this.$this_invalidationTrackerFlow);
            }
            final Job launch$default = BuildersKt.launch$default(producerScope, queryDispatcher, null, new RoomDatabaseKt$invalidationTrackerFlow$1$job$1(this.$this_invalidationTrackerFlow, r5, this.$emitInitialState, producerScope, this.$tables, atomicBoolean, null), 2, null);
            Function0<Unit> function0 = new Function0<Unit>() { // from class: androidx.room.RoomDatabaseKt$invalidationTrackerFlow$1.1
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
                    Job.DefaultImpls.cancel$default(Job.this, (CancellationException) null, 1, (Object) null);
                }
            };
            this.label = 1;
            if (ProduceKt.awaitClose(producerScope, function0, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return Unit.INSTANCE;
    }

    @Nullable
    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(@NotNull ProducerScope<? super Set<String>> producerScope, @Nullable Continuation<? super Unit> continuation) {
        return ((RoomDatabaseKt$invalidationTrackerFlow$1) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
