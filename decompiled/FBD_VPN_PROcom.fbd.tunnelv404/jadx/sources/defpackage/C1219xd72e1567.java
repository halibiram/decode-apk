package defpackage;

import java.io.Serializable;
import kotlin.InitializedLazyImpl;
import kotlin.Lazy;
import kotlin.UNINITIALIZED_VALUE;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* renamed from: 땨땅땔땲듰두뒨땐땃뒀딁둣둔돳땬둘듰딁땪딌딨딠땲됩듼딤뒨듼돳땮땮딠됫들뎬돨뎻득땋땫땸땜딄뒘뒹뒙둥뒬듻뒼듻둑듔듔뒤돝땄딜뒛둘둡딤두딀뒋됨듸땟듼뎻뒻땯뒝딞됩땮땯듔따딤땋땧뒨뎽땹땜둑땤땟땥땣듨뎸뒋둘땃뒀듐따됨된뒉돼돴든따딄딞돴땁딝뎬두듸땹딞딐될땱땲듐뒹뒀땫땻듽땯땳될듐, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1219xd72e1567 implements Lazy, Serializable {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public Function0 f5623xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public volatile Object f5624x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final Object f5625x1378447b;

    public C1219xd72e1567(Object obj, Function0 initializer) {
        Intrinsics.checkNotNullParameter(initializer, "initializer");
        this.f5623xfbe0c504 = initializer;
        this.f5624x3271d0aa = UNINITIALIZED_VALUE.INSTANCE;
        this.f5625x1378447b = obj == null ? this : obj;
    }

    private final Object writeReplace() {
        return new InitializedLazyImpl(getValue());
    }

    @Override // kotlin.Lazy
    public final Object getValue() {
        Object obj;
        Object obj2 = this.f5624x3271d0aa;
        UNINITIALIZED_VALUE uninitialized_value = UNINITIALIZED_VALUE.INSTANCE;
        if (obj2 != uninitialized_value) {
            return obj2;
        }
        synchronized (this.f5625x1378447b) {
            obj = this.f5624x3271d0aa;
            if (obj == uninitialized_value) {
                Function0 function0 = this.f5623xfbe0c504;
                Intrinsics.checkNotNull(function0);
                obj = function0.invoke();
                this.f5624x3271d0aa = obj;
                this.f5623xfbe0c504 = null;
            }
        }
        return obj;
    }

    @Override // kotlin.Lazy
    public final boolean isInitialized() {
        if (this.f5624x3271d0aa != UNINITIALIZED_VALUE.INSTANCE) {
            return true;
        }
        return false;
    }

    public final String toString() {
        if (isInitialized()) {
            return String.valueOf(getValue());
        }
        return "Lazy value not initialized yet.";
    }
}
