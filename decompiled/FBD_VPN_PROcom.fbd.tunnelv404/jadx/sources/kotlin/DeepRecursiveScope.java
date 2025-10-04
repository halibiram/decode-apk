package kotlin;

import androidx.exifinterface.media.ExifInterface;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.RestrictsSuspension;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@SinceKotlin(version = "1.7")
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u0003J\u0018\u0010\u0005\u001a\u00028\u00012\u0006\u0010\u0004\u001a\u00028\u0000H¦@¢\u0006\u0004\b\u0005\u0010\u0006J4\u0010\u0005\u001a\u00028\u0003\"\u0004\b\u0002\u0010\u0007\"\u0004\b\u0003\u0010\b*\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\t2\u0006\u0010\u0004\u001a\u00028\u0002H¦@¢\u0006\u0004\b\u0005\u0010\nJ&\u0010\f\u001a\u00020\u000b*\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\t2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0087\u0002¢\u0006\u0004\b\f\u0010\r\u0082\u0001\u0001\u000e¨\u0006\u000f"}, d2 = {"Lkotlin/DeepRecursiveScope;", ExifInterface.GPS_DIRECTION_TRUE, "R", "", "value", "callRecursive", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "U", ExifInterface.LATITUDE_SOUTH, "Lkotlin/DeepRecursiveFunction;", "(Lkotlin/DeepRecursiveFunction;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "invoke", "(Lkotlin/DeepRecursiveFunction;Ljava/lang/Object;)Ljava/lang/Void;", "L뒈돵둠뒋뒛돠땜땮땤딎뒾뎽듸됫땄딃뎽됫뒻뒻딹딄둬듔땫뎹딝딄될될돷뒨둣돤뎸땩뎽땯뎽둘될땸땬뒐땋뒨돝땁돰든딃돵뒹뒹땣따뎬뎻둔돸딸뎠뒐땪돶뒙드땠돵딟둘돼뒋뎰뒘뒛됴딁뒤딨뒀딤딐땪디딜돝딽될뎸되땋든딃뒈땮돸뒬땬땅땋뒐땪돼딌뒤돴땠땲돳뒘뎬뎰돴땨딅들둑돶듽땜듨됐땰뎰뒹도듸듼땸;", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
@RestrictsSuspension
@WasExperimental(markerClass = {ExperimentalStdlibApi.class})
/* loaded from: classes3.dex */
public abstract class DeepRecursiveScope<T, R> {
    public DeepRecursiveScope(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @Nullable
    public abstract Object callRecursive(T t, @NotNull Continuation<? super R> continuation);

    @Nullable
    public abstract <U, S> Object callRecursive(@NotNull DeepRecursiveFunction<U, S> deepRecursiveFunction, U u, @NotNull Continuation<? super S> continuation);

    @Deprecated(level = DeprecationLevel.ERROR, message = "'invoke' should not be called from DeepRecursiveScope. Use 'callRecursive' to do recursion in the heap instead of the call stack.", replaceWith = @ReplaceWith(expression = "this.callRecursive(value)", imports = {}))
    @NotNull
    public final Void invoke(@NotNull DeepRecursiveFunction<?, ?> deepRecursiveFunction, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(deepRecursiveFunction, "<this>");
        throw new UnsupportedOperationException("Should not be called from DeepRecursiveScope");
    }
}
