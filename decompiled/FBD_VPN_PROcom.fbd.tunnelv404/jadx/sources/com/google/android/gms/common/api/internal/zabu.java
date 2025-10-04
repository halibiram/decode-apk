package com.google.android.gms.common.api.internal;

import android.os.Handler;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.panda912.muddy.ObfuscatedString;
import java.util.Map;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zabu implements BaseGmsClient.ConnectionProgressReportCallbacks, zacs {
    final /* synthetic */ GoogleApiManager zaa;
    private final Api.Client zab;
    private final ApiKey<?> zac;

    @Nullable
    private IAccountAccessor zad = null;

    @Nullable
    private Set<Scope> zae = null;
    private boolean zaf = false;

    public zabu(GoogleApiManager googleApiManager, Api.Client client, ApiKey<?> apiKey) {
        this.zaa = googleApiManager;
        this.zab = client;
        this.zac = apiKey;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zag() {
        IAccountAccessor iAccountAccessor;
        if (this.zaf && (iAccountAccessor = this.zad) != null) {
            this.zab.getRemoteService(iAccountAccessor, this.zae);
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.ConnectionProgressReportCallbacks
    public final void onReportServiceBinding(@NonNull ConnectionResult connectionResult) {
        Handler handler;
        handler = this.zaa.zat;
        handler.post(new zabt(this, connectionResult));
    }

    @Override // com.google.android.gms.common.api.internal.zacs
    @WorkerThread
    public final void zae(ConnectionResult connectionResult) {
        Map map;
        map = this.zaa.zap;
        zabq zabqVar = (zabq) map.get(this.zac);
        if (zabqVar != null) {
            zabqVar.zas(connectionResult);
        }
    }

    @Override // com.google.android.gms.common.api.internal.zacs
    @WorkerThread
    public final void zaf(@Nullable IAccountAccessor iAccountAccessor, @Nullable Set<Scope> set) {
        if (iAccountAccessor != null && set != null) {
            this.zad = iAccountAccessor;
            this.zae = set;
            zag();
        } else {
            Log.wtf(new ObfuscatedString(new long[]{7798537469290289937L, -3083173420247892128L, -1823726556631843664L}).toString(), new ObfuscatedString(new long[]{3252543919302307726L, -6756277285432236060L, 2005610310021072742L, 1116843492033415602L, -497509323646347789L, -5635200331775246208L, 4290756015177955010L}).toString(), new Exception());
            zae(new ConnectionResult(4));
        }
    }
}
