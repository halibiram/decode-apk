package androidx.work.impl.workers;

import androidx.exifinterface.media.ExifInterface;
import androidx.work.Logger;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.constraints.WorkConstraintsTracker;
import androidx.work.impl.model.WorkSpec;
import defpackage.AbstractC0892xc141c517;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0082@¢\u0006\u0002\u0010\b\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"ARGUMENT_CLASS_NAME", "", "TAG", "awaitConstraintsNotMet", "", "Landroidx/work/impl/constraints/WorkConstraintsTracker;", "workSpec", "Landroidx/work/impl/model/WorkSpec;", "(Landroidx/work/impl/constraints/WorkConstraintsTracker;Landroidx/work/impl/model/WorkSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "work-runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nConstraintTrackingWorker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConstraintTrackingWorker.kt\nandroidx/work/impl/workers/ConstraintTrackingWorkerKt\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,168:1\n36#2:169\n21#2:170\n23#2:174\n50#3:171\n55#3:173\n107#4:172\n*S KotlinDebug\n*F\n+ 1 ConstraintTrackingWorker.kt\nandroidx/work/impl/workers/ConstraintTrackingWorkerKt\n*L\n159#1:169\n159#1:170\n159#1:174\n159#1:171\n159#1:173\n159#1:172\n*E\n"})
/* loaded from: classes.dex */
public final class ConstraintTrackingWorkerKt {

    @NotNull
    public static final String ARGUMENT_CLASS_NAME = "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME";

    @NotNull
    private static final String TAG;

    static {
        String tagWithPrefix = Logger.tagWithPrefix("ConstraintTrkngWrkr");
        Intrinsics.checkNotNullExpressionValue(tagWithPrefix, "tagWithPrefix(\"ConstraintTrkngWrkr\")");
        TAG = tagWithPrefix;
    }

