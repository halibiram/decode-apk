package app.tunnel.vpncommons.connectivity;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;

/* loaded from: classes.dex */
public abstract class ConnectionState {

    /* loaded from: classes.dex */
    public static class ConnectionStateV20AndLower extends ConnectionState {

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
        public final boolean f407xfbe0c504;

        /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
        public final boolean f408x3271d0aa;

        public ConnectionStateV20AndLower(ConnectivityManager connectivityManager) {
            this.f407xfbe0c504 = false;
            this.f408x3271d0aa = false;
            NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
            NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(0);
            if (networkInfo != null) {
                this.f408x3271d0aa = networkInfo.isConnectedOrConnecting();
            }
            if (networkInfo2 != null) {
                this.f407xfbe0c504 = networkInfo2.isConnectedOrConnecting();
            }
        }

        @Override // app.tunnel.vpncommons.connectivity.ConnectionState
        public boolean hasChanged(ConnectionState connectionState) {
            return hasChanged((ConnectionStateV20AndLower) connectionState);
        }

        @Override // app.tunnel.vpncommons.connectivity.ConnectionState
        public boolean isConnected() {
            if (!this.f408x3271d0aa && !this.f407xfbe0c504) {
                return false;
            }
            return true;
        }

        @Override // app.tunnel.vpncommons.connectivity.ConnectionState
        public boolean isDisconnected() {
            return !isConnected();
        }

        public boolean hasChanged(ConnectionStateV20AndLower connectionStateV20AndLower) {
            boolean z = this.f408x3271d0aa;
            if (z && connectionStateV20AndLower.f408x3271d0aa) {
                return false;
            }
            return (z == connectionStateV20AndLower.f408x3271d0aa && this.f407xfbe0c504 == connectionStateV20AndLower.f407xfbe0c504) ? false : true;
        }
    }

    /* loaded from: classes.dex */
    public static class ConnectionStateV21AndHigher extends ConnectionState {

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
        public final int f409xfbe0c504 = 0;

        /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
        public final int f410x3271d0aa;

        public ConnectionStateV21AndHigher(ConnectivityManager connectivityManager) {
            int i;
            this.f410x3271d0aa = 0;
            for (Network network : connectivityManager.getAllNetworks()) {
                NetworkInfo networkInfo = connectivityManager.getNetworkInfo(network);
                if (networkInfo != null && networkInfo.isConnectedOrConnecting()) {
                    int i2 = this.f410x3271d0aa;
                    if (networkInfo.getType() == 1) {
                        i = 1;
                    } else {
                        i = 0;
                    }
                    this.f410x3271d0aa = i2 + i;
                    this.f409xfbe0c504 += networkInfo.getType() != 0 ? 0 : 1;
                }
            }
        }

        @Override // app.tunnel.vpncommons.connectivity.ConnectionState
        public boolean hasChanged(ConnectionState connectionState) {
            return hasChanged((ConnectionStateV21AndHigher) connectionState);
        }

        @Override // app.tunnel.vpncommons.connectivity.ConnectionState
        public boolean isConnected() {
            if (this.f410x3271d0aa <= 0 && this.f409xfbe0c504 <= 0) {
                return false;
            }
            return true;
        }

        @Override // app.tunnel.vpncommons.connectivity.ConnectionState
        public boolean isDisconnected() {
            return !isConnected();
        }

        public boolean hasChanged(ConnectionStateV21AndHigher connectionStateV21AndHigher) {
            int i = this.f410x3271d0aa;
            if (i <= 0 || connectionStateV21AndHigher.f410x3271d0aa <= 0) {
                return (i == connectionStateV21AndHigher.f410x3271d0aa && this.f409xfbe0c504 == connectionStateV21AndHigher.f409xfbe0c504) ? false : true;
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
