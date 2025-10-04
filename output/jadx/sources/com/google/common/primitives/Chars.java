package com.google.common.primitives;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.panda912.muddy.ObfuscatedString;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;
import javax.annotation.CheckForNull;
import kotlin.jvm.internal.CharCompanionObject;
import okhttp3.internal.ws.WebSocketProtocol;

@ElementTypesAreNonnullByDefault
@GwtCompatible(emulated = true)
/* loaded from: classes2.dex */
public final class Chars {
    public static final int BYTES = 2;

    @GwtCompatible
    /* loaded from: classes2.dex */
    public static class CharArrayAsList extends AbstractList<Character> implements RandomAccess, Serializable {
        private static final long serialVersionUID = 0;
        final char[] array;
        final int end;
        final int start;

        public CharArrayAsList(char[] cArr) {
            this(cArr, 0, cArr.length);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(@CheckForNull Object obj) {
            if ((obj instanceof Character) && Chars.indexOf(this.array, ((Character) obj).charValue(), this.start, this.end) != -1) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(@CheckForNull Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof CharArrayAsList) {
                CharArrayAsList charArrayAsList = (CharArrayAsList) obj;
                int size = size();
                if (charArrayAsList.size() != size) {
                    return false;
                }
                for (int i = 0; i < size; i++) {
                    if (this.array[this.start + i] != charArrayAsList.array[charArrayAsList.start + i]) {
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
                i = (i * 31) + Chars.hashCode(this.array[i2]);
            }
            return i;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(@CheckForNull Object obj) {
            int indexOf;
            if ((obj instanceof Character) && (indexOf = Chars.indexOf(this.array, ((Character) obj).charValue(), this.start, this.end)) >= 0) {
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
            if ((obj instanceof Character) && (lastIndexOf = Chars.lastIndexOf(this.array, ((Character) obj).charValue(), this.start, this.end)) >= 0) {
                return lastIndexOf - this.start;
            }
            return -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.end - this.start;
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Character> subList(int i, int i2) {
            Preconditions.checkPositionIndexes(i, i2, size());
            if (i == i2) {
                return Collections.emptyList();
            }
            char[] cArr = this.array;
            int i3 = this.start;
            return new CharArrayAsList(cArr, i + i3, i3 + i2);
        }

        public char[] toCharArray() {
            return Arrays.copyOfRange(this.array, this.start, this.end);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            StringBuilder sb = new StringBuilder(size() * 3);
            sb.append('[');
            sb.append(this.array[this.start]);
            int i = this.start;
            while (true) {
                i++;
                if (i < this.end) {
                    sb.append(new ObfuscatedString(new long[]{-1515617134619625564L, -6525850552073223445L}).toString());
                    sb.append(this.array[i]);
                } else {
                    sb.append(']');
                    return sb.toString();
                }
            }
        }

        public CharArrayAsList(char[] cArr, int i, int i2) {
            this.array = cArr;
            this.start = i;
            this.end = i2;
        }

        @Override // java.util.AbstractList, java.util.List
        public Character get(int i) {
            Preconditions.checkElementIndex(i, size());
            return Character.valueOf(this.array[this.start + i]);
        }

        @Override // java.util.AbstractList, java.util.List
        public Character set(int i, Character ch) {
            Preconditions.checkElementIndex(i, size());
            char[] cArr = this.array;
            int i2 = this.start;
            char c = cArr[i2 + i];
            cArr[i2 + i] = ((Character) Preconditions.checkNotNull(ch)).charValue();
            return Character.valueOf(c);
        }
    }

    /* loaded from: classes2.dex */
    public enum LexicographicalComparator implements Comparator<char[]> {
        INSTANCE;

        @Override // java.lang.Enum
        public String toString() {
            return new ObfuscatedString(new long[]{-5376397086705462594L, -2285720900133331501L, 7092641763928284147L, -8011095052248442047L, 5416028026554487124L, 7395677793149021395L}).toString();
        }

        @Override // java.util.Comparator
        public int compare(char[] cArr, char[] cArr2) {
            int min = Math.min(cArr.length, cArr2.length);
            for (int i = 0; i < min; i++) {
                int compare = Chars.compare(cArr[i], cArr2[i]);
                if (compare != 0) {
                    return compare;
                }
            }
            return cArr.length - cArr2.length;
        }
    }

    private Chars() {
    }

    public static List<Character> asList(char... cArr) {
        if (cArr.length == 0) {
            return Collections.emptyList();
        }
        return new CharArrayAsList(cArr);
    }

    public static char checkedCast(long j) {
        boolean z;
        char c = (char) j;
        if (c == j) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, new ObfuscatedString(new long[]{750533625251145017L, 5086341678817210989L, -5016786148993390388L}).toString(), j);
        return c;
    }

    public static int compare(char c, char c2) {
        return c - c2;
    }

    public static char[] concat(char[]... cArr) {
        int i = 0;
        for (char[] cArr2 : cArr) {
            i += cArr2.length;
        }
        char[] cArr3 = new char[i];
        int i2 = 0;
        for (char[] cArr4 : cArr) {
            System.arraycopy(cArr4, 0, cArr3, i2, cArr4.length);
            i2 += cArr4.length;
        }
        return cArr3;
    }

    @Beta
    public static char constrainToRange(char c, char c2, char c3) {
        boolean z;
        if (c2 <= c3) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, new ObfuscatedString(new long[]{-223499517383644828L, 6810569696438297383L, 8437039252079678234L, 8836001726961717087L, 2273867392135945277L, 1124701869344569988L, 630145578399622680L}).toString(), c2, c3);
        if (c < c2) {
            return c2;
        }
        if (c >= c3) {
            return c3;
        }
        return c;
    }

    public static boolean contains(char[] cArr, char c) {
        for (char c2 : cArr) {
            if (c2 == c) {
                return true;
            }
        }
        return false;
    }

    public static char[] ensureCapacity(char[] cArr, int i, int i2) {
        boolean z;
        boolean z2 = false;
        if (i >= 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, new ObfuscatedString(new long[]{-8078927370144811191L, 6144229761430371223L, -8965775312996245159L, 4475326291328234169L}).toString(), i);
        if (i2 >= 0) {
            z2 = true;
        }
        Preconditions.checkArgument(z2, new ObfuscatedString(new long[]{-9218715927941796947L, -3521315040687574077L, -7443583693639257421L, -5033839969868117193L}).toString(), i2);
        if (cArr.length < i) {
            return Arrays.copyOf(cArr, i + i2);
        }
        return cArr;
    }

    @GwtIncompatible
    public static char fromByteArray(byte[] bArr) {
        boolean z;
        if (bArr.length >= 2) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, new ObfuscatedString(new long[]{6283052166356822990L, -5784923202839123137L, -8909017437994055888L, -8981724099007024864L}).toString(), bArr.length, 2);
        return fromBytes(bArr[0], bArr[1]);
    }

    @GwtIncompatible
    public static char fromBytes(byte b, byte b2) {
        return (char) ((b << 8) | (b2 & 255));
    }

    public static int hashCode(char c) {
        return c;
    }

    public static int indexOf(char[] cArr, char c) {
        return indexOf(cArr, c, 0, cArr.length);
    }

    public static String join(String str, char... cArr) {
        Preconditions.checkNotNull(str);
        int length = cArr.length;
        if (length == 0) {
            return new ObfuscatedString(new long[]{-4354111570015193285L}).toString();
        }
        StringBuilder sb = new StringBuilder(((length - 1) * str.length()) + length);
        sb.append(cArr[0]);
        for (int i = 1; i < length; i++) {
            sb.append(str);
            sb.append(cArr[i]);
        }
        return sb.toString();
    }

    public static int lastIndexOf(char[] cArr, char c) {
        return lastIndexOf(cArr, c, 0, cArr.length);
    }

    public static Comparator<char[]> lexicographicalComparator() {
        return LexicographicalComparator.INSTANCE;
    }

    public static char max(char... cArr) {
        boolean z;
        if (cArr.length > 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z);
        char c = cArr[0];
        for (int i = 1; i < cArr.length; i++) {
            char c2 = cArr[i];
            if (c2 > c) {
                c = c2;
            }
        }
        return c;
    }

    public static char min(char... cArr) {
        boolean z;
        if (cArr.length > 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z);
        char c = cArr[0];
        for (int i = 1; i < cArr.length; i++) {
            char c2 = cArr[i];
            if (c2 < c) {
                c = c2;
            }
        }
        return c;
    }

    public static void reverse(char[] cArr) {
        Preconditions.checkNotNull(cArr);
        reverse(cArr, 0, cArr.length);
    }

    public static char saturatedCast(long j) {
        if (j > WebSocketProtocol.PAYLOAD_SHORT_MAX) {
            return CharCompanionObject.MAX_VALUE;
        }
        if (j < 0) {
            return (char) 0;
        }
        return (char) j;
    }

    public static void sortDescending(char[] cArr) {
        Preconditions.checkNotNull(cArr);
        sortDescending(cArr, 0, cArr.length);
    }

    public static char[] toArray(Collection<Character> collection) {
        if (collection instanceof CharArrayAsList) {
            return ((CharArrayAsList) collection).toCharArray();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        char[] cArr = new char[length];
        for (int i = 0; i < length; i++) {
            cArr[i] = ((Character) Preconditions.checkNotNull(array[i])).charValue();
        }
        return cArr;
    }

    @GwtIncompatible
    public static byte[] toByteArray(char c) {
        return new byte[]{(byte) (c >> '\b'), (byte) c};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int indexOf(char[] cArr, char c, int i, int i2) {
        while (i < i2) {
            if (cArr[i] == c) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int lastIndexOf(char[] cArr, char c, int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            if (cArr[i3] == c) {
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
    public static int indexOf(char[] cArr, char[] cArr2) {
        Preconditions.checkNotNull(cArr, new ObfuscatedString(new long[]{-5365569040013069447L, 6661927853703922405L}).toString());
        Preconditions.checkNotNull(cArr2, new ObfuscatedString(new long[]{-564029203779010913L, 353479467413350854L}).toString());
        if (cArr2.length == 0) {
            return 0;
        }
        int i = 0;
        while (i < (cArr.length - cArr2.length) + 1) {
            for (int i2 = 0; i2 < cArr2.length; i2++) {
                if (cArr[i + i2] != cArr2[i2]) {
                    break;
                }
            }
            return i;
        }
        return -1;
    }

    public static void reverse(char[] cArr, int i, int i2) {
        Preconditions.checkNotNull(cArr);
        Preconditions.checkPositionIndexes(i, i2, cArr.length);
        for (int i3 = i2 - 1; i < i3; i3--) {
            char c = cArr[i];
            cArr[i] = cArr[i3];
            cArr[i3] = c;
            i++;
        }
    }

    public static void sortDescending(char[] cArr, int i, int i2) {
        Preconditions.checkNotNull(cArr);
        Preconditions.checkPositionIndexes(i, i2, cArr.length);
        Arrays.sort(cArr, i, i2);
        reverse(cArr, i, i2);
    }
}