    public static final /* synthetic */ String access$getTAG$p() {
        return TAG;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object awaitConstraintsNotMet(WorkConstraintsTracker workConstraintsTracker, WorkSpec workSpec, Continuation<? super Integer> continuation) {
        ConstraintTrackingWorkerKt$awaitConstraintsNotMet$1 constraintTrackingWorkerKt$awaitConstraintsNotMet$1;
        int i;
        if (continuation instanceof ConstraintTrackingWorkerKt$awaitConstraintsNotMet$1) {
            constraintTrackingWorkerKt$awaitConstraintsNotMet$1 = (ConstraintTrackingWorkerKt$awaitConstraintsNotMet$1) continuation;
            int i2 = constraintTrackingWorkerKt$awaitConstraintsNotMet$1.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                constraintTrackingWorkerKt$awaitConstraintsNotMet$1.label = i2 - Integer.MIN_VALUE;
                Object obj = constraintTrackingWorkerKt$awaitConstraintsNotMet$1.result;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = constraintTrackingWorkerKt$awaitConstraintsNotMet$1.label;
                if (i == 0) {
                    if (i == 1) {
                        ResultKt.throwOnFailure(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    final Flow onEach = FlowKt.onEach(workConstraintsTracker.track(workSpec), new ConstraintTrackingWorkerKt$awaitConstraintsNotMet$2(workSpec, null));
                    Flow<Object> flow = new Flow<Object>() { // from class: androidx.work.impl.workers.ConstraintTrackingWorkerKt$awaitConstraintsNotMet$$inlined$filterIsInstance$1

                        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$filter$$inlined$unsafeTransform$1$2", "kotlinx/coroutines/flow/FlowKt__TransformKt$filterIsInstance$$inlined$filter$1$2"}, k = 3, mv = {1, 8, 0}, xi = 48)
                        @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n1#1,222:1\n22#2:223\n36#2:224\n23#2:225\n*E\n"})
                        /* renamed from: androidx.work.impl.workers.ConstraintTrackingWorkerKt$awaitConstraintsNotMet$$inlined$filterIsInstance$1$2, reason: invalid class name */
                        /* loaded from: classes.dex */
                        public static final class AnonymousClass2<T> implements FlowCollector {
                            final /* synthetic */ FlowCollector $this_unsafeFlow;

                            @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
                            @DebugMetadata(c = "androidx.work.impl.workers.ConstraintTrackingWorkerKt$awaitConstraintsNotMet$$inlined$filterIsInstance$1$2", f = "ConstraintTrackingWorker.kt", i = {}, l = {223}, m = "emit", n = {}, s = {})
                            /* renamed from: androidx.work.impl.workers.ConstraintTrackingWorkerKt$awaitConstraintsNotMet$$inlined$filterIsInstance$1$2$1, reason: invalid class name */
                            /* loaded from: classes.dex */
                            public static final class AnonymousClass1 extends ContinuationImpl {
                                Object L$0;
                                Object L$1;
                                int label;
                                /* synthetic */ Object result;

                                public AnonymousClass1(Continuation continuation) {
                                    super(continuation);
                                }

                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                @Nullable
                                public final Object invokeSuspend(@NotNull Object obj) {
                                    this.result = obj;
                                    this.label |= Integer.MIN_VALUE;
                                    return AnonymousClass2.this.emit(null, this);
                                }
                            }

                            public AnonymousClass2(FlowCollector flowCollector) {
                                this.$this_unsafeFlow = flowCollector;
                            }

                            /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
                            /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
                            @Override // kotlinx.coroutines.flow.FlowCollector
                            @Nullable
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                            */
                            public final Object emit(Object obj, @NotNull Continuation continuation) {
                                AnonymousClass1 anonymousClass1;
                                int i;
                                if (continuation instanceof AnonymousClass1) {
                                    anonymousClass1 = (AnonymousClass1) continuation;
                                    int i2 = anonymousClass1.label;
                                    if ((i2 & Integer.MIN_VALUE) != 0) {
                                        anonymousClass1.label = i2 - Integer.MIN_VALUE;
                                        Object obj2 = anonymousClass1.result;
                                        Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                                        i = anonymousClass1.label;
                                        if (i == 0) {
                                            if (i == 1) {
                                                ResultKt.throwOnFailure(obj2);
                                            } else {
                                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                            }
                                        } else {
                                            ResultKt.throwOnFailure(obj2);
                                            FlowCollector flowCollector = this.$this_unsafeFlow;
                                            if (obj instanceof ConstraintsState.ConstraintsNotMet) {
                                                anonymousClass1.label = 1;
                                                if (flowCollector.emit(obj, anonymousClass1) == coroutine_suspended) {
                                                    return coroutine_suspended;
                                                }
                                            }
                                        }
                                        return Unit.INSTANCE;
                                    }
                                }
                                anonymousClass1 = new AnonymousClass1(continuation);
                                Object obj22 = anonymousClass1.result;
                                Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                                i = anonymousClass1.label;
                                if (i == 0) {
                                }
                                return Unit.INSTANCE;
                            }
                        }

                        @Override // kotlinx.coroutines.flow.Flow
                        @Nullable
                        public Object collect(@NotNull FlowCollector<? super Object> flowCollector, @NotNull Continuation continuation2) {
                            Object collect = Flow.this.collect(new AnonymousClass2(flowCollector), continuation2);
                            if (collect == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                                return collect;
                            }
                            return Unit.INSTANCE;
                        }
                    };
                    constraintTrackingWorkerKt$awaitConstraintsNotMet$1.label = 1;
                    obj = FlowKt.first(flow, constraintTrackingWorkerKt$awaitConstraintsNotMet$1);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                return Boxing.boxInt(((ConstraintsState.ConstraintsNotMet) obj).getReason());
            }
        }
        constraintTrackingWorkerKt$awaitConstraintsNotMet$1 = new ConstraintTrackingWorkerKt$awaitConstraintsNotMet$1(continuation);
        Object obj2 = constraintTrackingWorkerKt$awaitConstraintsNotMet$1.result;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = constraintTrackingWorkerKt$awaitConstraintsNotMet$1.label;
        if (i == 0) {
        }
        return Boxing.boxInt(((ConstraintsState.ConstraintsNotMet) obj2).getReason());
    }
}
