package defpackage;

import androidx.core.content.IntentSanitizer;
import androidx.core.util.Predicate;

/* renamed from: 딹듸디듽따뒙땧뎸돤듬뒙돶듌된드땀돼듨뒀둑땲듽땲땱돤디땰뎡듰뒐듬들땳뒈뒈땪땵뒛듼땰땀두뎸땡뒨둬땯뒙딎뒛든뎬땨드돷땜됫땮땩뎰뎻뒨둔땰딝뎽뒝듌땄땟땡땃딨돷땸뒘돷둡뎹뒀뒐돸딐둘뒐땍뎰땟둘듸땳뒝딹땔땣돼딄돷딄딃뎰땯딎딅도땵뒋딅땨딨땯뒙돰뎰땍딎딟됨듨뒋뒀뒐딐뒬될땱땐둬듰뒐, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C1041xdfed09e1 implements Predicate {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f5284xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Predicate f5285x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ Object f5286x1378447b;

    public /* synthetic */ C1041xdfed09e1(Predicate predicate, Predicate predicate2, int i) {
        this.f5284xfbe0c504 = i;
        this.f5285x3271d0aa = predicate;
        this.f5286x1378447b = predicate2;
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate and(Predicate predicate) {
        int i = this.f5284xfbe0c504;
        return AbstractC1042xefe65103.m3724xfbe0c504(this, predicate);
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate negate() {
        switch (this.f5284xfbe0c504) {
            case 0:
                return AbstractC1042xefe65103.m3725x3271d0aa(this);
            case 1:
                return AbstractC1042xefe65103.m3725x3271d0aa(this);
            default:
                return AbstractC1042xefe65103.m3725x3271d0aa(this);
        }
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate or(Predicate predicate) {
        int i = this.f5284xfbe0c504;
        return AbstractC1042xefe65103.m3726x1378447b(this, predicate);
    }

    @Override // androidx.core.util.Predicate
    public final boolean test(Object obj) {
        boolean lambda$allowExtra$13;
        switch (this.f5284xfbe0c504) {
            case 0:
                return AbstractC1042xefe65103.m3729x9e171bf9(this.f5285x3271d0aa, (Predicate) this.f5286x1378447b, obj);
            case 1:
                return AbstractC1042xefe65103.m3727x75d576dc(this.f5285x3271d0aa, (Predicate) this.f5286x1378447b, obj);
            default:
                lambda$allowExtra$13 = IntentSanitizer.Builder.lambda$allowExtra$13((Class) this.f5286x1378447b, this.f5285x3271d0aa, obj);
                return lambda$allowExtra$13;
        }
    }

    public /* synthetic */ C1041xdfed09e1(Class cls, Predicate predicate) {
        this.f5284xfbe0c504 = 2;
        this.f5286x1378447b = cls;
        this.f5285x3271d0aa = predicate;
    }
}
