package defpackage;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.ClassValueCtorCache$cache$1;
import kotlinx.coroutines.internal.CtorCache;

/* renamed from: 됫딜딅됨돠돠뒉듽돛땥돸딽돠따뒼뒙뒬뒹된땐땫뒝돼둠뒙땧땮돤딐드뒘뒝뒼뒀뎬드땩땸됩됫됨땫둔땍듔듻디디땔뒈돨땵땮딸땵둣뒘땬땦뒷듔듼둘됩돷드딞돳뒬땭딽둔득딜땪땳딌땰될도땤뒉땐돛디딌됫듰돤뒵듨둘딠뎨듔뎻딃딸땨듨땵듨둑뒘딠돰땰땳뒤뒛딁뎽됩뒨땐되돰둔돳땅땰땲듐뎬듔딸돼돵땠듔, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0581x23b28c2f extends CtorCache {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final C0581x23b28c2f f4290xfbe0c504 = new CtorCache();

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final ClassValueCtorCache$cache$1 f4291x3271d0aa = new ClassValue<Function1<? super Throwable, ? extends Throwable>>() { // from class: kotlinx.coroutines.internal.ClassValueCtorCache$cache$1
        @Override // java.lang.ClassValue
        public /* bridge */ /* synthetic */ Function1<? super Throwable, ? extends Throwable> computeValue(Class cls) {
            return computeValue2((Class<?>) cls);
        }

        @Override // java.lang.ClassValue
        /* renamed from: computeValue, reason: avoid collision after fix types in other method */
        public Function1<? super Throwable, ? extends Throwable> computeValue2(Class<?> type) {
            Intrinsics.checkNotNull(type, "null cannot be cast to non-null type java.lang.Class<out kotlin.Throwable>");
            return ExceptionsConstructorKt.access$createConstructor(type);
        }
    };

    @Override // kotlinx.coroutines.internal.CtorCache
    public final Function1 get(Class cls) {
        Object obj;
        obj = f4291x3271d0aa.get(cls);
        return (Function1) obj;
    }
}
