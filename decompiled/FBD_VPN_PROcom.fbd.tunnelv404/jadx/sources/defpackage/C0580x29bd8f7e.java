package defpackage;

import defpackage.C0478x962ee4df;
import defpackage.C0580x29bd8f7e;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.internal.SerializerCache;

/* renamed from: 됫딄둔딝땵딠듨땠뒨둠딝돷딟땠딎돳땧땃됩땩딤땭땩돸땳땁돨땄돝둡땟땮땣땤듬둘듸뒾땭됐둥도돨둑딐뒝땱딄둔뒋돷뒈뎸됫돷디땬땁둬딌딁땄딝둠딁땝뎸땄든둠딄땝둘땐뒼둔뎽땀됫듐땻둑듔디돶땅땍땤됩땬땠땵뎠뎡땵뎨돝땦듟땫디땝됨딞뒝땠뒨뒻도된둑뒬뒙돝땰됩딁딎뒛땡뎠뒋될딐땸뒋딜돳뎸땄, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0580x29bd8f7e implements SerializerCache {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Function1 f4288xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final C0583x2032ac4f f4289x3271d0aa;

    public C0580x29bd8f7e(Function1 compute) {
        Intrinsics.checkNotNullParameter(compute, "compute");
        this.f4288xfbe0c504 = compute;
        this.f4289x3271d0aa = new C0583x2032ac4f();
    }

    @Override // kotlinx.serialization.internal.SerializerCache
    public final KSerializer get(final KClass key) {
        Object obj;
        Intrinsics.checkNotNullParameter(key, "key");
        obj = this.f4289x3271d0aa.get(JvmClassMappingKt.getJavaClass(key));
        Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
        C0990x18ceb513 c0990x18ceb513 = (C0990x18ceb513) obj;
        Object obj2 = c0990x18ceb513.f5166xfbe0c504.get();
        if (obj2 == null) {
            obj2 = c0990x18ceb513.m3558xfbe0c504(new Function0<Object>() { // from class: kotlinx.serialization.internal.ClassValueCache$get$$inlined$getOrSet$1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return new C0478x962ee4df((KSerializer) C0580x29bd8f7e.this.f4288xfbe0c504.invoke(key));
                }
            });
        }
        return ((C0478x962ee4df) obj2).f3964xfbe0c504;
    }

    @Override // kotlinx.serialization.internal.SerializerCache
    public final boolean isStored(KClass key) {
        Object obj;
        Intrinsics.checkNotNullParameter(key, "key");
        C0583x2032ac4f c0583x2032ac4f = this.f4289x3271d0aa;
        Class key2 = JvmClassMappingKt.getJavaClass(key);
        c0583x2032ac4f.getClass();
        Intrinsics.checkNotNullParameter(key2, "key");
        obj = c0583x2032ac4f.get(key2);
        if (((C0990x18ceb513) obj).f5166xfbe0c504.get() != null) {
            return true;
        }
        return false;
    }
}
