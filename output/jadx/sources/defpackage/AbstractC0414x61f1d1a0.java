package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Pair;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.TuplesKt;
import kotlin.UByteArray;
import kotlin.UIntArray;
import kotlin.ULongArray;
import kotlin.UShortArray;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.AbstractC0296x1378447b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* renamed from: 도땱되돤딝땡땩땐딌땸딀뒷땹뒈뒾돵둘땪딝돼땤뒛뒋되뒷땲뒷됐딎돶땭되듟땹돶땬땟돨뒵돸듔들듨딅땠둡듬든딅둠뒹뎻듬땝됐된딹땠돳땫듼땀딝딝둬돷뎰딹딹딤딀딎땪땮딅딟돸뎽뒀딜딸땅둬됫뎹듌둘듐딻돰땵땪땵땱땫둠도땃뎽딜땳따땄된따듻뎬듔둬땰땄뎨들돵뒛땹디듸돵됩돛디됨됐뒤땟딝땄땟딅, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC0414x61f1d1a0 extends AbstractC0413x7cc5182f {
    /* JADX WARN: Multi-variable type inference failed */
    @SinceKotlin(version = "1.3")
    @PublishedApi
    @JvmName(name = "contentDeepEquals")
    public static <T> boolean contentDeepEquals(@Nullable T[] tArr, @Nullable T[] tArr2) {
        if (tArr == tArr2) {
            return true;
        }
        if (tArr == 0 || tArr2 == 0 || tArr.length != tArr2.length) {
            return false;
        }
        int length = tArr.length;
        for (int i = 0; i < length; i++) {
            Object[] objArr = tArr[i];
            Object[] objArr2 = tArr2[i];
            if (objArr != objArr2) {
                if (objArr == 0 || objArr2 == 0) {
                    return false;
                }
                if ((objArr instanceof Object[]) && (objArr2 instanceof Object[])) {
                    if (!contentDeepEquals(objArr, objArr2)) {
                        return false;
                    }
                } else if ((objArr instanceof byte[]) && (objArr2 instanceof byte[])) {
                    if (!Arrays.equals((byte[]) objArr, (byte[]) objArr2)) {
                        return false;
                    }
                } else if ((objArr instanceof short[]) && (objArr2 instanceof short[])) {
                    if (!Arrays.equals((short[]) objArr, (short[]) objArr2)) {
                        return false;
                    }
                } else if ((objArr instanceof int[]) && (objArr2 instanceof int[])) {
                    if (!Arrays.equals((int[]) objArr, (int[]) objArr2)) {
                        return false;
                    }
                } else if ((objArr instanceof long[]) && (objArr2 instanceof long[])) {
                    if (!Arrays.equals((long[]) objArr, (long[]) objArr2)) {
                        return false;
                    }
                } else if ((objArr instanceof float[]) && (objArr2 instanceof float[])) {
                    if (!Arrays.equals((float[]) objArr, (float[]) objArr2)) {
                        return false;
                    }
                } else if ((objArr instanceof double[]) && (objArr2 instanceof double[])) {
                    if (!Arrays.equals((double[]) objArr, (double[]) objArr2)) {
                        return false;
                    }
                } else if ((objArr instanceof char[]) && (objArr2 instanceof char[])) {
                    if (!Arrays.equals((char[]) objArr, (char[]) objArr2)) {
                        return false;
                    }
                } else if ((objArr instanceof boolean[]) && (objArr2 instanceof boolean[])) {
                    if (!Arrays.equals((boolean[]) objArr, (boolean[]) objArr2)) {
                        return false;
                    }
                } else if ((objArr instanceof UByteArray) && (objArr2 instanceof UByteArray)) {
                    if (!AbstractC1262x6e65a187.m4029contentEqualskV0jMPg(((UByteArray) objArr).getStorage(), ((UByteArray) objArr2).getStorage())) {
                        return false;
                    }
                } else if ((objArr instanceof UShortArray) && (objArr2 instanceof UShortArray)) {
                    if (!AbstractC1262x6e65a187.m4027contentEqualsFGO6Aew(((UShortArray) objArr).getStorage(), ((UShortArray) objArr2).getStorage())) {
                        return false;
                    }
                } else if ((objArr instanceof UIntArray) && (objArr2 instanceof UIntArray)) {
                    if (!AbstractC1262x6e65a187.m4028contentEqualsKJPZfPQ(((UIntArray) objArr).getStorage(), ((UIntArray) objArr2).getStorage())) {
                        return false;
                    }
                } else if ((objArr instanceof ULongArray) && (objArr2 instanceof ULongArray)) {
                    if (!AbstractC1262x6e65a187.m4030contentEqualslec5QzE(((ULongArray) objArr).getStorage(), ((ULongArray) objArr2).getStorage())) {
                        return false;
                    }
                } else if (!Intrinsics.areEqual(objArr, objArr2)) {
                    return false;
                }
            }
        }
        return true;
    }

    @SinceKotlin(version = "1.3")
    @JvmName(name = "contentDeepToString")
    @NotNull
    @PublishedApi
    public static <T> String contentDeepToString(@Nullable T[] tArr) {
        if (tArr == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder((AbstractC0296x1378447b.coerceAtMost(tArr.length, 429496729) * 5) + 2);
        m3076xfbe0c504(tArr, sb, new ArrayList());
        return sb.toString();
    }

    @NotNull
    public static final <T> List<T> flatten(@NotNull T[][] tArr) {
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        int i = 0;
        for (T[] tArr2 : tArr) {
            i += tArr2.length;
        }
        ArrayList arrayList = new ArrayList(i);
        for (T[] tArr3 : tArr) {
            AbstractC0590xf7db57e6.addAll(arrayList, tArr3);
        }
        return arrayList;
    }

    @NotNull
    public static final <T, R> Pair<List<T>, List<R>> unzip(@NotNull Pair<? extends T, ? extends R>[] pairArr) {
        Intrinsics.checkNotNullParameter(pairArr, "<this>");
        ArrayList arrayList = new ArrayList(pairArr.length);
        ArrayList arrayList2 = new ArrayList(pairArr.length);
        for (Pair<? extends T, ? extends R> pair : pairArr) {
            arrayList.add(pair.getFirst());
            arrayList2.add(pair.getSecond());
        }
        return TuplesKt.to(arrayList, arrayList2);
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final void m3076xfbe0c504(Object[] objArr, StringBuilder sb, ArrayList arrayList) {
        if (arrayList.contains(objArr)) {
            sb.append("[...]");
            return;
        }
        arrayList.add(objArr);
        sb.append('[');
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                sb.append(", ");
            }
            Object obj = objArr[i];
            if (obj == null) {
                sb.append("null");
            } else if (obj instanceof Object[]) {
                m3076xfbe0c504((Object[]) obj, sb, arrayList);
            } else if (obj instanceof byte[]) {
                String arrays = Arrays.toString((byte[]) obj);
                Intrinsics.checkNotNullExpressionValue(arrays, "toString(...)");
                sb.append(arrays);
            } else if (obj instanceof short[]) {
                String arrays2 = Arrays.toString((short[]) obj);
                Intrinsics.checkNotNullExpressionValue(arrays2, "toString(...)");
                sb.append(arrays2);
            } else if (obj instanceof int[]) {
                String arrays3 = Arrays.toString((int[]) obj);
                Intrinsics.checkNotNullExpressionValue(arrays3, "toString(...)");
                sb.append(arrays3);
            } else if (obj instanceof long[]) {
                String arrays4 = Arrays.toString((long[]) obj);
                Intrinsics.checkNotNullExpressionValue(arrays4, "toString(...)");
                sb.append(arrays4);
            } else if (obj instanceof float[]) {
                String arrays5 = Arrays.toString((float[]) obj);
                Intrinsics.checkNotNullExpressionValue(arrays5, "toString(...)");
                sb.append(arrays5);
            } else if (obj instanceof double[]) {
                String arrays6 = Arrays.toString((double[]) obj);
                Intrinsics.checkNotNullExpressionValue(arrays6, "toString(...)");
                sb.append(arrays6);
            } else if (obj instanceof char[]) {
                String arrays7 = Arrays.toString((char[]) obj);
                Intrinsics.checkNotNullExpressionValue(arrays7, "toString(...)");
                sb.append(arrays7);
            } else if (obj instanceof boolean[]) {
                String arrays8 = Arrays.toString((boolean[]) obj);
                Intrinsics.checkNotNullExpressionValue(arrays8, "toString(...)");
                sb.append(arrays8);
            } else if (obj instanceof UByteArray) {
                sb.append(AbstractC1262x6e65a187.m4035contentToString2csIQuQ(((UByteArray) obj).getStorage()));
            } else if (obj instanceof UShortArray) {
                sb.append(AbstractC1262x6e65a187.m4037contentToStringd6D3K8(((UShortArray) obj).getStorage()));
            } else if (obj instanceof UIntArray) {
                sb.append(AbstractC1262x6e65a187.m4036contentToStringXUkPCBk(((UIntArray) obj).getStorage()));
            } else if (obj instanceof ULongArray) {
                sb.append(AbstractC1262x6e65a187.m4038contentToStringuLth9ew(((ULongArray) obj).getStorage()));
            } else {
                sb.append(obj.toString());
            }
        }
        sb.append(']');
        arrayList.remove(CollectionsKt__CollectionsKt.getLastIndex(arrayList));
    }
}
