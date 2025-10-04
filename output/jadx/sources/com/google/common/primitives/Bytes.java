package com.google.common.primitives;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.panda912.muddy.ObfuscatedString;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
@GwtCompatible
/* loaded from: classes2.dex */
public final class Bytes {

    @GwtCompatible
    /* loaded from: classes2.dex */
    public static class ByteArrayAsList extends AbstractList<Byte> implements RandomAccess, Serializable {
        private static final long serialVersionUID = 0;
        final byte[] array;
        final int end;
        final int start;

        public ByteArrayAsList(byte[] bArr) {
            this(bArr, 0, bArr.length);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(@CheckForNull Object obj) {
            if ((obj instanceof Byte) && Bytes.indexOf(this.array, ((Byte) obj).byteValue(), this.start, this.end) != -1) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(@CheckForNull Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof ByteArrayAsList) {
                ByteArrayAsList byteArrayAsList = (ByteArrayAsList) obj;
                int size = size();
                if (byteArrayAsList.size() != size) {
                    return false;
                }
                for (int i = 0; i < size; i++) {
                    if (this.array[this.start + i] != byteArrayAsList.array[byteArrayAsList.start + i]) {
                        return false;
                    }
                }
                return true;
            }
            return super.equals(obj);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            int i = 1;
            for (int i2 = this.start; i2 < this.end; i2++) {
                i = (i * 31) + Bytes.hashCode(this.array[i2]);
            }
            return i;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(@CheckForNull Object obj) {
            int indexOf;
            if ((obj instanceof Byte) && (indexOf = Bytes.indexOf(this.array, ((Byte) obj).byteValue(), this.start, this.end)) >= 0) {
                return indexOf - this.start;
            }
            return -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(@CheckForNull Object obj) {
            int lastIndexOf;
            if ((obj instanceof Byte) && (lastIndexOf = Bytes.lastIndexOf(this.array, ((Byte) obj).byteValue(), this.start, this.end)) >= 0) {
                return lastIndexOf - this.start;
            }
            return -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.end - this.start;
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Byte> subList(int i, int i2) {
            Preconditions.checkPositionIndexes(i, i2, size());
            if (i == i2) {
                return Collections.emptyList();
            }
            byte[] bArr = this.array;
            int i3 = this.start;
            return new ByteArrayAsList(bArr, i + i3, i3 + i2);
        }

        public byte[] toByteArray() {
            return Arrays.copyOfRange(this.array, this.start, this.end);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            StringBuilder sb = new StringBuilder(size() * 5);
            sb.append('[');
            sb.append((int) this.array[this.start]);
            int i = this.start;
            while (true) {
                i++;
                if (i < this.end) {
                    sb.append(new ObfuscatedString(new long[]{-1309385136409946861L, -4701452709328609032L}).toString());
                    sb.append((int) this.array[i]);
                } else {
                    sb.append(']');
                    return sb.toString();
                }
            }
        }

        public ByteArrayAsList(byte[] bArr, int i, int i2) {
            this.array = bArr;
            this.start = i;
            this.end = i2;
        }

        @Override // java.util.AbstractList, java.util.List
        public Byte get(int i) {
            Preconditions.checkElementIndex(i, size());
            return Byte.valueOf(this.array[this.start + i]);
        }

        @Override // java.util.AbstractList, java.util.List
        public Byte set(int i, Byte b) {
            Preconditions.checkElementIndex(i, size());
            byte[] bArr = this.array;
            int i2 = this.start;
            byte b2 = bArr[i2 + i];
            bArr[i2 + i] = ((Byte) Preconditions.checkNotNull(b)).byteValue();
            return Byte.valueOf(b2);
        }
    }

    private Bytes() {
    }

    public static List<Byte> asList(byte... bArr) {
        if (bArr.length == 0) {
            return Collections.emptyList();
        }
        return new ByteArrayAsList(bArr);
    }

    public static byte[] concat(byte[]... bArr) {
        int i = 0;
        for (byte[] bArr2 : bArr) {
            i += bArr2.length;
        }
        byte[] bArr3 = new byte[i];
        int i2 = 0;
        for (byte[] bArr4 : bArr) {
            System.arraycopy(bArr4, 0, bArr3, i2, bArr4.length);
            i2 += bArr4.length;
        }
        return bArr3;
    }

    public static boolean contains(byte[] bArr, byte b) {
        for (byte b2 : bArr) {
            if (b2 == b) {
                return true;
            }
        }
        return false;
    }

    public static byte[] ensureCapacity(byte[] bArr, int i, int i2) {
        boolean z;
        boolean z2 = false;
        if (i >= 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, new ObfuscatedString(new long[]{-5063035178421872318L, -7915284887799398463L, -3271680799856092201L, -2410325695491461975L}).toString(), i);
        if (i2 >= 0) {
            z2 = true;
        }
        Preconditions.checkArgument(z2, new ObfuscatedString(new long[]{-6191840816121239809L, 6300439299246334835L, 6393927814959191271L, -1665812744938808196L}).toString(), i2);
        if (bArr.length < i) {
            return Arrays.copyOf(bArr, i + i2);
        }
        return bArr;
    }

    public static int hashCode(byte b) {
        return b;
    }

    public static int indexOf(byte[] bArr, byte b) {
        return indexOf(bArr, b, 0, bArr.length);
    }

    public static int lastIndexOf(byte[] bArr, byte b) {
        return lastIndexOf(bArr, b, 0, bArr.length);
    }

    public static void reverse(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        reverse(bArr, 0, bArr.length);
    }

    public static byte[] toArray(Collection<? extends Number> collection) {
        if (collection instanceof ByteArrayAsList) {
            return ((ByteArrayAsList) collection).toByteArray();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr[i] = ((Number) Preconditions.checkNotNull(array[i])).byteValue();
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int indexOf(byte[] bArr, byte b, int i, int i2) {
        while (i < i2) {
            if (bArr[i] == b) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int lastIndexOf(byte[] bArr, byte b, int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            if (bArr[i3] == b) {
                return i3;
            }
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003c, code lost:
    
        r0 = r0 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int indexOf(byte[] bArr, byte[] bArr2) {
        Preconditions.checkNotNull(bArr, new ObfuscatedString(new long[]{-8882146084887672184L, -4872178109251657592L}).toString());
        Preconditions.checkNotNull(bArr2, new ObfuscatedString(new long[]{-7833856617624353760L, 1427902641754906239L}).toString());
        if (bArr2.length == 0) {
            return 0;
        }
        int i = 0;
        while (i < (bArr.length - bArr2.length) + 1) {
            for (int i2 = 0; i2 < bArr2.length; i2++) {
                if (bArr[i + i2] != bArr2[i2]) {
                    break;
                }
            }
            return i;
        }
        return -1;
    }

    public static void reverse(byte[] bArr, int i, int i2) {
        Preconditions.checkNotNull(bArr);
        Preconditions.checkPositionIndexes(i, i2, bArr.length);
        for (int i3 = i2 - 1; i < i3; i3--) {
            byte b = bArr[i];
            bArr[i] = bArr[i3];
            bArr[i3] = b;
            i++;
        }
    }
}
