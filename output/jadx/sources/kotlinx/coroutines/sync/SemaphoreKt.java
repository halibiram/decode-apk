package kotlinx.coroutines.sync;

import androidx.exifinterface.media.ExifInterface;
import defpackage.AbstractC0892xc141c517;
import defpackage.C1119x9fce2af4;
import defpackage.C1120xd5e67af4;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.internal.SystemPropsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u001f\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0001\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u001a5\u0010\t\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0006*\u00020\u00032\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007H\u0086H\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"", "permits", "acquiredPermits", "Lkotlinx/coroutines/sync/Semaphore;", "Semaphore", "(II)Lkotlinx/coroutines/sync/Semaphore;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/Function0;", "action", "withPermit", "(Lkotlinx/coroutines/sync/Semaphore;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SemaphoreKt {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final int f2498xfbe0c504 = SystemPropsKt.systemProp$default("kotlinx.coroutines.semaphore.maxSpinCycles", 100, 0, 0, 12, (Object) null);

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final Symbol f2499x3271d0aa = new Symbol("PERMIT");

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static final Symbol f2500x1378447b = new Symbol("TAKEN");

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public static final Symbol f2501x75d576dc = new Symbol("BROKEN");

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public static final Symbol f2502x9738a56c = new Symbol("CANCELLED");

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public static final int f2503x9e171bf9 = SystemPropsKt.systemProp$default("kotlinx.coroutines.semaphore.segmentSize", 16, 0, 0, 12, (Object) null);

    /* JADX WARN: Type inference failed for: r0v0, types: [kotlinx.coroutines.sync.Semaphore, kotlinx.coroutines.sync.SemaphoreAndMutexImpl] */
    @NotNull
    public static final Semaphore Semaphore(int i, int i2) {
        return new SemaphoreAndMutexImpl(i, i2);
    }

    public static /* synthetic */ Semaphore Semaphore$default(int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        return Semaphore(i, i2);
    }

    public static final C1120xd5e67af4 access$createSegment(long j, C1120xd5e67af4 c1120xd5e67af4) {
        return new C1120xd5e67af4(j, c1120xd5e67af4, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object withPermit(@NotNull Semaphore semaphore, @NotNull Function0<? extends T> function0, @NotNull Continuation<? super T> continuation) {
        C1119x9fce2af4 c1119x9fce2af4;
        int i;
        Semaphore semaphore2;
        try {
            if (continuation instanceof C1119x9fce2af4) {
                C1119x9fce2af4 c1119x9fce2af42 = (C1119x9fce2af4) continuation;
                int i2 = c1119x9fce2af42.f5427x75d576dc;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    c1119x9fce2af42.f5427x75d576dc = i2 - Integer.MIN_VALUE;
                    c1119x9fce2af4 = c1119x9fce2af42;
                    Object obj = c1119x9fce2af4.f5426x1378447b;
                    Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                    i = c1119x9fce2af4.f5427x75d576dc;
                    if (i == 0) {
                        if (i == 1) {
                            function0 = c1119x9fce2af4.f5425x3271d0aa;
                            Semaphore semaphore3 = c1119x9fce2af4.f5424xfbe0c504;
                            ResultKt.throwOnFailure(obj);
                            semaphore2 = semaphore3;
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        ResultKt.throwOnFailure(obj);
                        c1119x9fce2af4.f5424xfbe0c504 = semaphore;
                        c1119x9fce2af4.f5425x3271d0aa = function0;
                        c1119x9fce2af4.f5427x75d576dc = 1;
                        Object acquire = semaphore.acquire(c1119x9fce2af4);
                        semaphore2 = semaphore;
                        if (acquire == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                    return function0.invoke();
                }
            }
            return function0.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            semaphore2.release();
            InlineMarker.finallyEnd(1);
        }
        c1119x9fce2af4 = new ContinuationImpl(continuation);
        Object obj2 = c1119x9fce2af4.f5426x1378447b;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c1119x9fce2af4.f5427x75d576dc;
        if (i == 0) {
        }
    }
}
