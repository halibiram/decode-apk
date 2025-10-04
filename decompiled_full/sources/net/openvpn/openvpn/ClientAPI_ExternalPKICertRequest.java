package net.openvpn.openvpn;

/* loaded from: classes3.dex */
public class ClientAPI_ExternalPKICertRequest extends ClientAPI_ExternalPKIRequestBase {
    private transient long swigCPtr;

    public ClientAPI_ExternalPKICertRequest(long j, boolean z) {
        super(ovpncliJNI.ClientAPI_ExternalPKICertRequest_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(ClientAPI_ExternalPKICertRequest clientAPI_ExternalPKICertRequest) {
        if (clientAPI_ExternalPKICertRequest == null) {
            return 0L;
        }
        return clientAPI_ExternalPKICertRequest.swigCPtr;
    }

    @Override // net.openvpn.openvpn.ClientAPI_ExternalPKIRequestBase
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    ovpncliJNI.delete_ClientAPI_ExternalPKICertRequest(j);
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

    public String getCert() {
        return ovpncliJNI.ClientAPI_ExternalPKICertRequest_cert_get(this.swigCPtr, this);
    }

    public String getSupportingChain() {
        return ovpncliJNI.ClientAPI_ExternalPKICertRequest_supportingChain_get(this.swigCPtr, this);
    }

    public void setCert(String str) {
        ovpncliJNI.ClientAPI_ExternalPKICertRequest_cert_set(this.swigCPtr, this, str);
    }

    public void setSupportingChain(String str) {
        ovpncliJNI.ClientAPI_ExternalPKICertRequest_supportingChain_set(this.swigCPtr, this, str);
    }

    public ClientAPI_ExternalPKICertRequest() {
        this(ovpncliJNI.new_ClientAPI_ExternalPKICertRequest(), true);
    }
}
