package defpackage;

import java.util.List;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.CopyableThreadContextElement;

/* renamed from: 둬땤듐뒈뒝땣땄딌땡딻돝딻딽돵듐땯딎둑돼둣됴땅뒋뒝딄둬된돨듐땲뒉둡뎬둑딄딠딅돼될둔딟땤땥둑딠됫뒵뎽둘뒐됐딁돤땵딜땯돰딁들두둘돠둠땦듸땀땡됨딽됩되뒻돼듟뒻뒘뎡땮뎡뎨돨뒝뒐둠땐드땲뒙땰둑돴돵되땪딽듐뎰둑뒻딝듌디돵돰뒻땰둬뒋땋뎨땳돛뒝땱딅뎬뒙된듼딀듐땵돴될딸돝딻땁뒘땪, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class C0647x74ef1090 implements Function2 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4438xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ boolean f4439x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ Object f4440x1378447b;

    public /* synthetic */ C0647x74ef1090(int i, Object obj, boolean z) {
        this.f4438xfbe0c504 = i;
        this.f4440x1378447b = obj;
        this.f4439x3271d0aa = z;
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [T, kotlin.coroutines.CoroutineContext] */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f4438xfbe0c504) {
            case 0:
                CoroutineContext coroutineContext = (CoroutineContext) obj;
                CoroutineContext.Element element = (CoroutineContext.Element) obj2;
                if (!(element instanceof CopyableThreadContextElement)) {
                    return coroutineContext.plus(element);
                }
                Ref.ObjectRef objectRef = (Ref.ObjectRef) this.f4440x1378447b;
                CoroutineContext.Element element2 = ((CoroutineContext) objectRef.element).get(element.getKey());
                if (element2 == null) {
                    CopyableThreadContextElement copyableThreadContextElement = (CopyableThreadContextElement) element;
                    if (this.f4439x3271d0aa) {
                        copyableThreadContextElement = copyableThreadContextElement.copyForChild();
                    }
                    return coroutineContext.plus(copyableThreadContextElement);
                }
                objectRef.element = ((CoroutineContext) objectRef.element).minusKey(element.getKey());
                return coroutineContext.plus(((CopyableThreadContextElement) element).mergeForChild(element2));
            case 1:
                CharSequence DelimitedRangesSequence = (CharSequence) obj;
                int intValue = ((Integer) obj2).intValue();
                Intrinsics.checkNotNullParameter(DelimitedRangesSequence, "$this$DelimitedRangesSequence");
                int indexOfAny = StringsKt__StringsKt.indexOfAny(DelimitedRangesSequence, (char[]) this.f4440x1378447b, intValue, this.f4439x3271d0aa);
                if (indexOfAny < 0) {
                    return null;
                }
                return TuplesKt.to(Integer.valueOf(indexOfAny), 1);
            default:
                CharSequence DelimitedRangesSequence2 = (CharSequence) obj;
                int intValue2 = ((Integer) obj2).intValue();
                Intrinsics.checkNotNullParameter(DelimitedRangesSequence2, "$this$DelimitedRangesSequence");
                Pair m2074x3271d0aa = StringsKt__StringsKt.m2074x3271d0aa(DelimitedRangesSequence2, (List) this.f4440x1378447b, intValue2, this.f4439x3271d0aa, false);
                if (m2074x3271d0aa != null) {
                    return TuplesKt.to(m2074x3271d0aa.getFirst(), Integer.valueOf(((String) m2074x3271d0aa.getSecond()).length()));
                }
                return null;
        }
    }
}
