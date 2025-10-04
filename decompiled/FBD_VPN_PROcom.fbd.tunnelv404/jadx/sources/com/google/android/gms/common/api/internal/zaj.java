package com.google.android.gms.common.api.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zaj implements GoogleApiClient.OnConnectionFailedListener {
    public final int zaa;
    public final GoogleApiClient zab;

    @Nullable
    public final GoogleApiClient.OnConnectionFailedListener zac;
    final /* synthetic */ zak zad;

    public zaj(zak zakVar, int i, @Nullable GoogleApiClient googleApiClient, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.zad = zakVar;
        this.zaa = i;
        this.zab = googleApiClient;
        this.zac = onConnectionFailedListener;
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        String valueOf = String.valueOf(connectionResult);
        new ObfuscatedString(new long[]{67089658907445070L, -4640815754142771576L, 6668426305638847766L}).toString();
        new ObfuscatedString(new long[]{7040526960757814917L, 5855943055865144377L, -1435375605115241561L, -8069735868036801579L, 7564379001293596247L}).toString().concat(valueOf);
        this.zad.zah(connectionResult, this.zaa);
    }
}
