package net.i2p.crypto.eddsa.math;

import com.google.common.base.Ascii;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.Arrays;
import net.i2p.crypto.eddsa.Utils;

/* loaded from: classes3.dex */
public class GroupElement implements Serializable {
    private static final long serialVersionUID = 2395879087349587L;
    final FieldElement T;
    final FieldElement X;
    final FieldElement Y;
    final FieldElement Z;
    final Curve curve;
    final GroupElement[] dblPrecmp;
    final GroupElement[][] precmp;
    final Representation repr;

    /* renamed from: net.i2p.crypto.eddsa.math.GroupElement$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$net$i2p$crypto$eddsa$math$GroupElement$Representation;

        static {
            int[] iArr = new int[Representation.values().length];
            $SwitchMap$net$i2p$crypto$eddsa$math$GroupElement$Representation = iArr;
            try {
                iArr[Representation.P2.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$net$i2p$crypto$eddsa$math$GroupElement$Representation[Representation.P3.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$net$i2p$crypto$eddsa$math$GroupElement$Representation[Representation.CACHED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$net$i2p$crypto$eddsa$math$GroupElement$Representation[Representation.P3PrecomputedDouble.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$net$i2p$crypto$eddsa$math$GroupElement$Representation[Representation.P1P1.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$net$i2p$crypto$eddsa$math$GroupElement$Representation[Representation.PRECOMP.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* loaded from: classes3.dex */
    public enum Representation {
        P2,
        P3,
        P3PrecomputedDouble,
        P1P1,
        PRECOMP,
        CACHED
    }

    public GroupElement(Curve curve, Representation representation, FieldElement fieldElement, FieldElement fieldElement2, FieldElement fieldElement3, FieldElement fieldElement4) {
        this(curve, representation, fieldElement, fieldElement2, fieldElement3, fieldElement4, false);
    }

    public static GroupElement cached(Curve curve, FieldElement fieldElement, FieldElement fieldElement2, FieldElement fieldElement3, FieldElement fieldElement4) {
        return new GroupElement(curve, Representation.CACHED, fieldElement, fieldElement2, fieldElement3, fieldElement4);
    }

    private GroupElement madd(GroupElement groupElement) {
        if (this.repr == Representation.P3) {
            if (groupElement.repr == Representation.PRECOMP) {
                FieldElement add = this.Y.add(this.X);
                FieldElement subtract = this.Y.subtract(this.X);
                FieldElement multiply = add.multiply(groupElement.X);
                FieldElement multiply2 = subtract.multiply(groupElement.Y);
                FieldElement multiply3 = groupElement.Z.multiply(this.T);
                FieldElement fieldElement = this.Z;
                FieldElement add2 = fieldElement.add(fieldElement);
                return p1p1(this.curve, multiply.subtract(multiply2), multiply.add(multiply2), add2.add(multiply3), add2.subtract(multiply3));
            }
            throw new IllegalArgumentException();
        }
        throw new UnsupportedOperationException();
    }

    private GroupElement msub(GroupElement groupElement) {
        if (this.repr == Representation.P3) {
            if (groupElement.repr == Representation.PRECOMP) {
                FieldElement add = this.Y.add(this.X);
                FieldElement subtract = this.Y.subtract(this.X);
                FieldElement multiply = add.multiply(groupElement.Y);
                FieldElement multiply2 = subtract.multiply(groupElement.X);
                FieldElement multiply3 = groupElement.Z.multiply(this.T);
                FieldElement fieldElement = this.Z;
                FieldElement add2 = fieldElement.add(fieldElement);
                return p1p1(this.curve, multiply.subtract(multiply2), multiply.add(multiply2), add2.subtract(multiply3), add2.add(multiply3));
            }
            throw new IllegalArgumentException();
        }
        throw new UnsupportedOperationException();
    }

