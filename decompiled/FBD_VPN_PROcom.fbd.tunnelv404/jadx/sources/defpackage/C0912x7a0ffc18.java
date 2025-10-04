package defpackage;

import java.util.List;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;

/* renamed from: 딃뒻땁뒾땣든딞딸땠딃땸듰딝땯땪뒉딠딟뎬땄땻땟뒷딽듔돝딅땰땵딐딞돠딻돛돸땬땍딻돛딝딎딅땡듰땄땱뎬땯됐땥땋땹땁둣될돨돛땄돨들뎨듰딜뒙뒝든딟딨땠땋돸딃땯땠땥땰듬딤뒷됴땡딌딎땬딃땰딻듔딁들땤땭땸돝듟땵땡돷도뎸듟땅듔땐땵땠듻뒾땀돰딄땭드땅딌듬땫도딨뒈듟땍됩뒹뒻딟듼땃뒀돶, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0912x7a0ffc18 implements KType {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final KType f5053xfbe0c504;

    public C0912x7a0ffc18(KType origin) {
        Intrinsics.checkNotNullParameter(origin, "origin");
        this.f5053xfbe0c504 = origin;
    }

    public final boolean equals(Object obj) {
        C0912x7a0ffc18 c0912x7a0ffc18;
        KType kType;
        KType kType2;
        if (obj == null) {
            return false;
        }
        KClassifier kClassifier = null;
        if (obj instanceof C0912x7a0ffc18) {
            c0912x7a0ffc18 = (C0912x7a0ffc18) obj;
        } else {
            c0912x7a0ffc18 = null;
        }
        if (c0912x7a0ffc18 != null) {
            kType = c0912x7a0ffc18.f5053xfbe0c504;
        } else {
            kType = null;
        }
        KType kType3 = this.f5053xfbe0c504;
        if (!Intrinsics.areEqual(kType3, kType)) {
            return false;
        }
        KClassifier classifier = kType3.getClassifier();
        if (classifier instanceof KClass) {
            if (obj instanceof KType) {
                kType2 = (KType) obj;
            } else {
                kType2 = null;
            }
            if (kType2 != null) {
                kClassifier = kType2.getClassifier();
            }
            if (kClassifier != null && (kClassifier instanceof KClass)) {
                return Intrinsics.areEqual(JvmClassMappingKt.getJavaClass((KClass) classifier), JvmClassMappingKt.getJavaClass((KClass) kClassifier));
            }
        }
        return false;
    }

    @Override // kotlin.reflect.KAnnotatedElement
    public final List getAnnotations() {
        return this.f5053xfbe0c504.getAnnotations();
    }

    @Override // kotlin.reflect.KType
    public final List getArguments() {
        return this.f5053xfbe0c504.getArguments();
    }

    @Override // kotlin.reflect.KType
    public final KClassifier getClassifier() {
        return this.f5053xfbe0c504.getClassifier();
    }

    public final int hashCode() {
        return this.f5053xfbe0c504.hashCode();
    }

    @Override // kotlin.reflect.KType
    public final boolean isMarkedNullable() {
        return this.f5053xfbe0c504.isMarkedNullable();
    }

    public final String toString() {
        return "KTypeWrapper: " + this.f5053xfbe0c504;
    }
}
