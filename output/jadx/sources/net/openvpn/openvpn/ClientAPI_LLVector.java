package net.openvpn.openvpn;

/* loaded from: classes3.dex */
public class ClientAPI_LLVector {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public ClientAPI_LLVector(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(ClientAPI_LLVector clientAPI_LLVector) {
        if (clientAPI_LLVector == null) {
            return 0L;
        }
        return clientAPI_LLVector.swigCPtr;
    }

    public void add(long j) {
        ovpncliJNI.ClientAPI_LLVector_add(this.swigCPtr, this, j);
    }

    public long capacity() {
        return ovpncliJNI.ClientAPI_LLVector_capacity(this.swigCPtr, this);
    }

    public void clear() {
        ovpncliJNI.ClientAPI_LLVector_clear(this.swigCPtr, this);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    ovpncliJNI.delete_ClientAPI_LLVector(j);
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

    public long get(int i) {
        return ovpncliJNI.ClientAPI_LLVector_get(this.swigCPtr, this, i);
    }

    public boolean isEmpty() {
        return ovpncliJNI.ClientAPI_LLVector_isEmpty(this.swigCPtr, this);
    }

    public void reserve(long j) {
        ovpncliJNI.ClientAPI_LLVector_reserve(this.swigCPtr, this, j);
    }

    public void set(int i, long j) {
        ovpncliJNI.ClientAPI_LLVector_set(this.swigCPtr, this, i, j);
    }

    public long size() {
        return ovpncliJNI.ClientAPI_LLVector_size(this.swigCPtr, this);
    }

    public ClientAPI_LLVector() {
        this(ovpncliJNI.new_ClientAPI_LLVector__SWIG_0(), true);
    }

    public ClientAPI_LLVector(long j) {
        this(ovpncliJNI.new_ClientAPI_LLVector__SWIG_1(j), true);
    }
}
