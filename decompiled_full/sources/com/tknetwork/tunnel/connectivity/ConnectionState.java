package com.tknetwork.tunnel.connectivity;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;

/* loaded from: classes3.dex */
public abstract class ConnectionState {

    /* loaded from: classes3.dex */
    public static class ConnectionStateV20AndLower extends ConnectionState {
        private boolean hasLte;
        private boolean hasWifi;

        public ConnectionStateV20AndLower(ConnectivityManager connectivityManager) {
            this.hasLte = false;
            this.hasWifi = false;
            NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
            NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(0);
            if (networkInfo != null) {
                this.hasWifi = networkInfo.isConnectedOrConnecting();
            }
            if (networkInfo2 != null) {
                this.hasLte = networkInfo2.isConnectedOrConnecting();
            }
        }

        @Override // com.tknetwork.tunnel.connectivity.ConnectionState
        public boolean hasChanged(ConnectionState connectionState) {
            return hasChanged((ConnectionStateV20AndLower) connectionState);
        }

        @Override // com.tknetwork.tunnel.connectivity.ConnectionState
        public boolean isConnected() {
            if (!this.hasWifi && !this.hasLte) {
                return false;
            }
            return true;
        }

        @Override // com.tknetwork.tunnel.connectivity.ConnectionState
        public boolean isDisconnected() {
            return !isConnected();
        }

        public boolean hasChanged(ConnectionStateV20AndLower connectionStateV20AndLower) {
            boolean z = this.hasWifi;
            if (z && connectionStateV20AndLower.hasWifi) {
                return false;
            }
            return (z == connectionStateV20AndLower.hasWifi && this.hasLte == connectionStateV20AndLower.hasLte) ? false : true;
        }
    }

    /* loaded from: classes3.dex */
    public static class ConnectionStateV21AndHigher extends ConnectionState {
        private int mLteActiveNetworks = 0;
        private int mWifiActiveNetworks;

        public ConnectionStateV21AndHigher(ConnectivityManager connectivityManager) {
            int i;
            this.mWifiActiveNetworks = 0;
            for (Network network : connectivityManager.getAllNetworks()) {
                NetworkInfo networkInfo = connectivityManager.getNetworkInfo(network);
                if (networkInfo != null && networkInfo.isConnectedOrConnecting()) {
                    int i2 = this.mWifiActiveNetworks;
                    if (networkInfo.getType() == 1) {
                        i = 1;
                    } else {
                        i = 0;
                    }
                    this.mWifiActiveNetworks = i2 + i;
                    this.mLteActiveNetworks += networkInfo.getType() != 0 ? 0 : 1;
                }
            }
        }

        @Override // com.tknetwork.tunnel.connectivity.ConnectionState
        public boolean hasChanged(ConnectionState connectionState) {
            return hasChanged((ConnectionStateV21AndHigher) connectionState);
        }

        @Override // com.tknetwork.tunnel.connectivity.ConnectionState
        public boolean isConnected() {
            if (this.mWifiActiveNetworks <= 0 && this.mLteActiveNetworks <= 0) {
                return false;
            }
            return true;
        }

        @Override // com.tknetwork.tunnel.connectivity.ConnectionState
        public boolean isDisconnected() {
            return !isConnected();
        }

        public boolean hasChanged(ConnectionStateV21AndHigher connectionStateV21AndHigher) {
            int i = this.mWifiActiveNetworks;
            if (i <= 0 || connectionStateV21AndHigher.mWifiActiveNetworks <= 0) {
                return (i == connectionStateV21AndHigher.mWifiActiveNetworks && this.mLteActiveNetworks == connectionStateV21AndHigher.mLteActiveNetworks) ? false : true;
            }
            return false;
        }
    }

    public static ConnectionState getInstance(ConnectivityManager connectivityManager) {
        return new ConnectionStateV21AndHigher(connectivityManager);
    }

    public abstract boolean hasChanged(ConnectionState connectionState);

    public abstract boolean isConnected();

    public abstract boolean isDisconnected();
}
