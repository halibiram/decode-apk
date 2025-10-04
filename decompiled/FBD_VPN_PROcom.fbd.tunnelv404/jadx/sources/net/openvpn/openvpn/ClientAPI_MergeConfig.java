package net.openvpn.openvpn;

/* loaded from: classes3.dex */
public class ClientAPI_MergeConfig {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public ClientAPI_MergeConfig(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(ClientAPI_MergeConfig clientAPI_MergeConfig) {
        if (clientAPI_MergeConfig == null) {
            return 0L;
        }
        return clientAPI_MergeConfig.swigCPtr;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    ovpncliJNI.delete_ClientAPI_MergeConfig(j);
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

    public String getBasename() {
        return ovpncliJNI.ClientAPI_MergeConfig_basename_get(this.swigCPtr, this);
    }

    public String getErrorText() {
        return ovpncliJNI.ClientAPI_MergeConfig_errorText_get(this.swigCPtr, this);
    }

    public String getProfileContent() {
        return ovpncliJNI.ClientAPI_MergeConfig_profileContent_get(this.swigCPtr, this);
    }

    public SWIGTYPE_p_std__vectorT_std__string_t getRefPathList() {
        long ClientAPI_MergeConfig_refPathList_get = ovpncliJNI.ClientAPI_MergeConfig_refPathList_get(this.swigCPtr, this);
        if (ClientAPI_MergeConfig_refPathList_get == 0) {
            return null;
        }
        return new SWIGTYPE_p_std__vectorT_std__string_t(ClientAPI_MergeConfig_refPathList_get, false);
    }

    public String getStatus() {
        return ovpncliJNI.ClientAPI_MergeConfig_status_get(this.swigCPtr, this);
    }

    public void setBasename(String str) {
        ovpncliJNI.ClientAPI_MergeConfig_basename_set(this.swigCPtr, this, str);
    }

    public void setErrorText(String str) {
        ovpncliJNI.ClientAPI_MergeConfig_errorText_set(this.swigCPtr, this, str);
    }

    public void setProfileContent(String str) {
        ovpncliJNI.ClientAPI_MergeConfig_profileContent_set(this.swigCPtr, this, str);
    }

    public void setRefPathList(SWIGTYPE_p_std__vectorT_std__string_t sWIGTYPE_p_std__vectorT_std__string_t) {
        ovpncliJNI.ClientAPI_MergeConfig_refPathList_set(this.swigCPtr, this, SWIGTYPE_p_std__vectorT_std__string_t.getCPtr(sWIGTYPE_p_std__vectorT_std__string_t));
    }

    public void setStatus(String str) {
        ovpncliJNI.ClientAPI_MergeConfig_status_set(this.swigCPtr, this, str);
    }

    public ClientAPI_MergeConfig() {
        this(ovpncliJNI.new_ClientAPI_MergeConfig(), true);
    }
}
