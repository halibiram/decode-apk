package kotlin.collections;

import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004J\b\u0010\t\u001a\u00020\nH\u0016J\u0011\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u0002H\u0096\u0002J\u0016\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0006H\u0096\u0002¢\u0006\u0002\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0002H\u0016J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0002H\u0016R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\u0012"}, d2 = {"kotlin/collections/ArraysKt___ArraysJvmKt$asList$6", "Lkotlin/collections/AbstractList;", "", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "size", "", "getSize", "()I", "isEmpty", "", "contains", "element", "get", "index", "(I)Ljava/lang/Double;", "indexOf", "lastIndexOf", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\n_ArraysJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _ArraysJvm.kt\nkotlin/collections/ArraysKt___ArraysJvmKt$asList$6\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,3051:1\n12697#2,2:3052\n1754#2,6:3054\n1862#2,6:3060\n*S KotlinDebug\n*F\n+ 1 _ArraysJvm.kt\nkotlin/collections/ArraysKt___ArraysJvmKt$asList$6\n*L\n213#1:3052,2\n215#1:3054,6\n216#1:3060,6\n*E\n"})
/* loaded from: classes3.dex */
public final class ArraysKt___ArraysJvmKt$asList$6 extends AbstractList<Double> implements RandomAccess {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ double[] f1220xfbe0c504;

    public ArraysKt___ArraysJvmKt$asList$6(double[] dArr) {
        this.f1220xfbe0c504 = dArr;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Double) {
            return contains(((Number) obj).doubleValue());
        }
        return false;
    }

    @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection
    public int getSize() {
        return this.f1220xfbe0c504.length;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof Double) {
            return indexOf(((Number) obj).doubleValue());
        }
        return -1;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        if (this.f1220xfbe0c504.length == 0) {
            return true;
        }
        return false;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof Double) {
            return lastIndexOf(((Number) obj).doubleValue());
        }
        return -1;
    }

    public boolean contains(double element) {
        for (double d : this.f1220xfbe0c504) {
            if (Double.doubleToLongBits(d) == Double.doubleToLongBits(element)) {
                return true;
            }
        }
        return false;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public Double get(int index) {
        return Double.valueOf(this.f1220xfbe0c504[index]);
    }

    public int indexOf(double element) {
        double[] dArr = this.f1220xfbe0c504;
        int length = dArr.length;
        for (int i = 0; i < length; i++) {
            if (Double.doubleToLongBits(dArr[i]) == Double.doubleToLongBits(element)) {
                return i;
            }
        }
        return -1;
    }

    public int lastIndexOf(double element) {
        double[] dArr = this.f1220xfbe0c504;
        int length = dArr.length - 1;
        if (length < 0) {
            return -1;
        }
        while (true) {
            int i = length - 1;
            if (Double.doubleToLongBits(dArr[length]) == Double.doubleToLongBits(element)) {
                return length;
            }
            if (i < 0) {
                return -1;
            }
            length = i;
        }
    }
}
