package androidx.work.impl.utils;

import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CancelWorkRunnable$forTag$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ String $tag;
    final /* synthetic */ WorkManagerImpl $workManagerImpl;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CancelWorkRunnable$forTag$1(WorkManagerImpl workManagerImpl, String str) {
        super(0);
        this.$workManagerImpl = workManagerImpl;
        this.$tag = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(WorkDatabase workDatabase, String str, WorkManagerImpl workManagerImpl) {
        Iterator<String> it = workDatabase.workSpecDao().getUnfinishedWorkWithTag(str).iterator();
        while (it.hasNext()) {
            CancelWorkRunnable.cancel(workManagerImpl, it.next());
        }
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        final WorkDatabase workDatabase = this.$workManagerImpl.getWorkDatabase();
        Intrinsics.checkNotNullExpressionValue(workDatabase, "workManagerImpl.workDatabase");
        final String str = this.$tag;
        final WorkManagerImpl workManagerImpl = this.$workManagerImpl;
        workDatabase.runInTransaction(new Runnable() { // from class: androidx.work.impl.utils.뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫
            @Override // java.lang.Runnable
            public final void run() {
                CancelWorkRunnable$forTag$1.invoke$lambda$0(WorkDatabase.this, str, workManagerImpl);
            }
        });
        CancelWorkRunnable.reschedulePendingWorkers(this.$workManagerImpl);
    }
}
