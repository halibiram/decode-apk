package kotlin.collections.unsigned;

import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.collections.AbstractList;
import kotlin.collections.ArraysKt___ArraysKt;

@Metadata(d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000e*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004J\b\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u0002H\u0096\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0018\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0006H\u0096\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0017\u0010\u0015R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\u0018"}, d2 = {"kotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$3", "Lkotlin/collections/AbstractList;", "Lkotlin/UByte;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "size", "", "getSize", "()I", "isEmpty", "", "contains", "element", "contains-7apg3OU", "(B)Z", "get", "index", "get-w2LRezQ", "(I)B", "indexOf", "indexOf-7apg3OU", "(B)I", "lastIndexOf", "lastIndexOf-7apg3OU", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class UArraysKt___UArraysJvmKt$asList$3 extends AbstractList<UByte> implements RandomAccess {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ byte[] f1313xfbe0c504;

    public UArraysKt___UArraysJvmKt$asList$3(byte[] bArr) {
        this.f1313xfbe0c504 = bArr;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (!(obj instanceof UByte)) {
            return false;
        }
        return m1957contains7apg3OU(((UByte) obj).getData());
    }

    /* renamed from: contains-7apg3OU, reason: not valid java name */
    public boolean m1957contains7apg3OU(byte element) {
        return UByteArray.m1783contains7apg3OU(this.f1313xfbe0c504, element);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public /* bridge */ /* synthetic */ Object get(int i) {
        return UByte.m1773boximpl(m1958getw2LRezQ(i));
    }

    /* renamed from: get-w2LRezQ, reason: not valid java name */
    public byte m1958getw2LRezQ(int index) {
        return UByteArray.m1787getw2LRezQ(this.f1313xfbe0c504, index);
    }

    @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection
    /* renamed from: getSize */
    public int getF1257x1378447b() {
        return UByteArray.m1788getSizeimpl(this.f1313xfbe0c504);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (!(obj instanceof UByte)) {
            return -1;
        }
        return m1959indexOf7apg3OU(((UByte) obj).getData());
    }

    /* renamed from: indexOf-7apg3OU, reason: not valid java name */
    public int m1959indexOf7apg3OU(byte element) {
        return ArraysKt___ArraysKt.indexOf(this.f1313xfbe0c504, element);
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return UByteArray.m1790isEmptyimpl(this.f1313xfbe0c504);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (!(obj instanceof UByte)) {
            return -1;
        }
        return m1960lastIndexOf7apg3OU(((UByte) obj).getData());
    }

    /* renamed from: lastIndexOf-7apg3OU, reason: not valid java name */
    public int m1960lastIndexOf7apg3OU(byte element) {
        return ArraysKt___ArraysKt.lastIndexOf(this.f1313xfbe0c504, element);
    }
}
