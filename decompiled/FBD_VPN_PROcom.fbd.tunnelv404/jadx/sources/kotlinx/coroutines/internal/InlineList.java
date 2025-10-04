package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmInline;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0081@\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0013\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001e\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0006\u001a\u00028\u0000H\u0086\u0002¢\u0006\u0004\b\u0007\u0010\bJ$\u0010\u000f\u001a\u00020\u000b2\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000b0\nH\u0086\b¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u0011\u001a\u00020\u0010HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0014\u001a\u00020\u0013HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u001a\u0010\u0018\u001a\u00020\u00172\b\u0010\u0016\u001a\u0004\u0018\u00010\u0002HÖ\u0003¢\u0006\u0004\b\u0018\u0010\u0019\u0088\u0001\u0003\u0092\u0001\u0004\u0018\u00010\u0002¨\u0006\u001a"}, d2 = {"Lkotlinx/coroutines/internal/InlineList;", ExifInterface.LONGITUDE_EAST, "", "holder", "constructor-impl", "(Ljava/lang/Object;)Ljava/lang/Object;", "element", "plus-FjFbRPM", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "plus", "Lkotlin/Function1;", "", "action", "forEachReversed-impl", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "forEachReversed", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
@SourceDebugExtension({"SMAP\nInlineList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InlineList.kt\nkotlinx/coroutines/internal/InlineList\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,45:1\n1#2:46\n*E\n"})
/* loaded from: classes3.dex */
public final class InlineList<E> {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Object f2391xfbe0c504;

    public /* synthetic */ InlineList(Object obj) {
        this.f2391xfbe0c504 = obj;
    }

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ InlineList m2335boximpl(Object obj) {
        return new InlineList(obj);
    }

    @NotNull
    /* renamed from: constructor-impl, reason: not valid java name */
    public static <E> Object m2336constructorimpl(@Nullable Object obj) {
        return obj;
    }

    /* renamed from: constructor-impl$default, reason: not valid java name */
    public static /* synthetic */ Object m2337constructorimpl$default(Object obj, int i, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i & 1) != 0) {
            obj = null;
        }
        return m2336constructorimpl(obj);
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m2338equalsimpl(Object obj, Object obj2) {
        return (obj2 instanceof InlineList) && Intrinsics.areEqual(obj, ((InlineList) obj2).getF2391xfbe0c504());
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2339equalsimpl0(Object obj, Object obj2) {
        return Intrinsics.areEqual(obj, obj2);
    }

    /* renamed from: forEachReversed-impl, reason: not valid java name */
    public static final void m2340forEachReversedimpl(Object obj, @NotNull Function1<? super E, Unit> function1) {
        if (obj == null) {
            return;
        }
        if (!(obj instanceof ArrayList)) {
            function1.invoke(obj);
            return;
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>");
        ArrayList arrayList = (ArrayList) obj;
        int size = arrayList.size();
        while (true) {
            size--;
            if (-1 < size) {
                function1.invoke((Object) arrayList.get(size));
            } else {
                return;
            }
        }
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m2341hashCodeimpl(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    @NotNull
    /* renamed from: plus-FjFbRPM, reason: not valid java name */
    public static final Object m2342plusFjFbRPM(Object obj, E e) {
        if (obj == null) {
            return m2336constructorimpl(e);
        }
        if (obj instanceof ArrayList) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>");
            ((ArrayList) obj).add(e);
            return m2336constructorimpl(obj);
        }
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(obj);
        arrayList.add(e);
        return m2336constructorimpl(arrayList);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m2343toStringimpl(Object obj) {
        return "InlineList(holder=" + obj + ')';
    }

    public boolean equals(Object other) {
        return m2338equalsimpl(this.f2391xfbe0c504, other);
    }

    public int hashCode() {
        return m2341hashCodeimpl(this.f2391xfbe0c504);
    }

    public String toString() {
        return m2343toStringimpl(this.f2391xfbe0c504);
    }

    /* renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ Object getF2391xfbe0c504() {
        return this.f2391xfbe0c504;
    }
}
