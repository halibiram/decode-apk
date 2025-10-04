package net.i2p.crypto.eddsa.math;

import java.io.Serializable;

/* loaded from: classes3.dex */
public class Field implements Serializable {
    private static final long serialVersionUID = 8746587465875676L;
    public final FieldElement EIGHT;
    public final FieldElement FIVE;
    public final FieldElement FOUR;
    public final FieldElement ONE;
    public final FieldElement TWO;
    public final FieldElement ZERO;
    private final int b;
    private final Encoding enc;
    private final FieldElement q;
    private final FieldElement qm2;
    private final FieldElement qm5d8;

    public Field(int i, byte[] bArr, Encoding encoding) {
        this.b = i;
        this.enc = encoding;
        encoding.setField(this);
        FieldElement fromByteArray = fromByteArray(bArr);
        this.q = fromByteArray;
        this.ZERO = fromByteArray(Constants.ZERO);
        this.ONE = fromByteArray(Constants.ONE);
        FieldElement fromByteArray2 = fromByteArray(Constants.TWO);
        this.TWO = fromByteArray2;
        this.FOUR = fromByteArray(Constants.FOUR);
        FieldElement fromByteArray3 = fromByteArray(Constants.FIVE);
        this.FIVE = fromByteArray3;
        FieldElement fromByteArray4 = fromByteArray(Constants.EIGHT);
        this.EIGHT = fromByteArray4;
        this.qm2 = fromByteArray.subtract(fromByteArray2);
        this.qm5d8 = fromByteArray.subtract(fromByteArray3).divide(fromByteArray4);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Field)) {
            return false;
        }
        Field field = (Field) obj;
        if (this.b != field.b || !this.q.equals(field.q)) {
            return false;
        }
        return true;
    }

    public FieldElement fromByteArray(byte[] bArr) {
        return this.enc.decode(bArr);
    }

    public Encoding getEncoding() {
        return this.enc;
    }

    public FieldElement getQ() {
        return this.q;
    }

    public FieldElement getQm2() {
        return this.qm2;
    }

    public FieldElement getQm5d8() {
        return this.qm5d8;
    }

    public int getb() {
        return this.b;
    }

    public int hashCode() {
        return this.q.hashCode();
    }
}