    public static GroupElement p1p1(Curve curve, FieldElement fieldElement, FieldElement fieldElement2, FieldElement fieldElement3, FieldElement fieldElement4) {
        return new GroupElement(curve, Representation.P1P1, fieldElement, fieldElement2, fieldElement3, fieldElement4);
    }

    public static GroupElement p2(Curve curve, FieldElement fieldElement, FieldElement fieldElement2, FieldElement fieldElement3) {
        return new GroupElement(curve, Representation.P2, fieldElement, fieldElement2, fieldElement3, null);
    }

    public static GroupElement p3(Curve curve, FieldElement fieldElement, FieldElement fieldElement2, FieldElement fieldElement3, FieldElement fieldElement4) {
        return p3(curve, fieldElement, fieldElement2, fieldElement3, fieldElement4, false);
    }

    public static GroupElement precomp(Curve curve, FieldElement fieldElement, FieldElement fieldElement2, FieldElement fieldElement3) {
        return new GroupElement(curve, Representation.PRECOMP, fieldElement, fieldElement2, fieldElement3, null);
    }

    private GroupElement[] precomputeDouble() {
        GroupElement[] groupElementArr = new GroupElement[8];
        GroupElement groupElement = this;
        for (int i = 0; i < 8; i++) {
            FieldElement invert = groupElement.Z.invert();
            FieldElement multiply = groupElement.X.multiply(invert);
            FieldElement multiply2 = groupElement.Y.multiply(invert);
            groupElementArr[i] = precomp(this.curve, multiply2.add(multiply), multiply2.subtract(multiply), multiply.multiply(multiply2).multiply(this.curve.get2D()));
            groupElement = add(add(groupElement.toCached()).toP3().toCached()).toP3();
        }
        return groupElementArr;
    }

    private GroupElement[][] precomputeSingle() {
        GroupElement[][] groupElementArr = (GroupElement[][]) Array.newInstance((Class<?>) GroupElement.class, 32, 8);
        GroupElement groupElement = this;
        for (int i = 0; i < 32; i++) {
            GroupElement groupElement2 = groupElement;
            for (int i2 = 0; i2 < 8; i2++) {
                FieldElement invert = groupElement2.Z.invert();
                FieldElement multiply = groupElement2.X.multiply(invert);
                FieldElement multiply2 = groupElement2.Y.multiply(invert);
                groupElementArr[i][i2] = precomp(this.curve, multiply2.add(multiply), multiply2.subtract(multiply), multiply.multiply(multiply2).multiply(this.curve.get2D()));
                groupElement2 = groupElement2.add(groupElement.toCached()).toP3();
            }
            for (int i3 = 0; i3 < 8; i3++) {
                groupElement = groupElement.add(groupElement.toCached()).toP3();
            }
        }
        return groupElementArr;
    }

    public static byte[] slide(byte[] bArr) {
        int i;
        byte[] bArr2 = new byte[256];
        for (int i2 = 0; i2 < 256; i2++) {
            bArr2[i2] = (byte) (1 & (bArr[i2 >> 3] >> (i2 & 7)));
        }
        for (int i3 = 0; i3 < 256; i3++) {
            if (bArr2[i3] != 0) {
                for (int i4 = 1; i4 <= 6 && (i = i3 + i4) < 256; i4++) {
                    byte b = bArr2[i];
                    if (b != 0) {
                        byte b2 = bArr2[i3];
                        if ((b << i4) + b2 <= 15) {
                            bArr2[i3] = (byte) (b2 + (b << i4));
                            bArr2[i] = 0;
                        } else if (b2 - (b << i4) >= -15) {
                            bArr2[i3] = (byte) (b2 - (b << i4));
                            while (true) {
                                if (i >= 256) {
                                    break;
                                }
                                if (bArr2[i] == 0) {
                                    bArr2[i] = 1;
                                    break;
                                }
                                bArr2[i] = 0;
                                i++;
                            }
                        }
                    }
                }
            }
        }
        return bArr2;
    }

