package com.google.android.gms.internal.appset;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.appset.AppSetIdClient;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.panda912.muddy.ObfuscatedString;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class zzl implements AppSetIdClient {

    @Nullable
    @GuardedBy("InternalAppSetAppSideClientImpl.class")
    private static AppSetIdClient zza;
    private final Context zzb;
    private boolean zzc;
    private final ScheduledExecutorService zzd;
    private final ExecutorService zze;

    public zzl(Context context) {
        this.zzc = false;
        ScheduledExecutorService newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        this.zzd = newSingleThreadScheduledExecutor;
        this.zze = Executors.newSingleThreadExecutor();
        this.zzb = context;
        if (!this.zzc) {
            newSingleThreadScheduledExecutor.scheduleAtFixedRate(new zzj(this, null), 0L, 86400L, TimeUnit.SECONDS);
            this.zzc = true;
        }
    }

    @NonNull
    public static synchronized AppSetIdClient zzc(@NonNull Context context) {
        AppSetIdClient appSetIdClient;
        synchronized (zzl.class) {
            try {
                Preconditions.checkNotNull(context, new ObfuscatedString(new long[]{2073127628890953514L, 5136804836040849026L, -8473283796171953763L, 5396500810411039551L}).toString());
                if (zza == null) {
                    zza = new zzl(context.getApplicationContext());
                }
                appSetIdClient = zza;
            } catch (Throwable th) {
                throw th;
            }
        }
        return appSetIdClient;
    }

    @VisibleForTesting
    public static final void zze(Context context) {
        if (!zzf(context).edit().remove(new ObfuscatedString(new long[]{4596947790130586129L, -8281489057101112362L, 4760742670617485214L}).toString()).commit()) {
            String valueOf = String.valueOf(context.getPackageName());
            String obfuscatedString = new ObfuscatedString(new long[]{-7133016011588020293L, 7646061812107959826L, 6309532601960138709L, -1991171367861178087L, -4892024408679062737L, -7180616643689357421L, -2855107242190694155L}).toString();
            if (valueOf.length() != 0) {
                obfuscatedString.concat(valueOf);
            } else {
                new String(obfuscatedString);
            }
            new ObfuscatedString(new long[]{5857013575197766966L, 4917824266198791675L}).toString();
        }
        if (!zzf(context).edit().remove(new ObfuscatedString(new long[]{-7614482498887356310L, -2270364677712221381L, -8529329523852731444L, -4158021722246193017L, -8406112536569705253L}).toString()).commit()) {
            String valueOf2 = String.valueOf(context.getPackageName());
            String obfuscatedString2 = new ObfuscatedString(new long[]{-3793391592843894744L, -7597409402077159071L, 3533298199987315252L, 3424209944627616950L, 3161097177931476165L, 7381460681580156617L, -4355570361898186249L, 4433723474057089652L}).toString();
            if (valueOf2.length() != 0) {
                obfuscatedString2.concat(valueOf2);
            } else {
                new String(obfuscatedString2);
            }
            new ObfuscatedString(new long[]{-6887178213588302201L, 6169334920497448829L}).toString();
        }
    }

    private static final SharedPreferences zzf(Context context) {
        return context.getSharedPreferences(new ObfuscatedString(new long[]{-2678181932367873387L, 3908581467785386095L, 4497719453415309816L, -2184218107012855710L}).toString(), 0);
    }

    private static final void zzg(Context context) {
        SharedPreferences zzf = zzf(context);
        if (!zzf.edit().putLong(new ObfuscatedString(new long[]{-6351371601697421807L, -8120090339992203965L, 132244506169652514L, -2866884971620325974L, -2783061841096445277L}).toString(), DefaultClock.getInstance().currentTimeMillis()).commit()) {
            String valueOf = String.valueOf(context.getPackageName());
            String obfuscatedString = new ObfuscatedString(new long[]{-8929200670638188071L, -193336259327119987L, 1287434536693929192L, 4424521497172391318L, -8637621960515150909L, 7488103256979831282L, -5778722557480246674L, 1453067975032944892L}).toString();
            if (valueOf.length() != 0) {
                obfuscatedString.concat(valueOf);
            } else {
                new String(obfuscatedString);
            }
            new ObfuscatedString(new long[]{-1412162777723809312L, 620712218080224359L}).toString();
            throw new zzk(new ObfuscatedString(new long[]{5028682510091947283L, -756475820677516597L, -4630956438169639389L, 3236085287497013330L, 3399994364516710701L, -6737452546910666444L, -3256595754054059582L}).toString());
        }
    }

    @Override // com.google.android.gms.appset.AppSetIdClient
    public final Task<AppSetIdInfo> getAppSetIdInfo() {
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.appset.zzh
            @Override // java.lang.Runnable
            public final void run() {
                zzl.this.zzd(taskCompletionSource);
            }
        });
        return taskCompletionSource.getTask();
    }

    @VisibleForTesting
    public final long zza() {
        long j = zzf(this.zzb).getLong(new ObfuscatedString(new long[]{-4974447601206211961L, 8752351913368897969L, 789698855449062511L, 3154996572928973396L, 1385480936714666894L}).toString(), -1L);
        if (j == -1) {
            return -1L;
        }
        return j + 33696000000L;
    }

    public final /* synthetic */ void zzd(TaskCompletionSource taskCompletionSource) {
        String string = zzf(this.zzb).getString(new ObfuscatedString(new long[]{7350268118703098014L, -7995193515696207627L, 3925639892356438072L}).toString(), null);
        long zza2 = zza();
        if (string != null && DefaultClock.getInstance().currentTimeMillis() <= zza2) {
            try {
                zzg(this.zzb);
            } catch (zzk e) {
                taskCompletionSource.setException(e);
                return;
            }
        } else {
            string = UUID.randomUUID().toString();
            try {
                Context context = this.zzb;
                if (!zzf(context).edit().putString(new ObfuscatedString(new long[]{5206063074804574471L, 3946890644859048435L, 4567236485229082070L}).toString(), string).commit()) {
                    new ObfuscatedString(new long[]{3090291332339569946L, 8021048098406328453L}).toString();
                    String obfuscatedString = new ObfuscatedString(new long[]{-5072696915491684084L, -525008469051571370L, 2753561513010151528L, -5660631838356308227L, 8090394336114752501L, -6303011541252239962L, -6935842364788932593L}).toString();
                    String valueOf = String.valueOf(context.getPackageName());
                    if (valueOf.length() != 0) {
                        obfuscatedString.concat(valueOf);
                    } else {
                        new String(obfuscatedString);
                    }
                    throw new zzk(new ObfuscatedString(new long[]{3978352314719450412L, 5605838826098486734L, 1794395180439318364L, 4708173124806360797L, -6181755613141432597L}).toString());
                }
                zzg(context);
                Context context2 = this.zzb;
                SharedPreferences zzf = zzf(context2);
                if (!zzf.edit().putLong(new ObfuscatedString(new long[]{-8891892085111211461L, -8677979749234757992L, -2947894108642252839L, -8861143364227079545L}).toString(), DefaultClock.getInstance().currentTimeMillis()).commit()) {
                    new ObfuscatedString(new long[]{-5046357636076680872L, -603713845246674433L}).toString();
                    String obfuscatedString2 = new ObfuscatedString(new long[]{2230105212637214484L, -3701333886223980139L, -4406316307115862158L, 6020256343725183633L, -4924685809951670451L, -7850476405958888651L, -6156490084624001152L, -7089482798503611474L}).toString();
                    String valueOf2 = String.valueOf(context2.getPackageName());
                    if (valueOf2.length() != 0) {
                        obfuscatedString2.concat(valueOf2);
                    } else {
                        new String(obfuscatedString2);
                    }
                    throw new zzk(new ObfuscatedString(new long[]{-7225437073061410712L, 5996821450767438737L, 6111347819722108196L, -1546563333086323423L, 9185579967104457204L, 951315546872965421L, 7877984287528362551L}).toString());
                }
            } catch (zzk e2) {
                taskCompletionSource.setException(e2);
                return;
            }
        }
        taskCompletionSource.setResult(new AppSetIdInfo(string, 1));
    }
}
