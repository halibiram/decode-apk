package defpackage;

import coil3.fetch.Fetcher;
import kotlin.TuplesKt;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.KClass;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.descriptors.PolymorphicKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.internal.EnumDescriptor;
import kotlinx.serialization.internal.EnumSerializer;
import kotlinx.serialization.internal.ObjectSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;

/* renamed from: 둡딸땳듟땮듟뒋돨돼듟듻돛땋듬돷딸땣뒉둡땃뎻듔딐뒬땭뒀득되뎨뒻땵땯둣듔뎠듽듬돷뒘돴딤둔땍땔땭딻땪듬땱돛땤땩땣딀땫땋땨뒾땍뒷땵딽드듌땔디돸됨뒬돵땤뒙둬둣땁뒼뒐돤듸뒐뒬뎰땠땵뎽땳딐돛딄듬뒐땬듨뒘듻두돳딜뒋듻뒻돳됫뎸둡둠딜딹듽뎽뎡땮딨땃뎹딄딃뒛뒷뒨돤땰땟딹뎬땹딟땦땱땀, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0627xb508e85c implements Function0 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4393xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f4394x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ Object f4395x1378447b;

    public /* synthetic */ C0627xb508e85c(Object obj, Object obj2, int i) {
        this.f4393xfbe0c504 = i;
        this.f4394x3271d0aa = obj;
        this.f4395x1378447b = obj2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [kotlinx.serialization.descriptors.SerialDescriptor] */
    /* JADX WARN: Type inference failed for: r1v4, types: [kotlinx.serialization.internal.EnumDescriptor, kotlinx.serialization.internal.PluginGeneratedSerialDescriptor] */
    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.f4393xfbe0c504) {
            case 0:
                return AbstractC0586x968d4673.listOf(TuplesKt.to((Fetcher.Factory) this.f4394x3271d0aa, (KClass) this.f4395x1378447b));
            case 1:
                EnumSerializer enumSerializer = (EnumSerializer) this.f4394x3271d0aa;
                Object obj = enumSerializer.f2584x3271d0aa;
                if (obj == 0) {
                    Enum[] enumArr = enumSerializer.f2583xfbe0c504;
                    obj = new EnumDescriptor((String) this.f4395x1378447b, enumArr.length);
                    for (Enum r0 : enumArr) {
                        PluginGeneratedSerialDescriptor.addElement$default(obj, r0.name(), false, 2, null);
                    }
                }
                return obj;
            case 2:
                return SerialDescriptorsKt.buildSerialDescriptor((String) this.f4394x3271d0aa, StructureKind.OBJECT.INSTANCE, new SerialDescriptor[0], new C0346x75d576dc((ObjectSerializer) this.f4395x1378447b, 10));
            default:
                return SerialDescriptorsKt.buildSerialDescriptor((String) this.f4394x3271d0aa, PolymorphicKind.SEALED.INSTANCE, new SerialDescriptor[0], new C1108xde68d09d((SealedClassSerializer) this.f4395x1378447b, 0));
        }
    }
}
