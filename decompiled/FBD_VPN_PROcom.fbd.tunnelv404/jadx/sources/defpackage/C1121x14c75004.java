package defpackage;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.sequences.SequenceScope;

/* renamed from: 땔돝두돳딎듐딞딝땪딟딝돰딀땦듰돰땤둔딸둥돷딀둔땐땫땝땅땥땠뒹뒾뒼뎹땰뎰듐둔뒹듐됫둥땍돳땮땵땳됴뒈땻딀돝듻디둠땪땟뒋뒼됫땸땜뒵돤땫딽땫딄딀땅땜딻되땱돸뒐딨듟땣딸듸뎻땰듌듸땦딻뒝뒋될땳뎨뒬뎸뒼땅듟땬땋돰돸둣딟땔땍딜뒵뎠듨듟득땵둑땬딝딽뒙딁딸듐됐딟땜듔뒵됩땱딐뒤든뎡, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1121x14c75004 extends SequenceScope implements Iterator, Continuation, KMappedMarker {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public int f5429xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public Object f5430x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public Iterator f5431x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public Continuation f5432x75d576dc;

    @Override // kotlin.coroutines.Continuation
    /* renamed from: getContext */
    public final CoroutineContext getF1168xfbe0c504() {
        return EmptyCoroutineContext.INSTANCE;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        while (true) {
            int i = this.f5429xfbe0c504;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2 || i == 3) {
                        return true;
                    }
                    if (i == 4) {
                        return false;
                    }
                    throw m3803x1378447b();
                }
                Iterator it = this.f5431x1378447b;
                Intrinsics.checkNotNull(it);
                if (it.hasNext()) {
                    this.f5429xfbe0c504 = 2;
                    return true;
                }
                this.f5431x1378447b = null;
            }
            this.f5429xfbe0c504 = 5;
            Continuation continuation = this.f5432x75d576dc;
            Intrinsics.checkNotNull(continuation);
            this.f5432x75d576dc = null;
            Result.Companion companion = Result.INSTANCE;
            continuation.resumeWith(Result.m1764constructorimpl(Unit.INSTANCE));
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.f5429xfbe0c504;
        if (i != 0 && i != 1) {
            if (i != 2) {
                if (i == 3) {
                    this.f5429xfbe0c504 = 0;
                    Object obj = this.f5430x3271d0aa;
                    this.f5430x3271d0aa = null;
                    return obj;
                }
                throw m3803x1378447b();
            }
            this.f5429xfbe0c504 = 1;
            Iterator it = this.f5431x1378447b;
            Intrinsics.checkNotNull(it);
            return it.next();
        }
        if (hasNext()) {
            return next();
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // kotlin.coroutines.Continuation
    public final void resumeWith(Object obj) {
        ResultKt.throwOnFailure(obj);
        this.f5429xfbe0c504 = 4;
    }

    @Override // kotlin.sequences.SequenceScope
    public final Object yield(Object obj, Continuation continuation) {
        this.f5430x3271d0aa = obj;
        this.f5429xfbe0c504 = 3;
        this.f5432x75d576dc = continuation;
        Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        if (coroutine_suspended == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        if (coroutine_suspended == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }

    @Override // kotlin.sequences.SequenceScope
    public final Object yieldAll(Iterator it, Continuation continuation) {
        if (!it.hasNext()) {
            return Unit.INSTANCE;
        }
        this.f5431x1378447b = it;
        this.f5429xfbe0c504 = 2;
        this.f5432x75d576dc = continuation;
        Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        if (coroutine_suspended == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        if (coroutine_suspended == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final RuntimeException m3803x1378447b() {
        int i = this.f5429xfbe0c504;
        if (i != 4) {
            if (i != 5) {
                return new IllegalStateException("Unexpected state of the iterator: " + this.f5429xfbe0c504);
            }
            return new IllegalStateException("Iterator has failed.");
        }
        return new NoSuchElementException();
    }
}
