package net.openvpn.openvpn;

/* loaded from: classes3.dex */
public class ClientAPI_SessionToken {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public ClientAPI_SessionToken(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(ClientAPI_SessionToken clientAPI_SessionToken) {
        if (clientAPI_SessionToken == null) {
            return 0L;
        }
        return clientAPI_SessionToken.swigCPtr;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    ovpncliJNI.delete_ClientAPI_SessionToken(j);
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

    public String getSession_id() {
        return ovpncliJNI.ClientAPI_SessionToken_session_id_get(this.swigCPtr, this);
    }

    public String getUsername() {
        return ovpncliJNI.ClientAPI_SessionToken_username_get(this.swigCPtr, this);
    }

    public void setSession_id(String str) {
        ovpncliJNI.ClientAPI_SessionToken_session_id_set(this.swigCPtr, this, str);
    }

    public void setUsername(String str) {
        ovpncliJNI.ClientAPI_SessionToken_username_set(this.swigCPtr, this, str);
    }

    public ClientAPI_SessionToken() {
        this(ovpncliJNI.new_ClientAPI_SessionToken(), true);
    }
}
