package defpackage;

import defpackage.C1020x8d3424b5;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import junit.extensions.TestSetup;
import junit.framework.Protectable;
import junit.framework.TestResult;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.internal.ParametrizedSerializerCache;
import kotlinx.serialization.internal.SerializerCache;

/* renamed from: 됫땥뎹뎻될돝뎬뒈든땁땟되돼딟뒉될듻돰뒉든뎬돰돳딌듻듼땻딸듔되딟돵뒾딄돷딻땲땅둡딠딌둠뎡돛듨땤됨뒐땻뒐둡되듔뎹두돴돼뒤둑뒋돼딜돸듟딞듐돵땬들뒬듐땦땫땲뒤뒬땡땀딤땥땲땩뎠딽딠돝땡됫뒐든둬땦딝됨땍딟둑듟땦땋땤땔뎻뒾돤돷뒵돼돵뒋둠뎠듟득땁듸딠딟듬뒝땪됐딜땜땐땨디뎽든땲, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0582x14b6ab62 implements ParametrizedSerializerCache, SerializerCache, Protectable {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4292xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final Object f4293x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final Object f4294x1378447b;

    public C0582x14b6ab62(TestSetup testSetup, TestResult testResult) {
        this.f4292xfbe0c504 = 3;
        this.f4294x1378447b = testSetup;
        this.f4293x3271d0aa = testResult;
    }

    @Override // kotlinx.serialization.internal.SerializerCache
    public KSerializer get(KClass key) {
        Object putIfAbsent;
        Intrinsics.checkNotNullParameter(key, "key");
        ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.f4294x1378447b;
        Class javaClass = JvmClassMappingKt.getJavaClass(key);
        Object obj = concurrentHashMap.get(javaClass);
        if (obj == null && (putIfAbsent = concurrentHashMap.putIfAbsent(javaClass, (obj = new C0478x962ee4df((KSerializer) ((Function1) this.f4293x3271d0aa).invoke(key))))) != null) {
            obj = putIfAbsent;
        }
        return ((C0478x962ee4df) obj).f3964xfbe0c504;
    }

    @Override // kotlinx.serialization.internal.ParametrizedSerializerCache
    /* renamed from: get-gIAlu-s */
    public Object mo2386getgIAlus(KClass key, List types) {
        Object obj;
        Object m1764constructorimpl;
        Object m1764constructorimpl2;
        Object putIfAbsent;
        int i = this.f4292xfbe0c504;
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(types, "types");
        switch (i) {
            case 0:
                obj = ((C0583x2032ac4f) this.f4294x1378447b).get(JvmClassMappingKt.getJavaClass(key));
                Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
                C0990x18ceb513 c0990x18ceb513 = (C0990x18ceb513) obj;
                Object obj2 = c0990x18ceb513.f5166xfbe0c504.get();
                if (obj2 == null) {
                    obj2 = c0990x18ceb513.m3558xfbe0c504(new Function0<Object>() { // from class: kotlinx.serialization.internal.ClassValueParametrizedCache$get-gIAlu-s$$inlined$getOrSet$1
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return new C1020x8d3424b5();
                        }
                    });
                }
                C1020x8d3424b5 c1020x8d3424b5 = (C1020x8d3424b5) obj2;
                List list = types;
                ArrayList arrayList = new ArrayList(AbstractC0587xb7546d05.collectionSizeOrDefault(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(new C0912x7a0ffc18((KType) it.next()));
                }
                ConcurrentHashMap concurrentHashMap = c1020x8d3424b5.f5223xfbe0c504;
                Object obj3 = concurrentHashMap.get(arrayList);
                if (obj3 == null) {
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        m1764constructorimpl = Result.m1764constructorimpl((KSerializer) ((Function2) this.f4293x3271d0aa).invoke(key, types));
                    } catch (Throwable th) {
                        Result.Companion companion2 = Result.INSTANCE;
                        m1764constructorimpl = Result.m1764constructorimpl(ResultKt.createFailure(th));
                    }
                    Result m1763boximpl = Result.m1763boximpl(m1764constructorimpl);
                    Object putIfAbsent2 = concurrentHashMap.putIfAbsent(arrayList, m1763boximpl);
                    if (putIfAbsent2 == null) {
                        obj3 = m1763boximpl;
                    } else {
                        obj3 = putIfAbsent2;
                    }
                }
                Intrinsics.checkNotNullExpressionValue(obj3, "getOrPut(...)");
                return ((Result) obj3).getValue();
            default:
                ConcurrentHashMap concurrentHashMap2 = (ConcurrentHashMap) this.f4294x1378447b;
                Class javaClass = JvmClassMappingKt.getJavaClass(key);
                Object obj4 = concurrentHashMap2.get(javaClass);
                if (obj4 == null && (putIfAbsent = concurrentHashMap2.putIfAbsent(javaClass, (obj4 = new C1020x8d3424b5()))) != null) {
                    obj4 = putIfAbsent;
                }
                C1020x8d3424b5 c1020x8d3424b52 = (C1020x8d3424b5) obj4;
                List list2 = types;
                ArrayList arrayList2 = new ArrayList(AbstractC0587xb7546d05.collectionSizeOrDefault(list2, 10));
                Iterator it2 = list2.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(new C0912x7a0ffc18((KType) it2.next()));
                }
                ConcurrentHashMap concurrentHashMap3 = c1020x8d3424b52.f5223xfbe0c504;
                Object obj5 = concurrentHashMap3.get(arrayList2);
                if (obj5 == null) {
                    try {
                        Result.Companion companion3 = Result.INSTANCE;
                        m1764constructorimpl2 = Result.m1764constructorimpl((KSerializer) ((Function2) this.f4293x3271d0aa).invoke(key, types));
                    } catch (Throwable th2) {
                        Result.Companion companion4 = Result.INSTANCE;
                        m1764constructorimpl2 = Result.m1764constructorimpl(ResultKt.createFailure(th2));
                    }
                    Result m1763boximpl2 = Result.m1763boximpl(m1764constructorimpl2);
                    Object putIfAbsent3 = concurrentHashMap3.putIfAbsent(arrayList2, m1763boximpl2);
                    if (putIfAbsent3 == null) {
                        obj5 = m1763boximpl2;
                    } else {
                        obj5 = putIfAbsent3;
                    }
                }
                Intrinsics.checkNotNullExpressionValue(obj5, "getOrPut(...)");
                return ((Result) obj5).getValue();
        }
    }

    @Override // kotlinx.serialization.internal.SerializerCache
    public boolean isStored(KClass key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return ((ConcurrentHashMap) this.f4294x1378447b).containsKey(JvmClassMappingKt.getJavaClass(key));
    }

    @Override // junit.framework.Protectable
    public void protect() {
        TestSetup testSetup = (TestSetup) this.f4294x1378447b;
        testSetup.setUp();
        testSetup.basicRun((TestResult) this.f4293x3271d0aa);
        testSetup.tearDown();
    }

    public C0582x14b6ab62(Function2 compute, int i) {
        this.f4292xfbe0c504 = i;
        switch (i) {
            case 2:
                Intrinsics.checkNotNullParameter(compute, "compute");
                this.f4293x3271d0aa = compute;
                this.f4294x1378447b = new ConcurrentHashMap();
                return;
            default:
                Intrinsics.checkNotNullParameter(compute, "compute");
                this.f4293x3271d0aa = compute;
                this.f4294x1378447b = new C0583x2032ac4f();
                return;
        }
    }

    public C0582x14b6ab62(Function1 compute) {
        this.f4292xfbe0c504 = 1;
        Intrinsics.checkNotNullParameter(compute, "compute");
        this.f4293x3271d0aa = compute;
        this.f4294x1378447b = new ConcurrentHashMap();
    }
}
