package app.tunnel.ssh2.tunnel.vpn;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class TunnelVpnSettings implements Parcelable {
    public static final Parcelable.Creator<TunnelVpnSettings> CREATOR = new Parcelable.Creator<TunnelVpnSettings>() { // from class: app.tunnel.ssh2.tunnel.vpn.TunnelVpnSettings.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TunnelVpnSettings createFromParcel(Parcel parcel) {
            return new TunnelVpnSettings(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TunnelVpnSettings[] newArray(int i) {
            return new TunnelVpnSettings[i];
        }
    };
    public boolean bypass;
    public boolean mDnsForward;
    public String[] mDnsResolver;
    public boolean mEnableFilterApps;
    public String[] mExcludeIps;
    public String[] mFilterApps;
    public boolean mFilterBypassMode;
    public String mSocksServer;
    public boolean mTetheringSubnet;
    public boolean mUdpDnsRelay;
    public String mUdpResolver;

    public TunnelVpnSettings(String str, boolean z, String[] strArr, boolean z2, String str2, String[] strArr2, boolean z3, boolean z4, String[] strArr3, boolean z5, boolean z6) {
        this.mSocksServer = str;
        this.mDnsForward = z;
        this.mUdpDnsRelay = z2;
        this.mDnsResolver = strArr;
        this.mUdpResolver = str2;
        this.mExcludeIps = strArr2;
        this.mEnableFilterApps = z3;
        this.mFilterBypassMode = z4;
        this.mFilterApps = strArr3;
        this.bypass = z6;
        this.mTetheringSubnet = z5;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mSocksServer);
        parcel.writeInt(this.mDnsForward ? 1 : 0);
        parcel.writeInt(this.mUdpDnsRelay ? 1 : 0);
        parcel.writeStringArray(this.mDnsResolver);
        parcel.writeString(this.mUdpResolver);
        parcel.writeStringArray(this.mExcludeIps);
        parcel.writeInt(this.mFilterBypassMode ? 1 : 0);
        parcel.writeStringArray(this.mFilterApps);
        parcel.writeInt(this.mEnableFilterApps ? 1 : 0);
        parcel.writeInt(this.mTetheringSubnet ? 1 : 0);
        parcel.writeInt(this.bypass ? 1 : 0);
    }

    public TunnelVpnSettings(Parcel parcel) {
        this.mSocksServer = parcel.readString();
        this.mDnsForward = parcel.readInt() == 1;
        this.mUdpDnsRelay = parcel.readInt() == 1;
        this.mDnsResolver = parcel.createStringArray();
        this.mUdpResolver = parcel.readString();
        this.mExcludeIps = parcel.createStringArray();
        this.mFilterBypassMode = parcel.readInt() == 1;
        this.mFilterApps = parcel.createStringArray();
        this.mEnableFilterApps = parcel.readInt() == 1;
        this.mTetheringSubnet = parcel.readInt() == 1;
        this.bypass = parcel.readInt() == 1;
    }
}
