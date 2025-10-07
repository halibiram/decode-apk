package defpackage;

import j$.util.function.BiFunction$CC;
import java.util.function.BiFunction;
import java.util.function.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* renamed from: 들듌땣뒤둡듨뎨딝돵돶돛땄땣돨뎰듌땮땧딟땤뎸뎡땸들도땡땰뒬드뒝뒼땐둣딜뒛땋도땝드딜뒘딹딞딞뎽도땤뒬될뒵듬돤드땃딞딟따뒬뒈돷딄듽돴디딽뎡딝땮땳땐둣땅딻딜딟됨뒘돵둣돼딸딀딸되땁둠땤땁딤딜돝돨딽둠땟뒤땮땩둘땭딽뎻땔될뒻된딸뎨돨뎸뎡뒝됫딽딠땅듨뎠뎰돼듟돸땡딻듟듨듸뒤뎸둘, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class C0835x679acdd9 implements BiFunction {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4919xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Function2 f4920x3271d0aa;

    public /* synthetic */ C0835x679acdd9(Function2 function2, int i) {
        this.f4919xfbe0c504 = i;
        this.f4920x3271d0aa = function2;
    }

    public final /* synthetic */ BiFunction andThen(Function function) {
        int i = this.f4919xfbe0c504;
        return BiFunction$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        Throwable th = (Throwable) obj2;
        switch (this.f4919xfbe0c504) {
            case 0:
                return ((C0834x4a7fe0f8) this.f4920x3271d0aa).invoke(obj, th);
            default:
                return (Unit) ((C0838xae8db1e) this.f4920x3271d0aa).invoke(obj, th);
        }
    }
}
