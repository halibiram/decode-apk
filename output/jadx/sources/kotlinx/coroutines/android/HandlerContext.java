package kotlinx.coroutines.android;

import android.os.Handler;
import android.os.Looper;
import defpackage.AbstractC0362x4440ab85;
import defpackage.C0836x3e38e592;
import defpackage.RunnableC0371x742e2fda;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.AbstractC0296x1378447b;
import kotlin.time.DurationKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.Delay;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.NonDisposableHandle;
import kotlinx.coroutines.android.HandlerContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u001d\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\rJ#\u0010\u0012\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\t2\n\u0010\u0010\u001a\u00060\u000ej\u0002`\u000fH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J%\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00142\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00110\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J+\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0015\u001a\u00020\u00142\n\u0010\u0010\u001a\u00060\u000ej\u0002`\u000f2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u001a\u0010!\u001a\u00020\u000b2\b\u0010 \u001a\u0004\u0018\u00010\u001fH\u0096\u0002¢\u0006\u0004\b!\u0010\"J\u000f\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b$\u0010%R\u001a\u0010*\u001a\u00020\u00008\u0016X\u0096\u0004¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)¨\u0006+"}, d2 = {"Lkotlinx/coroutines/android/HandlerContext;", "Lkotlinx/coroutines/android/HandlerDispatcher;", "Lkotlinx/coroutines/Delay;", "Landroid/os/Handler;", "handler", "", "name", "<init>", "(Landroid/os/Handler;Ljava/lang/String;)V", "Lkotlin/coroutines/CoroutineContext;", "context", "", "isDispatchNeeded", "(Lkotlin/coroutines/CoroutineContext;)Z", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "", "dispatch", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V", "", "timeMillis", "Lkotlinx/coroutines/CancellableContinuation;", "continuation", "scheduleResumeAfterDelay", "(JLkotlinx/coroutines/CancellableContinuation;)V", "Lkotlinx/coroutines/DisposableHandle;", "invokeOnTimeout", "(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/DisposableHandle;", "toString", "()Ljava/lang/String;", "", "other", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨", "Lkotlinx/coroutines/android/HandlerContext;", "getImmediate", "()Lkotlinx/coroutines/android/HandlerContext;", "immediate", "kotlinx-coroutines-android"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHandlerDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HandlerDispatcher.kt\nkotlinx/coroutines/android/HandlerContext\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,212:1\n1#2:213\n*E\n"})
/* loaded from: classes3.dex */
public final class HandlerContext extends HandlerDispatcher implements Delay {

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public static final /* synthetic */ int f1799x9738a56c = 0;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Handler f1800xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final String f1801x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final boolean f1802x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters and from kotlin metadata */
    public final HandlerContext immediate;

    public HandlerContext(Handler handler, String str, boolean z) {
        super(null);
        this.f1800xfbe0c504 = handler;
        this.f1801x3271d0aa = str;
        this.f1802x1378447b = z;
        this.immediate = z ? this : new HandlerContext(handler, str, true);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public void dispatch(@NotNull CoroutineContext context, @NotNull Runnable block) {
        if (!this.f1800xfbe0c504.post(block)) {
            m2252xfbe0c504(context, block);
        }
    }

    public boolean equals(@Nullable Object other) {
        if (other instanceof HandlerContext) {
            HandlerContext handlerContext = (HandlerContext) other;
            if (handlerContext.f1800xfbe0c504 == this.f1800xfbe0c504 && handlerContext.f1802x1378447b == this.f1802x1378447b) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i;
        int identityHashCode = System.identityHashCode(this.f1800xfbe0c504);
        if (this.f1802x1378447b) {
            i = 1231;
        } else {
            i = 1237;
        }
        return identityHashCode ^ i;
    }

    @Override // kotlinx.coroutines.android.HandlerDispatcher, kotlinx.coroutines.Delay
    @NotNull
    public DisposableHandle invokeOnTimeout(long timeMillis, @NotNull final Runnable block, @NotNull CoroutineContext context) {
        if (this.f1800xfbe0c504.postDelayed(block, AbstractC0296x1378447b.coerceAtMost(timeMillis, DurationKt.MAX_MILLIS))) {
            return new DisposableHandle() { // from class: 듰뎹둥뎻드딽딐뎠땹땮됐딎딟뒤땟됐땤돨뎠될딀듰뒷듼둠됴뒘둬땻뒘땫둘두땵돵듨뒾뒐땠돝듰된땔땹돶든들뒛딞뎬땸둠둑딝땩딤뒛뒻땄뒹둘딝뎽뎨뒹땻땦뎽듐딹땥뒈든돠땃뒝딠땯딟땮돼땔돨뒉딻땵땣딞딀됫땨땳들듨듔될딟딄뎠따땮땳됴뒾땻돨땫땡딐땵뎠딐딁돤됨딻땥딹뒋뎡듸되듰땩둬듸돸딌딜땜
                @Override // kotlinx.coroutines.DisposableHandle
                public final void dispose() {
                    HandlerContext.this.f1800xfbe0c504.removeCallbacks(block);
                }
            };
        }
        m2252xfbe0c504(context, block);
        return NonDisposableHandle.INSTANCE;
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public boolean isDispatchNeeded(@NotNull CoroutineContext context) {
        if (this.f1802x1378447b && Intrinsics.areEqual(Looper.myLooper(), this.f1800xfbe0c504.getLooper())) {
            return false;
        }
        return true;
    }

    @Override // kotlinx.coroutines.Delay
    public void scheduleResumeAfterDelay(long timeMillis, @NotNull CancellableContinuation<? super Unit> continuation) {
        RunnableC0371x742e2fda runnableC0371x742e2fda = new RunnableC0371x742e2fda(continuation, this, 27);
        if (this.f1800xfbe0c504.postDelayed(runnableC0371x742e2fda, AbstractC0296x1378447b.coerceAtMost(timeMillis, DurationKt.MAX_MILLIS))) {
            continuation.invokeOnCancellation(new C0836x3e38e592(this, runnableC0371x742e2fda, 1));
        } else {
            m2252xfbe0c504(continuation.getContext(), runnableC0371x742e2fda);
        }
    }

    @Override // kotlinx.coroutines.MainCoroutineDispatcher, kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    /* renamed from: toString */
    public String getF2411x1378447b() {
        String stringInternalImpl = toStringInternalImpl();
        if (stringInternalImpl == null) {
            String str = this.f1801x3271d0aa;
            if (str == null) {
                str = this.f1800xfbe0c504.toString();
            }
            if (this.f1802x1378447b) {
                return AbstractC0362x4440ab85.m2931x34271fae(str, ".immediate");
            }
            return str;
        }
        return stringInternalImpl;
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final void m2252xfbe0c504(CoroutineContext coroutineContext, Runnable runnable) {
        JobKt.cancel(coroutineContext, new CancellationException("The task was rejected, the handler underlying the dispatcher '" + this + "' was closed"));
        Dispatchers.getIO().dispatch(coroutineContext, runnable);
    }

    @Override // kotlinx.coroutines.android.HandlerDispatcher, kotlinx.coroutines.MainCoroutineDispatcher
    @NotNull
    public HandlerContext getImmediate() {
        return this.immediate;
    }

    public /* synthetic */ HandlerContext(Handler handler, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(handler, (i & 2) != 0 ? null : str);
    }

    public HandlerContext(@NotNull Handler handler, @Nullable String str) {
        this(handler, str, false);
    }
}
