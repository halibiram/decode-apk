package defpackage;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Incomplete;
import kotlinx.coroutines.JobSupportKt;
import kotlinx.coroutines.NodeList;
import kotlinx.coroutines.internal.Symbol;

/* renamed from: 딁땤뎻땦땰듼땤돴듻둠디뒬돷뎰딄뒙듐땠땅듨뒈땨둣도땳땩돷뒛땟돨듰딹듟땍딸듼뎨디뒛뒼든듬뒵디듰땱땜딨뒬땝둥딜딟돠땳땪돵뒙뒨둑듐뒵뒋듸딝땦땔뒬땍땣땧뎨땄뎬둬들돷돼땫됴든듼돠딐땱딎둠뒛듬돛딞들됐땬땭뒐딄딹뎸뎽땠딹뒋뎽뒼땲딸드땨두뎨딎디돳됫뎨딠땣둡땅듨뒘뎡딌땃땣땨돛든땹, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0904x698af4e0 implements Incomplete {

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f5035x3271d0aa = AtomicIntegerFieldUpdater.newUpdater(C0904x698af4e0.class, "_isCompleting$volatile");

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f5036x1378447b = AtomicReferenceFieldUpdater.newUpdater(C0904x698af4e0.class, Object.class, "_rootCause$volatile");

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f5037x75d576dc = AtomicReferenceFieldUpdater.newUpdater(C0904x698af4e0.class, Object.class, "_exceptionsHolder$volatile");
    private volatile /* synthetic */ Object _exceptionsHolder$volatile;
    private volatile /* synthetic */ int _isCompleting$volatile = 0;
    private volatile /* synthetic */ Object _rootCause$volatile;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final NodeList f5038xfbe0c504;

    public C0904x698af4e0(NodeList nodeList, Throwable th) {
        this.f5038xfbe0c504 = nodeList;
        this._rootCause$volatile = th;
    }

    @Override // kotlinx.coroutines.Incomplete
    public final NodeList getList() {
        return this.f5038xfbe0c504;
    }

    @Override // kotlinx.coroutines.Incomplete
    public final boolean isActive() {
        if (m3470x3271d0aa() == null) {
            return true;
        }
        return false;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Finishing[cancelling=");
        sb.append(m3471x1378447b());
        sb.append(", completing=");
        boolean z = true;
        if (f5035x3271d0aa.get(this) != 1) {
            z = false;
        }
        sb.append(z);
        sb.append(", rootCause=");
        sb.append(m3470x3271d0aa());
        sb.append(", exceptions=");
        sb.append(f5037x75d576dc.get(this));
        sb.append(", list=");
        sb.append(this.f5038xfbe0c504);
        sb.append(']');
        return sb.toString();
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final void m3469xfbe0c504(Throwable th) {
        Throwable m3470x3271d0aa = m3470x3271d0aa();
        if (m3470x3271d0aa == null) {
            f5036x1378447b.set(this, th);
            return;
        }
        if (th == m3470x3271d0aa) {
            return;
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f5037x75d576dc;
        Object obj = atomicReferenceFieldUpdater.get(this);
        if (obj == null) {
            atomicReferenceFieldUpdater.set(this, th);
            return;
        }
        if (obj instanceof Throwable) {
            if (th == obj) {
                return;
            }
            ArrayList arrayList = new ArrayList(4);
            arrayList.add(obj);
            arrayList.add(th);
            atomicReferenceFieldUpdater.set(this, arrayList);
            return;
        }
        if (obj instanceof ArrayList) {
            ((ArrayList) obj).add(th);
        } else {
            throw new IllegalStateException(("State is " + obj).toString());
        }
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final Throwable m3470x3271d0aa() {
        return (Throwable) f5036x1378447b.get(this);
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final boolean m3471x1378447b() {
        if (m3470x3271d0aa() != null) {
            return true;
        }
        return false;
    }

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final ArrayList m3472x75d576dc(Throwable th) {
        ArrayList arrayList;
        Symbol symbol;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f5037x75d576dc;
        Object obj = atomicReferenceFieldUpdater.get(this);
        if (obj == null) {
            arrayList = new ArrayList(4);
        } else if (obj instanceof Throwable) {
            ArrayList arrayList2 = new ArrayList(4);
            arrayList2.add(obj);
            arrayList = arrayList2;
        } else if (obj instanceof ArrayList) {
            arrayList = (ArrayList) obj;
        } else {
            throw new IllegalStateException(("State is " + obj).toString());
        }
        Throwable m3470x3271d0aa = m3470x3271d0aa();
        if (m3470x3271d0aa != null) {
            arrayList.add(0, m3470x3271d0aa);
        }
        if (th != null && !Intrinsics.areEqual(th, m3470x3271d0aa)) {
            arrayList.add(th);
        }
        symbol = JobSupportKt.f1794x75d576dc;
        atomicReferenceFieldUpdater.set(this, symbol);
        return arrayList;
    }
}
