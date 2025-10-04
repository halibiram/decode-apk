package defpackage;

import androidx.lifecycle.Observer;
import kotlin.Function;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;

/* renamed from: 딻딻딸따뒻돨땧드뎰돝듰땔듌돛땐돰땮듰뎻딸딁땯듔둘됩되딜뒨듻뎨드뎨딁땫뎠뒘되땸뎹됐둡든땵땸뒾됴돶돶딃땠땻뎰땸딁뎸뎸땥듼둥든딞뒾딨딟땃돝뒈돰땧듬듌들된둠땱땫듌돵땹땲땸땰뒵뒐딝뎸땐딽돰뎹딐뒀되땣둬뒀땲듽돨돼땬돵뒝땔땫들땤딟땣딨땳듻땫땔땩돠뎽둡땝땸땮뒈땤든뒀돛득딝땮땝, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class C1054x80ce2c65 implements Observer, FunctionAdapter {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ C1052x3eba90a4 f5310xfbe0c504;

    public C1054x80ce2c65(C1052x3eba90a4 function) {
        Intrinsics.checkNotNullParameter(function, "function");
        this.f5310xfbe0c504 = function;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter)) {
            return false;
        }
        return Intrinsics.areEqual(this.f5310xfbe0c504, ((FunctionAdapter) obj).getFunctionDelegate());
    }

    @Override // kotlin.jvm.internal.FunctionAdapter
    public final Function getFunctionDelegate() {
        return this.f5310xfbe0c504;
    }

    public final int hashCode() {
        return this.f5310xfbe0c504.hashCode();
    }

    @Override // androidx.lifecycle.Observer
    public final /* synthetic */ void onChanged(Object obj) {
        this.f5310xfbe0c504.invoke(obj);
    }
}
