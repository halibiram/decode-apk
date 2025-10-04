package com.google.android.material.color;

import android.content.Context;
import android.util.Pair;
import androidx.annotation.ColorInt;
import com.panda912.muddy.ObfuscatedString;
import com.tknetwork.tunnel.utils.StatisticsGraphData;
import defpackage.AbstractC0362x4440ab85;
import java.io.ByteArrayOutputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class ColorResourcesTableCreator {
    private static final byte ANDROID_PACKAGE_ID = 1;
    private static final byte APPLICATION_PACKAGE_ID = Byte.MAX_VALUE;
    private static final short HEADER_TYPE_PACKAGE = 512;
    private static final short HEADER_TYPE_RES_TABLE = 2;
    private static final short HEADER_TYPE_STRING_POOL = 1;
    private static final short HEADER_TYPE_TYPE = 513;
    private static final short HEADER_TYPE_TYPE_SPEC = 514;
    private static byte typeIdColor;
    private static final String RESOURCE_TYPE_NAME_COLOR = new ObfuscatedString(new long[]{-4459804193846033024L, 4936380259489040863L}).toString();
    private static final PackageInfo ANDROID_PACKAGE_INFO = new PackageInfo(1, new ObfuscatedString(new long[]{-7358969982923308042L, -3960853078129080615L}).toString());
    private static final Comparator<ColorResource> COLOR_RESOURCE_COMPARATOR = new Comparator<ColorResource>() { // from class: com.google.android.material.color.ColorResourcesTableCreator.1
        @Override // java.util.Comparator
        public int compare(ColorResource colorResource, ColorResource colorResource2) {
            return colorResource.entryId - colorResource2.entryId;
        }
    };

    /* loaded from: classes2.dex */
    public static class ColorResource {
        private final short entryId;
        private final String name;
        private final byte packageId;
        private final byte typeId;

        @ColorInt
        private final int value;

        public ColorResource(int i, String str, int i2) {
            this.name = str;
            this.value = i2;
            this.entryId = (short) (65535 & i);
            this.typeId = (byte) ((i >> 16) & 255);
            this.packageId = (byte) ((i >> 24) & 255);
        }
    }

    /* loaded from: classes2.dex */
    public static class PackageChunk {
        private static final short HEADER_SIZE = 288;
        private static final int PACKAGE_NAME_MAX_LENGTH = 128;
        private final ResChunkHeader header;
        private final StringPoolChunk keyStrings;
        private final PackageInfo packageInfo;
        private final TypeSpecChunk typeSpecChunk;
        private final StringPoolChunk typeStrings = new StringPoolChunk(false, new ObfuscatedString(new long[]{-8097032415969347724L, -7330511826711700462L}).toString(), new ObfuscatedString(new long[]{653511844655522144L, -5863198227563353103L}).toString(), new ObfuscatedString(new long[]{-3783649528805598597L, -6145010111813839155L}).toString(), new ObfuscatedString(new long[]{4690858637796931762L, 1913700779031538235L}).toString(), new ObfuscatedString(new long[]{8324641525262812327L, -2578397320105783208L}).toString(), new ObfuscatedString(new long[]{8300254941258686216L, -4404138370229660957L}).toString());

        public PackageChunk(PackageInfo packageInfo, List<ColorResource> list) {
            this.packageInfo = packageInfo;
            String[] strArr = new String[list.size()];
            for (int i = 0; i < list.size(); i++) {
                strArr[i] = list.get(i).name;
            }
            this.keyStrings = new StringPoolChunk(true, strArr);
            this.typeSpecChunk = new TypeSpecChunk(list);
            this.header = new ResChunkHeader(ColorResourcesTableCreator.HEADER_TYPE_PACKAGE, HEADER_SIZE, getChunkSize());
        }

        public int getChunkSize() {
            return this.typeStrings.getChunkSize() + StatisticsGraphData.DataTransferStats.MAX_BUCKETS + this.keyStrings.getChunkSize() + this.typeSpecChunk.getChunkSizeWithTypeChunk();
        }

        public void writeTo(ByteArrayOutputStream byteArrayOutputStream) {
            this.header.writeTo(byteArrayOutputStream);
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(this.packageInfo.id));
            char[] charArray = this.packageInfo.name.toCharArray();
            for (int i = 0; i < 128; i++) {
                if (i < charArray.length) {
                    byteArrayOutputStream.write(ColorResourcesTableCreator.charToByteArray(charArray[i]));
                } else {
                    byteArrayOutputStream.write(ColorResourcesTableCreator.charToByteArray((char) 0));
                }
            }
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(StatisticsGraphData.DataTransferStats.MAX_BUCKETS));
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(0));
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(this.typeStrings.getChunkSize() + StatisticsGraphData.DataTransferStats.MAX_BUCKETS));
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(0));
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(0));
            this.typeStrings.writeTo(byteArrayOutputStream);
            this.keyStrings.writeTo(byteArrayOutputStream);
            this.typeSpecChunk.writeTo(byteArrayOutputStream);
        }
    }

    /* loaded from: classes2.dex */
    public static class PackageInfo {
        private final int id;
        private final String name;

        public PackageInfo(int i, String str) {
            this.id = i;
            this.name = str;
        }
    }

    /* loaded from: classes2.dex */
    public static class ResChunkHeader {
        private final int chunkSize;
        private final short headerSize;
        private final short type;

        public ResChunkHeader(short s, short s2, int i) {
            this.type = s;
            this.headerSize = s2;
            this.chunkSize = i;
        }

        public void writeTo(ByteArrayOutputStream byteArrayOutputStream) {
            byteArrayOutputStream.write(ColorResourcesTableCreator.shortToByteArray(this.type));
            byteArrayOutputStream.write(ColorResourcesTableCreator.shortToByteArray(this.headerSize));
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(this.chunkSize));
        }
    }

    /* loaded from: classes2.dex */
    public static class ResEntry {
        private static final byte DATA_TYPE_AARRGGBB = 28;
        private static final short ENTRY_SIZE = 8;
        private static final short FLAG_PUBLIC = 2;
        private static final int SIZE = 16;
        private static final short VALUE_SIZE = 8;
        private final int data;
        private final int keyStringIndex;

        public ResEntry(int i, @ColorInt int i2) {
            this.keyStringIndex = i;
            this.data = i2;
        }

        public void writeTo(ByteArrayOutputStream byteArrayOutputStream) {
            byteArrayOutputStream.write(ColorResourcesTableCreator.shortToByteArray((short) 8));
            byteArrayOutputStream.write(ColorResourcesTableCreator.shortToByteArray((short) 2));
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(this.keyStringIndex));
            byteArrayOutputStream.write(ColorResourcesTableCreator.shortToByteArray((short) 8));
            byteArrayOutputStream.write(new byte[]{0, 28});
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(this.data));
        }
    }

    /* loaded from: classes2.dex */
    public static class ResTable {
        private static final short HEADER_SIZE = 12;
        private final ResChunkHeader header;
        private final int packageCount;
        private final List<PackageChunk> packageChunks = new ArrayList();
        private final StringPoolChunk stringPool = new StringPoolChunk(new String[0]);

        public ResTable(Map<PackageInfo, List<ColorResource>> map) {
            this.packageCount = map.size();
            for (Map.Entry<PackageInfo, List<ColorResource>> entry : map.entrySet()) {
                List<ColorResource> value = entry.getValue();
                Collections.sort(value, ColorResourcesTableCreator.COLOR_RESOURCE_COMPARATOR);
                this.packageChunks.add(new PackageChunk(entry.getKey(), value));
            }
            this.header = new ResChunkHeader((short) 2, (short) 12, getOverallSize());
        }

        private int getOverallSize() {
            Iterator<PackageChunk> it = this.packageChunks.iterator();
            int i = 0;
            while (it.hasNext()) {
                i += it.next().getChunkSize();
            }
            return this.stringPool.getChunkSize() + 12 + i;
        }

        public void writeTo(ByteArrayOutputStream byteArrayOutputStream) {
            this.header.writeTo(byteArrayOutputStream);
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(this.packageCount));
            this.stringPool.writeTo(byteArrayOutputStream);
            Iterator<PackageChunk> it = this.packageChunks.iterator();
            while (it.hasNext()) {
                it.next().writeTo(byteArrayOutputStream);
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class StringPoolChunk {
        private static final int FLAG_UTF8 = 256;
        private static final short HEADER_SIZE = 28;
        private static final int STYLED_SPAN_LIST_END = -1;
        private final int chunkSize;
        private final ResChunkHeader header;
        private final int stringCount;
        private final List<Integer> stringIndex;
        private final List<byte[]> strings;
        private final int stringsPaddingSize;
        private final int stringsStart;
        private final int styledSpanCount;
        private final List<Integer> styledSpanIndex;
        private final List<List<StringStyledSpan>> styledSpans;
        private final int styledSpansStart;
        private final boolean utf8Encode;

        public StringPoolChunk(String... strArr) {
            this(false, strArr);
        }

        private Pair<byte[], List<StringStyledSpan>> processString(String str) {
            return new Pair<>(this.utf8Encode ? ColorResourcesTableCreator.stringToByteArrayUtf8(str) : ColorResourcesTableCreator.stringToByteArray(str), Collections.emptyList());
        }

        public int getChunkSize() {
            return this.chunkSize;
        }

        public void writeTo(ByteArrayOutputStream byteArrayOutputStream) {
            int i;
            this.header.writeTo(byteArrayOutputStream);
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(this.stringCount));
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(this.styledSpanCount));
            if (this.utf8Encode) {
                i = 256;
            } else {
                i = 0;
            }
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(i));
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(this.stringsStart));
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(this.styledSpansStart));
            Iterator<Integer> it = this.stringIndex.iterator();
            while (it.hasNext()) {
                byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(it.next().intValue()));
            }
            Iterator<Integer> it2 = this.styledSpanIndex.iterator();
            while (it2.hasNext()) {
                byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(it2.next().intValue()));
            }
            Iterator<byte[]> it3 = this.strings.iterator();
            while (it3.hasNext()) {
                byteArrayOutputStream.write(it3.next());
            }
            int i2 = this.stringsPaddingSize;
            if (i2 > 0) {
                byteArrayOutputStream.write(new byte[i2]);
            }
            Iterator<List<StringStyledSpan>> it4 = this.styledSpans.iterator();
            while (it4.hasNext()) {
                Iterator<StringStyledSpan> it5 = it4.next().iterator();
                while (it5.hasNext()) {
                    it5.next().writeTo(byteArrayOutputStream);
                }
                byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(-1));
            }
        }

        public StringPoolChunk(boolean z, String... strArr) {
            this.stringIndex = new ArrayList();
            this.styledSpanIndex = new ArrayList();
            this.strings = new ArrayList();
            this.styledSpans = new ArrayList();
            this.utf8Encode = z;
            int i = 0;
            for (String str : strArr) {
                Pair<byte[], List<StringStyledSpan>> processString = processString(str);
                this.stringIndex.add(Integer.valueOf(i));
                Object obj = processString.first;
                i += ((byte[]) obj).length;
                this.strings.add((byte[]) obj);
                this.styledSpans.add((List) processString.second);
            }
            int i2 = 0;
            for (List<StringStyledSpan> list : this.styledSpans) {
                for (StringStyledSpan stringStyledSpan : list) {
                    this.stringIndex.add(Integer.valueOf(i));
                    i += stringStyledSpan.styleString.length;
                    this.strings.add(stringStyledSpan.styleString);
                }
                this.styledSpanIndex.add(Integer.valueOf(i2));
                i2 += (list.size() * 12) + 4;
            }
            int i3 = i % 4;
            int i4 = i3 == 0 ? 0 : 4 - i3;
            this.stringsPaddingSize = i4;
            int size = this.strings.size();
            this.stringCount = size;
            this.styledSpanCount = this.strings.size() - strArr.length;
            boolean z2 = this.strings.size() - strArr.length > 0;
            if (!z2) {
                this.styledSpanIndex.clear();
                this.styledSpans.clear();
            }
            int size2 = (this.styledSpanIndex.size() * 4) + (size * 4) + 28;
            this.stringsStart = size2;
            int i5 = i + i4;
            this.styledSpansStart = z2 ? size2 + i5 : 0;
            int i6 = size2 + i5 + (z2 ? i2 : 0);
            this.chunkSize = i6;
            this.header = new ResChunkHeader((short) 1, HEADER_SIZE, i6);
        }
    }

    /* loaded from: classes2.dex */
    public static class StringStyledSpan {
        private int firstCharacterIndex;
        private int lastCharacterIndex;
        private int nameReference;
        private byte[] styleString;

        private StringStyledSpan() {
        }

        public void writeTo(ByteArrayOutputStream byteArrayOutputStream) {
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(this.nameReference));
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(this.firstCharacterIndex));
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(this.lastCharacterIndex));
        }
    }

    /* loaded from: classes2.dex */
    public static class TypeChunk {
        private static final byte CONFIG_SIZE = 64;
        private static final short HEADER_SIZE = 84;
        private static final int OFFSET_NO_ENTRY = -1;

        /* renamed from: config, reason: collision with root package name */
        private final byte[] f5769config;
        private final int entryCount;
        private final ResChunkHeader header;
        private final int[] offsetTable;
        private final ResEntry[] resEntries;

        public TypeChunk(List<ColorResource> list, Set<Short> set, int i) {
            byte[] bArr = new byte[64];
            this.f5769config = bArr;
            this.entryCount = i;
            bArr[0] = 64;
            this.resEntries = new ResEntry[list.size()];
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.resEntries[i2] = new ResEntry(i2, list.get(i2).value);
            }
            this.offsetTable = new int[i];
            int i3 = 0;
            for (short s = 0; s < i; s = (short) (s + 1)) {
                if (set.contains(Short.valueOf(s))) {
                    this.offsetTable[s] = i3;
                    i3 += 16;
                } else {
                    this.offsetTable[s] = -1;
                }
            }
            this.header = new ResChunkHeader(ColorResourcesTableCreator.HEADER_TYPE_TYPE, HEADER_SIZE, getChunkSize());
        }

        private int getEntryStart() {
            return getOffsetTableSize() + 84;
        }

        private int getOffsetTableSize() {
            return this.offsetTable.length * 4;
        }

        public int getChunkSize() {
            return (this.resEntries.length * 16) + getEntryStart();
        }

        public void writeTo(ByteArrayOutputStream byteArrayOutputStream) {
            this.header.writeTo(byteArrayOutputStream);
            byteArrayOutputStream.write(new byte[]{ColorResourcesTableCreator.typeIdColor, 0, 0, 0});
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(this.entryCount));
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(getEntryStart()));
            byteArrayOutputStream.write(this.f5769config);
            for (int i : this.offsetTable) {
                byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(i));
            }
            for (ResEntry resEntry : this.resEntries) {
                resEntry.writeTo(byteArrayOutputStream);
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class TypeSpecChunk {
        private static final short HEADER_SIZE = 16;
        private static final int SPEC_PUBLIC = 1073741824;
        private final int entryCount;
        private final int[] entryFlags;
        private final ResChunkHeader header;
        private final TypeChunk typeChunk;

        public TypeSpecChunk(List<ColorResource> list) {
            this.entryCount = ((ColorResource) AbstractC0362x4440ab85.m2928x75d576dc(1, list)).entryId + 1;
            HashSet hashSet = new HashSet();
            Iterator<ColorResource> it = list.iterator();
            while (it.hasNext()) {
                hashSet.add(Short.valueOf(it.next().entryId));
            }
            this.entryFlags = new int[this.entryCount];
            for (short s = 0; s < this.entryCount; s = (short) (s + 1)) {
                if (hashSet.contains(Short.valueOf(s))) {
                    this.entryFlags[s] = 1073741824;
                }
            }
            this.header = new ResChunkHeader(ColorResourcesTableCreator.HEADER_TYPE_TYPE_SPEC, (short) 16, getChunkSize());
            this.typeChunk = new TypeChunk(list, hashSet, this.entryCount);
        }

        private int getChunkSize() {
            return (this.entryCount * 4) + 16;
        }

        public int getChunkSizeWithTypeChunk() {
            return getChunkSize() + this.typeChunk.getChunkSize();
        }

        public void writeTo(ByteArrayOutputStream byteArrayOutputStream) {
            this.header.writeTo(byteArrayOutputStream);
            byteArrayOutputStream.write(new byte[]{ColorResourcesTableCreator.typeIdColor, 0, 0, 0});
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(this.entryCount));
            for (int i : this.entryFlags) {
                byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(i));
            }
            this.typeChunk.writeTo(byteArrayOutputStream);
        }
    }

    private ColorResourcesTableCreator() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] charToByteArray(char c) {
        return new byte[]{(byte) (c & 255), (byte) ((c >> '\b') & 255)};
    }

    public static byte[] create(Context context, Map<Integer, Integer> map) {
        PackageInfo packageInfo;
        if (!map.entrySet().isEmpty()) {
            PackageInfo packageInfo2 = new PackageInfo(127, context.getPackageName());
            HashMap hashMap = new HashMap();
            ColorResource colorResource = null;
            for (Map.Entry<Integer, Integer> entry : map.entrySet()) {
                ColorResource colorResource2 = new ColorResource(entry.getKey().intValue(), context.getResources().getResourceName(entry.getKey().intValue()), entry.getValue().intValue());
                if (context.getResources().getResourceTypeName(entry.getKey().intValue()).equals(new ObfuscatedString(new long[]{-4735666345357906508L, 6651929712916220351L}).toString())) {
                    if (colorResource2.packageId == 1) {
                        packageInfo = ANDROID_PACKAGE_INFO;
                    } else if (colorResource2.packageId == Byte.MAX_VALUE) {
                        packageInfo = packageInfo2;
                    } else {
                        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-3831787794774618554L, -4306182849097204532L, 1137888641210123691L, -6766494591104805519L, 7865250270837931441L, -6220213682659329933L}).toString() + ((int) colorResource2.packageId));
                    }
                    if (!hashMap.containsKey(packageInfo)) {
                        hashMap.put(packageInfo, new ArrayList());
                    }
                    ((List) hashMap.get(packageInfo)).add(colorResource2);
                    colorResource = colorResource2;
                } else {
                    throw new IllegalArgumentException(new ObfuscatedString(new long[]{6993450154898701154L, -879903366771110916L, -7752174446551638179L, 7337188404358993778L, 2817302337408299239L}).toString() + colorResource2.name + new ObfuscatedString(new long[]{4559194788568936234L, 5747023626946507998L, -7550375742080316332L}).toString() + Integer.toHexString(colorResource2.typeId & 255));
                }
            }
            byte b = colorResource.typeId;
            typeIdColor = b;
            if (b != 0) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                new ResTable(hashMap).writeTo(byteArrayOutputStream);
                return byteArrayOutputStream.toByteArray();
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{5939890176120042085L, -1812802824704915099L, 673870512853035908L, 4992960714226675L, -8265779149449676071L, 1749219992295774964L, -3199298174993979957L}).toString());
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-7611827517573979565L, 8519797665900321979L, -2068859529078417971L, 7040363030544170440L, 1277236978218012881L, -7344207945039208285L, -1743548077883851430L}).toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] intToByteArray(int i) {
        return new byte[]{(byte) (i & 255), (byte) ((i >> 8) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 24) & 255)};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] shortToByteArray(short s) {
        return new byte[]{(byte) (s & 255), (byte) ((s >> 8) & 255)};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] stringToByteArray(String str) {
        char[] charArray = str.toCharArray();
        int length = charArray.length * 2;
        byte[] bArr = new byte[length + 4];
        byte[] shortToByteArray = shortToByteArray((short) charArray.length);
        bArr[0] = shortToByteArray[0];
        bArr[1] = shortToByteArray[1];
        for (int i = 0; i < charArray.length; i++) {
            byte[] charToByteArray = charToByteArray(charArray[i]);
            int i2 = i * 2;
            bArr[i2 + 2] = charToByteArray[0];
            bArr[i2 + 3] = charToByteArray[1];
        }
        bArr[length + 2] = 0;
        bArr[length + 3] = 0;
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] stringToByteArrayUtf8(String str) {
        byte[] bytes = str.getBytes(Charset.forName(new ObfuscatedString(new long[]{5310865628066344847L, -4093658443751731612L}).toString()));
        byte length = (byte) bytes.length;
        int length2 = bytes.length;
        byte[] bArr = new byte[length2 + 3];
        System.arraycopy(bytes, 0, bArr, 2, length);
        bArr[1] = length;
        bArr[0] = length;
        bArr[length2 + 2] = 0;
        return bArr;
    }
}
