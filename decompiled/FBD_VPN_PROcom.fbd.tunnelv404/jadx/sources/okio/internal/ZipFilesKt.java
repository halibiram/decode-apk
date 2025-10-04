package okio.internal;

import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0613x9f5dff2a;
import defpackage.AbstractC0962xa4a1ff52;
import defpackage.AbstractC1197x89633db9;
import defpackage.C0714x45780f25;
import defpackage.C1279x1f922ada;
import defpackage.C1310x8d500ade;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.UShort;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.AbstractC0298xfbe0c504;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.internal.ws.WebSocketProtocol;
import okio.BufferedSource;
import okio.FileHandle;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import okio.ZipFileSystem;
import okio.internal.ZipFilesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\b\u001a5\u0010\t\u001a\u00020\b2\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004H\u0000¢\u0006\u0004\b\t\u0010\n\u001a\u0013\u0010\f\u001a\u00020\u0005*\u00020\u000bH\u0000¢\u0006\u0004\b\f\u0010\r\u001a\u0013\u0010\u000f\u001a\u00020\u000e*\u00020\u000bH\u0000¢\u0006\u0004\b\u000f\u0010\u0010\u001a\u001b\u0010\u0012\u001a\u00020\u0005*\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0005H\u0000¢\u0006\u0004\b\u0012\u0010\u0013\u001a\u0017\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0000¢\u0006\u0004\b\u0016\u0010\u0017\u001a!\u0010\u001b\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0018H\u0000¢\u0006\u0004\b\u001b\u0010\u001c\"\u0014\u0010\u001d\u001a\u00020\u00188\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e\"\u0014\u0010\u001f\u001a\u00020\u00188\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u001f\u0010\u001e¨\u0006 "}, d2 = {"Lokio/Path;", "zipPath", "Lokio/FileSystem;", "fileSystem", "Lkotlin/Function1;", "Lokio/internal/ZipEntry;", "", "predicate", "Lokio/ZipFileSystem;", "openZip", "(Lokio/Path;Lokio/FileSystem;Lkotlin/jvm/functions/Function1;)Lokio/ZipFileSystem;", "Lokio/BufferedSource;", "readCentralDirectoryZipEntry", "(Lokio/BufferedSource;)Lokio/internal/ZipEntry;", "", "skipLocalHeader", "(Lokio/BufferedSource;)V", "centralDirectoryZipEntry", "readLocalHeader", "(Lokio/BufferedSource;Lokio/internal/ZipEntry;)Lokio/internal/ZipEntry;", "", "filetime", "filetimeToEpochMillis", "(J)J", "", "date", "time", "dosDateTimeToEpochMillis", "(II)Ljava/lang/Long;", "COMPRESSION_METHOD_DEFLATED", "I", "COMPRESSION_METHOD_STORED", "okio"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nZipFiles.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZipFiles.kt\nokio/internal/ZipFilesKt\n+ 2 Okio.kt\nokio/Okio__OkioKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,503:1\n52#2,4:504\n52#2,4:508\n52#2,22:512\n60#2,10:534\n56#2,3:544\n71#2,3:547\n52#2,22:550\n60#2,10:572\n56#2,3:582\n71#2,3:585\n1053#3:588\n*S KotlinDebug\n*F\n+ 1 ZipFiles.kt\nokio/internal/ZipFilesKt\n*L\n66#1:504,4\n101#1:508,4\n109#1:512,22\n101#1:534,10\n101#1:544,3\n101#1:547,3\n125#1:550,22\n66#1:572,10\n66#1:582,3\n66#1:585,3\n155#1:588\n*E\n"})
/* loaded from: classes3.dex */
public final class ZipFilesKt {
    public static final int COMPRESSION_METHOD_DEFLATED = 8;
    public static final int COMPRESSION_METHOD_STORED = 0;

    @Nullable
    public static final Long dosDateTimeToEpochMillis(int i, int i2) {
        if (i2 == -1) {
            return null;
        }
        return Long.valueOf(_ZlibJvmKt.datePartsToEpochMillis(((i >> 9) & 127) + 1980, (i >> 5) & 15, i & 31, (i2 >> 11) & 31, (i2 >> 5) & 63, (i2 & 31) << 1));
    }

    public static final long filetimeToEpochMillis(long j) {
        return (j / 10000) - 11644473600000L;
    }

    /* JADX WARN: Code restructure failed: missing block: B:102:0x01ac, code lost:
    
        throw new java.io.IOException("bad zip: local file header offset >= central directory offset");
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01ad, code lost:
    
        if (r6 != null) goto L286;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x01b6, code lost:
    
        r10 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x01c3, code lost:
    
        if (r10 == null) goto L255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x01c5, code lost:
    
        r3 = new okio.ZipFileSystem(r25, r26, m2678xfbe0c504(r5), r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x01ce, code lost:
    
        r4.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x01d1, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x01d2, code lost:
    
        throw r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x01af, code lost:
    
        r6.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x01b3, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x01b4, code lost:
    
        r10 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x019c, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x019d, code lost:
    
        r10 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x01b8, code lost:
    
        if (r6 != null) goto L298;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x01ba, code lost:
    
        r6.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x01be, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x01c0, code lost:
    
        defpackage.AbstractC0720xaa9ccb5a.addSuppressed(r10, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x01da, code lost:
    
        throw new java.io.IOException("unsupported zip: spanned");
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0043, code lost:
    
        r0 = r11.readShortLe() & kotlin.UShort.MAX_VALUE;
        r10 = r11.readShortLe() & kotlin.UShort.MAX_VALUE;
        r14 = r11.readShortLe() & kotlin.UShort.MAX_VALUE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0060, code lost:
    
        if (r14 != (r11.readShortLe() & kotlin.UShort.MAX_VALUE)) goto L261;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0062, code lost:
    
        if (r0 != 0) goto L261;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0064, code lost:
    
        if (r10 != 0) goto L261;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0068, code lost:
    
        r11.skip(4);
        r0 = r11.readShortLe() & kotlin.UShort.MAX_VALUE;
        r8 = new defpackage.C0714x45780f25(r14, r11.readIntLe() & 4294967295L, r0);
        r9 = r11.readUtf8(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0089, code lost:
    
        r11.close();
        r5 = r5 - 20;
        r12 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0094, code lost:
    
        if (r5 <= 0) goto L228;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0096, code lost:
    
        r5 = okio.Okio.buffer(r4.source(r5));
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a5, code lost:
    
        if (r5.readIntLe() != 117853008) goto L280;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a7, code lost:
    
        r6 = r5.readIntLe();
        r14 = r5.readLongLe();
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00b4, code lost:
    
        if (r5.readIntLe() != 1) goto L210;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00b6, code lost:
    
        if (r6 != 0) goto L210;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00b8, code lost:
    
        r6 = okio.Okio.buffer(r4.source(r14));
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00c0, code lost:
    
        r10 = r6.readIntLe();
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00c7, code lost:
    
        if (r10 != 101075792) goto L194;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00c9, code lost:
    
        r6.skip(12);
        r10 = r6.readIntLe();
        r11 = r6.readIntLe();
        r20 = r6.readLongLe();
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00e0, code lost:
    
        if (r20 != r6.readLongLe()) goto L191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00e2, code lost:
    
        if (r10 != 0) goto L191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00e4, code lost:
    
        if (r11 != 0) goto L191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00e6, code lost:
    
        r6.skip(8);
        r7 = new defpackage.C0714x45780f25(r20, r6.readLongLe(), r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00f8, code lost:
    
        r6.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00fb, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00fd, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0105, code lost:
    
        throw new java.io.IOException("unsupported zip: spanned");
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x012e, code lost:
    
        throw new java.io.IOException("bad zip: expected " + m2679x3271d0aa(101075792) + " but was " + m2679x3271d0aa(r10));
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x012f, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0131, code lost:
    
        if (r6 != null) goto L289;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0140, code lost:
    
        r0 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0133, code lost:
    
        r6.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0137, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0139, code lost:
    
        defpackage.AbstractC0720xaa9ccb5a.addSuppressed(r0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x014a, code lost:
    
        throw new java.io.IOException("unsupported zip: spanned");
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0166, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x013d, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0152, code lost:
    
        if (r5 != null) goto L291;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0162, code lost:
    
        r0 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0154, code lost:
    
        r5.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0158, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x015a, code lost:
    
        defpackage.AbstractC0720xaa9ccb5a.addSuppressed(r0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0167, code lost:
    
        r5 = new java.util.ArrayList();
        r6 = okio.Okio.buffer(r4.source(r8.f4603x3271d0aa));
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0176, code lost:
    
        r10 = r8.f4602xfbe0c504;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x017c, code lost:
    
        r0 = readCentralDirectoryZipEntry(r6);
        r17 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x018a, code lost:
    
        if (r0.getAndroidx.constraintlayout.core.motion.utils.TypedValues.CycleType.S_WAVE_OFFSET java.lang.String() < r8.f4603x3271d0aa) goto L234;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0196, code lost:
    
        if (r27.invoke(r0).booleanValue() != false) goto L236;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0198, code lost:
    
        r5.add(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x019f, code lost:
    
        r12 = r12 + 1;
        r10 = r17;
     */
    /* JADX WARN: Removed duplicated region for block: B:108:0x01c5 A[Catch: all -> 0x015e, TRY_LEAVE, TryCatch #11 {all -> 0x015e, blocks: (B:3:0x001b, B:5:0x0029, B:6:0x0032, B:26:0x0089, B:28:0x0096, B:74:0x0166, B:86:0x015a, B:87:0x0167, B:108:0x01c5, B:114:0x01d2, B:128:0x01c0, B:11:0x01dc, B:15:0x01e9, B:16:0x01f0, B:132:0x01f1, B:133:0x01f4, B:134:0x01f5, B:135:0x020a, B:8:0x003a, B:19:0x0043, B:25:0x0068, B:129:0x01d5, B:130:0x01da, B:82:0x0154, B:89:0x0176, B:92:0x017c, B:94:0x018c, B:96:0x0198, B:98:0x019f, B:101:0x01a5, B:102:0x01ac, B:30:0x009e, B:32:0x00a7, B:35:0x00b8, B:50:0x0144, B:66:0x0139, B:67:0x0145, B:68:0x014a, B:62:0x0133, B:37:0x00c0, B:39:0x00c9, B:43:0x00e6, B:53:0x0100, B:54:0x0105, B:55:0x0108, B:56:0x012e, B:124:0x01ba), top: B:2:0x001b, inners: #4, #6, #7, #9, #10 }] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x01d2 A[Catch: all -> 0x015e, TRY_ENTER, TRY_LEAVE, TryCatch #11 {all -> 0x015e, blocks: (B:3:0x001b, B:5:0x0029, B:6:0x0032, B:26:0x0089, B:28:0x0096, B:74:0x0166, B:86:0x015a, B:87:0x0167, B:108:0x01c5, B:114:0x01d2, B:128:0x01c0, B:11:0x01dc, B:15:0x01e9, B:16:0x01f0, B:132:0x01f1, B:133:0x01f4, B:134:0x01f5, B:135:0x020a, B:8:0x003a, B:19:0x0043, B:25:0x0068, B:129:0x01d5, B:130:0x01da, B:82:0x0154, B:89:0x0176, B:92:0x017c, B:94:0x018c, B:96:0x0198, B:98:0x019f, B:101:0x01a5, B:102:0x01ac, B:30:0x009e, B:32:0x00a7, B:35:0x00b8, B:50:0x0144, B:66:0x0139, B:67:0x0145, B:68:0x014a, B:62:0x0133, B:37:0x00c0, B:39:0x00c9, B:43:0x00e6, B:53:0x0100, B:54:0x0105, B:55:0x0108, B:56:0x012e, B:124:0x01ba), top: B:2:0x001b, inners: #4, #6, #7, #9, #10 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0144 A[Catch: all -> 0x013d, TryCatch #9 {all -> 0x013d, blocks: (B:30:0x009e, B:32:0x00a7, B:35:0x00b8, B:50:0x0144, B:66:0x0139, B:67:0x0145, B:68:0x014a, B:62:0x0133, B:37:0x00c0, B:39:0x00c9, B:43:0x00e6, B:53:0x0100, B:54:0x0105, B:55:0x0108, B:56:0x012e), top: B:29:0x009e, outer: #11, inners: #5, #12 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0166 A[Catch: all -> 0x015e, TryCatch #11 {all -> 0x015e, blocks: (B:3:0x001b, B:5:0x0029, B:6:0x0032, B:26:0x0089, B:28:0x0096, B:74:0x0166, B:86:0x015a, B:87:0x0167, B:108:0x01c5, B:114:0x01d2, B:128:0x01c0, B:11:0x01dc, B:15:0x01e9, B:16:0x01f0, B:132:0x01f1, B:133:0x01f4, B:134:0x01f5, B:135:0x020a, B:8:0x003a, B:19:0x0043, B:25:0x0068, B:129:0x01d5, B:130:0x01da, B:82:0x0154, B:89:0x0176, B:92:0x017c, B:94:0x018c, B:96:0x0198, B:98:0x019f, B:101:0x01a5, B:102:0x01ac, B:30:0x009e, B:32:0x00a7, B:35:0x00b8, B:50:0x0144, B:66:0x0139, B:67:0x0145, B:68:0x014a, B:62:0x0133, B:37:0x00c0, B:39:0x00c9, B:43:0x00e6, B:53:0x0100, B:54:0x0105, B:55:0x0108, B:56:0x012e, B:124:0x01ba), top: B:2:0x001b, inners: #4, #6, #7, #9, #10 }] */
    @NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final ZipFileSystem openZip(@NotNull Path zipPath, @NotNull FileSystem fileSystem, @NotNull Function1<? super ZipEntry, Boolean> predicate) {
        BufferedSource buffer;
        Throwable th;
        Throwable th2;
        C0714x45780f25 c0714x45780f25;
        Intrinsics.checkNotNullParameter(zipPath, "zipPath");
        Intrinsics.checkNotNullParameter(fileSystem, "fileSystem");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        FileHandle openReadOnly = fileSystem.openReadOnly(zipPath);
        try {
            long size = openReadOnly.size() - 22;
            long j = 0;
            if (size >= 0) {
                long max = Math.max(size - 65536, 0L);
                while (true) {
                    BufferedSource buffer2 = Okio.buffer(openReadOnly.source(size));
                    try {
                        if (buffer2.readIntLe() == 101010256) {
                            break;
                        }
                        long j2 = j;
                        buffer2.close();
                        size--;
                        if (size >= max) {
                            j = j2;
                        } else {
                            throw new IOException("not a zip: end of central directory signature not found");
                        }
                    } catch (Throwable th3) {
                        buffer2.close();
                        throw th3;
                    }
                }
            } else {
                throw new IOException("not a zip: size=" + openReadOnly.size());
            }
            if (th2 == null) {
                throw th2;
            }
            try {
                buffer.close();
                th = null;
            } catch (Throwable th4) {
                th = th4;
            }
            if (th != null) {
            }
            C0714x45780f25 c0714x45780f252 = c0714x45780f25;
            if (th2 == null) {
            }
        } finally {
        }
    }

    public static /* synthetic */ ZipFileSystem openZip$default(Path path, FileSystem fileSystem, Function1 function1, int i, Object obj) {
        if ((i & 4) != 0) {
            function1 = new C1279x1f922ada(5);
        }
        return openZip(path, fileSystem, function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final ZipEntry readCentralDirectoryZipEntry(@NotNull final BufferedSource bufferedSource) {
        long j;
        Intrinsics.checkNotNullParameter(bufferedSource, "<this>");
        int readIntLe = bufferedSource.readIntLe();
        if (readIntLe == 33639248) {
            bufferedSource.skip(4L);
            short readShortLe = bufferedSource.readShortLe();
            int i = readShortLe & UShort.MAX_VALUE;
            if ((readShortLe & 1) == 0) {
                int readShortLe2 = bufferedSource.readShortLe() & UShort.MAX_VALUE;
                int readShortLe3 = bufferedSource.readShortLe() & UShort.MAX_VALUE;
                int readShortLe4 = bufferedSource.readShortLe() & UShort.MAX_VALUE;
                long readIntLe2 = bufferedSource.readIntLe() & 4294967295L;
                final Ref.LongRef longRef = new Ref.LongRef();
                longRef.element = bufferedSource.readIntLe() & 4294967295L;
                final Ref.LongRef longRef2 = new Ref.LongRef();
                longRef2.element = bufferedSource.readIntLe() & 4294967295L;
                int readShortLe5 = bufferedSource.readShortLe() & UShort.MAX_VALUE;
                int readShortLe6 = bufferedSource.readShortLe() & UShort.MAX_VALUE;
                int readShortLe7 = bufferedSource.readShortLe() & UShort.MAX_VALUE;
                bufferedSource.skip(8L);
                final Ref.LongRef longRef3 = new Ref.LongRef();
                longRef3.element = bufferedSource.readIntLe() & 4294967295L;
                String readUtf8 = bufferedSource.readUtf8(readShortLe5);
                if (!StringsKt__StringsKt.contains$default((CharSequence) readUtf8, (char) 0, false, 2, (Object) null)) {
                    if (longRef2.element == 4294967295L) {
                        j = 8;
                    } else {
                        j = 0;
                    }
                    if (longRef.element == 4294967295L) {
                        j += 8;
                    }
                    if (longRef3.element == 4294967295L) {
                        j += 8;
                    }
                    final long j2 = j;
                    final Ref.ObjectRef objectRef = new Ref.ObjectRef();
                    final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
                    final Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
                    final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
                    m2680x1378447b(bufferedSource, readShortLe6, new Function2() { // from class: 땵딨뒻듻뒷듻둣도땭듟땀도돼득딄돤뒋둔땨땋뎨돶딽돰돳디돼딹땧땃돼뒘땜땡돸딌돸딨돵땱뎠땝땅땯뒐땜땟뒈땵뒹돼딎돼딨뒀듰되돳딹될뒝둘딸듌땃듻뎨듟땀둬땜땤뒻듐뒷땀둬뒙땅땀둬딎딐돰딃듸뒈뒬땄두듟돷뒻두땜땐딝땄뒈딝든뒤뒾돼둠땔딌든딹딄뒼듬돼뎸됩딀땧돸땔땔땟뒝뎹둣됨뎰뒼듔딄되
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            long j3;
                            int intValue = ((Integer) obj).intValue();
                            long longValue = ((Long) obj2).longValue();
                            BufferedSource bufferedSource2 = bufferedSource;
                            if (intValue != 1) {
                                if (intValue == 10) {
                                    if (longValue >= 4) {
                                        bufferedSource2.skip(4L);
                                        ZipFilesKt.m2680x1378447b(bufferedSource2, (int) (longValue - 4), new C1310x8d500ade(objectRef, bufferedSource2, objectRef2, objectRef3));
                                    } else {
                                        throw new IOException("bad zip: NTFS extra too short");
                                    }
                                }
                            } else {
                                Ref.BooleanRef booleanRef2 = Ref.BooleanRef.this;
                                if (!booleanRef2.element) {
                                    booleanRef2.element = true;
                                    if (longValue >= j2) {
                                        Ref.LongRef longRef4 = longRef2;
                                        long j4 = longRef4.element;
                                        if (j4 == 4294967295L) {
                                            j4 = bufferedSource2.readLongLe();
                                        }
                                        longRef4.element = j4;
                                        Ref.LongRef longRef5 = longRef;
                                        long j5 = 0;
                                        if (longRef5.element == 4294967295L) {
                                            j3 = bufferedSource2.readLongLe();
                                        } else {
                                            j3 = 0;
                                        }
                                        longRef5.element = j3;
                                        Ref.LongRef longRef6 = longRef3;
                                        if (longRef6.element == 4294967295L) {
                                            j5 = bufferedSource2.readLongLe();
                                        }
                                        longRef6.element = j5;
                                    } else {
                                        throw new IOException("bad zip: zip64 extra too short");
                                    }
                                } else {
                                    throw new IOException("bad zip: zip64 extra repeated");
                                }
                            }
                            return Unit.INSTANCE;
                        }
                    });
                    if (j2 > 0 && !booleanRef.element) {
                        throw new IOException("bad zip: zip64 extra required but absent");
                    }
                    return new ZipEntry(Path.Companion.get$default(Path.INSTANCE, "/", false, 1, (Object) null).resolve(readUtf8), AbstractC1197x89633db9.endsWith$default(readUtf8, "/", false, 2, null), bufferedSource.readUtf8(readShortLe7), readIntLe2, longRef.element, longRef2.element, readShortLe2, longRef3.element, readShortLe4, readShortLe3, (Long) objectRef.element, (Long) objectRef2.element, (Long) objectRef3.element, null, null, null, 57344, null);
                }
                throw new IOException("bad zip: filename contains 0x00");
            }
            throw new IOException("unsupported zip: general purpose bit flag=" + m2679x3271d0aa(i));
        }
        throw new IOException("bad zip: expected " + m2679x3271d0aa(33639248) + " but was " + m2679x3271d0aa(readIntLe));
    }

    @NotNull
    public static final ZipEntry readLocalHeader(@NotNull BufferedSource bufferedSource, @NotNull ZipEntry centralDirectoryZipEntry) {
        Intrinsics.checkNotNullParameter(bufferedSource, "<this>");
        Intrinsics.checkNotNullParameter(centralDirectoryZipEntry, "centralDirectoryZipEntry");
        ZipEntry m2681x75d576dc = m2681x75d576dc(bufferedSource, centralDirectoryZipEntry);
        Intrinsics.checkNotNull(m2681x75d576dc);
        return m2681x75d576dc;
    }

    public static final void skipLocalHeader(@NotNull BufferedSource bufferedSource) {
        Intrinsics.checkNotNullParameter(bufferedSource, "<this>");
        m2681x75d576dc(bufferedSource, null);
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸 */
    public static final Map m2678xfbe0c504(ArrayList arrayList) {
        Path path = Path.Companion.get$default(Path.INSTANCE, "/", false, 1, (Object) null);
        Map mutableMapOf = AbstractC0962xa4a1ff52.mutableMapOf(TuplesKt.to(path, new ZipEntry(path, true, null, 0L, 0L, 0L, 0, 0L, 0, 0, null, null, null, null, null, null, 65532, null)));
        Iterator it = CollectionsKt___CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: okio.internal.ZipFilesKt$buildIndex$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return AbstractC0613x9f5dff2a.compareValues(((ZipEntry) t).getCanonicalPath(), ((ZipEntry) t2).getCanonicalPath());
            }
        }).iterator();
        while (it.hasNext()) {
            ZipEntry zipEntry = (ZipEntry) it.next();
            if (((ZipEntry) mutableMapOf.put(zipEntry.getCanonicalPath(), zipEntry)) == null) {
                while (true) {
                    Path parent = zipEntry.getCanonicalPath().parent();
                    if (parent != null) {
                        ZipEntry zipEntry2 = (ZipEntry) mutableMapOf.get(parent);
                        if (zipEntry2 != null) {
                            zipEntry2.getChildren().add(zipEntry.getCanonicalPath());
                            break;
                        }
                        ZipEntry zipEntry3 = new ZipEntry(parent, true, null, 0L, 0L, 0L, 0, 0L, 0, 0, null, null, null, null, null, null, 65532, null);
                        mutableMapOf.put(parent, zipEntry3);
                        zipEntry3.getChildren().add(zipEntry.getCanonicalPath());
                        zipEntry = zipEntry3;
                        it = it;
                    }
                }
            }
        }
        return mutableMapOf;
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫 */
    public static final String m2679x3271d0aa(int i) {
        StringBuilder sb = new StringBuilder("0x");
        String num = Integer.toString(i, AbstractC0298xfbe0c504.checkRadix(16));
        Intrinsics.checkNotNullExpressionValue(num, "toString(...)");
        sb.append(num);
        return sb.toString();
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉 */
    public static final void m2680x1378447b(BufferedSource bufferedSource, int i, Function2 function2) {
        long j = i;
        while (j != 0) {
            if (j >= 4) {
                int readShortLe = bufferedSource.readShortLe() & UShort.MAX_VALUE;
                long readShortLe2 = bufferedSource.readShortLe() & WebSocketProtocol.PAYLOAD_SHORT_MAX;
                long j2 = j - 4;
                if (j2 >= readShortLe2) {
                    bufferedSource.require(readShortLe2);
                    long size = bufferedSource.getBuffer().size();
                    function2.invoke(Integer.valueOf(readShortLe), Long.valueOf(readShortLe2));
                    long size2 = (bufferedSource.getBuffer().size() + readShortLe2) - size;
                    if (size2 >= 0) {
                        if (size2 > 0) {
                            bufferedSource.getBuffer().skip(size2);
                        }
                        j = j2 - readShortLe2;
                    } else {
                        throw new IOException(AbstractC0362x4440ab85.m2929x9738a56c(readShortLe, "unsupported zip: too many bytes processed for "));
                    }
                } else {
                    throw new IOException("bad zip: truncated value in extra field");
                }
            } else {
                throw new IOException("bad zip: truncated header in extra field");
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨 */
    public static final ZipEntry m2681x75d576dc(BufferedSource bufferedSource, ZipEntry zipEntry) {
        int readIntLe = bufferedSource.readIntLe();
        if (readIntLe == 67324752) {
            bufferedSource.skip(2L);
            short readShortLe = bufferedSource.readShortLe();
            int i = readShortLe & UShort.MAX_VALUE;
            if ((readShortLe & 1) == 0) {
                bufferedSource.skip(18L);
                long readShortLe2 = bufferedSource.readShortLe() & WebSocketProtocol.PAYLOAD_SHORT_MAX;
                int readShortLe3 = bufferedSource.readShortLe() & UShort.MAX_VALUE;
                bufferedSource.skip(readShortLe2);
                if (zipEntry == null) {
                    bufferedSource.skip(readShortLe3);
                    return null;
                }
                Ref.ObjectRef objectRef = new Ref.ObjectRef();
                Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
                Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
                m2680x1378447b(bufferedSource, readShortLe3, new C1310x8d500ade(bufferedSource, objectRef, objectRef2, objectRef3));
                return zipEntry.copy$okio((Integer) objectRef.element, (Integer) objectRef2.element, (Integer) objectRef3.element);
            }
            throw new IOException("unsupported zip: general purpose bit flag=" + m2679x3271d0aa(i));
        }
        throw new IOException("bad zip: expected " + m2679x3271d0aa(67324752) + " but was " + m2679x3271d0aa(readIntLe));
    }
}
