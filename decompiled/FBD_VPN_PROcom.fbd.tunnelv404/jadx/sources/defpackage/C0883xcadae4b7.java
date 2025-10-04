package defpackage;

import com.google.common.base.Function;
import com.google.common.escape.Escaper;
import com.google.common.graph.ImmutableNetwork;
import com.google.common.graph.Network;

/* renamed from: 듽딟돳뒵땠땹땻땫뒈딞듬돠땥딜딀뒙돴둣땤따딁땥둣돨됴돝뒈땜땍뒋땃둑딌뒙듨땡돰딝뎬둬땯땫땲땰뎰듔뎡디뒹뎡돨땸뎽돠땤뒛드뒼뎠딤땅땹듟듨됨땟뒹땁땃땫둘딄뒐땱뒋돰돝땬딎뎬땸땠됩뒼딞두됴돤두땹딤뎬도딁뒐득듐듌딜둠뎠딽뒼뎰딤땨땅땀되땄뒋듸뎽듔딤뒷드땝뒬땭딸든듬딄돵드땮딄둠딜, reason: contains not printable characters */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0883xcadae4b7 implements Function {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f5003xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f5004x3271d0aa;

    public /* synthetic */ C0883xcadae4b7(Object obj, int i) {
        this.f5003xfbe0c504 = i;
        this.f5004x3271d0aa = obj;
    }

    @Override // com.google.common.base.Function
    public final Object apply(Object obj) {
        switch (this.f5003xfbe0c504) {
            case 0:
                return ImmutableNetwork.m1278x3271d0aa((Network) this.f5004x3271d0aa, obj);
            case 1:
                return ImmutableNetwork.m1277xfbe0c504((Network) this.f5004x3271d0aa, obj);
            default:
                return ((Escaper) this.f5004x3271d0aa).escape((String) obj);
        }
    }
}
