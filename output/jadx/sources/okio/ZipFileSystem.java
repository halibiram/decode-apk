package okio;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import coil3.content.UtilsKt;
import defpackage.AbstractC0720xaa9ccb5a;
import defpackage.AbstractC0749x8313616e;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.zip.Inflater;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.Path;
import okio.internal.FixedLengthSource;
import okio.internal.ZipEntry;
import okio.internal.ZipFilesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u0001B7\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\r\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J'\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u001d\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u001f\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u001c2\u0006\u0010\u001b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001f\u0010\u001eJ\u0017\u0010!\u001a\u00020 2\u0006\u0010\u0012\u001a\u00020\u0002H\u0016¢\u0006\u0004\b!\u0010\"J\u001f\u0010$\u001a\u00020#2\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b$\u0010%J\u001f\u0010&\u001a\u00020#2\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0016H\u0016¢\u0006\u0004\b&\u0010%J\u001f\u0010(\u001a\u00020'2\u0006\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b(\u0010)J\u001f\u0010+\u001a\u00020'2\u0006\u0010!\u001a\u00020\u00022\u0006\u0010*\u001a\u00020\u0002H\u0016¢\u0006\u0004\b+\u0010,J\u001f\u0010-\u001a\u00020'2\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0016H\u0016¢\u0006\u0004\b-\u0010)J\u001f\u0010.\u001a\u00020'2\u0006\u0010!\u001a\u00020\u00022\u0006\u0010*\u001a\u00020\u0002H\u0016¢\u0006\u0004\b.\u0010,¨\u0006/"}, d2 = {"Lokio/ZipFileSystem;", "Lokio/FileSystem;", "Lokio/Path;", "zipPath", "fileSystem", "", "Lokio/internal/ZipEntry;", "entries", "", "comment", "<init>", "(Lokio/Path;Lokio/FileSystem;Ljava/util/Map;Ljava/lang/String;)V", "path", "canonicalize", "(Lokio/Path;)Lokio/Path;", "Lokio/FileMetadata;", "metadataOrNull", "(Lokio/Path;)Lokio/FileMetadata;", UtilsKt.SCHEME_FILE, "Lokio/FileHandle;", "openReadOnly", "(Lokio/Path;)Lokio/FileHandle;", "", "mustCreate", "mustExist", "openReadWrite", "(Lokio/Path;ZZ)Lokio/FileHandle;", "dir", "", "list", "(Lokio/Path;)Ljava/util/List;", "listOrNull", "Lokio/Source;", "source", "(Lokio/Path;)Lokio/Source;", "Lokio/Sink;", "sink", "(Lokio/Path;Z)Lokio/Sink;", "appendingSink", "", "createDirectory", "(Lokio/Path;Z)V", TypedValues.AttributesType.S_TARGET, "atomicMove", "(Lokio/Path;Lokio/Path;)V", "delete", "createSymlink", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nZipFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZipFileSystem.kt\nokio/ZipFileSystem\n+ 2 Okio.kt\nokio/Okio__OkioKt\n*L\n1#1,142:1\n52#2,4:143\n52#2,22:147\n60#2,10:169\n56#2,3:179\n71#2,3:182\n52#2,22:185\n*S KotlinDebug\n*F\n+ 1 ZipFileSystem.kt\nokio/ZipFileSystem\n*L\n55#1:143,4\n56#1:147,22\n55#1:169,10\n55#1:179,3\n55#1:182,3\n99#1:185,22\n*E\n"})
/* loaded from: classes3.dex */
public final class ZipFileSystem extends FileSystem {

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public static final Path f3672x75d576dc = Path.Companion.get$default(Path.INSTANCE, "/", false, 1, (Object) null);

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Path f3673xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final FileSystem f3674x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final Map f3675x1378447b;

    public ZipFileSystem(@NotNull Path zipPath, @NotNull FileSystem fileSystem, @NotNull Map<Path, ZipEntry> entries, @Nullable String str) {
        Intrinsics.checkNotNullParameter(zipPath, "zipPath");
        Intrinsics.checkNotNullParameter(fileSystem, "fileSystem");
        Intrinsics.checkNotNullParameter(entries, "entries");
        this.f3673xfbe0c504 = zipPath;
        this.f3674x3271d0aa = fileSystem;
        this.f3675x1378447b = entries;
    }

    @Override // okio.FileSystem
    @NotNull
    public Sink appendingSink(@NotNull Path file, boolean mustExist) {
        Intrinsics.checkNotNullParameter(file, "file");
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    public void atomicMove(@NotNull Path source, @NotNull Path target) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    @NotNull
    public Path canonicalize(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "path");
        Path resolve = f3672x75d576dc.resolve(path, true);
        if (this.f3675x1378447b.containsKey(resolve)) {
            return resolve;
        }
        throw new FileNotFoundException(String.valueOf(path));
    }

    @Override // okio.FileSystem
    public void createDirectory(@NotNull Path dir, boolean mustCreate) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    public void createSymlink(@NotNull Path source, @NotNull Path target) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    public void delete(@NotNull Path path, boolean mustExist) {
        Intrinsics.checkNotNullParameter(path, "path");
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    @NotNull
    public List<Path> list(@NotNull Path dir) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        List<Path> m2674xfbe0c504 = m2674xfbe0c504(dir, true);
        Intrinsics.checkNotNull(m2674xfbe0c504);
        return m2674xfbe0c504;
    }

