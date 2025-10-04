package com.google.android.gms.internal.appset;

import android.content.Context;
import com.google.android.gms.appset.AppSetIdClient;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzr implements AppSetIdClient {
    private final AppSetIdClient zza;
    private final AppSetIdClient zzb;

    public zzr(Context context) {
        this.zza = new zzp(context, GoogleApiAvailabilityLight.getInstance());
        this.zzb = zzl.zzc(context);
    }

    public static /* synthetic */ Task zza(zzr zzrVar, Task task) {
        if (!task.isSuccessful() && !task.isCanceled()) {
            Exception exception = task.getException();
            if (exception instanceof ApiException) {
                int statusCode = ((ApiException) exception).getStatusCode();
                if (statusCode != 43001 && statusCode != 43002 && statusCode != 43003 && statusCode != 17) {
                    if (statusCode == 43000) {
                        return Tasks.forException(new Exception(new ObfuscatedString(new long[]{4770211929660188570L, -2686355611898798855L, 8264968410023672055L, 3495868436471186622L, 5274561154739019099L, 5357049099684904316L, 5623629597566299302L, -6340357784575354624L, 2488527793951269347L, -4076096864393677056L, 1514629740670701592L}).toString()));
                    }
                    if (statusCode == 15) {
                        return Tasks.forException(new Exception(new ObfuscatedString(new long[]{6039760265874509636L, 2156651657007147625L, 3362116744946624219L, 7237162865743655337L, -6384437993076685782L, 3443516093010441075L, -1649763470132890824L, -4217554362198001046L, -4181231692736833065L, 1463928192630016698L}).toString()));
                    }
                    return task;
                }
                return zzrVar.zzb.getAppSetIdInfo();
            }
            return task;
        }
        return task;
    }

    @Override // com.google.android.gms.appset.AppSetIdClient
    public final Task<AppSetIdInfo> getAppSetIdInfo() {
        return this.zza.getAppSetIdInfo().continueWithTask(new Continuation() { // from class: com.google.android.gms.internal.appset.zzq
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return zzr.zza(zzr.this, task);
            }
        });
    }
}
