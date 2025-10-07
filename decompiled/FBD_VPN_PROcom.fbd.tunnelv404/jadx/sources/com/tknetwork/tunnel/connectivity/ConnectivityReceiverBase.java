package com.tknetwork.tunnel.connectivity;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkRequest;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes3.dex */
public class ConnectivityReceiverBase {
    private static final String TAG = new ObfuscatedString(new long[]{7317892717147031746L, -2465342450452793582L, 8615709491351085821L, -7089050378289122233L, -8914073731919328444L}).toString();
    private Object _refHandle;
    protected Context context;
    private ConnectivityManager manager = null;

    public ConnectivityReceiverBase(Context context) {
        this.context = context;
    }

    private void registerFor20AndDown() {
    }

    private void registerFor21AndUp() {
        ConnectivityManager manager = getManager();
        NetworkRequest build = new NetworkRequest.Builder().addCapability(15).build();
        ConnectivityManager.NetworkCallback networkCallback = new ConnectivityManager.NetworkCallback() { // from class: com.tknetwork.tunnel.connectivity.ConnectivityReceiverBase.1
            @Override // android.net.ConnectivityManager.NetworkCallback
            @SuppressLint({"LongLogTag"})
            public void onAvailable(Network network) {
                new ObfuscatedString(new long[]{5903885816903660844L, 2679496255710513243L, -1255647633135510482L, -4350872528208654213L, -1876610724252999841L}).toString();
                new ObfuscatedString(new long[]{-5689163487742178182L, -6168317031205995902L, -5620549000319977219L}).toString();
                ConnectivityReceiverBase.this.onAvailable(network);
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            @SuppressLint({"LongLogTag"})
            public void onLosing(Network network, int i) {
                new ObfuscatedString(new long[]{8522583323741723164L, 8864676060903848995L, -7901714386254656187L, -5320278781509585211L, 7151514697481251592L}).toString();
                new ObfuscatedString(new long[]{-8404916181147010481L, 6947859706697669794L}).toString();
                ConnectivityReceiverBase.this.onLosing(network);
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            @SuppressLint({"LongLogTag"})
            public void onLost(Network network) {
                new ObfuscatedString(new long[]{-517673751950681976L, 5343208082258098306L, -282094848099215696L, 7875821286888590100L, -7907780825756990434L}).toString();
                new ObfuscatedString(new long[]{-7549626454492535422L, -2033242869309176026L}).toString();
                ConnectivityReceiverBase.this.onLost(network);
            }
        };
        this._refHandle = networkCallback;
        manager.registerNetworkCallback(build, networkCallback);
    }

    private void unregisterFor20AndDown() {
    }

    private void unregisterFor21AndUp() {
        getManager().unregisterNetworkCallback((ConnectivityManager.NetworkCallback) this._refHandle);
    }

    public ConnectivityManager getManager() {
        if (this.manager == null) {
            this.manager = (ConnectivityManager) this.context.getSystemService(new ObfuscatedString(new long[]{-5855450788568616953L, -4046663704341362484L, 2634775607545608128L}).toString());
        }
        return this.manager;
    }

    public void onAvailable(Object obj) {
    }

    public void onLosing(Object obj) {
    }

    public void onLost(Object obj) {
    }

    public void register() {
        registerFor21AndUp();
        registerFor20AndDown();
    }

    public void unregister() {
        unregisterFor21AndUp();
        unregisterFor20AndDown();
    }
}
