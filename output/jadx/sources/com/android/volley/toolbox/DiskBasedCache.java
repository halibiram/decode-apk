package com.android.volley.toolbox;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
import com.android.volley.Cache;
import com.android.volley.Header;
import com.android.volley.VolleyLog;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import j$.util.DesugarCollections;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class DiskBasedCache implements Cache {
    private static final int CACHE_MAGIC = 538247942;
    private static final int DEFAULT_DISK_USAGE_BYTES = 5242880;

    @VisibleForTesting
    static final float HYSTERESIS_FACTOR = 0.9f;
    private final Map<String, CacheHeader> mEntries;
    private final int mMaxCacheSizeInBytes;
    private final FileSupplier mRootDirectorySupplier;
    private long mTotalSize;

    /* loaded from: classes.dex */
    public interface FileSupplier {
        File get();
    }

    public DiskBasedCache(final File file, int i) {
        this.mEntries = new LinkedHashMap(16, 0.75f, true);
        this.mTotalSize = 0L;
        this.mRootDirectorySupplier = new FileSupplier() { // from class: com.android.volley.toolbox.DiskBasedCache.1
            @Override // com.android.volley.toolbox.DiskBasedCache.FileSupplier
            public File get() {
                return file;
            }
        };
        this.mMaxCacheSizeInBytes = i;
    }

    private String getFilenameForKey(String str) {
        int length = str.length() / 2;
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(String.valueOf(str.substring(0, length).hashCode()));
        m3341xc20437a5.append(String.valueOf(str.substring(length).hashCode()));
        return m3341xc20437a5.toString();
    }

    private void initializeIfRootDirectoryDeleted() {
        if (!this.mRootDirectorySupplier.get().exists()) {
            VolleyLog.d(new ObfuscatedString(new long[]{-6896254784807571983L, 7284239336005416364L, -1764522509608177635L, 5195240533909742265L, 7509605913368995074L, 8390341746877142909L, 6494195476360448106L}).toString(), new Object[0]);
            this.mEntries.clear();
            this.mTotalSize = 0L;
            initialize();
        }
    }

    private void pruneIfNeeded() {
        if (this.mTotalSize < this.mMaxCacheSizeInBytes) {
            return;
        }
        if (VolleyLog.DEBUG) {
            VolleyLog.v(new ObfuscatedString(new long[]{-4636430027662276015L, -1791577713816386130L, -7124661150240746315L, 5271325486117121715L, 4949275187251892821L}).toString(), new Object[0]);
        }
        long j = this.mTotalSize;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        Iterator<Map.Entry<String, CacheHeader>> it = this.mEntries.entrySet().iterator();
        int i = 0;
        while (it.hasNext()) {
            CacheHeader value = it.next().getValue();
            if (getFileForKey(value.key).delete()) {
                this.mTotalSize -= value.size;
            } else {
                String obfuscatedString = new ObfuscatedString(new long[]{-1498341594608133502L, 6459792539485995869L, 6300419619000482221L, -1376411500582624604L, 8387098442211295556L, -6983532736319531893L, -1451578641807069504L, -5936184414170108728L}).toString();
                String str = value.key;
                VolleyLog.d(obfuscatedString, str, getFilenameForKey(str));
            }
            it.remove();
            i++;
            if (((float) this.mTotalSize) < this.mMaxCacheSizeInBytes * HYSTERESIS_FACTOR) {
                break;
            }
        }
        if (VolleyLog.DEBUG) {
            VolleyLog.v(new ObfuscatedString(new long[]{-1220012740588412367L, 4784678759400128357L, -6268460250983658855L, 8675317227318764410L, 1408265181503028597L}).toString(), Integer.valueOf(i), Long.valueOf(this.mTotalSize - j), Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime));
        }
    }

    private void putEntry(String str, CacheHeader cacheHeader) {
        if (!this.mEntries.containsKey(str)) {
            this.mTotalSize += cacheHeader.size;
        } else {
            this.mTotalSize = (cacheHeader.size - this.mEntries.get(str).size) + this.mTotalSize;
        }
        this.mEntries.put(str, cacheHeader);
    }

    private static int read(InputStream inputStream) {
        int read = inputStream.read();
        if (read != -1) {
            return read;
        }
        throw new EOFException();
    }

    public static List<Header> readHeaderList(CountingInputStream countingInputStream) {
        List<Header> arrayList;
        int readInt = readInt(countingInputStream);
        if (readInt >= 0) {
            if (readInt == 0) {
                arrayList = Collections.emptyList();
            } else {
                arrayList = new ArrayList<>();
            }
            for (int i = 0; i < readInt; i++) {
                arrayList.add(new Header(readString(countingInputStream).intern(), readString(countingInputStream).intern()));
            }
            return arrayList;
        }
        throw new IOException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-8648431330331106781L, -588767659631732298L, 1439355446557261230L, 8636004253435659987L}), new StringBuilder(), readInt));
    }

    public static int readInt(InputStream inputStream) {
        return (read(inputStream) << 24) | read(inputStream) | (read(inputStream) << 8) | (read(inputStream) << 16);
    }

    public static long readLong(InputStream inputStream) {
        return (read(inputStream) & 255) | ((read(inputStream) & 255) << 8) | ((read(inputStream) & 255) << 16) | ((read(inputStream) & 255) << 24) | ((read(inputStream) & 255) << 32) | ((read(inputStream) & 255) << 40) | ((read(inputStream) & 255) << 48) | ((255 & read(inputStream)) << 56);
    }

    public static String readString(CountingInputStream countingInputStream) {
        return new String(streamToBytes(countingInputStream, readLong(countingInputStream)), new ObfuscatedString(new long[]{-2944048720767075835L, 729299374988711969L}).toString());
    }

    private void removeEntry(String str) {
        CacheHeader remove = this.mEntries.remove(str);
        if (remove != null) {
            this.mTotalSize -= remove.size;
        }
    }

    @VisibleForTesting
    public static byte[] streamToBytes(CountingInputStream countingInputStream, long j) {
        long bytesRemaining = countingInputStream.bytesRemaining();
        if (j >= 0 && j <= bytesRemaining) {
            int i = (int) j;
            if (i == j) {
                byte[] bArr = new byte[i];
                new DataInputStream(countingInputStream).readFully(bArr);
                return bArr;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{62320017745508310L, -8441045785431208532L, -6980668673960042179L, -9059172680328951640L}).toString());
        sb.append(j);
        throw new IOException(AbstractC0362x4440ab85.m2930x9e171bf9(new ObfuscatedString(new long[]{-8452588472890076765L, 5427024828667399826L, -5829359821908504326L}), sb, bytesRemaining));
    }

    public static void writeHeaderList(List<Header> list, OutputStream outputStream) {
        if (list != null) {
            writeInt(outputStream, list.size());
            for (Header header : list) {
                writeString(outputStream, header.getName());
                writeString(outputStream, header.getValue());
            }
            return;
        }
        writeInt(outputStream, 0);
    }

    public static void writeInt(OutputStream outputStream, int i) {
        outputStream.write(i & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write((i >> 24) & 255);
    }

    public static void writeLong(OutputStream outputStream, long j) {
        outputStream.write((byte) j);
        outputStream.write((byte) (j >>> 8));
        outputStream.write((byte) (j >>> 16));
        outputStream.write((byte) (j >>> 24));
        outputStream.write((byte) (j >>> 32));
        outputStream.write((byte) (j >>> 40));
        outputStream.write((byte) (j >>> 48));
        outputStream.write((byte) (j >>> 56));
    }

    public static void writeString(OutputStream outputStream, String str) {
        byte[] bytes = str.getBytes(new ObfuscatedString(new long[]{3227127665414669036L, -7500161036284198715L}).toString());
        writeLong(outputStream, bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    @Override // com.android.volley.Cache
    public synchronized void clear() {
        try {
            File[] listFiles = this.mRootDirectorySupplier.get().listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    file.delete();
                }
            }
            this.mEntries.clear();
            this.mTotalSize = 0L;
            VolleyLog.d(new ObfuscatedString(new long[]{3017103874206000162L, 8181422618942312818L, -3405674725634798331L}).toString(), new Object[0]);
        } catch (Throwable th) {
            throw th;
        }
    }

    @VisibleForTesting
    public InputStream createInputStream(File file) {
        return new FileInputStream(file);
    }

    @VisibleForTesting
    public OutputStream createOutputStream(File file) {
        return new FileOutputStream(file);
    }

    @Override // com.android.volley.Cache
    public synchronized Cache.Entry get(String str) {
        CacheHeader cacheHeader = this.mEntries.get(str);
        if (cacheHeader == null) {
            return null;
        }
        File fileForKey = getFileForKey(str);
        try {
            CountingInputStream countingInputStream = new CountingInputStream(new BufferedInputStream(createInputStream(fileForKey)), fileForKey.length());
            try {
                CacheHeader readHeader = CacheHeader.readHeader(countingInputStream);
                if (!TextUtils.equals(str, readHeader.key)) {
                    VolleyLog.d(new ObfuscatedString(new long[]{-6452839805533214355L, -2269085783762630760L, 8447275684779146997L, -773199362080192309L}).toString(), fileForKey.getAbsolutePath(), str, readHeader.key);
                    removeEntry(str);
                    return null;
                }
                return cacheHeader.toCacheEntry(streamToBytes(countingInputStream, countingInputStream.bytesRemaining()));
            } finally {
                countingInputStream.close();
            }
        } catch (IOException e) {
            VolleyLog.d(new ObfuscatedString(new long[]{4685967727587560098L, 753838512516701405L}).toString(), fileForKey.getAbsolutePath(), e.toString());
            remove(str);
            return null;
        }
    }

    public File getFileForKey(String str) {
        return new File(this.mRootDirectorySupplier.get(), getFilenameForKey(str));
    }

    @Override // com.android.volley.Cache
    public synchronized void initialize() {
        synchronized (this) {
            File file = this.mRootDirectorySupplier.get();
            if (!file.exists()) {
                if (!file.mkdirs()) {
                    VolleyLog.e(new ObfuscatedString(new long[]{548732942043189855L, 1846077539554904679L, -5216510983602837698L, -5042405317074894918L, -2017918214078962644L}).toString(), file.getAbsolutePath());
                }
                return;
            }
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                return;
            }
            for (File file2 : listFiles) {
                try {
                    long length = file2.length();
                    CountingInputStream countingInputStream = new CountingInputStream(new BufferedInputStream(createInputStream(file2)), length);
                    try {
                        CacheHeader readHeader = CacheHeader.readHeader(countingInputStream);
                        readHeader.size = length;
                        putEntry(readHeader.key, readHeader);
                        countingInputStream.close();
                    } catch (Throwable th) {
                        countingInputStream.close();
                        throw th;
                        break;
                    }
                } catch (IOException unused) {
                    file2.delete();
                }
            }
        }
    }

    @Override // com.android.volley.Cache
    public synchronized void invalidate(String str, boolean z) {
        try {
            Cache.Entry entry = get(str);
            if (entry != null) {
                entry.softTtl = 0L;
                if (z) {
                    entry.ttl = 0L;
                }
                put(str, entry);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.android.volley.Cache
    public synchronized void put(String str, Cache.Entry entry) {
        BufferedOutputStream bufferedOutputStream;
        CacheHeader cacheHeader;
        long j = this.mTotalSize;
        byte[] bArr = entry.data;
        long length = j + bArr.length;
        int i = this.mMaxCacheSizeInBytes;
        if (length > i && bArr.length > i * HYSTERESIS_FACTOR) {
            return;
        }
        File fileForKey = getFileForKey(str);
        try {
            bufferedOutputStream = new BufferedOutputStream(createOutputStream(fileForKey));
            cacheHeader = new CacheHeader(str, entry);
        } catch (IOException unused) {
            if (!fileForKey.delete()) {
                VolleyLog.d(new ObfuscatedString(new long[]{-8255512090505820662L, -6046064785112837801L, 4619364614225800006L, 7055702098864407714L, -1093676483593047602L}).toString(), fileForKey.getAbsolutePath());
            }
            initializeIfRootDirectoryDeleted();
        }
        if (cacheHeader.writeHeader(bufferedOutputStream)) {
            bufferedOutputStream.write(entry.data);
            bufferedOutputStream.close();
            cacheHeader.size = fileForKey.length();
            putEntry(str, cacheHeader);
            pruneIfNeeded();
            return;
        }
        bufferedOutputStream.close();
        VolleyLog.d(new ObfuscatedString(new long[]{263533728002579530L, -5963259375165021592L, 5479680131726142601L, -3533502753057508914L, -8460750983549845725L}).toString(), fileForKey.getAbsolutePath());
        throw new IOException();
    }

    @Override // com.android.volley.Cache
    public synchronized void remove(String str) {
        boolean delete = getFileForKey(str).delete();
        removeEntry(str);
        if (!delete) {
            VolleyLog.d(new ObfuscatedString(new long[]{-6850695909855023486L, 3712412118410293252L, -4244304667255878604L, 2561016268937505835L, -1498723089657905277L, 8904382870214581661L, 875561662997066540L, -395470953579465389L}).toString(), str, getFilenameForKey(str));
        }
    }

    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class CountingInputStream extends FilterInputStream {
        private long bytesRead;
        private final long length;

        public CountingInputStream(InputStream inputStream, long j) {
            super(inputStream);
            this.length = j;
        }

        @VisibleForTesting
        public long bytesRead() {
            return this.bytesRead;
        }

        public long bytesRemaining() {
            return this.length - this.bytesRead;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() {
            int read = super.read();
            if (read != -1) {
                this.bytesRead++;
            }
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            int read = super.read(bArr, i, i2);
            if (read != -1) {
                this.bytesRead += read;
            }
            return read;
        }
    }

    public DiskBasedCache(FileSupplier fileSupplier, int i) {
        this.mEntries = new LinkedHashMap(16, 0.75f, true);
        this.mTotalSize = 0L;
        this.mRootDirectorySupplier = fileSupplier;
        this.mMaxCacheSizeInBytes = i;
    }

    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class CacheHeader {
        final List<Header> allResponseHeaders;
        final String etag;
        final String key;
        final long lastModified;
        final long serverDate;
        long size;
        final long softTtl;
        final long ttl;

        private CacheHeader(String str, String str2, long j, long j2, long j3, long j4, List<Header> list) {
            this.key = str;
            this.etag = new ObfuscatedString(new long[]{2383355369726788521L}).toString().equals(str2) ? null : str2;
            this.serverDate = j;
            this.lastModified = j2;
            this.ttl = j3;
            this.softTtl = j4;
            this.allResponseHeaders = list;
        }

        private static List<Header> getAllResponseHeaders(Cache.Entry entry) {
            List<Header> list = entry.allResponseHeaders;
            if (list != null) {
                return list;
            }
            return HttpHeaderParser.toAllHeaderList(entry.responseHeaders);
        }

        public static CacheHeader readHeader(CountingInputStream countingInputStream) {
            if (DiskBasedCache.readInt(countingInputStream) == DiskBasedCache.CACHE_MAGIC) {
                return new CacheHeader(DiskBasedCache.readString(countingInputStream), DiskBasedCache.readString(countingInputStream), DiskBasedCache.readLong(countingInputStream), DiskBasedCache.readLong(countingInputStream), DiskBasedCache.readLong(countingInputStream), DiskBasedCache.readLong(countingInputStream), DiskBasedCache.readHeaderList(countingInputStream));
            }
            throw new IOException();
        }

        public Cache.Entry toCacheEntry(byte[] bArr) {
            Cache.Entry entry = new Cache.Entry();
            entry.data = bArr;
            entry.etag = this.etag;
            entry.serverDate = this.serverDate;
            entry.lastModified = this.lastModified;
            entry.ttl = this.ttl;
            entry.softTtl = this.softTtl;
            entry.responseHeaders = HttpHeaderParser.toHeaderMap(this.allResponseHeaders);
            entry.allResponseHeaders = DesugarCollections.unmodifiableList(this.allResponseHeaders);
            return entry;
        }

        public boolean writeHeader(OutputStream outputStream) {
            try {
                DiskBasedCache.writeInt(outputStream, DiskBasedCache.CACHE_MAGIC);
                DiskBasedCache.writeString(outputStream, this.key);
                String str = this.etag;
                if (str == null) {
                    str = new ObfuscatedString(new long[]{311880457038602466L}).toString();
                }
                DiskBasedCache.writeString(outputStream, str);
                DiskBasedCache.writeLong(outputStream, this.serverDate);
                DiskBasedCache.writeLong(outputStream, this.lastModified);
                DiskBasedCache.writeLong(outputStream, this.ttl);
                DiskBasedCache.writeLong(outputStream, this.softTtl);
                DiskBasedCache.writeHeaderList(this.allResponseHeaders, outputStream);
                outputStream.flush();
                return true;
            } catch (IOException e) {
                VolleyLog.d(new ObfuscatedString(new long[]{2221652592153763787L, 1886468419616840607L}).toString(), e.toString());
                return false;
            }
        }

        public CacheHeader(String str, Cache.Entry entry) {
            this(str, entry.etag, entry.serverDate, entry.lastModified, entry.ttl, entry.softTtl, getAllResponseHeaders(entry));
        }
    }

    public DiskBasedCache(File file) {
        this(file, DEFAULT_DISK_USAGE_BYTES);
    }

    public DiskBasedCache(FileSupplier fileSupplier) {
        this(fileSupplier, DEFAULT_DISK_USAGE_BYTES);
    }
}
