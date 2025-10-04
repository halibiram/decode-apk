package net.openvpn.openvpn;

/* loaded from: classes3.dex */
public class ClientAPI_ExternalPKIBase {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public ClientAPI_ExternalPKIBase(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(ClientAPI_ExternalPKIBase clientAPI_ExternalPKIBase) {
        if (clientAPI_ExternalPKIBase == null) {
            return 0L;
        }
        return clientAPI_ExternalPKIBase.swigCPtr;
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    ovpncliJNI.delete_ClientAPI_ExternalPKIBase(j);
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

    public boolean sign(String str, SWIGTYPE_p_std__string sWIGTYPE_p_std__string) {
        return ovpncliJNI.ClientAPI_ExternalPKIBase_sign(this.swigCPtr, this, str, SWIGTYPE_p_std__string.getCPtr(sWIGTYPE_p_std__string));
    }
}