    public static byte[] toRadix16(byte[] bArr) {
        byte[] bArr2 = new byte[64];
        int i = 0;
        for (int i2 = 0; i2 < 32; i2++) {
            int i3 = i2 * 2;
            bArr2[i3] = (byte) (bArr[i2] & Ascii.SI);
            bArr2[i3 + 1] = (byte) ((bArr[i2] >> 4) & 15);
        }
        int i4 = 0;
        while (i < 63) {
            byte b = (byte) (bArr2[i] + i4);
            bArr2[i] = b;
            int i5 = (b + 8) >> 4;
            bArr2[i] = (byte) (b - (i5 << 4));
            i++;
            i4 = i5;
        }
        bArr2[63] = (byte) (bArr2[63] + i4);
        return bArr2;
    }

    private GroupElement toRep(Representation representation) {
        int[] iArr = AnonymousClass1.$SwitchMap$net$i2p$crypto$eddsa$math$GroupElement$Representation;
        int i = iArr[this.repr.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 5) {
                        if (i == 6) {
                            if (iArr[representation.ordinal()] == 6) {
                                return precomp(this.curve, this.X, this.Y, this.Z);
                            }
                            throw new IllegalArgumentException();
                        }
                        throw new UnsupportedOperationException();
                    }
                    int i2 = iArr[representation.ordinal()];
                    if (i2 != 1) {
                        if (i2 != 2) {
                            if (i2 != 4) {
                                if (i2 == 5) {
                                    return p1p1(this.curve, this.X, this.Y, this.Z, this.T);
                                }
                                throw new IllegalArgumentException();
                            }
                            return p3(this.curve, this.X.multiply(this.T), this.Y.multiply(this.Z), this.Z.multiply(this.T), this.X.multiply(this.Y), true);
                        }
                        return p3(this.curve, this.X.multiply(this.T), this.Y.multiply(this.Z), this.Z.multiply(this.T), this.X.multiply(this.Y), false);
                    }
                    return p2(this.curve, this.X.multiply(this.T), this.Y.multiply(this.Z), this.Z.multiply(this.T));
                }
                if (iArr[representation.ordinal()] == 3) {
                    return cached(this.curve, this.X, this.Y, this.Z, this.T);
                }
                throw new IllegalArgumentException();
            }
            int i3 = iArr[representation.ordinal()];
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 == 3) {
                        return cached(this.curve, this.Y.add(this.X), this.Y.subtract(this.X), this.Z, this.T.multiply(this.curve.get2D()));
                    }
                    throw new IllegalArgumentException();
                }
                return p3(this.curve, this.X, this.Y, this.Z, this.T);
            }
            return p2(this.curve, this.X, this.Y, this.Z);
        }
        if (iArr[representation.ordinal()] == 1) {
            return p2(this.curve, this.X, this.Y, this.Z);
        }
        throw new IllegalArgumentException();
    }

    public GroupElement add(GroupElement groupElement) {
        if (this.repr == Representation.P3) {
            if (groupElement.repr == Representation.CACHED) {
                FieldElement add = this.Y.add(this.X);
                FieldElement subtract = this.Y.subtract(this.X);
                FieldElement multiply = add.multiply(groupElement.X);
                FieldElement multiply2 = subtract.multiply(groupElement.Y);
                FieldElement multiply3 = groupElement.T.multiply(this.T);
                FieldElement multiply4 = this.Z.multiply(groupElement.Z);
                FieldElement add2 = multiply4.add(multiply4);
                return p1p1(this.curve, multiply.subtract(multiply2), multiply.add(multiply2), add2.add(multiply3), add2.subtract(multiply3));
            }
            throw new IllegalArgumentException();
        }
        throw new UnsupportedOperationException();
    }

    public GroupElement cmov(GroupElement groupElement, int i) {
        return precomp(this.curve, this.X.cmov(groupElement.X, i), this.Y.cmov(groupElement.Y, i), this.Z.cmov(groupElement.Z, i));
    }

    public GroupElement dbl() {
        int i = AnonymousClass1.$SwitchMap$net$i2p$crypto$eddsa$math$GroupElement$Representation[this.repr.ordinal()];
        if (i != 1 && i != 2) {
            throw new UnsupportedOperationException();
        }
        FieldElement square = this.X.square();
        FieldElement square2 = this.Y.square();
        FieldElement squareAndDouble = this.Z.squareAndDouble();
        FieldElement square3 = this.X.add(this.Y).square();
        FieldElement add = square2.add(square);
        FieldElement subtract = square2.subtract(square);
        return p1p1(this.curve, square3.subtract(add), add, subtract, squareAndDouble.subtract(subtract));
    }

    public GroupElement doubleScalarMultiplyVariableTime(GroupElement groupElement, byte[] bArr, byte[] bArr2) {
        byte[] slide = slide(bArr);
        byte[] slide2 = slide(bArr2);
        GroupElement zero = this.curve.getZero(Representation.P2);
        int i = 255;
        while (i >= 0 && slide[i] == 0 && slide2[i] == 0) {
            i--;
        }
        while (i >= 0) {
            GroupElement dbl = zero.dbl();
            byte b = slide[i];
            if (b > 0) {
                dbl = dbl.toP3().madd(groupElement.dblPrecmp[slide[i] / 2]);
            } else if (b < 0) {
                dbl = dbl.toP3().msub(groupElement.dblPrecmp[(-slide[i]) / 2]);
            }
            byte b2 = slide2[i];
            if (b2 > 0) {
                dbl = dbl.toP3().madd(this.dblPrecmp[slide2[i] / 2]);
            } else if (b2 < 0) {
                dbl = dbl.toP3().msub(this.dblPrecmp[(-slide2[i]) / 2]);
            }
            zero = dbl.toP2();
            i--;
        }
        return zero;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GroupElement)) {
            return false;
        }
        GroupElement groupElement = (GroupElement) obj;
        if (!this.repr.equals(groupElement.repr)) {
            try {
                groupElement = groupElement.toRep(this.repr);
            } catch (RuntimeException unused) {
                return false;
            }
        }
        int i = AnonymousClass1.$SwitchMap$net$i2p$crypto$eddsa$math$GroupElement$Representation[this.repr.ordinal()];
        if (i != 1 && i != 2) {
            if (i != 3) {
                if (i != 5) {
                    if (i == 6 && this.X.equals(groupElement.X) && this.Y.equals(groupElement.Y) && this.Z.equals(groupElement.Z)) {
                        return true;
                    }
                    return false;
                }
                return toP2().equals(groupElement);
            }
            if (this.Z.equals(groupElement.Z)) {
                if (this.X.equals(groupElement.X) && this.Y.equals(groupElement.Y) && this.T.equals(groupElement.T)) {
                    return true;
                }
                return false;
            }
            FieldElement multiply = this.X.multiply(groupElement.Z);
            FieldElement multiply2 = this.Y.multiply(groupElement.Z);
            FieldElement multiply3 = this.T.multiply(groupElement.Z);
            FieldElement multiply4 = groupElement.X.multiply(this.Z);
            FieldElement multiply5 = groupElement.Y.multiply(this.Z);
            FieldElement multiply6 = groupElement.T.multiply(this.Z);
            if (multiply.equals(multiply4) && multiply2.equals(multiply5) && multiply3.equals(multiply6)) {
                return true;
            }
            return false;
        }
        if (this.Z.equals(groupElement.Z)) {
            if (this.X.equals(groupElement.X) && this.Y.equals(groupElement.Y)) {
                return true;
            }
            return false;
        }
        FieldElement multiply7 = this.X.multiply(groupElement.Z);
        FieldElement multiply8 = this.Y.multiply(groupElement.Z);
        FieldElement multiply9 = groupElement.X.multiply(this.Z);
        FieldElement multiply10 = groupElement.Y.multiply(this.Z);
        if (multiply7.equals(multiply9) && multiply8.equals(multiply10)) {
            return true;
        }
        return false;
    }

    public Curve getCurve() {
        return this.curve;
    }

    public Representation getRepresentation() {
        return this.repr;
    }

    public FieldElement getT() {
        return this.T;
    }

    public FieldElement getX() {
        return this.X;
    }

    public FieldElement getY() {
        return this.Y;
    }

    public FieldElement getZ() {
        return this.Z;
    }

    public int hashCode() {
        return Arrays.hashCode(toByteArray());
    }

    public boolean isOnCurve() {
        return isOnCurve(this.curve);
    }

    public GroupElement negate() {
        Representation representation = this.repr;
        Representation representation2 = Representation.P3;
        if (representation == representation2) {
            return this.curve.getZero(representation2).sub(toCached()).toP3PrecomputeDouble();
        }
        throw new UnsupportedOperationException();
    }

    public GroupElement scalarMultiply(byte[] bArr) {
        byte[] radix16 = toRadix16(bArr);
        GroupElement zero = this.curve.getZero(Representation.P3);
        for (int i = 1; i < 64; i += 2) {
            zero = zero.madd(select(i / 2, radix16[i])).toP3();
        }
        GroupElement p3 = zero.dbl().toP2().dbl().toP2().dbl().toP2().dbl().toP3();
        for (int i2 = 0; i2 < 64; i2 += 2) {
            p3 = p3.madd(select(i2 / 2, radix16[i2])).toP3();
        }
        return p3;
    }

    public GroupElement select(int i, int i2) {
        int negative = Utils.negative(i2);
        int i3 = i2 - (((-negative) & i2) << 1);
        GroupElement cmov = this.curve.getZero(Representation.PRECOMP).cmov(this.precmp[i][0], Utils.equal(i3, 1)).cmov(this.precmp[i][1], Utils.equal(i3, 2)).cmov(this.precmp[i][2], Utils.equal(i3, 3)).cmov(this.precmp[i][3], Utils.equal(i3, 4)).cmov(this.precmp[i][4], Utils.equal(i3, 5)).cmov(this.precmp[i][5], Utils.equal(i3, 6)).cmov(this.precmp[i][6], Utils.equal(i3, 7)).cmov(this.precmp[i][7], Utils.equal(i3, 8));
        return cmov.cmov(precomp(this.curve, cmov.Y, cmov.X, cmov.Z.negate()), negative);
    }

    public GroupElement sub(GroupElement groupElement) {
        if (this.repr == Representation.P3) {
            if (groupElement.repr == Representation.CACHED) {
                FieldElement add = this.Y.add(this.X);
                FieldElement subtract = this.Y.subtract(this.X);
                FieldElement multiply = add.multiply(groupElement.Y);
                FieldElement multiply2 = subtract.multiply(groupElement.X);
                FieldElement multiply3 = groupElement.T.multiply(this.T);
                FieldElement multiply4 = this.Z.multiply(groupElement.Z);
                FieldElement add2 = multiply4.add(multiply4);
                return p1p1(this.curve, multiply.subtract(multiply2), multiply.add(multiply2), add2.subtract(multiply3), add2.add(multiply3));
            }
            throw new IllegalArgumentException();
        }
        throw new UnsupportedOperationException();
    }

    public byte[] toByteArray() {
        byte b;
        int i = AnonymousClass1.$SwitchMap$net$i2p$crypto$eddsa$math$GroupElement$Representation[this.repr.ordinal()];
        if (i != 1 && i != 2) {
            return toP2().toByteArray();
        }
        FieldElement invert = this.Z.invert();
        FieldElement multiply = this.X.multiply(invert);
        byte[] byteArray = this.Y.multiply(invert).toByteArray();
        int length = byteArray.length - 1;
        byte b2 = byteArray[length];
        if (multiply.isNegative()) {
            b = Byte.MIN_VALUE;
        } else {
            b = 0;
        }
        byteArray[length] = (byte) (b2 | b);
        return byteArray;
    }

    public GroupElement toCached() {
        return toRep(Representation.CACHED);
    }

    public GroupElement toP2() {
        return toRep(Representation.P2);
    }

    public GroupElement toP3() {
        return toRep(Representation.P3);
    }

    public GroupElement toP3PrecomputeDouble() {
        return toRep(Representation.P3PrecomputedDouble);
    }

    public String toString() {
        return "[GroupElement\nX=" + this.X + "\nY=" + this.Y + "\nZ=" + this.Z + "\nT=" + this.T + "\n]";
    }

    public GroupElement(Curve curve, Representation representation, FieldElement fieldElement, FieldElement fieldElement2, FieldElement fieldElement3, FieldElement fieldElement4, boolean z) {
        this.curve = curve;
        this.repr = representation;
        this.X = fieldElement;
        this.Y = fieldElement2;
        this.Z = fieldElement3;
        this.T = fieldElement4;
        this.precmp = null;
        this.dblPrecmp = z ? precomputeDouble() : null;
    }

    public static GroupElement p3(Curve curve, FieldElement fieldElement, FieldElement fieldElement2, FieldElement fieldElement3, FieldElement fieldElement4, boolean z) {
        return new GroupElement(curve, Representation.P3, fieldElement, fieldElement2, fieldElement3, fieldElement4, z);
    }

    public boolean isOnCurve(Curve curve) {
        int i = AnonymousClass1.$SwitchMap$net$i2p$crypto$eddsa$math$GroupElement$Representation[this.repr.ordinal()];
        if (i != 1 && i != 2) {
            return toP2().isOnCurve(curve);
        }
        FieldElement invert = this.Z.invert();
        FieldElement multiply = this.X.multiply(invert);
        FieldElement multiply2 = this.Y.multiply(invert);
        FieldElement square = multiply.square();
        FieldElement square2 = multiply2.square();
        return curve.getField().ONE.add(curve.getD().multiply(square).multiply(square2)).add(square).equals(square2);
    }

    public GroupElement(Curve curve, byte[] bArr) {
        this(curve, bArr, false);
    }

    public GroupElement(Curve curve, byte[] bArr, boolean z) {
        FieldElement fromByteArray = curve.getField().fromByteArray(bArr);
        FieldElement square = fromByteArray.square();
        FieldElement subtractOne = square.subtractOne();
        FieldElement addOne = square.multiply(curve.getD()).addOne();
        FieldElement multiply = addOne.square().multiply(addOne);
        FieldElement multiply2 = multiply.multiply(subtractOne).multiply(multiply.square().multiply(addOne).multiply(subtractOne).pow22523());
        FieldElement multiply3 = multiply2.square().multiply(addOne);
        if (multiply3.subtract(subtractOne).isNonZero()) {
            if (!multiply3.add(subtractOne).isNonZero()) {
                multiply2 = multiply2.multiply(curve.getI());
            } else {
                throw new IllegalArgumentException("not a valid GroupElement");
            }
        }
        multiply2 = multiply2.isNegative() != Utils.bit(bArr, curve.getField().getb() + (-1)) ? multiply2.negate() : multiply2;
        this.curve = curve;
        this.repr = Representation.P3;
        this.X = multiply2;
        this.Y = fromByteArray;
        this.Z = curve.getField().ONE;
        this.T = multiply2.multiply(fromByteArray);
        if (z) {
            this.precmp = precomputeSingle();
            this.dblPrecmp = precomputeDouble();
        } else {
            this.precmp = null;
            this.dblPrecmp = null;
        }
    }
}
