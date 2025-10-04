package androidx.profileinstaller;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.profileinstaller.ProfileInstallerInitializer;
import androidx.startup.Initializer;
import defpackage.RunnableC0400x66601de0;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class ProfileInstallerInitializer implements Initializer<Result> {
    private static final int DELAY_MS = 5000;

    @RequiresApi(28)
    /* loaded from: classes.dex */
    public static class Handler28Impl {
        private Handler28Impl() {
        }

        public static Handler createAsync(Looper looper) {
            Handler createAsync;
            createAsync = Handler.createAsync(looper);
            return createAsync;
        }
    }

    /* loaded from: classes.dex */
    public static class Result {
    }

    public /* synthetic */ void lambda$create$0(Context context, long j) {
        installAfterDelay(context);
    }

    public static void writeInBackground(@NonNull Context context) {
        new ThreadPoolExecutor(0, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue()).execute(new RunnableC0400x66601de0(context, 3));
    }

    @Override // androidx.startup.Initializer
    @NonNull
    public List<Class<? extends Initializer<?>>> dependencies() {
        return Collections.emptyList();
    }

    public void installAfterDelay(@NonNull Context context) {
        Handler handler;
        if (Build.VERSION.SDK_INT >= 28) {
            handler = Handler28Impl.createAsync(Looper.getMainLooper());
        } else {
            handler = new Handler(Looper.getMainLooper());
        }
        handler.postDelayed(new RunnableC0400x66601de0(context, 2), new Random().nextInt(Math.max(1000, 1)) + DELAY_MS);
    }

    @Override // androidx.startup.Initializer
    @NonNull
    public Result create(@NonNull Context context) {
        if (Build.VERSION.SDK_INT < 24) {
            return new Result();
        }
        final Context applicationContext = context.getApplicationContext();
        Choreographer.getInstance().postFrameCallback(new Choreographer.FrameCallback() { // from class: 딻뒙땟딜땝뒘땋땮땜둘땍돷돛들득땔땦딄뒻뒛땱땳뎹뒈디뎬뒈뒈됴뎽뎰듼딸땲듻될땨뒙땅뒹뒼딃드돸땬듔딹딄딠디땍뒬딄듻뎡뒉뎰돤뎽땭땦뒷돼딄듔땣득둑들듰뎡딀딅땐뎻딟뎽뒋딁돶돤뒻딞든땧뒝땅뎠돤뒻뒨뒻딽땦뒷땔뎻둑땲딠땄드돠돝됴땧땥뒙딀딝뎹땔땫딜드뒼땱듬듐뒷돸땳땰돤뎽땭땫뒋뎽땮
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j) {
                ProfileInstallerInitializer.this.lambda$create$0(applicationContext, j);
            }
        });
        return new Result();
    }
}
