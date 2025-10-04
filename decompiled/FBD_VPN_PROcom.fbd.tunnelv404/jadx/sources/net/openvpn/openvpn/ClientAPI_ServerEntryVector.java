package net.openvpn.openvpn;

/* loaded from: classes3.dex */
public class ClientAPI_ServerEntryVector {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public ClientAPI_ServerEntryVector(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(ClientAPI_ServerEntryVector clientAPI_ServerEntryVector) {
        if (clientAPI_ServerEntryVector == null) {
            return 0L;
        }
        return clientAPI_ServerEntryVector.swigCPtr;
    }

    public void add(ClientAPI_ServerEntry clientAPI_ServerEntry) {
        ovpncliJNI.ClientAPI_ServerEntryVector_add(this.swigCPtr, this, ClientAPI_ServerEntry.getCPtr(clientAPI_ServerEntry), clientAPI_ServerEntry);
    }

    public long capacity() {
        return ovpncliJNI.ClientAPI_ServerEntryVector_capacity(this.swigCPtr, this);
    }

    public void clear() {
        ovpncliJNI.ClientAPI_ServerEntryVector_clear(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    ovpncliJNI.delete_ClientAPI_ServerEntryVector(j);
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

    public ClientAPI_ServerEntry get(int i) {
        return new ClientAPI_ServerEntry(ovpncliJNI.ClientAPI_ServerEntryVector_get(this.swigCPtr, this, i), false);
    }

    public boolean isEmpty() {
        return ovpncliJNI.ClientAPI_ServerEntryVector_isEmpty(this.swigCPtr, this);
    }

    public void reserve(long j) {
        ovpncliJNI.ClientAPI_ServerEntryVector_reserve(this.swigCPtr, this, j);
    }

    public void set(int i, ClientAPI_ServerEntry clientAPI_ServerEntry) {
        ovpncliJNI.ClientAPI_ServerEntryVector_set(this.swigCPtr, this, i, ClientAPI_ServerEntry.getCPtr(clientAPI_ServerEntry), clientAPI_ServerEntry);
    }

    public long size() {
        return ovpncliJNI.ClientAPI_ServerEntryVector_size(this.swigCPtr, this);
    }

    public ClientAPI_ServerEntryVector() {
        this(ovpncliJNI.new_ClientAPI_ServerEntryVector__SWIG_0(), true);
    }

    public ClientAPI_ServerEntryVector(long j) {
        this(ovpncliJNI.new_ClientAPI_ServerEntryVector__SWIG_1(j), true);
    }
}
