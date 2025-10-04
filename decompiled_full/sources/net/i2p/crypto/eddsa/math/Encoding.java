package net.i2p.crypto.eddsa.math;

/* loaded from: classes3.dex */
public abstract class Encoding {
    protected Field f;

    public abstract FieldElement decode(byte[] bArr);

    public abstract byte[] encode(FieldElement fieldElement);

    public abstract boolean isNegative(FieldElement fieldElement);

    public synchronized void setField(Field field) {
        if (this.f == null) {
            this.f = field;
        } else {
            throw new IllegalStateException("already set");
        }
    }
}
