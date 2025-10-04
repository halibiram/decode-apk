package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import defpackage.C0581x23b28c2f;
import defpackage.C0718xb260a14b;
import defpackage.C0719x8b801f1b;
import defpackage.C1296x746492ae;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CopyableThrowable;
import kotlinx.coroutines.internal.ExceptionsConstructorKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a#\u0010\u0003\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00028\u0000H\u0000¢\u0006\u0004\b\u0003\u0010\u0004*(\b\u0002\u0010\u0006\"\u0010\u0012\u0004\u0012\u00020\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u00000\u00052\u0010\u0012\u0004\u0012\u00020\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u00000\u0005¨\u0006\u0007"}, d2 = {"", ExifInterface.LONGITUDE_EAST, "exception", "tryCopyException", "(Ljava/lang/Throwable;)Ljava/lang/Throwable;", "Lkotlin/Function1;", "Ctor", "kotlinx-coroutines-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nExceptionsConstructor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExceptionsConstructor.kt\nkotlinx/coroutines/internal/ExceptionsConstructorKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,112:1\n1#2:113\n11158#3:114\n11493#3,3:115\n12727#3,3:132\n1971#4,14:118\n*S KotlinDebug\n*F\n+ 1 ExceptionsConstructor.kt\nkotlinx/coroutines/internal/ExceptionsConstructorKt\n*L\n41#1:114\n41#1:115,3\n78#1:132,3\n59#1:118,14\n*E\n"})
/* loaded from: classes3.dex */
public final class ExceptionsConstructorKt {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸 */
    public static final int f2389xfbe0c504 = m2333xfbe0c504(Throwable.class, -1);

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫 */
    public static final CtorCache f2390x3271d0aa;

    static {
        CtorCache ctorCache;
        try {
            if (FastServiceLoaderKt.getANDROID_DETECTED()) {
                ctorCache = C1296x746492ae.f5712xfbe0c504;
            } else {
                ctorCache = C0581x23b28c2f.f4290xfbe0c504;
            }
        } catch (Throwable unused) {
            ctorCache = C1296x746492ae.f5712xfbe0c504;
        }
        f2390x3271d0aa = ctorCache;
    }

