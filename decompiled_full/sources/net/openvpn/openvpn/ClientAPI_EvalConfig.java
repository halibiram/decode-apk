package net.openvpn.openvpn;

/* loaded from: classes3.dex */
public class ClientAPI_EvalConfig {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public ClientAPI_EvalConfig(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(ClientAPI_EvalConfig clientAPI_EvalConfig) {
        if (clientAPI_EvalConfig == null) {
            return 0L;
        }
        return clientAPI_EvalConfig.swigCPtr;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    ovpncliJNI.delete_ClientAPI_EvalConfig(j);
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

    public boolean getAllowPasswordSave() {
        return ovpncliJNI.ClientAPI_EvalConfig_allowPasswordSave_get(this.swigCPtr, this);
    }

    public boolean getAutologin() {
        return ovpncliJNI.ClientAPI_EvalConfig_autologin_get(this.swigCPtr, this);
    }

    public boolean getError() {
        return ovpncliJNI.ClientAPI_EvalConfig_error_get(this.swigCPtr, this);
    }

    public boolean getExternalPki() {
        return ovpncliJNI.ClientAPI_EvalConfig_externalPki_get(this.swigCPtr, this);
    }

    public String getFriendlyName() {
        return ovpncliJNI.ClientAPI_EvalConfig_friendlyName_get(this.swigCPtr, this);
    }

    public String getMessage() {
        return ovpncliJNI.ClientAPI_EvalConfig_message_get(this.swigCPtr, this);
    }

    public boolean getPrivateKeyPasswordRequired() {
        return ovpncliJNI.ClientAPI_EvalConfig_privateKeyPasswordRequired_get(this.swigCPtr, this);
    }

    public String getProfileName() {
        return ovpncliJNI.ClientAPI_EvalConfig_profileName_get(this.swigCPtr, this);
    }

    public String getRemoteHost() {
        return ovpncliJNI.ClientAPI_EvalConfig_remoteHost_get(this.swigCPtr, this);
    }

    public String getRemotePort() {
        return ovpncliJNI.ClientAPI_EvalConfig_remotePort_get(this.swigCPtr, this);
    }

    public String getRemoteProto() {
        return ovpncliJNI.ClientAPI_EvalConfig_remoteProto_get(this.swigCPtr, this);
    }

    public ClientAPI_ServerEntryVector getServerList() {
        long ClientAPI_EvalConfig_serverList_get = ovpncliJNI.ClientAPI_EvalConfig_serverList_get(this.swigCPtr, this);
        if (ClientAPI_EvalConfig_serverList_get == 0) {
            return null;
        }
        return new ClientAPI_ServerEntryVector(ClientAPI_EvalConfig_serverList_get, false);
    }

    public String getStaticChallenge() {
        return ovpncliJNI.ClientAPI_EvalConfig_staticChallenge_get(this.swigCPtr, this);
    }

    public boolean getStaticChallengeEcho() {
        return ovpncliJNI.ClientAPI_EvalConfig_staticChallengeEcho_get(this.swigCPtr, this);
    }

    public String getUserlockedUsername() {
        return ovpncliJNI.ClientAPI_EvalConfig_userlockedUsername_get(this.swigCPtr, this);
    }

    public void setAllowPasswordSave(boolean z) {
        ovpncliJNI.ClientAPI_EvalConfig_allowPasswordSave_set(this.swigCPtr, this, z);
    }

    public void setAutologin(boolean z) {
        ovpncliJNI.ClientAPI_EvalConfig_autologin_set(this.swigCPtr, this, z);
    }

    public void setError(boolean z) {
        ovpncliJNI.ClientAPI_EvalConfig_error_set(this.swigCPtr, this, z);
    }

    public void setExternalPki(boolean z) {
        ovpncliJNI.ClientAPI_EvalConfig_externalPki_set(this.swigCPtr, this, z);
    }

    public void setFriendlyName(String str) {
        ovpncliJNI.ClientAPI_EvalConfig_friendlyName_set(this.swigCPtr, this, str);
    }

    public void setMessage(String str) {
        ovpncliJNI.ClientAPI_EvalConfig_message_set(this.swigCPtr, this, str);
    }

    public void setPrivateKeyPasswordRequired(boolean z) {
        ovpncliJNI.ClientAPI_EvalConfig_privateKeyPasswordRequired_set(this.swigCPtr, this, z);
    }

    public void setProfileName(String str) {
        ovpncliJNI.ClientAPI_EvalConfig_profileName_set(this.swigCPtr, this, str);
    }

    public void setRemoteHost(String str) {
        ovpncliJNI.ClientAPI_EvalConfig_remoteHost_set(this.swigCPtr, this, str);
    }

    public void setRemotePort(String str) {
        ovpncliJNI.ClientAPI_EvalConfig_remotePort_set(this.swigCPtr, this, str);
    }

    public void setRemoteProto(String str) {
        ovpncliJNI.ClientAPI_EvalConfig_remoteProto_set(this.swigCPtr, this, str);
    }

    public void setServerList(ClientAPI_ServerEntryVector clientAPI_ServerEntryVector) {
        ovpncliJNI.ClientAPI_EvalConfig_serverList_set(this.swigCPtr, this, ClientAPI_ServerEntryVector.getCPtr(clientAPI_ServerEntryVector), clientAPI_ServerEntryVector);
    }

    public void setStaticChallenge(String str) {
        ovpncliJNI.ClientAPI_EvalConfig_staticChallenge_set(this.swigCPtr, this, str);
    }

    public void setStaticChallengeEcho(boolean z) {
        ovpncliJNI.ClientAPI_EvalConfig_staticChallengeEcho_set(this.swigCPtr, this, z);
    }

    public void setUserlockedUsername(String str) {
        ovpncliJNI.ClientAPI_EvalConfig_userlockedUsername_set(this.swigCPtr, this, str);
    }

    public ClientAPI_EvalConfig() {
        this(ovpncliJNI.new_ClientAPI_EvalConfig(), true);
    }
}
