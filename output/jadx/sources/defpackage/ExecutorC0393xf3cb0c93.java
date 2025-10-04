package defpackage;

import androidx.arch.core.executor.ArchTaskExecutor;
import java.util.concurrent.Executor;

/* renamed from: 뎻듟땨뒝땄딃됩따땣땮돷뒛둬든뒨뎻땯딄돰뒉땡돠딤딨땠돸땋돳땋뎨땠딎됨둔땸딻딄땡돠듐둑딨뒼드딅된둬뒋딄듨뒀됩돳뎠듌뒬땝뎠딽땦돸돸땵땜땋땧둬돷돼돛딻돤뒙뒷돰딤듻뒷돳땬뒀땸땠둡돵돛듟땰듻뒾땮딄땦뒼뒼땲딟듨돷돛땅딤뒛땄돝뒋됴뒉땋드뒐돨뒋딎땧드듨둔땀땁땟됴돛둡땁딀뒐돳땧땅, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class ExecutorC0393xf3cb0c93 implements Executor {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f3821xfbe0c504;

    public /* synthetic */ ExecutorC0393xf3cb0c93(int i) {
        this.f3821xfbe0c504 = i;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.f3821xfbe0c504) {
            case 0:
                runnable.run();
                return;
            case 1:
                ArchTaskExecutor.m23xfbe0c504(runnable);
                return;
            default:
                ArchTaskExecutor.m24x3271d0aa(runnable);
                return;
        }
    }
}