    public static final Function1 access$createConstructor(Class cls) {
        Object obj;
        Function1 function1;
        Pair pair;
        C0719x8b801f1b c0719x8b801f1b = C0719x8b801f1b.f4613x3271d0aa;
        if (f2389xfbe0c504 == m2333xfbe0c504(cls, 0)) {
            Constructor<?>[] constructors = cls.getConstructors();
            ArrayList arrayList = new ArrayList(constructors.length);
            int length = constructors.length;
            int i = 0;
            while (true) {
                obj = null;
                if (i >= length) {
                    break;
                }
                final Constructor<?> constructor = constructors[i];
                Class<?>[] parameterTypes = constructor.getParameterTypes();
                int length2 = parameterTypes.length;
                if (length2 != 0) {
                    if (length2 != 1) {
                        if (length2 != 2) {
                            pair = TuplesKt.to(null, -1);
                        } else if (Intrinsics.areEqual(parameterTypes[0], String.class) && Intrinsics.areEqual(parameterTypes[1], Throwable.class)) {
                            final int i2 = 0;
                            pair = TuplesKt.to(new C0718xb260a14b(0, new Function1() { // from class: 뒝땀땪뒹득됴뒵땨뒨땮땅뒼든듐땁땦듟딻됨땹딝딻된뒹돷딞돝땲된땻둑도땹뒈뎡돳듸딞듨드돴땔돤땧돶됩땋딸땝뒹딠땜딞땨돷땪돝땡땱돸됫딠땳두뒬듟뒉듟땪뒬땭뒾뒛뎻땳땸뎡뎬된땋땟땪땯딻땤딹뎻딅따돛득딻땍땬됩땲땅뒋딽땩딨딽땸땣듐땨딞땱딎됐땐두딌뒹땃딎둣뒨들딟뒹된땀뎻뒋땀땁땨뎬뒼
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj2) {
                                    Constructor constructor2 = constructor;
                                    Throwable th = (Throwable) obj2;
                                    switch (i2) {
                                        case 0:
                                            int i3 = ExceptionsConstructorKt.f2389xfbe0c504;
                                            Object newInstance = constructor2.newInstance(th.getMessage(), th);
                                            Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type kotlin.Throwable");
                                            return (Throwable) newInstance;
                                        case 1:
                                            int i4 = ExceptionsConstructorKt.f2389xfbe0c504;
                                            Object newInstance2 = constructor2.newInstance(th.getMessage());
                                            Intrinsics.checkNotNull(newInstance2, "null cannot be cast to non-null type kotlin.Throwable");
                                            Throwable th2 = (Throwable) newInstance2;
                                            th2.initCause(th);
                                            return th2;
                                        case 2:
                                            int i5 = ExceptionsConstructorKt.f2389xfbe0c504;
                                            Object newInstance3 = constructor2.newInstance(th);
                                            Intrinsics.checkNotNull(newInstance3, "null cannot be cast to non-null type kotlin.Throwable");
                                            return (Throwable) newInstance3;
                                        default:
                                            int i6 = ExceptionsConstructorKt.f2389xfbe0c504;
                                            Object newInstance4 = constructor2.newInstance(null);
                                            Intrinsics.checkNotNull(newInstance4, "null cannot be cast to non-null type kotlin.Throwable");
                                            Throwable th3 = (Throwable) newInstance4;
                                            th3.initCause(th);
                                            return th3;
                                    }
                                }
                            }), 3);
                        } else {
                            pair = TuplesKt.to(null, -1);
                        }
                    } else {
                        Class<?> cls2 = parameterTypes[0];
                        if (Intrinsics.areEqual(cls2, String.class)) {
                            final int i3 = 1;
                            pair = TuplesKt.to(new C0718xb260a14b(0, new Function1() { // from class: 뒝땀땪뒹득됴뒵땨뒨땮땅뒼든듐땁땦듟딻됨땹딝딻된뒹돷딞돝땲된땻둑도땹뒈뎡돳듸딞듨드돴땔돤땧돶됩땋딸땝뒹딠땜딞땨돷땪돝땡땱돸됫딠땳두뒬듟뒉듟땪뒬땭뒾뒛뎻땳땸뎡뎬된땋땟땪땯딻땤딹뎻딅따돛득딻땍땬됩땲땅뒋딽땩딨딽땸땣듐땨딞땱딎됐땐두딌뒹땃딎둣뒨들딟뒹된땀뎻뒋땀땁땨뎬뒼
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj2) {
                                    Constructor constructor2 = constructor;
                                    Throwable th = (Throwable) obj2;
                                    switch (i3) {
                                        case 0:
                                            int i32 = ExceptionsConstructorKt.f2389xfbe0c504;
                                            Object newInstance = constructor2.newInstance(th.getMessage(), th);
                                            Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type kotlin.Throwable");
                                            return (Throwable) newInstance;
                                        case 1:
                                            int i4 = ExceptionsConstructorKt.f2389xfbe0c504;
                                            Object newInstance2 = constructor2.newInstance(th.getMessage());
                                            Intrinsics.checkNotNull(newInstance2, "null cannot be cast to non-null type kotlin.Throwable");
                                            Throwable th2 = (Throwable) newInstance2;
                                            th2.initCause(th);
                                            return th2;
                                        case 2:
                                            int i5 = ExceptionsConstructorKt.f2389xfbe0c504;
                                            Object newInstance3 = constructor2.newInstance(th);
                                            Intrinsics.checkNotNull(newInstance3, "null cannot be cast to non-null type kotlin.Throwable");
                                            return (Throwable) newInstance3;
                                        default:
                                            int i6 = ExceptionsConstructorKt.f2389xfbe0c504;
                                            Object newInstance4 = constructor2.newInstance(null);
                                            Intrinsics.checkNotNull(newInstance4, "null cannot be cast to non-null type kotlin.Throwable");
                                            Throwable th3 = (Throwable) newInstance4;
                                            th3.initCause(th);
                                            return th3;
                                    }
                                }
                            }), 2);
                        } else if (Intrinsics.areEqual(cls2, Throwable.class)) {
                            final int i4 = 2;
                            pair = TuplesKt.to(new C0718xb260a14b(0, new Function1() { // from class: 뒝땀땪뒹득됴뒵땨뒨땮땅뒼든듐땁땦듟딻됨땹딝딻된뒹돷딞돝땲된땻둑도땹뒈뎡돳듸딞듨드돴땔돤땧돶됩땋딸땝뒹딠땜딞땨돷땪돝땡땱돸됫딠땳두뒬듟뒉듟땪뒬땭뒾뒛뎻땳땸뎡뎬된땋땟땪땯딻땤딹뎻딅따돛득딻땍땬됩땲땅뒋딽땩딨딽땸땣듐땨딞땱딎됐땐두딌뒹땃딎둣뒨들딟뒹된땀뎻뒋땀땁땨뎬뒼
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj2) {
                                    Constructor constructor2 = constructor;
                                    Throwable th = (Throwable) obj2;
                                    switch (i4) {
                                        case 0:
                                            int i32 = ExceptionsConstructorKt.f2389xfbe0c504;
                                            Object newInstance = constructor2.newInstance(th.getMessage(), th);
                                            Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type kotlin.Throwable");
                                            return (Throwable) newInstance;
                                        case 1:
                                            int i42 = ExceptionsConstructorKt.f2389xfbe0c504;
                                            Object newInstance2 = constructor2.newInstance(th.getMessage());
                                            Intrinsics.checkNotNull(newInstance2, "null cannot be cast to non-null type kotlin.Throwable");
                                            Throwable th2 = (Throwable) newInstance2;
                                            th2.initCause(th);
                                            return th2;
                                        case 2:
                                            int i5 = ExceptionsConstructorKt.f2389xfbe0c504;
                                            Object newInstance3 = constructor2.newInstance(th);
                                            Intrinsics.checkNotNull(newInstance3, "null cannot be cast to non-null type kotlin.Throwable");
                                            return (Throwable) newInstance3;
                                        default:
                                            int i6 = ExceptionsConstructorKt.f2389xfbe0c504;
                                            Object newInstance4 = constructor2.newInstance(null);
                                            Intrinsics.checkNotNull(newInstance4, "null cannot be cast to non-null type kotlin.Throwable");
                                            Throwable th3 = (Throwable) newInstance4;
                                            th3.initCause(th);
                                            return th3;
                                    }
                                }
                            }), 1);
                        } else {
                            pair = TuplesKt.to(null, -1);
                        }
                    }
                } else {
                    final int i5 = 3;
                    pair = TuplesKt.to(new C0718xb260a14b(0, new Function1() { // from class: 뒝땀땪뒹득됴뒵땨뒨땮땅뒼든듐땁땦듟딻됨땹딝딻된뒹돷딞돝땲된땻둑도땹뒈뎡돳듸딞듨드돴땔돤땧돶됩땋딸땝뒹딠땜딞땨돷땪돝땡땱돸됫딠땳두뒬듟뒉듟땪뒬땭뒾뒛뎻땳땸뎡뎬된땋땟땪땯딻땤딹뎻딅따돛득딻땍땬됩땲땅뒋딽땩딨딽땸땣듐땨딞땱딎됐땐두딌뒹땃딎둣뒨들딟뒹된땀뎻뒋땀땁땨뎬뒼
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            Constructor constructor2 = constructor;
                            Throwable th = (Throwable) obj2;
                            switch (i5) {
                                case 0:
                                    int i32 = ExceptionsConstructorKt.f2389xfbe0c504;
                                    Object newInstance = constructor2.newInstance(th.getMessage(), th);
                                    Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type kotlin.Throwable");
                                    return (Throwable) newInstance;
                                case 1:
                                    int i42 = ExceptionsConstructorKt.f2389xfbe0c504;
                                    Object newInstance2 = constructor2.newInstance(th.getMessage());
                                    Intrinsics.checkNotNull(newInstance2, "null cannot be cast to non-null type kotlin.Throwable");
                                    Throwable th2 = (Throwable) newInstance2;
                                    th2.initCause(th);
                                    return th2;
                                case 2:
                                    int i52 = ExceptionsConstructorKt.f2389xfbe0c504;
                                    Object newInstance3 = constructor2.newInstance(th);
                                    Intrinsics.checkNotNull(newInstance3, "null cannot be cast to non-null type kotlin.Throwable");
                                    return (Throwable) newInstance3;
                                default:
                                    int i6 = ExceptionsConstructorKt.f2389xfbe0c504;
                                    Object newInstance4 = constructor2.newInstance(null);
                                    Intrinsics.checkNotNull(newInstance4, "null cannot be cast to non-null type kotlin.Throwable");
                                    Throwable th3 = (Throwable) newInstance4;
                                    th3.initCause(th);
                                    return th3;
                            }
                        }
                    }), 0);
                }
                arrayList.add(pair);
                i++;
            }
            Iterator it = arrayList.iterator();
            if (it.hasNext()) {
                obj = it.next();
                if (it.hasNext()) {
                    int intValue = ((Number) ((Pair) obj).getSecond()).intValue();
                    do {
                        Object next = it.next();
                        int intValue2 = ((Number) ((Pair) next).getSecond()).intValue();
                        if (intValue < intValue2) {
                            obj = next;
                            intValue = intValue2;
                        }
                    } while (it.hasNext());
                }
            }
            Pair pair2 = (Pair) obj;
            if (pair2 != null && (function1 = (Function1) pair2.getFirst()) != null) {
                return function1;
            }
            return c0719x8b801f1b;
        }
        return c0719x8b801f1b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public static final <E extends Throwable> E tryCopyException(@NotNull E e) {
        Object m1764constructorimpl;
        if (e instanceof CopyableThrowable) {
            try {
                Result.Companion companion = Result.INSTANCE;
                m1764constructorimpl = Result.m1764constructorimpl(((CopyableThrowable) e).createCopy());
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                m1764constructorimpl = Result.m1764constructorimpl(ResultKt.createFailure(th));
            }
            if (Result.m1769isFailureimpl(m1764constructorimpl)) {
                m1764constructorimpl = null;
            }
            return (E) m1764constructorimpl;
        }
        return (E) f2390x3271d0aa.get(e.getClass()).invoke(e);
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸 */
    public static final int m2333xfbe0c504(Class cls, int i) {
        Object m1764constructorimpl;
        JvmClassMappingKt.getKotlinClass(cls);
        try {
            Result.Companion companion = Result.INSTANCE;
            int i2 = 0;
            do {
                int i3 = 0;
                for (Field field : cls.getDeclaredFields()) {
                    if (!Modifier.isStatic(field.getModifiers())) {
                        i3++;
                    }
                }
                i2 += i3;
                cls = cls.getSuperclass();
            } while (cls != null);
            m1764constructorimpl = Result.m1764constructorimpl(Integer.valueOf(i2));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m1764constructorimpl = Result.m1764constructorimpl(ResultKt.createFailure(th));
        }
        Integer valueOf = Integer.valueOf(i);
        if (Result.m1769isFailureimpl(m1764constructorimpl)) {
            m1764constructorimpl = valueOf;
        }
        return ((Number) m1764constructorimpl).intValue();
    }
}
