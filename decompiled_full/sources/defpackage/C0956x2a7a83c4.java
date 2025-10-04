package defpackage;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;

/* renamed from: 딐듨돼뒼땪뒋딜뒉돰땔딅돛돤땔돵딻듬뎽땁딄딠땋둑땲둣땵될뒾듼땍뎻되뎨뒾뒹땃땧땄땧땤땭딟둠드딃땮됨땝땀땋뎻땨땄둣됩딹땃뒼땱딻땝돼땻듻딎둣딅뒛뒝뒷도뒘뒷땹듐뒹딜뎸땍듟뒙딅돨땸땵땳딻뒤땥땭듬땩땔두딤뒈둥되땥든뎡뒤돰땫득딞디땯두돳듌땤땮땰듼돛땀둔뎽돸뒉딤듸됫뒈딻뎠돸땦듟, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class C0956x2a7a83c4 implements Function1 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f5130xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ KSerializer f5131x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ KSerializer f5132x1378447b;

    public /* synthetic */ C0956x2a7a83c4(KSerializer kSerializer, KSerializer kSerializer2, int i) {
        this.f5130xfbe0c504 = i;
        this.f5131x3271d0aa = kSerializer;
        this.f5132x1378447b = kSerializer2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        ClassSerialDescriptorBuilder buildSerialDescriptor = (ClassSerialDescriptorBuilder) obj;
        switch (this.f5130xfbe0c504) {
            case 0:
                Intrinsics.checkNotNullParameter(buildSerialDescriptor, "$this$buildSerialDescriptor");
                ClassSerialDescriptorBuilder.element$default(buildSerialDescriptor, "key", this.f5131x3271d0aa.getDescriptor(), null, false, 12, null);
                ClassSerialDescriptorBuilder.element$default(buildSerialDescriptor, "value", this.f5132x1378447b.getDescriptor(), null, false, 12, null);
                return Unit.INSTANCE;
            default:
                Intrinsics.checkNotNullParameter(buildSerialDescriptor, "$this$buildClassSerialDescriptor");
                ClassSerialDescriptorBuilder.element$default(buildSerialDescriptor, "first", this.f5131x3271d0aa.getDescriptor(), null, false, 12, null);
                ClassSerialDescriptorBuilder.element$default(buildSerialDescriptor, "second", this.f5132x1378447b.getDescriptor(), null, false, 12, null);
                return Unit.INSTANCE;
        }
    }
}
