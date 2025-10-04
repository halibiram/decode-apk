package defpackage;

import j$.util.function.BiFunction$CC;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CompletableFuture;
import java.util.function.BiFunction;
import java.util.function.Function;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.AbstractCoroutine;
import kotlinx.coroutines.Job;

/* renamed from: 둠돠딻되딸뒝땲둬뎨둘땤드땪땭땋둠땳따딞땵땲땁땝딄될딐땁뎨땵딄땻땀듟땡뒵뒵돝돝둣뒾뒷돸뒙뒛될뒀뒙들딽돛땦땝땣뎠뒛딟뎻땁돼돤뒋뒙두땪뒵됴듼땜땁땩뒘득땄뒙딁돤됩딨땳뎸딐땭되땸둔딃두땐돛땁득드듽땡뒤둘딝뎽둬땜돝뎽됫뒘두딜뎬뒼들뒻둣딎디뒬디땀땳되됐뎠돶딞뎡돼땰돴뒬땩뒼듟, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0618x7655f594 extends AbstractCoroutine implements BiFunction {

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final CompletableFuture f4372x75d576dc;

    public C0618x7655f594(CoroutineContext coroutineContext, CompletableFuture completableFuture) {
        super(coroutineContext, true, true);
        this.f4372x75d576dc = completableFuture;
    }

    public final /* synthetic */ BiFunction andThen(Function function) {
        return BiFunction$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        Job.DefaultImpls.cancel$default((Job) this, (CancellationException) null, 1, (Object) null);
        return Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.AbstractCoroutine
    public final void onCancelled(Throwable th, boolean z) {
        this.f4372x75d576dc.completeExceptionally(th);
    }

    @Override // kotlinx.coroutines.AbstractCoroutine
    public final void onCompleted(Object obj) {
        this.f4372x75d576dc.complete(obj);
    }
}
