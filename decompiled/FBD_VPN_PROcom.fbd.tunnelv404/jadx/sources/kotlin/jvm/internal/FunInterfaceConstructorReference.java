package kotlin.jvm.internal;

import java.io.Serializable;
import kotlin.SinceKotlin;
import kotlin.reflect.KFunction;

@SinceKotlin(version = "1.7")
/* loaded from: classes3.dex */
public class FunInterfaceConstructorReference extends FunctionReference implements Serializable {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Class f1455xfbe0c504;

    public FunInterfaceConstructorReference(Class cls) {
        super(1);
        this.f1455xfbe0c504 = cls;
    }

    @Override // kotlin.jvm.internal.FunctionReference
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FunInterfaceConstructorReference)) {
            return false;
        }
        return this.f1455xfbe0c504.equals(((FunInterfaceConstructorReference) obj).f1455xfbe0c504);
    }

    @Override // kotlin.jvm.internal.FunctionReference
    public int hashCode() {
        return this.f1455xfbe0c504.hashCode();
    }

    @Override // kotlin.jvm.internal.FunctionReference
    public String toString() {
        return "fun interface ".concat(this.f1455xfbe0c504.getName());
    }

    @Override // kotlin.jvm.internal.FunctionReference, kotlin.jvm.internal.CallableReference
    public KFunction getReflected() {
        throw new UnsupportedOperationException("Functional interface constructor does not support reflection");
    }
}
