package kotlinx.serialization.internal;

import androidx.exifinterface.media.ExifInterface;
import defpackage.C0580x29bd8f7e;
import defpackage.C0582x14b6ab62;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a;\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\"\u0004\b\u0000\u0010\u00002\u001e\u0010\u0004\u001a\u001a\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002\u0012\f\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00030\u0001H\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001aI\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\f\"\u0004\b\u0000\u0010\u00002,\u0010\u0004\u001a(\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\f\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00030\bH\u0000¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/Function1;", "Lkotlin/reflect/KClass;", "Lkotlinx/serialization/KSerializer;", "factory", "Lkotlinx/serialization/internal/SerializerCache;", "createCache", "(Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/internal/SerializerCache;", "Lkotlin/Function2;", "", "", "Lkotlin/reflect/KType;", "Lkotlinx/serialization/internal/ParametrizedSerializerCache;", "createParametrizedCache", "(Lkotlin/jvm/functions/Function2;)Lkotlinx/serialization/internal/ParametrizedSerializerCache;", "kotlinx-serialization-core"}, k = 2, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CachingKt {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final boolean f2564xfbe0c504;

    static {
        boolean z;
        try {
            Class.forName("java.lang.ClassValue");
            z = true;
        } catch (Throwable unused) {
            z = false;
        }
        f2564xfbe0c504 = z;
    }

    @NotNull
    public static final <T> SerializerCache<T> createCache(@NotNull Function1<? super KClass<?>, ? extends KSerializer<T>> factory) {
        Intrinsics.checkNotNullParameter(factory, "factory");
        if (f2564xfbe0c504) {
            return new C0580x29bd8f7e(factory);
        }
        return new C0582x14b6ab62(factory);
    }

    @NotNull
    public static final <T> ParametrizedSerializerCache<T> createParametrizedCache(@NotNull Function2<? super KClass<Object>, ? super List<? extends KType>, ? extends KSerializer<T>> factory) {
        Intrinsics.checkNotNullParameter(factory, "factory");
        if (f2564xfbe0c504) {
            return new C0582x14b6ab62(factory, 0);
        }
        return new C0582x14b6ab62(factory, 2);
    }
}
