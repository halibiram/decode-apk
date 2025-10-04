package com.tknetwork.tunnel.service;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import app.tunnel.ssh2.tunnel.vpn.TunnelUtils;

/* loaded from: classes3.dex */
public class c_09 {
    public static void startSocksHttp(Context context) {
        Intent intent = new Intent(context, (Class<?>) c_06.class);
        TunnelUtils.restartRotate();
        if (Build.VERSION.SDK_INT >= 26) {
            context.startForegroundService(intent);
        } else {
            context.startService(intent);
        }
    }

    public static void stopSocksHttp(Context context) {
        LocalBroadcastManager.getInstance(context).sendBroadcast(new Intent(c_06.TUNNEL_SSH_STOP_SERVICE));
    }
}
