package defpackage;

import androidx.exifinterface.media.ExifInterface;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* renamed from: 도땁땭땀뒵딌돸듌딀뒻땫땻뒹뒙땋땬둔땬땟땦듼딝땋뒈땍뒛땦듰땹땔됫둠땯땻듬땵땸뎹뎠땨둡듽딝뎸뒤듽뎬뒐뒹땬땅뒵둑됴딐딟돷듨듻땸둔듟뒋땸땀딄돰뒷뒘딸땬땡딻뒝땨땥듰뒙땦돶딠될듽된땔뎽뒻든땣돝땱도뒝땟든땃돷돨땦뒘땣돤딃뒉딻땋땣드듻뒾땟뒬드딠듐돠뒈뎸땲도따땸땋땯됫돨땡듼듌땮, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC0413x7cc5182f {
    @NotNull
    public static final <T> T[] arrayOfNulls(@NotNull T[] reference, int i) {
        Intrinsics.checkNotNullParameter(reference, "reference");
        Object newInstance = Array.newInstance(reference.getClass().getComponentType(), i);
        Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.arrayOfNulls>");
        return (T[]) ((Object[]) newInstance);
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    @JvmName(name = "contentDeepHashCode")
    public static <T> int contentDeepHashCode(@Nullable T[] tArr) {
        return Arrays.deepHashCode(tArr);
    }

    @SinceKotlin(version = "1.3")
    public static final void copyOfRangeToIndexCheck(int i, int i2) {
        if (i <= i2) {
            return;
        }
        throw new IndexOutOfBoundsException("toIndex (" + i + ") is greater than size (" + i2 + ").");
    }

    public static final /* synthetic */ <T> T[] orEmpty(T[] tArr) {
        if (tArr == null) {
            Intrinsics.reifiedOperationMarker(0, ExifInterface.GPS_DIRECTION_TRUE);
            return (T[]) new Object[0];
        }
        return tArr;
    }

    public static final /* synthetic */ <T> T[] toTypedArray(Collection<? extends T> collection) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.reifiedOperationMarker(0, "T?");
        return (T[]) collection.toArray(new Object[0]);
    }
}
