package androidx.emoji2.text;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import j$.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ConcurrencyHelpers {
    private static final int FONT_LOAD_TIMEOUT_SECONDS = 15;

    @RequiresApi(28)
    /* loaded from: classes.dex */
    public static class Handler28Impl {
        private Handler28Impl() {
        }

        @DoNotInline
        public static Handler createAsync(Looper looper) {
            Handler createAsync;
            createAsync = Handler.createAsync(looper);
            return createAsync;
        }
    }

    private ConcurrencyHelpers() {
    }

    @NonNull
    @Deprecated
    public static Executor convertHandlerToExecutor(@NonNull final Handler handler) {
        Objects.requireNonNull(handler);
        return new Executor() { // from class: 둣될땮돳땸땜둡뎠땜뒨둠듸돶뎬땻땜딟됴뒝딄뒾땻듬따뒉될뒛땐땬뎹뒐땝됐둥땹뒀뒨뒬뒨땫땵땫둔땃땲뎠돸땅뒈둬땃뒛뎽뒬도들땻땦듨딎뒉돸땡뒐땵땧딄땍뒵드둬돛둑뒐뒨뎸뎸땸땻땜땰땣땰땭돸땣땄딽둘땳딅돳땬돼뒬딽뒈땱땀땦뒘땣뒤딌땣딽뒷득뒤돠돸듐될돤딝땬돨득돠뒷돷뎡땦딜됨딜듻뒤두뒨
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                handler.post(runnable);
            }
        };
    }

    public static ThreadPoolExecutor createBackgroundPriorityExecutor(@NonNull final String str) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new ThreadFactory() { // from class: androidx.emoji2.text.뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread lambda$createBackgroundPriorityExecutor$0;
                lambda$createBackgroundPriorityExecutor$0 = ConcurrencyHelpers.lambda$createBackgroundPriorityExecutor$0(str, runnable);
                return lambda$createBackgroundPriorityExecutor$0;
            }
        });
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Thread lambda$createBackgroundPriorityExecutor$0(String str, Runnable runnable) {
        Thread thread = new Thread(runnable, str);
        thread.setPriority(10);
        return thread;
    }

    public static Handler mainHandlerAsync() {
        if (Build.VERSION.SDK_INT >= 28) {
            return Handler28Impl.createAsync(Looper.getMainLooper());
        }
        return new Handler(Looper.getMainLooper());
    }
}
