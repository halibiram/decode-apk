package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.Preconditions;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zat implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {
    public final Api<?> zaa;
    private final boolean zab;

    @Nullable
    private zau zac;

    public zat(Api<?> api, boolean z) {
        this.zaa = api;
        this.zab = z;
    }

    private final zau zab() {
        Preconditions.checkNotNull(this.zac, new ObfuscatedString(new long[]{1609716750223429423L, 2881214277626915432L, -4316793223034962752L, 2011444855530052353L, 2832577009385009843L, -5463919923272357L, -6740779944338316198L, -6761794465604562905L, -6631365515140547060L, 3574068245072965894L, -3554221479288848720L, -2659316134210018845L, 523753127342181904L}).toString());
        return this.zac;
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(@Nullable Bundle bundle) {
        zab().onConnected(bundle);
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        zab().zaa(connectionResult, this.zaa, this.zab);
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        zab().onConnectionSuspended(i);
    }

    public final void zaa(zau zauVar) {
        this.zac = zauVar;
    }
}
