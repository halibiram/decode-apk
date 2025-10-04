package com.tknetwork.tunnel.core;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.panda912.muddy.ObfuscatedString;
import com.tknetwork.tunnel.service.c_06;
import com.tknetwork.tunnel.service.c_09;

/* loaded from: classes3.dex */
public class MainReceiver extends BroadcastReceiver {
    public static final String ACTION_SERVICE_RESTART = new ObfuscatedString(new long[]{7846036546371151920L, -6246161094819021151L, -1884393310518947843L, 8096074706472755539L}).toString();
    public static final String ACTION_SERVICE_STOP = new ObfuscatedString(new long[]{-4860208006710397056L, -3019116644565820458L, -556497736615942923L, -6585679313682921321L}).toString();

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        char c;
        String action = intent.getAction();
        if (action == null) {
            return;
        }
        int hashCode = action.hashCode();
        if (hashCode != -2139546169) {
            if (hashCode == 1936839132 && action.equals(new ObfuscatedString(new long[]{5320707631756762460L, 4095602997861967019L, 5292812950189723262L, 3463773468445438864L}).toString())) {
                c = 1;
            }
            c = 65535;
        } else {
            if (action.equals(new ObfuscatedString(new long[]{6238109854843388942L, -5698439777490193329L, 3394153478805144530L, -1003379508251238593L}).toString())) {
                c = 0;
            }
            c = 65535;
        }
        if (c != 0) {
            if (c == 1) {
                LocalBroadcastManager.getInstance(context).sendBroadcast(new Intent(c_06.TUNNEL_SSH_RESTART_SERVICE));
                return;
            }
            return;
        }
        c_09.stopSocksHttp(context);
    }
}
