package defpackage;

import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.NotImplementedError;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeParameter;
import kotlin.reflect.TypesJVMKt;

/* renamed from: 땭득둔뎰땅둑돵땝뎹땀딅뎽뒾둬땧돨땨딽땲들뒤둔듌둥디디땯땝땠듬땋돤듻땠돴듻듻될뎠뒤뒙뒀뒈딨땩딀듐땫땃딞딜땋땍듐땯따뒹듬딻딽뒋돛든들뎡듽뒙듸딠들땳딅뎽됫뎡땪둘땪뎸될따땬땄뒐땩뒙뒀돠뒬듼땄돨돛돨둡딸딄땄뎹땣돳딞땨뒷뒘땪따돤땜딞돠딤딀돠땍땅듨든딽됫둬듌뒝뒼든땻땜땍땳땟, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1252xfbbe384d implements TypeVariable, Type {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final KTypeParameter f5672xfbe0c504;

    public C1252xfbbe384d(KTypeParameter typeParameter) {
        Intrinsics.checkNotNullParameter(typeParameter, "typeParameter");
        this.f5672xfbe0c504 = typeParameter;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof TypeVariable) && Intrinsics.areEqual(this.f5672xfbe0c504.getName(), ((TypeVariable) obj).getName())) {
            getGenericDeclaration();
            throw null;
        }
        return false;
    }

    @Override // java.lang.reflect.TypeVariable
    public final Type[] getBounds() {
        Type m2041xfbe0c504;
        List<KType> upperBounds = this.f5672xfbe0c504.getUpperBounds();
        ArrayList arrayList = new ArrayList(AbstractC0587xb7546d05.collectionSizeOrDefault(upperBounds, 10));
        Iterator<T> it = upperBounds.iterator();
        while (it.hasNext()) {
            m2041xfbe0c504 = TypesJVMKt.m2041xfbe0c504((KType) it.next(), true);
            arrayList.add(m2041xfbe0c504);
        }
        return (Type[]) arrayList.toArray(new Type[0]);
    }

    @Override // java.lang.reflect.TypeVariable
    public final GenericDeclaration getGenericDeclaration() {
        throw new NotImplementedError(AbstractC0362x4440ab85.m2952x5ac5058d("An operation is not implemented: ", "getGenericDeclaration() is not yet supported for type variables created from KType: " + this.f5672xfbe0c504));
    }

    @Override // java.lang.reflect.TypeVariable
    public final String getName() {
        return this.f5672xfbe0c504.getName();
    }

    @Override // java.lang.reflect.Type
    public final String getTypeName() {
        return this.f5672xfbe0c504.getName();
    }

    public final int hashCode() {
        this.f5672xfbe0c504.getName().hashCode();
        getGenericDeclaration();
        throw null;
    }

    public final String toString() {
        return this.f5672xfbe0c504.getName();
    }
}
