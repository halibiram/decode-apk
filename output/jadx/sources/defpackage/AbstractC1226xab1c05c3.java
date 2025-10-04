package defpackage;

import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.ExecutorsKt;

/* renamed from: 땩땩되땳딎뒻됫땩뒤듐돶뒷딹돼뒀땹땃땧돤돶돤딻땣둣땰듬될딞땀둔딃뎸듔득뒬돴든딀뒐둡둣돨땅돳뒉듽땝뎹돠뒙딞땻듌딹딄됨땥뎡돳뒤돸돨딐듨땐땮뎡뎡딃땲딐들돸땹땜돰딹딐둑뒈땁땔듐땄땜둑돳뎨딐돶돸뎸땻듬땱땀뒵땅땮땫듔딁뒼땁듔땋딸들돵딐딅돝뎸듔땔땄뒋뒈따될딅땹땁딞도둑땨딽뒘딟, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC1226xab1c05c3 {
    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static void m3972xfbe0c504(TaskExecutor taskExecutor, Runnable runnable) {
        taskExecutor.getSerialTaskExecutor().execute(runnable);
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static CoroutineDispatcher m3973x3271d0aa(TaskExecutor taskExecutor) {
        return ExecutorsKt.from(taskExecutor.getSerialTaskExecutor());
    }
}
