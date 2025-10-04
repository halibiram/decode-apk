package defpackage;

import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.scheduling.Task;
import kotlinx.coroutines.scheduling.TasksKt;

/* renamed from: 땩땫땋뒝뎸땍드도땹땵듬뒀땀돤땧듬땐땹돰뒻됐땄듼딤둡뒾둡듟딁뒷둑듌둥돤딻뒵땳듬딜돷딌듌뒛딸뒵뎸될뒙돸땔땰뒤뒘딝돸됴땝딄돤뒤된땋딅딤뒻땮땔뒝뒋땄뒙땮땵딸딞둬땲둘둡땮땐딤뎰딤땁둑듸땧뒋딤돳땥뒋된듼땡땃뒋땟뒬뒘딸둘땫딹땫땃듸뒤들땀땟땣땀뎰딝뎬땀뒘돰땃땳땔돨듔둠땅뒵뒼딻, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1227xe7342b4b extends Task {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Runnable f5630xfbe0c504;

    public C1227xe7342b4b(Runnable runnable, long j, boolean z) {
        super(j, z);
        this.f5630xfbe0c504 = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f5630xfbe0c504.run();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Task[");
        Runnable runnable = this.f5630xfbe0c504;
        sb.append(DebugStringsKt.getClassSimpleName(runnable));
        sb.append('@');
        sb.append(DebugStringsKt.getHexAddress(runnable));
        sb.append(", ");
        sb.append(this.submissionTime);
        sb.append(", ");
        sb.append(TasksKt.access$taskContextString(this.taskContext));
        sb.append(']');
        return sb.toString();
    }
}
