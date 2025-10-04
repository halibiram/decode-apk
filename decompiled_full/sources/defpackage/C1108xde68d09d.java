package defpackage;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Typography;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.descriptors.SerialKind;

/* renamed from: 땍딻듻뒘딝땻듐됫두땸땮뒝땳돤듐땸땻땸딅됐듐뒐땳돴뒉땵둘뎰된돼듬땸두땔땱드땮득돝듬둔땻돨둘돸뒨딹듰뒘뒻땭디뒬딜딃돤딞득땬뒋딠뒻땨뒐뒈돤돝든땰될딟뒐뒨듨돤뎬땲땅뎹둘뎰딁땻딹뒨딌딻땣뎰땸땠돵딅돠들땡땹든뎽돳땠땤돷뒝듌땨들땣딄딐딨땀딝땋된뒨땀딐딟딹뎨돴둘돷뎨돰돛땅듌딤, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class C1108xde68d09d implements Function1 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f5408xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ SealedClassSerializer f5409x3271d0aa;

    public /* synthetic */ C1108xde68d09d(SealedClassSerializer sealedClassSerializer, int i) {
        this.f5408xfbe0c504 = i;
        this.f5409x3271d0aa = sealedClassSerializer;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        ClassSerialDescriptorBuilder buildSerialDescriptor = (ClassSerialDescriptorBuilder) obj;
        switch (this.f5408xfbe0c504) {
            case 0:
                Intrinsics.checkNotNullParameter(buildSerialDescriptor, "$this$buildSerialDescriptor");
                ClassSerialDescriptorBuilder.element$default(buildSerialDescriptor, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, BuiltinSerializersKt.serializer(StringCompanionObject.INSTANCE).getDescriptor(), null, false, 12, null);
                StringBuilder sb = new StringBuilder("kotlinx.serialization.Sealed<");
                SealedClassSerializer sealedClassSerializer = this.f5409x3271d0aa;
                sb.append(sealedClassSerializer.getBaseClass().getSimpleName());
                sb.append(Typography.greater);
                ClassSerialDescriptorBuilder.element$default(buildSerialDescriptor, "value", SerialDescriptorsKt.buildSerialDescriptor(sb.toString(), SerialKind.CONTEXTUAL.INSTANCE, new SerialDescriptor[0], new C1108xde68d09d(sealedClassSerializer, 1)), null, false, 12, null);
                buildSerialDescriptor.setAnnotations(sealedClassSerializer.f2518x3271d0aa);
                return Unit.INSTANCE;
            default:
                Intrinsics.checkNotNullParameter(buildSerialDescriptor, "$this$buildSerialDescriptor");
                for (Map.Entry entry : this.f5409x3271d0aa.f2521x9738a56c.entrySet()) {
                    ClassSerialDescriptorBuilder.element$default(buildSerialDescriptor, (String) entry.getKey(), ((KSerializer) entry.getValue()).getDescriptor(), null, false, 12, null);
                }
                return Unit.INSTANCE;
        }
    }
}
