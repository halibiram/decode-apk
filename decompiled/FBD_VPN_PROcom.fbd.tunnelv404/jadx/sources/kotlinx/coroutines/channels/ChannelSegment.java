package kotlinx.coroutines.channels;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import defpackage.C1295xec5e1b4c;
import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00000\u0002B7\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00028\u0000H\u0000¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0014\u001a\u00028\u00002\u0006\u0010\f\u001a\u00020\bH\u0000¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00028\u00002\u0006\u0010\f\u001a\u00020\bH\u0000¢\u0006\u0004\b\u0015\u0010\u0013J\u0017\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\bH\u0000¢\u0006\u0004\b\u0017\u0010\u0018J\u0019\u0010\u001c\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\f\u001a\u00020\bH\u0000¢\u0006\u0004\b\u001b\u0010\u0013J!\u0010\u001f\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001aH\u0000¢\u0006\u0004\b\u001e\u0010\u0010J+\u0010%\u001a\u00020\"2\u0006\u0010\f\u001a\u00020\b2\b\u0010 \u001a\u0004\u0018\u00010\u001a2\b\u0010!\u001a\u0004\u0018\u00010\u001aH\u0000¢\u0006\u0004\b#\u0010$J#\u0010)\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\f\u001a\u00020\b2\b\u0010&\u001a\u0004\u0018\u00010\u001aH\u0000¢\u0006\u0004\b'\u0010(J)\u0010.\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\b2\b\u0010+\u001a\u0004\u0018\u00010*2\u0006\u0010-\u001a\u00020,H\u0016¢\u0006\u0004\b.\u0010/J\u001d\u00101\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\b2\u0006\u00100\u001a\u00020\"¢\u0006\u0004\b1\u00102R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00068F¢\u0006\u0006\u001a\u0004\b3\u00104R\u0014\u00107\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b5\u00106R\u0013\u00109\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001a088\u0002X\u0082\u0004¨\u0006:"}, d2 = {"Lkotlinx/coroutines/channels/ChannelSegment;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/internal/Segment;", "", "id", "prev", "Lkotlinx/coroutines/channels/BufferedChannel;", "channel", "", "pointers", "<init>", "(JLkotlinx/coroutines/channels/ChannelSegment;Lkotlinx/coroutines/channels/BufferedChannel;I)V", "index", "element", "", "storeElement$kotlinx_coroutines_core", "(ILjava/lang/Object;)V", "storeElement", "getElement$kotlinx_coroutines_core", "(I)Ljava/lang/Object;", "getElement", "retrieveElement$kotlinx_coroutines_core", "retrieveElement", "cleanElement$kotlinx_coroutines_core", "(I)V", "cleanElement", "", "getState$kotlinx_coroutines_core", "getState", "value", "setState$kotlinx_coroutines_core", "setState", TypedValues.TransitionType.S_FROM, TypedValues.TransitionType.S_TO, "", "casState$kotlinx_coroutines_core", "(ILjava/lang/Object;Ljava/lang/Object;)Z", "casState", "update", "getAndSetState$kotlinx_coroutines_core", "(ILjava/lang/Object;)Ljava/lang/Object;", "getAndSetState", "", "cause", "Lkotlin/coroutines/CoroutineContext;", "context", "onCancellation", "(ILjava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V", "receiver", "onCancelledRequest", "(IZ)V", "getChannel", "()Lkotlinx/coroutines/channels/BufferedChannel;", "getNumberOfSlots", "()I", "numberOfSlots", "Lkotlinx/atomicfu/AtomicArray;", "data", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/ChannelSegment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,3116:1\n1#2:3117\n*E\n"})
/* loaded from: classes3.dex */
public final class ChannelSegment<E> extends Segment<ChannelSegment<E>> {

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final BufferedChannel f1845x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public final /* synthetic */ AtomicReferenceArray f1846x9738a56c;

    public ChannelSegment(long j, @Nullable ChannelSegment<E> channelSegment, @Nullable BufferedChannel<E> bufferedChannel, int i) {
        super(j, channelSegment, i);
        this.f1845x75d576dc = bufferedChannel;
        this.f1846x9738a56c = new AtomicReferenceArray(BufferedChannelKt.SEGMENT_SIZE * 2);
    }

    public final boolean casState$kotlinx_coroutines_core(int index, @Nullable Object from, @Nullable Object to) {
        AtomicReferenceArray atomicReferenceArray = this.f1846x9738a56c;
        int i = (index * 2) + 1;
        while (!atomicReferenceArray.compareAndSet(i, from, to)) {
            if (atomicReferenceArray.get(i) != from) {
                return false;
            }
        }
        return true;
    }

    public final void cleanElement$kotlinx_coroutines_core(int index) {
        this.f1846x9738a56c.set(index * 2, null);
    }

    @Nullable
    public final Object getAndSetState$kotlinx_coroutines_core(int index, @Nullable Object update) {
        return this.f1846x9738a56c.getAndSet((index * 2) + 1, update);
    }

    @NotNull
    public final BufferedChannel<E> getChannel() {
        BufferedChannel<E> bufferedChannel = this.f1845x75d576dc;
        Intrinsics.checkNotNull(bufferedChannel);
        return bufferedChannel;
    }

    public final E getElement$kotlinx_coroutines_core(int index) {
        return (E) this.f1846x9738a56c.get(index * 2);
    }

    @Override // kotlinx.coroutines.internal.Segment
    public int getNumberOfSlots() {
        return BufferedChannelKt.SEGMENT_SIZE;
    }

    @Nullable
    public final Object getState$kotlinx_coroutines_core(int index) {
        return this.f1846x9738a56c.get((index * 2) + 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x0060, code lost:
    
        cleanElement$kotlinx_coroutines_core(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0063, code lost:
    
        if (r0 == false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0065, code lost:
    
        r4 = getChannel().onUndeliveredElement;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x006b, code lost:
    
        if (r4 == null) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x006d, code lost:
    
        kotlinx.coroutines.internal.OnUndeliveredElementKt.callUndeliveredElement(r4, r5, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0070, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:?, code lost:
    
        return;
     */
    @Override // kotlinx.coroutines.internal.Segment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onCancellation(int index, @Nullable Throwable cause, @NotNull CoroutineContext context) {
        boolean z;
        Function1<E, Unit> function1;
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        Symbol symbol4;
        Symbol symbol5;
        int i = BufferedChannelKt.SEGMENT_SIZE;
        if (index >= i) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            index -= i;
        }
        E element$kotlinx_coroutines_core = getElement$kotlinx_coroutines_core(index);
        while (true) {
            Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core(index);
            if (!(state$kotlinx_coroutines_core instanceof Waiter) && !(state$kotlinx_coroutines_core instanceof C1295xec5e1b4c)) {
                symbol = BufferedChannelKt.f1830x95f25580;
                if (state$kotlinx_coroutines_core == symbol) {
                    break;
                }
                symbol2 = BufferedChannelKt.f1831x3db60231;
                if (state$kotlinx_coroutines_core == symbol2) {
                    break;
                }
                symbol3 = BufferedChannelKt.f1827x9738a56c;
                if (state$kotlinx_coroutines_core != symbol3) {
                    symbol4 = BufferedChannelKt.f1826x75d576dc;
                    if (state$kotlinx_coroutines_core != symbol4) {
                        symbol5 = BufferedChannelKt.f1829x34271fae;
                        if (state$kotlinx_coroutines_core == symbol5 || state$kotlinx_coroutines_core == BufferedChannelKt.BUFFERED || state$kotlinx_coroutines_core == BufferedChannelKt.getCHANNEL_CLOSED()) {
                            return;
                        }
                        throw new IllegalStateException(("unexpected state: " + state$kotlinx_coroutines_core).toString());
                    }
                } else {
                    continue;
                }
            } else {
                if (casState$kotlinx_coroutines_core(index, state$kotlinx_coroutines_core, z ? BufferedChannelKt.f1830x95f25580 : BufferedChannelKt.f1831x3db60231)) {
                    cleanElement$kotlinx_coroutines_core(index);
                    onCancelledRequest(index, !z);
                    if (z && (function1 = getChannel().onUndeliveredElement) != null) {
                        OnUndeliveredElementKt.callUndeliveredElement(function1, element$kotlinx_coroutines_core, context);
                        return;
                    }
                    return;
                }
            }
        }
    }

    public final void onCancelledRequest(int index, boolean receiver) {
        if (receiver) {
            getChannel().waitExpandBufferCompletion$kotlinx_coroutines_core((this.id * BufferedChannelKt.SEGMENT_SIZE) + index);
        }
        onSlotCleaned();
    }

    public final E retrieveElement$kotlinx_coroutines_core(int index) {
        E element$kotlinx_coroutines_core = getElement$kotlinx_coroutines_core(index);
        cleanElement$kotlinx_coroutines_core(index);
        return element$kotlinx_coroutines_core;
    }

    public final void setState$kotlinx_coroutines_core(int index, @Nullable Object value) {
        this.f1846x9738a56c.set((index * 2) + 1, value);
    }

    public final void storeElement$kotlinx_coroutines_core(int index, E element) {
        this.f1846x9738a56c.set(index * 2, element);
    }
}
