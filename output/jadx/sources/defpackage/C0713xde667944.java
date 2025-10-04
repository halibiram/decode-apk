package defpackage;

import java.io.Serializable;
import kotlin.collections.AbstractList;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesSerializationProxy;
import kotlin.jvm.internal.Intrinsics;

/* renamed from: 뒝뒷땫돴됨뒘뎠뎠딜땁돼돸둡땟딁땥뒾둥되딠든둔뒐땱뎸뒐뒵땫뎠딄돝돤뒼땤뒝땫딀딝뒵땟듽땮딤땫딸든되듰땜돳땍뒵딟땭땯땔듔둥뒵땰뎬돷듽뎸둬뎡돳뒐돵따됫도땬딽듨둬듻딃뒬뒤땻뒙디둑뎬땱듼딠딀땨땃뒬땀뎡땤뒻돛둠뎽뒈땳듟득딅딄돷땦뎹돳땫됐됫도둬땲디땳땦돛딻땋돠돵됫뎸땫둘땝뎰땣, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0713xde667944 extends AbstractList implements EnumEntries, Serializable {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Enum[] f4601xfbe0c504;

    public C0713xde667944(Enum[] entries) {
        Intrinsics.checkNotNullParameter(entries, "entries");
        this.f4601xfbe0c504 = entries;
    }

    private final Object writeReplace() {
        return new EnumEntriesSerializationProxy(this.f4601xfbe0c504);
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (!(obj instanceof Enum)) {
            return false;
        }
        Enum element = (Enum) obj;
        Intrinsics.checkNotNullParameter(element, "element");
        if (((Enum) ArraysKt___ArraysKt.getOrNull(this.f4601xfbe0c504, element.ordinal())) != element) {
            return false;
        }
        return true;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final Object get(int i) {
        AbstractList.Companion companion = AbstractList.INSTANCE;
        Enum[] enumArr = this.f4601xfbe0c504;
        companion.checkElementIndex$kotlin_stdlib(i, enumArr.length);
        return enumArr[i];
    }

    @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection
    /* renamed from: getSize */
    public final int getF1257x1378447b() {
        return this.f4601xfbe0c504.length;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Enum)) {
            return -1;
        }
        Enum element = (Enum) obj;
        Intrinsics.checkNotNullParameter(element, "element");
        int ordinal = element.ordinal();
        if (((Enum) ArraysKt___ArraysKt.getOrNull(this.f4601xfbe0c504, ordinal)) != element) {
            return -1;
        }
        return ordinal;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        if (!(obj instanceof Enum)) {
            return -1;
        }
        Enum element = (Enum) obj;
        Intrinsics.checkNotNullParameter(element, "element");
        return indexOf(element);
    }
}
