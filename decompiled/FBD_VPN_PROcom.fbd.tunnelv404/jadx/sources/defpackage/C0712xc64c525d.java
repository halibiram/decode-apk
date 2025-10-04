package defpackage;

import java.io.Serializable;
import kotlin.jvm.functions.Function0;
import kotlin.text.Regex;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.internal.EnumDescriptor;

/* renamed from: 뒝됫땪땨뎰뎹돰땄뒙땳뒨땥둡딨듸돴둑딻듨따돴둣두듟뒀듨뒐땸뎡도뒐뒉둡듨들돠뒨둘딽들땹디딜딀뎠듻땣듸뒷듽돳뒻딽됨드딐듼뒼땟땵땅둣둣돼둬땲땐뒤따됩뎽됫땨땰뎨땦딎땁땝될뒻뎡땦되뒀뒤돸뎠되듐땔땳됴뒤땲딀뎬땣땝뒾돶됐둑도땭뒾딃돝돠돝딟딃뒉돼듟딄뒘땮둥됫딨뒈땍디땧딻듽땦딄돠, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class C0712xc64c525d implements Function0 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4597xfbe0c504 = 0;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ int f4598x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ Serializable f4599x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final /* synthetic */ Object f4600x75d576dc;

    public /* synthetic */ C0712xc64c525d(int i, String str, EnumDescriptor enumDescriptor) {
        this.f4598x3271d0aa = i;
        this.f4599x1378447b = str;
        this.f4600x75d576dc = enumDescriptor;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.f4598x3271d0aa;
        Object obj = this.f4600x75d576dc;
        Serializable serializable = this.f4599x1378447b;
        switch (this.f4597xfbe0c504) {
            case 0:
                SerialDescriptor[] serialDescriptorArr = new SerialDescriptor[i];
                for (int i2 = 0; i2 < i; i2++) {
                    serialDescriptorArr[i2] = SerialDescriptorsKt.buildSerialDescriptor$default(((String) serializable) + '.' + ((EnumDescriptor) obj).getElementName(i2), StructureKind.OBJECT.INSTANCE, new SerialDescriptor[0], null, 8, null);
                }
                return serialDescriptorArr;
            default:
                Regex.Companion companion = Regex.INSTANCE;
                return ((Regex) serializable).find((CharSequence) obj, i);
        }
    }

    public /* synthetic */ C0712xc64c525d(Regex regex, CharSequence charSequence, int i) {
        this.f4599x1378447b = regex;
        this.f4600x75d576dc = charSequence;
        this.f4598x3271d0aa = i;
    }
}
