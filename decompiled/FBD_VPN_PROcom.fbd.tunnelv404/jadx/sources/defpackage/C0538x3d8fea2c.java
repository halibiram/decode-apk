package defpackage;

import java.util.List;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.TuplesKt;
import kotlin.coroutines.CombinedContext;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlinx.coroutines.CopyableThreadContextElement;
import kotlinx.coroutines.ThreadContextElement;
import kotlinx.coroutines.debug.internal.ConcurrentWeakMap;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.internal.ThreadContextKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializersCacheKt;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.internal.SerializerCache;
import kotlinx.serialization.modules.SerializersModuleBuildersKt;

/* renamed from: 돼딟딃듌듨뎨둔딸딨뒼딅돴뒹돶땥딹돤땬듽땅돤뒝땲뒋됫돸됫딃듟뎨뎸듻땟둑듐딨뒝듟듻든뒉뎽돨둔돵되뎽딌둘듟땥딻땦딨땵뒝땋땜둬땹땵딹딟뒷듨땡뒐뒝돶둣땰돴들땔딽뒛땤땵돷땲땐뎰땍땩듐듟될딄뒹땠딠둥딞두됫뒛됐돶땣뒹땭땐뎬뒼땩땭땸땋뒉땫뒙듨뒾딜뒤땦딎땍둑도된돨딝된둥둬뒙땨땪딃, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class C0538x3d8fea2c implements Function2 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4093xfbe0c504;

    public /* synthetic */ C0538x3d8fea2c(int i) {
        this.f4093xfbe0c504 = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        CombinedContext combinedContext;
        KSerializer nullable;
        int i;
        boolean z = false;
        Object[] objArr = 0;
        Integer num = null;
        ThreadContextElement threadContextElement = null;
        final int i2 = 1;
        switch (this.f4093xfbe0c504) {
            case 0:
                return TuplesKt.to(obj, obj2);
            case 1:
                String acc = (String) obj;
                CoroutineContext.Element element = (CoroutineContext.Element) obj2;
                Intrinsics.checkNotNullParameter(acc, "acc");
                Intrinsics.checkNotNullParameter(element, "element");
                if (acc.length() == 0) {
                    return element.toString();
                }
                return acc + ", " + element;
            case 2:
                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = ConcurrentWeakMap.f1866x3271d0aa;
                return obj;
            case 3:
                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater2 = ConcurrentWeakMap.f1866x3271d0aa;
                return new C0632x81b633ef(obj, obj2);
            case 4:
                CoroutineContext acc2 = (CoroutineContext) obj;
                CoroutineContext.Element element2 = (CoroutineContext.Element) obj2;
                Intrinsics.checkNotNullParameter(acc2, "acc");
                Intrinsics.checkNotNullParameter(element2, "element");
                CoroutineContext minusKey = acc2.minusKey(element2.getKey());
                EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
                if (minusKey != emptyCoroutineContext) {
                    ContinuationInterceptor.Companion companion = ContinuationInterceptor.INSTANCE;
                    ContinuationInterceptor continuationInterceptor = (ContinuationInterceptor) minusKey.get(companion);
                    if (continuationInterceptor == null) {
                        combinedContext = new CombinedContext(minusKey, element2);
                    } else {
                        CoroutineContext minusKey2 = minusKey.minusKey(companion);
                        if (minusKey2 == emptyCoroutineContext) {
                            return new CombinedContext(element2, continuationInterceptor);
                        }
                        combinedContext = new CombinedContext(new CombinedContext(minusKey2, element2), continuationInterceptor);
                    }
                    return combinedContext;
                }
                return element2;
            case 5:
                CoroutineContext.Element element3 = (CoroutineContext.Element) obj2;
                if (((Boolean) obj).booleanValue() || (element3 instanceof CopyableThreadContextElement)) {
                    z = true;
                }
                return Boolean.valueOf(z);
            case 6:
                CoroutineContext coroutineContext = (CoroutineContext) obj;
                CoroutineContext.Element element4 = (CoroutineContext.Element) obj2;
                if (element4 instanceof CopyableThreadContextElement) {
                    return coroutineContext.plus(((CopyableThreadContextElement) element4).copyForChild());
                }
                return coroutineContext.plus(element4);
            case 7:
                return Boolean.valueOf(Intrinsics.areEqual(obj, obj2));
            case 8:
                return Integer.valueOf(((Integer) obj).intValue() + 1);
            case 9:
                return TuplesKt.to(obj, obj2);
            case 10:
                return TuplesKt.to(obj, obj2);
            case 11:
                KClass clazz = (KClass) obj;
                final List types = (List) obj2;
                SerializerCache serializerCache = SerializersCacheKt.f2523xfbe0c504;
                Intrinsics.checkNotNullParameter(clazz, "clazz");
                Intrinsics.checkNotNullParameter(types, "types");
                List<KSerializer<Object>> serializersForParameters = SerializersKt.serializersForParameters(SerializersModuleBuildersKt.EmptySerializersModule(), types, true);
                Intrinsics.checkNotNull(serializersForParameters);
                final Object[] objArr2 = objArr == true ? 1 : 0;
                return SerializersKt.parametrizedSerializerOrNull(clazz, serializersForParameters, new Function0() { // from class: 땜듰돤듨뒬땱돰뒻디땰듻든듟땭딁뒙돛땯뎨땤뒷뎠뒷뒀땦듬뎹돠듨땪뎨땯땱돶뒼땍딁딄땭땤듔뎽땵땵땅둣땀딜뒾딅딸뎬뎽돝딸땻땸땁듐돼됫됩도디돴딁디돛뒼땱듟둣뒨돴뒬딽땡땋될듨둑땣뒉뎸땟뒉땣땸딠뒉땍듰땱땡돛들땜돳땱듬따둠뎸땧됴땰땸딸딐듽땤땵듽뒋둔땃뒨뒬뎻뒾도돨땬땩뎡되땨듌땲됫
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        List list = types;
                        switch (objArr2) {
                            case 0:
                                SerializerCache serializerCache2 = SerializersCacheKt.f2523xfbe0c504;
                                return ((KType) list.get(0)).getClassifier();
                            default:
                                SerializerCache serializerCache3 = SerializersCacheKt.f2523xfbe0c504;
                                return ((KType) list.get(0)).getClassifier();
                        }
                    }
                });
            case 12:
                KClass clazz2 = (KClass) obj;
                final List types2 = (List) obj2;
                SerializerCache serializerCache2 = SerializersCacheKt.f2523xfbe0c504;
                Intrinsics.checkNotNullParameter(clazz2, "clazz");
                Intrinsics.checkNotNullParameter(types2, "types");
                List<KSerializer<Object>> serializersForParameters2 = SerializersKt.serializersForParameters(SerializersModuleBuildersKt.EmptySerializersModule(), types2, true);
                Intrinsics.checkNotNull(serializersForParameters2);
                KSerializer<? extends Object> parametrizedSerializerOrNull = SerializersKt.parametrizedSerializerOrNull(clazz2, serializersForParameters2, new Function0() { // from class: 땜듰돤듨뒬땱돰뒻디땰듻든듟땭딁뒙돛땯뎨땤뒷뎠뒷뒀땦듬뎹돠듨땪뎨땯땱돶뒼땍딁딄땭땤듔뎽땵땵땅둣땀딜뒾딅딸뎬뎽돝딸땻땸땁듐돼됫됩도디돴딁디돛뒼땱듟둣뒨돴뒬딽땡땋될듨둑땣뒉뎸땟뒉땣땸딠뒉땍듰땱땡돛들땜돳땱듬따둠뎸땧됴땰땸딸딐듽땤땵듽뒋둔땃뒨뒬뎻뒾도돨땬땩뎡되땨듌땲됫
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        List list = types2;
                        switch (i2) {
                            case 0:
                                SerializerCache serializerCache22 = SerializersCacheKt.f2523xfbe0c504;
                                return ((KType) list.get(0)).getClassifier();
                            default:
                                SerializerCache serializerCache3 = SerializersCacheKt.f2523xfbe0c504;
                                return ((KType) list.get(0)).getClassifier();
                        }
                    }
                });
                if (parametrizedSerializerOrNull == null || (nullable = BuiltinSerializersKt.getNullable(parametrizedSerializerOrNull)) == null) {
                    return null;
                }
                return nullable;
            case 13:
                CoroutineContext.Element element5 = (CoroutineContext.Element) obj2;
                Symbol symbol = ThreadContextKt.NO_THREAD_ELEMENTS;
                if (element5 instanceof ThreadContextElement) {
                    if (obj instanceof Integer) {
                        num = (Integer) obj;
                    }
                    if (num != null) {
                        i = num.intValue();
                    } else {
                        i = 1;
                    }
                    if (i == 0) {
                        return element5;
                    }
                    return Integer.valueOf(i + 1);
                }
                return obj;
            case 14:
                ThreadContextElement threadContextElement2 = (ThreadContextElement) obj;
                CoroutineContext.Element element6 = (CoroutineContext.Element) obj2;
                Symbol symbol2 = ThreadContextKt.NO_THREAD_ELEMENTS;
                if (threadContextElement2 == null) {
                    if (element6 instanceof ThreadContextElement) {
                        threadContextElement = (ThreadContextElement) element6;
                    }
                    return threadContextElement;
                }
                return threadContextElement2;
            default:
                C1233x9284c2fd c1233x9284c2fd = (C1233x9284c2fd) obj;
                CoroutineContext.Element element7 = (CoroutineContext.Element) obj2;
                Symbol symbol3 = ThreadContextKt.NO_THREAD_ELEMENTS;
                if (element7 instanceof ThreadContextElement) {
                    ThreadContextElement threadContextElement3 = (ThreadContextElement) element7;
                    Object updateThreadContext = threadContextElement3.updateThreadContext(c1233x9284c2fd.f5636xfbe0c504);
                    int i3 = c1233x9284c2fd.f5639x75d576dc;
                    c1233x9284c2fd.f5637x3271d0aa[i3] = updateThreadContext;
                    c1233x9284c2fd.f5639x75d576dc = 1 + i3;
                    Intrinsics.checkNotNull(threadContextElement3, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
                    c1233x9284c2fd.f5638x1378447b[i3] = threadContextElement3;
                }
                return c1233x9284c2fd;
        }
    }
}
