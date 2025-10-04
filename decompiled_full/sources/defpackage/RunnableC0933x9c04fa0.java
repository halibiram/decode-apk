package defpackage;

import androidx.work.ListenableFutureKt;
import androidx.work.WorkerKt;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: 딅뒀득땣뎽된딌땨딨듐땦땄땸될돠딨뎹땣듽뒹뒹땐든땟딁둡됐땳땱뎰둡땦땍돴뒉뎬딝듸두돴땫딟득됨뒛든둘딝딁돸돸듨땜뒾뒾돼뒈됴뒻뒻뒙듨땣땋뒬뒈될둡듼땐돷뒉뒤딃뒻돠뒹둬딁딸딎딃듔뒐돷뒬딀듨듰뒼돳돷득땹땜땃듬됫됴땪딅땪땧딅들들듟땃됩둣뒻딅땩땲딅땦둘듌됐돵땠돨뎰땱뒨딝듻땮듸땁, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0933x9c04fa0 implements Runnable {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f5083xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ AtomicBoolean f5084x3271d0aa;

    public /* synthetic */ RunnableC0933x9c04fa0(AtomicBoolean atomicBoolean, int i) {
        this.f5083xfbe0c504 = i;
        this.f5084x3271d0aa = atomicBoolean;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5083xfbe0c504) {
            case 0:
                ListenableFutureKt.m854x1378447b(this.f5084x3271d0aa);
                return;
            default:
                WorkerKt.m862x3271d0aa(this.f5084x3271d0aa);
                return;
        }
    }
}
