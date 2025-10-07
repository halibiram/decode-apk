package com.google.android.gms.internal.appset;

import android.content.Context;
import com.google.android.gms.appset.AppSetIdClient;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzp extends GoogleApi<Api.ApiOptions.NoOptions> implements AppSetIdClient {
    private static final Api.ClientKey<zzd> zza;
    private static final Api.AbstractClientBuilder<zzd, Api.ApiOptions.NoOptions> zzb;
    private static final Api<Api.ApiOptions.NoOptions> zzc;
    private final Context zzd;
    private final GoogleApiAvailabilityLight zze;

    static {
        Api.ClientKey<zzd> clientKey = new Api.ClientKey<>();
        zza = clientKey;
        zzn zznVar = new zzn();
        zzb = zznVar;
        zzc = new Api<>(new ObfuscatedString(new long[]{-6685055384705211868L, -8175055012928201199L, -8327056643889125783L}).toString(), zznVar, clientKey);
    }

    public zzp(Context context, GoogleApiAvailabilityLight googleApiAvailabilityLight) {
        super(context, zzc, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
        this.zzd = context;
        this.zze = googleApiAvailabilityLight;
    }

    @Override // com.google.android.gms.appset.AppSetIdClient
    public final Task<AppSetIdInfo> getAppSetIdInfo() {
        if (this.zze.isGooglePlayServicesAvailable(this.zzd, 212800000) == 0) {
            return doRead(TaskApiCall.builder().setFeatures(com.google.android.gms.appset.zze.zza).run(new RemoteCall() { // from class: com.google.android.gms.internal.appset.zzm
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.google.android.gms.common.api.internal.RemoteCall
                public final void accept(Object obj, Object obj2) {
                    ((zzg) ((zzd) obj).getService()).zzc(new com.google.android.gms.appset.zza(null, null), new zzo(zzp.this, (TaskCompletionSource) obj2));
                }
            }).setAutoResolveMissingFeatures(false).setMethodKey(27601).build());
        }
        return Tasks.forException(new ApiException(new Status(17)));
    }
}
