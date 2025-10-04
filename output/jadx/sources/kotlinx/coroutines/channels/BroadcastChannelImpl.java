package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC0892xc141c517;
import defpackage.C0452xff007c5f;
import defpackage.C0453xac8b86aa;
import defpackage.C0454xa26b7022;
import defpackage.C0455x6ace4341;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.selects.SelectInstance;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0013\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003:\u000201B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u0018\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00028\u0000H\u0096@¢\u0006\u0004\b\r\u0010\u000eJ\u001d\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\f0\u000f2\u0006\u0010\u000b\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J%\u0010\u0016\u001a\u00020\f2\n\u0010\u0014\u001a\u0006\u0012\u0002\b\u00030\u00132\b\u0010\u000b\u001a\u0004\u0018\u00010\u0015H\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u0019\u0010\u001b\u001a\u00020\u001a2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0019\u0010\u001e\u001a\u00020\u001a2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0010¢\u0006\u0004\b\u001d\u0010\u001cJ\u000f\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b \u0010!R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%R\u0017\u0010*\u001a\u00028\u00008F¢\u0006\f\u0012\u0004\b(\u0010)\u001a\u0004\b&\u0010'R\u0019\u0010-\u001a\u0004\u0018\u00018\u00008F¢\u0006\f\u0012\u0004\b,\u0010)\u001a\u0004\b+\u0010'R\u0014\u0010.\u001a\u00020\u001a8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b.\u0010/¨\u00062"}, d2 = {"Lkotlinx/coroutines/channels/BroadcastChannelImpl;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/BufferedChannel;", "Lkotlinx/coroutines/channels/BroadcastChannel;", "", "capacity", "<init>", "(I)V", "Lkotlinx/coroutines/channels/ReceiveChannel;", "openSubscription", "()Lkotlinx/coroutines/channels/ReceiveChannel;", "element", "", "send", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/ChannelResult;", "trySend-JP2dKIU", "(Ljava/lang/Object;)Ljava/lang/Object;", "trySend", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "", "registerSelectForSend", "(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", "", "cause", "", "close", "(Ljava/lang/Throwable;)Z", "cancelImpl$kotlinx_coroutines_core", "cancelImpl", "", "toString", "()Ljava/lang/String;", "뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻", "I", "getCapacity", "()I", "getValue", "()Ljava/lang/Object;", "getValue$annotations", "()V", "value", "getValueOrNull", "getValueOrNull$annotations", "valueOrNull", "isClosedForSend", "()Z", "돨됩됫돳딻뎰땪딽땲둬돤땣둑뒼된딐뎨땥듟뒙땤땔뎸뒘땱딌땥뒬둑땫뒛됫됴돷땅듟땅도뒨땬땻뒀듔듸듨둣땥땁따딤딅땮듐둬땭뎠돴돷뒤듐뒘됐뒹땳뒉뒨됴땍뎠뒐딌돤됩땃둡듐딄됨돛됫뒷뒛돶뒷뎨딐뎰딜뒻득딌땸땝둑둔땥뒵땵되뎠땃땃땬듸되딞땁든땄듬둔딁뒐듸뒀땃듰땀둬뒹뒤뒷듼돝땍딄돝땵딄듸", "돨됩딜딝땃둠뎡듔땵뒐땵딝듼됫딄딤득뒤뎬둣돸뒬둠디돴뒉듰뒨땠뒾됴땜돵뎠땋딄둘듬돨땫뒨딄땃두뎰딸땧둔돳듌딄딅뒼듌듸뒘딸됩듻딄둣듰될뒾따뎹될딤딁돝돨땍땟뒾둡뒉땭뒀땵뒤뒋딃뒷딟땄뒾딤듻땯딽둠듽딄딟땥땤딽땰듨든딻둬두됨땀땭뒷들땃땠땃듽딽듰딐딜듰땟땰딟두딄땲땳듬뒵뎡돼될듽", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nBroadcastChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BroadcastChannel.kt\nkotlinx/coroutines/channels/BroadcastChannelImpl\n+ 2 Concurrent.kt\nkotlinx/coroutines/internal/ConcurrentKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,363:1\n11#2:364\n11#2:365\n11#2:369\n11#2:372\n11#2:378\n11#2:379\n11#2:385\n11#2:388\n11#2:389\n11#2:390\n774#3:366\n865#3,2:367\n1863#3,2:370\n1755#3,3:373\n1863#3,2:376\n1863#3,2:380\n774#3:382\n865#3,2:383\n1863#3,2:386\n*S KotlinDebug\n*F\n+ 1 BroadcastChannel.kt\nkotlinx/coroutines/channels/BroadcastChannelImpl\n*L\n115#1:364\n137#1:365\n162#1:369\n186#1:372\n228#1:378\n280#1:379\n292#1:385\n304#1:388\n331#1:389\n343#1:390\n138#1:366\n138#1:367,2\n175#1:370,2\n191#1:373,3\n200#1:376,2\n282#1:380,2\n287#1:382\n287#1:383,2\n295#1:386,2\n*E\n"})
/* loaded from: classes3.dex */
public final class BroadcastChannelImpl<E> extends BufferedChannel<E> implements BroadcastChannel<E> {

