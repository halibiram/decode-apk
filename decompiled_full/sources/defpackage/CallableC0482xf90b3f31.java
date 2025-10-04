package defpackage;

import android.content.res.AssetFileDescriptor;
import androidx.work.impl.utils.IdGenerator;
import com.google.common.util.concurrent.Callables;
import java.util.concurrent.Callable;

/* renamed from: 돴됨돵딎딸둘땀땠돠뎠뒀듼땝돸돷땮듰땣돶땟뒤딀뎽듬땪듐땭딠땳듌딟딅듐돼득뎽땫뒹둡듽들딐돝돵딟돛땝땫돴땵돝둠됫땣땔된딽뎻듻둑듰땃뎠듔땩땔뒹뒻뒛듐땮둠뎰돸든뎨듻딜딅득딄돨뒝뒝뒛듻됩땬뎽땵따땰듸땃땅땳뒀뎸뒷돠땄둬될될땮땡딁땮돳딀뎨둡땝뒼듼돰듟뒘땄듸됐딤딌돝뒝돝뎬됫듼뎨, reason: contains not printable characters */
/* loaded from: classes2.dex */
public final /* synthetic */ class CallableC0482xf90b3f31 implements Callable {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f3971xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f3972x3271d0aa;

    public /* synthetic */ CallableC0482xf90b3f31(Object obj, int i) {
        this.f3971xfbe0c504 = i;
        this.f3972x3271d0aa = obj;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        switch (this.f3971xfbe0c504) {
            case 0:
                return Callables.m1291x75d576dc(this.f3972x3271d0aa);
            case 1:
                return IdGenerator.m891x3271d0aa((IdGenerator) this.f3972x3271d0aa);
            default:
                return (AssetFileDescriptor) this.f3972x3271d0aa;
        }
    }
}
