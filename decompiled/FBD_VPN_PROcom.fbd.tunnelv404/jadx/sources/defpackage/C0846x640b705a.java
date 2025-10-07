package defpackage;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.TypesJVMKt;
import okhttp3.internal.CommonHttpUrl;

/* renamed from: 듨듰뎻들듟땠땤땲딄돶딜땟뎻둔둠뎨딄땬땬뒻돠돝땁딀돰땔돝땍듰땰뒉땤듻뒹뎰든듌딤딞땐딃득딌땯뒻땹땀될듌듔돸땲딹뒋땮돠따듟딞딄땥뎡딹땦돝돵딤딄땨듌땅땬돨듐땸둠땨딠됫든뒹듌듨딟뎹땟딁뎸될딄뒻뒵뎬돳듼돠듽땨둣딻딃땅돰뎻딨땃돰땡딟딹뒻땥뒻땝딻듨돷땳듟뎰뒻됫땯땜둡땄딹뎬듐뒼, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0846x640b705a implements GenericArrayType, Type {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Type f4949xfbe0c504;

    public C0846x640b705a(Type elementType) {
        Intrinsics.checkNotNullParameter(elementType, "elementType");
        this.f4949xfbe0c504 = elementType;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof GenericArrayType) {
            if (Intrinsics.areEqual(this.f4949xfbe0c504, ((GenericArrayType) obj).getGenericComponentType())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.lang.reflect.GenericArrayType
    public final Type getGenericComponentType() {
        return this.f4949xfbe0c504;
    }

    @Override // java.lang.reflect.Type
    public final String getTypeName() {
        return TypesJVMKt.access$typeToString(this.f4949xfbe0c504) + CommonHttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
    }

    public final int hashCode() {
        return this.f4949xfbe0c504.hashCode();
    }

    public final String toString() {
        return getTypeName();
    }
}