    /* renamed from: 뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻, reason: contains not printable characters and from kotlin metadata */
    public final int capacity;

    /* renamed from: 뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁, reason: contains not printable characters */
    public final ReentrantLock f1805x8c6fc18a;

    /* renamed from: 뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀, reason: contains not printable characters */
    public List f1806x1aebc6d9;

    /* renamed from: 뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨, reason: contains not printable characters */
    public Object f1807xab142723;

    /* renamed from: 뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐, reason: contains not printable characters */
    public final HashMap f1808x85f0360e;

    public BroadcastChannelImpl(int i) {
        super(0, null);
        this.capacity = i;
        if (i < 1 && i != -1) {
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3330x95f25580(i, "BroadcastChannel capacity must be positive or Channel.CONFLATED, but ", " was specified").toString());
        }
        this.f1805x8c6fc18a = new ReentrantLock();
        this.f1806x1aebc6d9 = CollectionsKt__CollectionsKt.emptyList();
        this.f1807xab142723 = BroadcastChannelKt.access$getNO_ELEMENT$p();
        this.f1808x85f0360e = new HashMap();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void access$removeSubscriber(BroadcastChannelImpl broadcastChannelImpl, ReceiveChannel receiveChannel) {
        ReentrantLock reentrantLock = broadcastChannelImpl.f1805x8c6fc18a;
        reentrantLock.lock();
        try {
            List list = broadcastChannelImpl.f1806x1aebc6d9;
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (((BufferedChannel) obj) != receiveChannel) {
                    arrayList.add(obj);
                }
            }
            broadcastChannelImpl.f1806x1aebc6d9 = arrayList;
            reentrantLock.unlock();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public static /* synthetic */ void getValue$annotations() {
    }

    public static /* synthetic */ void getValueOrNull$annotations() {
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel
    public boolean cancelImpl$kotlinx_coroutines_core(@Nullable Throwable cause) {
        ReentrantLock reentrantLock = this.f1805x8c6fc18a;
        reentrantLock.lock();
        try {
            Iterator it = this.f1806x1aebc6d9.iterator();
            while (it.hasNext()) {
                ((BufferedChannel) it.next()).cancelImpl$kotlinx_coroutines_core(cause);
            }
            this.f1807xab142723 = BroadcastChannelKt.access$getNO_ELEMENT$p();
            boolean cancelImpl$kotlinx_coroutines_core = super.cancelImpl$kotlinx_coroutines_core(cause);
            reentrantLock.unlock();
            return cancelImpl$kotlinx_coroutines_core;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.SendChannel
    public boolean close(@Nullable Throwable cause) {
        ReentrantLock reentrantLock = this.f1805x8c6fc18a;
        reentrantLock.lock();
        try {
            Iterator it = this.f1806x1aebc6d9.iterator();
            while (it.hasNext()) {
                ((BufferedChannel) it.next()).close(cause);
            }
            List list = this.f1806x1aebc6d9;
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (((BufferedChannel) obj).hasElements$kotlinx_coroutines_core()) {
                    arrayList.add(obj);
                }
            }
            this.f1806x1aebc6d9 = arrayList;
            boolean close = super.close(cause);
            reentrantLock.unlock();
            return close;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final int getCapacity() {
        return this.capacity;
    }

    public final E getValue() {
        ReentrantLock reentrantLock = this.f1805x8c6fc18a;
        reentrantLock.lock();
        try {
            if (isClosedForSend()) {
                Throwable closeCause = getCloseCause();
                if (closeCause == null) {
                    throw new IllegalStateException("This broadcast channel is closed");
                }
                throw closeCause;
            }
            if (this.f1807xab142723 != BroadcastChannelKt.access$getNO_ELEMENT$p()) {
                E e = (E) this.f1807xab142723;
                reentrantLock.unlock();
                return e;
            }
            throw new IllegalStateException("No value");
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Nullable
    public final E getValueOrNull() {
        ReentrantLock reentrantLock = this.f1805x8c6fc18a;
        reentrantLock.lock();
        try {
            E e = null;
            if (!isClosedForReceive() && this.f1807xab142723 != BroadcastChannelKt.access$getNO_ELEMENT$p()) {
                e = (E) this.f1807xab142723;
            }
            return e;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.SendChannel
    public boolean isClosedForSend() {
        ReentrantLock reentrantLock = this.f1805x8c6fc18a;
        reentrantLock.lock();
        try {
            return super.isClosedForSend();
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.BroadcastChannel
    @NotNull
    public ReceiveChannel<E> openSubscription() {
        C0452xff007c5f c0452xff007c5f;
        ReentrantLock reentrantLock = this.f1805x8c6fc18a;
        reentrantLock.lock();
        try {
            if (this.capacity == -1) {
                c0452xff007c5f = new C0453xac8b86aa(this);
            } else {
                c0452xff007c5f = new C0452xff007c5f(this);
            }
            if (isClosedForSend() && this.f1807xab142723 == BroadcastChannelKt.access$getNO_ELEMENT$p()) {
                ((BufferedChannel) c0452xff007c5f).close(getCloseCause());
                reentrantLock.unlock();
                return c0452xff007c5f;
            }
            if (this.f1807xab142723 != BroadcastChannelKt.access$getNO_ELEMENT$p()) {
                ((BufferedChannel) c0452xff007c5f).mo2254trySendJP2dKIU(getValue());
            }
            this.f1806x1aebc6d9 = CollectionsKt___CollectionsKt.plus((Collection<? extends ReceiveChannel<E>>) this.f1806x1aebc6d9, c0452xff007c5f);
            reentrantLock.unlock();
            return c0452xff007c5f;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel
    public void registerSelectForSend(@NotNull SelectInstance<?> select, @Nullable Object element) {
        ReentrantLock reentrantLock = this.f1805x8c6fc18a;
        reentrantLock.lock();
        try {
            Object remove = this.f1808x85f0360e.remove(select);
            if (remove != null) {
                select.selectInRegistrationPhase(remove);
            } else {
                reentrantLock.unlock();
                BuildersKt.launch$default(CoroutineScopeKt.CoroutineScope(select.getContext()), null, CoroutineStart.UNDISPATCHED, new C0454xa26b7022(this, element, select, null), 1, null);
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0079 -> B:10:0x007c). Please report as a decompilation issue!!! */
    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.SendChannel
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object send(E e, @NotNull Continuation<? super Unit> continuation) {
        C0455x6ace4341 c0455x6ace4341;
        int i;
        BroadcastChannelImpl<E> broadcastChannelImpl;
        E e2;
        Iterator it;
        if (continuation instanceof C0455x6ace4341) {
            c0455x6ace4341 = (C0455x6ace4341) continuation;
            int i2 = c0455x6ace4341.f3919x9e171bf9;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0455x6ace4341.f3919x9e171bf9 = i2 - Integer.MIN_VALUE;
                Object obj = c0455x6ace4341.f3917x75d576dc;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0455x6ace4341.f3919x9e171bf9;
                if (i == 0) {
                    if (i == 1) {
                        it = c0455x6ace4341.f3916x1378447b;
                        Object obj2 = c0455x6ace4341.f3915x3271d0aa;
                        broadcastChannelImpl = c0455x6ace4341.f3914xfbe0c504;
                        ResultKt.throwOnFailure(obj);
                        E e3 = obj2;
                        if (((Boolean) obj).booleanValue() && broadcastChannelImpl.isClosedForSend()) {
                            throw broadcastChannelImpl.getSendException();
                        }
                        e2 = e3;
                        if (it.hasNext()) {
                            BufferedChannel bufferedChannel = (BufferedChannel) it.next();
                            c0455x6ace4341.f3914xfbe0c504 = broadcastChannelImpl;
                            c0455x6ace4341.f3915x3271d0aa = e2;
                            c0455x6ace4341.f3916x1378447b = it;
                            c0455x6ace4341.f3919x9e171bf9 = 1;
                            Object sendBroadcast$kotlinx_coroutines_core = bufferedChannel.sendBroadcast$kotlinx_coroutines_core(e2, c0455x6ace4341);
                            if (sendBroadcast$kotlinx_coroutines_core == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            e3 = e2;
                            obj = sendBroadcast$kotlinx_coroutines_core;
                            if (((Boolean) obj).booleanValue()) {
                            }
                            e2 = e3;
                            if (it.hasNext()) {
                                return Unit.INSTANCE;
                            }
                        }
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    ReentrantLock reentrantLock = this.f1805x8c6fc18a;
                    reentrantLock.lock();
                    try {
                        if (!isClosedForSend()) {
                            if (this.capacity == -1) {
                                this.f1807xab142723 = e;
                            }
                            List list = this.f1806x1aebc6d9;
                            reentrantLock.unlock();
                            broadcastChannelImpl = this;
                            e2 = e;
                            it = list.iterator();
                            if (it.hasNext()) {
                            }
                        } else {
                            throw getSendException();
                        }
                    } catch (Throwable th) {
                        reentrantLock.unlock();
                        throw th;
                    }
                }
            }
        }
        c0455x6ace4341 = new C0455x6ace4341(this, continuation);
        Object obj3 = c0455x6ace4341.f3917x75d576dc;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0455x6ace4341.f3919x9e171bf9;
        if (i == 0) {
        }
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel
    @NotNull
    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        if (this.f1807xab142723 != BroadcastChannelKt.access$getNO_ELEMENT$p()) {
            str = "CONFLATED_ELEMENT=" + this.f1807xab142723 + "; ";
        } else {
            str = "";
        }
        sb.append(str);
        sb.append("BROADCAST=<");
        sb.append(super.toString());
        sb.append(">; SUBSCRIBERS=");
        sb.append(CollectionsKt___CollectionsKt.joinToString$default(this.f1806x1aebc6d9, ";", "<", ">", 0, null, null, 56, null));
        return sb.toString();
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.SendChannel
    @NotNull
    /* renamed from: trySend-JP2dKIU, reason: not valid java name */
    public Object mo2254trySendJP2dKIU(E element) {
        ReentrantLock reentrantLock = this.f1805x8c6fc18a;
        reentrantLock.lock();
        try {
            if (isClosedForSend()) {
                return super.mo2254trySendJP2dKIU(element);
            }
            List list = this.f1806x1aebc6d9;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    if (((BufferedChannel) it.next()).shouldSendSuspend$kotlinx_coroutines_core()) {
                        return ChannelResult.INSTANCE.m2299failurePtdJZtk();
                    }
                }
            }
            if (this.capacity == -1) {
                this.f1807xab142723 = element;
            }
            Iterator it2 = this.f1806x1aebc6d9.iterator();
            while (it2.hasNext()) {
                ((BufferedChannel) it2.next()).mo2254trySendJP2dKIU(element);
            }
            return ChannelResult.INSTANCE.m2300successJP2dKIU(Unit.INSTANCE);
        } finally {
            reentrantLock.unlock();
        }
    }
}