    @Override // okio.FileSystem
    @Nullable
    public List<Path> listOrNull(@NotNull Path dir) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        return m2674xfbe0c504(dir, false);
    }

    @Override // okio.FileSystem
    @Nullable
    public FileMetadata metadataOrNull(@NotNull Path path) {
        Throwable th;
        Throwable th2;
        Intrinsics.checkNotNullParameter(path, "path");
        ZipEntry zipEntry = (ZipEntry) this.f3675x1378447b.get(f3672x75d576dc.resolve(path, true));
        Long l = null;
        if (zipEntry == null) {
            return null;
        }
        if (zipEntry.getAndroidx.constraintlayout.core.motion.utils.TypedValues.CycleType.S_WAVE_OFFSET java.lang.String() != -1) {
            FileHandle openReadOnly = this.f3674x3271d0aa.openReadOnly(this.f3673xfbe0c504);
            try {
                BufferedSource buffer = Okio.buffer(openReadOnly.source(zipEntry.getAndroidx.constraintlayout.core.motion.utils.TypedValues.CycleType.S_WAVE_OFFSET java.lang.String()));
                try {
                    zipEntry = ZipFilesKt.readLocalHeader(buffer, zipEntry);
                    if (buffer != null) {
                        try {
                            buffer.close();
                        } catch (Throwable th3) {
                            th2 = th3;
                        }
                    }
                    th2 = null;
                } catch (Throwable th4) {
                    if (buffer != null) {
                        try {
                            buffer.close();
                        } catch (Throwable th5) {
                            AbstractC0720xaa9ccb5a.addSuppressed(th4, th5);
                        }
                    }
                    th2 = th4;
                    zipEntry = null;
                }
            } catch (Throwable th6) {
                if (openReadOnly != null) {
                    try {
                        openReadOnly.close();
                    } catch (Throwable th7) {
                        AbstractC0720xaa9ccb5a.addSuppressed(th6, th7);
                    }
                }
                th = th6;
                zipEntry = null;
            }
            if (th2 == null) {
                try {
                    openReadOnly.close();
                    th = null;
                } catch (Throwable th8) {
                    th = th8;
                }
                if (th != null) {
                    throw th;
                }
            } else {
                throw th2;
            }
        }
        boolean z = !zipEntry.getIsDirectory();
        boolean isDirectory = zipEntry.getIsDirectory();
        if (!zipEntry.getIsDirectory()) {
            l = Long.valueOf(zipEntry.getSize());
        }
        return new FileMetadata(z, isDirectory, null, l, zipEntry.getCreatedAtMillis$okio(), zipEntry.getLastModifiedAtMillis$okio(), zipEntry.getLastAccessedAtMillis$okio(), null, 128, null);
    }

    @Override // okio.FileSystem
    @NotNull
    public FileHandle openReadOnly(@NotNull Path file) {
        Intrinsics.checkNotNullParameter(file, "file");
        throw new UnsupportedOperationException("not implemented yet!");
    }

    @Override // okio.FileSystem
    @NotNull
    public FileHandle openReadWrite(@NotNull Path file, boolean mustCreate, boolean mustExist) {
        Intrinsics.checkNotNullParameter(file, "file");
        throw new IOException("zip entries are not writable");
    }

    @Override // okio.FileSystem
    @NotNull
    public Sink sink(@NotNull Path file, boolean mustCreate) {
        Intrinsics.checkNotNullParameter(file, "file");
        throw new IOException("zip file systems are read-only");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r3v7 */
    @Override // okio.FileSystem
    @NotNull
    public Source source(@NotNull Path file) {
        Intrinsics.checkNotNullParameter(file, "file");
        ZipEntry zipEntry = (ZipEntry) this.f3675x1378447b.get(f3672x75d576dc.resolve(file, true));
        if (zipEntry != null) {
            FileHandle openReadOnly = this.f3674x3271d0aa.openReadOnly(this.f3673xfbe0c504);
            BufferedSource th = null;
            try {
                BufferedSource buffer = Okio.buffer(openReadOnly.source(zipEntry.getAndroidx.constraintlayout.core.motion.utils.TypedValues.CycleType.S_WAVE_OFFSET java.lang.String()));
                try {
                    openReadOnly.close();
                } catch (Throwable th2) {
                    th = th2;
                }
                th = th;
                th = buffer;
            } catch (Throwable th3) {
                th = th3;
                if (openReadOnly != null) {
                    try {
                        openReadOnly.close();
                    } catch (Throwable th4) {
                        AbstractC0720xaa9ccb5a.addSuppressed(th, th4);
                    }
                }
            }
            if (th == 0) {
                ZipFilesKt.skipLocalHeader(th);
                if (zipEntry.getCompressionMethod() == 0) {
                    return new FixedLengthSource(th, zipEntry.getSize(), true);
                }
                return new FixedLengthSource(new InflaterSource(new FixedLengthSource(th, zipEntry.getCompressedSize(), true), new Inflater(true)), zipEntry.getSize(), false);
            }
            throw th;
        }
        throw new FileNotFoundException(AbstractC0749x8313616e.m3339xad53da1a(file, "no such file: "));
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final List m2674xfbe0c504(Path path, boolean z) {
        ZipEntry zipEntry = (ZipEntry) this.f3675x1378447b.get(f3672x75d576dc.resolve(path, true));
        if (zipEntry == null) {
            if (!z) {
                return null;
            }
            throw new IOException(AbstractC0749x8313616e.m3339xad53da1a(path, "not a directory: "));
        }
        return CollectionsKt___CollectionsKt.toList(zipEntry.getChildren());
    }
}
