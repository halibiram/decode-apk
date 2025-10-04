package defpackage;

import java.lang.ref.SoftReference;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* renamed from: 딟땧땝뒨돴뎡뒬뒀땳땠딎뒷뎹뒘둘된뎡듐땰뎨딽땭뎹됴땠득딎됫땡듼돵두딸땸땃딤딨땋뒾뒻땯딄딹드딟듌돳딅디돴뒉둡둔돤뒼땳둘들딤돠땬딐든둡돝뎸땣땣땸뒵딜딠뒝땔땧딠둑땥땁드땲땭뒉드땲땠땁땪땀땯될뎠뒝디땱딃듬듻뒐듟뒹뒙득뎠듬딨뒬땩뒘뒤뒀뎽땹땅듻둘뒬땲돶딃딻땄땦땫땫뎡땐땸땫돨, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0990x18ceb513 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public volatile SoftReference f5166xfbe0c504;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final synchronized Object m3558xfbe0c504(Function0 factory) {
        Intrinsics.checkNotNullParameter(factory, "factory");
        Object obj = this.f5166xfbe0c504.get();
        if (obj != null) {
            return obj;
        }
        Object invoke = factory.invoke();
        this.f5166xfbe0c504 = new SoftReference(invoke);
        return invoke;
    }
}
