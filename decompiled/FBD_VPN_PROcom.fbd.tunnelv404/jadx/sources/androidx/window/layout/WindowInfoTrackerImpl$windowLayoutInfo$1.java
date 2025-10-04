package androidx.window.layout;

import android.app.Activity;
import androidx.core.util.Consumer;
import defpackage.AbstractC0892xc141c517;
import defpackage.ExecutorC0393xf3cb0c93;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelIterator;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.flow.FlowCollector;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "Landroidx/window/layout/WindowLayoutInfo;"}, k = 3, mv = {1, 6, 0}, xi = 48)
@DebugMetadata(c = "androidx.window.layout.WindowInfoTrackerImpl$windowLayoutInfo$1", f = "WindowInfoTrackerImpl.kt", i = {0, 0, 1, 1}, l = {54, 55}, m = "invokeSuspend", n = {"$this$flow", "listener", "$this$flow", "listener"}, s = {"L$0", "L$1", "L$0", "L$1"})
/* loaded from: classes.dex */
public final class WindowInfoTrackerImpl$windowLayoutInfo$1 extends SuspendLambda implements Function2<FlowCollector<? super WindowLayoutInfo>, Continuation<? super Unit>, Object> {
    final /* synthetic */ Activity $activity;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ WindowInfoTrackerImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WindowInfoTrackerImpl$windowLayoutInfo$1(WindowInfoTrackerImpl windowInfoTrackerImpl, Activity activity, Continuation<? super WindowInfoTrackerImpl$windowLayoutInfo$1> continuation) {
        super(2, continuation);
        this.this$0 = windowInfoTrackerImpl;
        this.$activity = activity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: invokeSuspend$lambda-0, reason: not valid java name */
    public static final void m849invokeSuspend$lambda0(Channel channel, WindowLayoutInfo info) {
        Intrinsics.checkNotNullExpressionValue(info, "info");
        channel.mo2254trySendJP2dKIU(info);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        WindowInfoTrackerImpl$windowLayoutInfo$1 windowInfoTrackerImpl$windowLayoutInfo$1 = new WindowInfoTrackerImpl$windowLayoutInfo$1(this.this$0, this.$activity, continuation);
        windowInfoTrackerImpl$windowLayoutInfo$1.L$0 = obj;
        return windowInfoTrackerImpl$windowLayoutInfo$1;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0073 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x007f A[Catch: all -> 0x001f, TRY_LEAVE, TryCatch #0 {all -> 0x001f, blocks: (B:7:0x001a, B:9:0x0065, B:14:0x0077, B:16:0x007f, B:25:0x0036, B:27:0x0061), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0094  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0091 -> B:8:0x001d). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(@NotNull Object obj) {
        WindowBackend windowBackend;
        FlowCollector flowCollector;
        Consumer<WindowLayoutInfo> consumer;
        WindowBackend windowBackend2;
        ChannelIterator it;
        FlowCollector flowCollector2;
        WindowBackend windowBackend3;
        Object hasNext;
        Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        it = (ChannelIterator) this.L$2;
                        consumer = (Consumer) this.L$1;
                        flowCollector2 = (FlowCollector) this.L$0;
                        ResultKt.throwOnFailure(obj);
                        flowCollector = flowCollector2;
                        this.L$0 = flowCollector;
                        this.L$1 = consumer;
                        this.L$2 = it;
                        this.label = 1;
                        hasNext = it.hasNext(this);
                        if (hasNext == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        flowCollector2 = flowCollector;
                        obj = hasNext;
                        if (((Boolean) obj).booleanValue()) {
                            windowBackend3 = this.this$0.windowBackend;
                            windowBackend3.unregisterLayoutChangeCallback(consumer);
                            return Unit.INSTANCE;
                        }
                        WindowLayoutInfo windowLayoutInfo = (WindowLayoutInfo) it.next();
                        this.L$0 = flowCollector2;
                        this.L$1 = consumer;
                        this.L$2 = it;
                        this.label = 2;
                        if (flowCollector2.emit(windowLayoutInfo, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        flowCollector = flowCollector2;
                        this.L$0 = flowCollector;
                        this.L$1 = consumer;
                        this.L$2 = it;
                        this.label = 1;
                        hasNext = it.hasNext(this);
                        if (hasNext == coroutine_suspended) {
                        }
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    it = (ChannelIterator) this.L$2;
                    consumer = (Consumer) this.L$1;
                    flowCollector2 = (FlowCollector) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    if (((Boolean) obj).booleanValue()) {
                    }
                }
            } else {
                ResultKt.throwOnFailure(obj);
                flowCollector = (FlowCollector) this.L$0;
                final Channel Channel$default = ChannelKt.Channel$default(10, BufferOverflow.DROP_OLDEST, null, 4, null);
                consumer = new Consumer() { // from class: androidx.window.layout.뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj2) {
                        WindowInfoTrackerImpl$windowLayoutInfo$1.m849invokeSuspend$lambda0(Channel.this, (WindowLayoutInfo) obj2);
                    }
                };
                windowBackend2 = this.this$0.windowBackend;
                windowBackend2.registerLayoutChangeCallback(this.$activity, new ExecutorC0393xf3cb0c93(0), consumer);
                it = Channel$default.iterator();
                this.L$0 = flowCollector;
                this.L$1 = consumer;
                this.L$2 = it;
                this.label = 1;
                hasNext = it.hasNext(this);
                if (hasNext == coroutine_suspended) {
                }
            }
        } catch (Throwable th) {
            windowBackend = this.this$0.windowBackend;
            windowBackend.unregisterLayoutChangeCallback(consumer);
            throw th;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull FlowCollector<? super WindowLayoutInfo> flowCollector, @Nullable Continuation<? super Unit> continuation) {
        return ((WindowInfoTrackerImpl$windowLayoutInfo$1) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
