package defpackage;

import java.io.File;
import java.io.IOException;
import kotlin.Unit;
import kotlin.io.FileSystemException;
import kotlin.io.OnErrorAction;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* renamed from: 뒵뎰뎽뒷딽땐땍땹뎰땱딹둡둠돴땳딃땐딟뎰된돷딜땭돝땨드둥뒋듸둠딄뒝됴땋되돷땫땅딤둘뒹딞땨뒨뎻땰땳뒈듌들뒝땧뒨듽뒈땫뒬뒛돵땬뒻듌땁뎡됴땥딎듼뎻돰땭땁땔땩됴딁됩됴둡땜땫됐됨된땳돤돼뎰땡땟땭뒾둘듽땥딻땹뒐땵도뒈돝땋딁뒹뒤듰돛됴땐땔딁듬뎰땅딞뒛돨딀땫땻땻뎡둡땅땩뒋뒻돷딞, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class C0743x10037068 implements Function2 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4656xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Function2 f4657x3271d0aa;

    public /* synthetic */ C0743x10037068(Function2 function2, int i) {
        this.f4656xfbe0c504 = i;
        this.f4657x3271d0aa = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f4656xfbe0c504) {
            case 0:
                File file = (File) obj;
                IOException e = (IOException) obj2;
                Intrinsics.checkNotNullParameter(file, "f");
                Intrinsics.checkNotNullParameter(e, "e");
                if (this.f4657x3271d0aa.invoke(file, e) != OnErrorAction.TERMINATE) {
                    return Unit.INSTANCE;
                }
                Intrinsics.checkNotNullParameter(file, "file");
                throw new FileSystemException(file, null, null, 6, null);
            default:
                Integer num = (Integer) obj;
                num.intValue();
                this.f4657x3271d0aa.invoke(num, obj2);
                return obj2;
        }
    }
}
