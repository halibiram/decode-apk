package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.panda912.muddy.ObfuscatedString;
import java.util.Map;

/* loaded from: classes2.dex */
final class zabt implements Runnable {
    final /* synthetic */ ConnectionResult zaa;
    final /* synthetic */ zabu zab;

    public zabt(zabu zabuVar, ConnectionResult connectionResult) {
        this.zab = zabuVar;
        this.zaa = connectionResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Map map;
        ApiKey apiKey;
        Api.Client client;
        Api.Client client2;
        Api.Client client3;
        Api.Client client4;
        zabu zabuVar = this.zab;
        map = zabuVar.zaa.zap;
        apiKey = zabuVar.zac;
        zabq zabqVar = (zabq) map.get(apiKey);
        if (zabqVar == null) {
            return;
        }
        if (this.zaa.isSuccess()) {
            this.zab.zaf = true;
            client = this.zab.zab;
            if (client.requiresSignIn()) {
                this.zab.zag();
                return;
            }
            try {
                zabu zabuVar2 = this.zab;
                client3 = zabuVar2.zab;
                client4 = zabuVar2.zab;
                client3.getRemoteService(null, client4.getScopesForConnectionlessNonSignIn());
                return;
            } catch (SecurityException unused) {
                new ObfuscatedString(new long[]{8175498563517869005L, -8529099555547707762L, 3846499169353428603L}).toString();
                new ObfuscatedString(new long[]{-1880178824862156066L, -7728163396424435750L, -7400337341534607307L, -6977719594542201195L, -3374320940612100807L, 2381022599623805304L}).toString();
                client2 = this.zab.zab;
                client2.disconnect(new ObfuscatedString(new long[]{-7232308732137379538L, 8009816104631547912L, -2880254185180995254L, 7588726947644115066L, -4594602815298107017L, -7984821119929596585L}).toString());
                zabqVar.zar(new ConnectionResult(10), null);
                return;
            }
        }
        zabqVar.zar(this.zaa, null);
    }
}
