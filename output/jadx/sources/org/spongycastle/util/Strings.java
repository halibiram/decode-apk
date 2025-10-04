package org.spongycastle.util;

import com.google.common.base.Ascii;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Vector;
import okio.Utf8;

/* loaded from: classes3.dex */
public final class Strings {
    private static String LINE_SEPARATOR;

    /* loaded from: classes3.dex */
    public static class StringListImpl extends ArrayList<String> implements StringList {
        public /* synthetic */ StringListImpl(int i) {
            this();
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.List, org.spongycastle.util.StringList
        public /* bridge */ /* synthetic */ String get(int i) {
            return (String) super.get(i);
        }

        @Override // org.spongycastle.util.StringList
        public String[] toStringArray() {
            int size = size();
            String[] strArr = new String[size];
            for (int i = 0; i != size; i++) {
                strArr[i] = get(i);
            }
            return strArr;
        }

        private StringListImpl() {
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
        public String set(int i, String str) {
            return (String) super.set(i, (int) str);
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean add(String str) {
            return super.add((StringListImpl) str);
        }

        @Override // org.spongycastle.util.StringList
        public String[] toStringArray(int i, int i2) {
            String[] strArr = new String[i2 - i];
            for (int i3 = i; i3 != size() && i3 != i2; i3++) {
                strArr[i3 - i] = get(i3);
            }
            return strArr;
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
        public void add(int i, String str) {
            super.add(i, (int) str);
        }
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, java.security.PrivilegedAction] */
    static {
        try {
            try {
                LINE_SEPARATOR = (String) AccessController.doPrivileged((PrivilegedAction) new Object());
            } catch (Exception unused) {
                LINE_SEPARATOR = String.format("%n", new Object[0]);
            }
        } catch (Exception unused2) {
            LINE_SEPARATOR = "\n";
        }
    }

    public static char[] asCharArray(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length];
        for (int i = 0; i != length; i++) {
            cArr[i] = (char) (bArr[i] & 255);
        }
        return cArr;
    }

    public static String fromByteArray(byte[] bArr) {
        return new String(asCharArray(bArr));
    }

    public static String fromUTF8ByteArray(byte[] bArr) {
        char c;
        int i;
        byte b;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < bArr.length) {
            int i5 = i4 + 1;
            byte b2 = bArr[i3];
            if ((b2 & 240) == 240) {
                i4 += 2;
                i3 += 4;
            } else {
                if ((b2 & 224) == 224) {
                    i3 += 3;
                } else if ((b2 & 192) == 192) {
                    i3 += 2;
                } else {
                    i3++;
                }
                i4 = i5;
            }
        }
        char[] cArr = new char[i4];
        int i6 = 0;
        while (i2 < bArr.length) {
            byte b3 = bArr[i2];
            if ((b3 & 240) == 240) {
                int i7 = (((((b3 & 3) << 18) | ((bArr[i2 + 1] & Utf8.REPLACEMENT_BYTE) << 12)) | ((bArr[i2 + 2] & Utf8.REPLACEMENT_BYTE) << 6)) | (bArr[i2 + 3] & Utf8.REPLACEMENT_BYTE)) - 65536;
                char c2 = (char) ((i7 >> 10) | 55296);
                c = (char) ((i7 & 1023) | Utf8.LOG_SURROGATE_HEADER);
                cArr[i6] = c2;
                i2 += 4;
                i6++;
            } else if ((b3 & 224) == 224) {
                c = (char) (((b3 & Ascii.SI) << 12) | ((bArr[i2 + 1] & Utf8.REPLACEMENT_BYTE) << 6) | (bArr[i2 + 2] & Utf8.REPLACEMENT_BYTE));
                i2 += 3;
            } else {
                if ((b3 & 208) == 208) {
                    i = (b3 & Ascii.US) << 6;
                    b = bArr[i2 + 1];
                } else if ((b3 & 192) == 192) {
                    i = (b3 & Ascii.US) << 6;
                    b = bArr[i2 + 1];
                } else {
                    c = (char) (b3 & 255);
                    i2++;
                }
                c = (char) (i | (b & Utf8.REPLACEMENT_BYTE));
                i2 += 2;
            }
            cArr[i6] = c;
            i6++;
        }
        return new String(cArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$static$0() {
        return System.getProperty("line.separator");
    }

    public static String lineSeparator() {
        return LINE_SEPARATOR;
    }

    public static StringList newList() {
        return new StringListImpl(0);
    }

    public static String[] split(String str, char c) {
        int i;
        Vector vector = new Vector();
        boolean z = true;
        while (true) {
            if (!z) {
                break;
            }
            int indexOf = str.indexOf(c);
            if (indexOf > 0) {
                vector.addElement(str.substring(0, indexOf));
                str = str.substring(indexOf + 1);
            } else {
                vector.addElement(str);
                z = false;
            }
        }
        int size = vector.size();
        String[] strArr = new String[size];
        for (i = 0; i != size; i++) {
            strArr[i] = (String) vector.elementAt(i);
        }
        return strArr;
    }

    public static byte[] toByteArray(char[] cArr) {
        int length = cArr.length;
        byte[] bArr = new byte[length];
        for (int i = 0; i != length; i++) {
            bArr[i] = (byte) cArr[i];
        }
        return bArr;
    }

    public static String toLowerCase(String str) {
        char[] charArray = str.toCharArray();
        boolean z = false;
        for (int i = 0; i != charArray.length; i++) {
            char c = charArray[i];
            if ('A' <= c && 'Z' >= c) {
                charArray[i] = (char) (c + ' ');
                z = true;
            }
        }
        if (z) {
            return new String(charArray);
        }
        return str;
    }

    public static byte[] toUTF8ByteArray(String str) {
        return toUTF8ByteArray(str.toCharArray());
    }

    public static String toUpperCase(String str) {
        char[] charArray = str.toCharArray();
        boolean z = false;
        for (int i = 0; i != charArray.length; i++) {
            char c = charArray[i];
            if ('a' <= c && 'z' >= c) {
                charArray[i] = (char) (c - ' ');
                z = true;
            }
        }
        if (z) {
            return new String(charArray);
        }
        return str;
    }

    public static byte[] toUTF8ByteArray(char[] cArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            toUTF8ByteArray(cArr, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException unused) {
            throw new IllegalStateException("cannot encode string to byte array!");
        }
    }

    public static byte[] toByteArray(String str) {
        int length = str.length();
        byte[] bArr = new byte[length];
        for (int i = 0; i != length; i++) {
            bArr[i] = (byte) str.charAt(i);
        }
        return bArr;
    }

    public static int toByteArray(String str, byte[] bArr, int i) {
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            bArr[i + i2] = (byte) str.charAt(i2);
        }
        return length;
    }

    public static void toUTF8ByteArray(char[] cArr, OutputStream outputStream) {
        int i = 0;
        while (i < cArr.length) {
            char c = cArr[i];
            if (c < 128) {
                outputStream.write(c);
            } else if (c < 2048) {
                outputStream.write((c >> 6) | 192);
                outputStream.write((c & '?') | 128);
            } else if (c >= 55296 && c <= 57343) {
                i++;
                if (i < cArr.length) {
                    char c2 = cArr[i];
                    if (c <= 56319) {
                        int i2 = (((c & 1023) << 10) | (c2 & 1023)) + 65536;
                        outputStream.write((i2 >> 18) | 240);
                        outputStream.write(((i2 >> 12) & 63) | 128);
                        outputStream.write(((i2 >> 6) & 63) | 128);
                        outputStream.write((i2 & 63) | 128);
                    } else {
                        throw new IllegalStateException("invalid UTF-16 codepoint");
                    }
                } else {
                    throw new IllegalStateException("invalid UTF-16 codepoint");
                }
            } else {
                outputStream.write((c >> '\f') | 224);
                outputStream.write(((c >> 6) & 63) | 128);
                outputStream.write((c & '?') | 128);
            }
            i++;
        }
    }
}
