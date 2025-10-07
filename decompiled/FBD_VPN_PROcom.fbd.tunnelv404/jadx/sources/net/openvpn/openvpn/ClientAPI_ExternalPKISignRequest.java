package net.openvpn.openvpn;

/* loaded from: classes3.dex */
public class ClientAPI_ExternalPKISignRequest extends ClientAPI_ExternalPKIRequestBase {
    private transient long swigCPtr;

    public ClientAPI_ExternalPKISignRequest(long j, boolean z) {
        super(ovpncliJNI.ClientAPI_ExternalPKISignRequest_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(ClientAPI_ExternalPKISignRequest clientAPI_ExternalPKISignRequest) {
        if (clientAPI_ExternalPKISignRequest == null) {
            return 0L;
        }
        return clientAPI_ExternalPKISignRequest.swigCPtr;
    }

    @Override // net.openvpn.openvpn.ClientAPI_ExternalPKIRequestBase
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    ovpncliJNI.delete_ClientAPI_ExternalPKISignRequest(j);
                }
                this.swigCPtr = 0L;
            }
            super.delete();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // net.openvpn.openvpn.ClientAPI_ExternalPKIRequestBase
    public void finalize() {
        delete();
    }

    public String getData() {
        return ovpncliJNI.ClientAPI_ExternalPKISignRequest_data_get(this.swigCPtr, this);
    }

    public String getSig() {
        return ovpncliJNI.ClientAPI_ExternalPKISignRequest_sig_get(this.swigCPtr, this);
    }

    public void setData(String str) {
        ovpncliJNI.ClientAPI_ExternalPKISignRequest_data_set(this.swigCPtr, this, str);
    }

    public void setSig(String str) {
        ovpncliJNI.ClientAPI_ExternalPKISignRequest_sig_set(this.swigCPtr, this, str);
    }

    public ClientAPI_ExternalPKISignRequest() {
        this(ovpncliJNI.new_ClientAPI_ExternalPKISignRequest(), true);
    }
}
