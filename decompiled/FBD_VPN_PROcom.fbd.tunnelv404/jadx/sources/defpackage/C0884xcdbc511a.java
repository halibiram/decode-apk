package defpackage;

import com.google.common.base.Function;
import com.google.common.graph.ImmutableNetwork;
import com.google.common.graph.ImmutableValueGraph;
import com.google.common.graph.Network;
import com.google.common.graph.ValueGraph;

/* renamed from: 딀돝땨듟땬둘땍뎰돵뒋듸드땀뒨땡돳돨땅땭땳뎠땫듟뒻듌땅돠땹땡둑듨딽뒛땨땬땪땯뎬디땬뎰둑땻듔듽딁딟땭딎딟뒹딁돼땄뒾딨뎻땬듨듽된됫땔딤땲땟뒤딸땲땀뎸땍듟딠딠뒵뒉딎땍뒐땱둠땤뎠돵딄땔딌둡돨뒹땨듐딅둣뎰돵됐돷돛땨땰뒤뒐듰땥땬뒨땁땵딟둔듼든돴딎땲딎딐땹뒛뒹뒋됨듸둣듬땔듻돷, reason: contains not printable characters */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0884xcdbc511a implements Function {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f5005xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f5006x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ Object f5007x1378447b;

    public /* synthetic */ C0884xcdbc511a(Object obj, Object obj2, int i) {
        this.f5005xfbe0c504 = i;
        this.f5007x1378447b = obj;
        this.f5006x3271d0aa = obj2;
    }

    @Override // com.google.common.base.Function
    public final Object apply(Object obj) {
        Object lambda$adjacentNodeFn$2;
        switch (this.f5005xfbe0c504) {
            case 0:
                lambda$adjacentNodeFn$2 = ImmutableNetwork.lambda$adjacentNodeFn$2((Network) this.f5007x1378447b, this.f5006x3271d0aa, obj);
                return lambda$adjacentNodeFn$2;
            default:
                return ImmutableValueGraph.m1280xfbe0c504((ValueGraph) this.f5007x1378447b, this.f5006x3271d0aa, obj);
        }
    }
}
