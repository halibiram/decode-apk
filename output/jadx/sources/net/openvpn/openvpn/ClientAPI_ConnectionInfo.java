package net.openvpn.openvpn;

/* loaded from: classes3.dex */
public class ClientAPI_ConnectionInfo {
    protected boolean swigCMemOwn;
    private long swigCPtr;

    public ClientAPI_ConnectionInfo(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(ClientAPI_ConnectionInfo clientAPI_ConnectionInfo) {
        if (clientAPI_ConnectionInfo == null) {
            return 0L;
        }
        return clientAPI_ConnectionInfo.swigCPtr;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    ovpncliJNI.delete_ClientAPI_ConnectionInfo(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void finalize() {
        delete();
    }

    public String getClientIp() {
        return ovpncliJNI.ClientAPI_ConnectionInfo_clientIp_get(this.swigCPtr, this);
    }

    public boolean getDefined() {
        return ovpncliJNI.ClientAPI_ConnectionInfo_defined_get(this.swigCPtr, this);
    }

    public String getServerHost() {
        return ovpncliJNI.ClientAPI_ConnectionInfo_serverHost_get(this.swigCPtr, this);
    }

    public String getServerIp() {
        return ovpncliJNI.ClientAPI_ConnectionInfo_serverIp_get(this.swigCPtr, this);
    }

    public String getServerPort() {
        return ovpncliJNI.ClientAPI_ConnectionInfo_serverPort_get(this.swigCPtr, this);
    }

    public String getServerProto() {
        return ovpncliJNI.ClientAPI_ConnectionInfo_serverProto_get(this.swigCPtr, this);
    }

    public String getTunName() {
        return ovpncliJNI.ClientAPI_ConnectionInfo_tunName_get(this.swigCPtr, this);
    }

    public String getUser() {
        return ovpncliJNI.ClientAPI_ConnectionInfo_user_get(this.swigCPtr, this);
    }

    public String getVpnIp4() {
        return ovpncliJNI.ClientAPI_ConnectionInfo_vpnIp4_get(this.swigCPtr, this);
    }

    public String getVpnIp6() {
        return ovpncliJNI.ClientAPI_ConnectionInfo_vpnIp6_get(this.swigCPtr, this);
    }

    public void setClientIp(String str) {
        ovpncliJNI.ClientAPI_ConnectionInfo_clientIp_set(this.swigCPtr, this, str);
    }

    public void setDefined(boolean z) {
        ovpncliJNI.ClientAPI_ConnectionInfo_defined_set(this.swigCPtr, this, z);
    }

    public void setServerHost(String str) {
        ovpncliJNI.ClientAPI_ConnectionInfo_serverHost_set(this.swigCPtr, this, str);
    }

    public void setServerIp(String str) {
        ovpncliJNI.ClientAPI_ConnectionInfo_serverIp_set(this.swigCPtr, this, str);
    }

    public void setServerPort(String str) {
        ovpncliJNI.ClientAPI_ConnectionInfo_serverPort_set(this.swigCPtr, this, str);
    }

    public void setServerProto(String str) {
        ovpncliJNI.ClientAPI_ConnectionInfo_serverProto_set(this.swigCPtr, this, str);
    }

    public void setTunName(String str) {
        ovpncliJNI.ClientAPI_ConnectionInfo_tunName_set(this.swigCPtr, this, str);
    }

    public void setUser(String str) {
        ovpncliJNI.ClientAPI_ConnectionInfo_user_set(this.swigCPtr, this, str);
    }

    public void setVpnIp4(String str) {
        ovpncliJNI.ClientAPI_ConnectionInfo_vpnIp4_set(this.swigCPtr, this, str);
    }

    public void setVpnIp6(String str) {
        ovpncliJNI.ClientAPI_ConnectionInfo_vpnIp6_set(this.swigCPtr, this, str);
    }

    public ClientAPI_ConnectionInfo() {
        this(ovpncliJNI.new_ClientAPI_ConnectionInfo(), true);
    }
}
