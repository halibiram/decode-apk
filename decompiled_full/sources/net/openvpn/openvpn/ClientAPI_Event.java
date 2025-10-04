package net.openvpn.openvpn;

/* loaded from: classes3.dex */
public class ClientAPI_Event {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public ClientAPI_Event(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(ClientAPI_Event clientAPI_Event) {
        if (clientAPI_Event == null) {
            return 0L;
        }
        return clientAPI_Event.swigCPtr;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    ovpncliJNI.delete_ClientAPI_Event(j);
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

    public boolean getError() {
        return ovpncliJNI.ClientAPI_Event_error_get(this.swigCPtr, this);
    }

    public boolean getFatal() {
        return ovpncliJNI.ClientAPI_Event_fatal_get(this.swigCPtr, this);
    }

    public String getInfo() {
        return ovpncliJNI.ClientAPI_Event_info_get(this.swigCPtr, this);
    }

    public String getName() {
        return ovpncliJNI.ClientAPI_Event_name_get(this.swigCPtr, this);
    }

    public void setError(boolean z) {
        ovpncliJNI.ClientAPI_Event_error_set(this.swigCPtr, this, z);
    }

    public void setFatal(boolean z) {
        ovpncliJNI.ClientAPI_Event_fatal_set(this.swigCPtr, this, z);
    }

    public void setInfo(String str) {
        ovpncliJNI.ClientAPI_Event_info_set(this.swigCPtr, this, str);
    }

    public void setName(String str) {
        ovpncliJNI.ClientAPI_Event_name_set(this.swigCPtr, this, str);
    }

    public ClientAPI_Event() {
        this(ovpncliJNI.new_ClientAPI_Event(), true);
    }
}
