package kotlin.text;

import defpackage.InterfaceC0746x860f30ac;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class RegexKt$fromInt$1$1 implements Function1<Enum<Object>, Boolean> {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f1681xfbe0c504;

    public RegexKt$fromInt$1$1(int i) {
        this.f1681xfbe0c504 = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Boolean invoke(Enum<Object> r3) {
        InterfaceC0746x860f30ac interfaceC0746x860f30ac = (InterfaceC0746x860f30ac) r3;
        return Boolean.valueOf((interfaceC0746x860f30ac.getMask() & this.f1681xfbe0c504) == interfaceC0746x860f30ac.getValue());
    }
}
