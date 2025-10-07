package defpackage;

import android.util.Pair;
import androidx.window.embedding.EmbeddingAdapter;
import j$.util.function.Predicate$CC;
import java.util.Set;
import java.util.function.Predicate;

/* renamed from: 뒙뒹둔땨땦딃뎽뒨땐땡땝돶땱딄딌땐땸돠딤두땵따듐뒘땳둥땨뒈딹땅땥땤도뒉땰땥뒨뒵득땩딽돸디도둡뒹도땧딜땳뒋땣딻된뒝딤듬뎠땠땣뒘돠땔땁딅땲도뒬듔듼따돳딁땳도뒝뒨뒷두뎽듨딻두둬돝땬돼땧됴딟땜돠딠뒼뒉땅땨둠땬딁따둔듰땤딜땨듻딸뒹됴돴따딤땦땜뒝두듽땨듨돷뒵돛뒈땯돸둣듬땨둡, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0697x863a18ef implements Predicate {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4541xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ EmbeddingAdapter f4542x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ Set f4543x1378447b;

    public /* synthetic */ C0697x863a18ef(EmbeddingAdapter embeddingAdapter, Set set, int i) {
        this.f4541xfbe0c504 = i;
        this.f4542x3271d0aa = embeddingAdapter;
        this.f4543x1378447b = set;
    }

    public final /* synthetic */ Predicate and(Predicate predicate) {
        int i = this.f4541xfbe0c504;
        return Predicate$CC.$default$and(this, predicate);
    }

    public final /* synthetic */ Predicate negate() {
        switch (this.f4541xfbe0c504) {
            case 0:
                return Predicate$CC.$default$negate(this);
            default:
                return Predicate$CC.$default$negate(this);
        }
    }

    public final /* synthetic */ Predicate or(Predicate predicate) {
        int i = this.f4541xfbe0c504;
        return Predicate$CC.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        boolean m836translateActivityPairPredicates$lambda1;
        boolean m835translateActivityIntentPredicates$lambda3;
        Pair pair = (Pair) obj;
        switch (this.f4541xfbe0c504) {
            case 0:
                m836translateActivityPairPredicates$lambda1 = EmbeddingAdapter.m836translateActivityPairPredicates$lambda1(this.f4542x3271d0aa, this.f4543x1378447b, pair);
                return m836translateActivityPairPredicates$lambda1;
            default:
                m835translateActivityIntentPredicates$lambda3 = EmbeddingAdapter.m835translateActivityIntentPredicates$lambda3(this.f4542x3271d0aa, this.f4543x1378447b, pair);
                return m835translateActivityIntentPredicates$lambda3;
        }
    }
}
