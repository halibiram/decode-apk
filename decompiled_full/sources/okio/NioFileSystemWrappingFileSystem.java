package okio;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import coil3.content.UtilsKt;
import defpackage.AbstractC0586x968d4673;
import defpackage.AbstractC0589xfe44cac1;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC1035x1d2864de;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.nio.channels.FileChannel;
import java.nio.file.CopyOption;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.NoSuchFileException;
import java.nio.file.OpenOption;
import java.nio.file.StandardCopyOption;
import java.nio.file.StandardOpenOption;
import java.nio.file.attribute.FileAttribute;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.Path;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u001d\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00060\u000e2\u0006\u0010\r\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000e2\u0006\u0010\r\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0011\u0010\u0010J\u0017\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J'\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0012\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u001f\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u001f\u0010 J\u001f\u0010!\u001a\u00020\u001e2\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0016H\u0016¢\u0006\u0004\b!\u0010 J\u001f\u0010#\u001a\u00020\"2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b#\u0010$J\u001f\u0010&\u001a\u00020\"2\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010%\u001a\u00020\u0006H\u0016¢\u0006\u0004\b&\u0010'J\u001f\u0010(\u001a\u00020\"2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0016H\u0016¢\u0006\u0004\b(\u0010$J\u001f\u0010)\u001a\u00020\"2\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010%\u001a\u00020\u0006H\u0016¢\u0006\u0004\b)\u0010'J\u000f\u0010*\u001a\u00020\"H\u0016¢\u0006\u0004\b*\u0010+J\u000f\u0010-\u001a\u00020,H\u0016¢\u0006\u0004\b-\u0010.¨\u0006/"}, d2 = {"Lokio/NioFileSystemWrappingFileSystem;", "Lokio/NioSystemFileSystem;", "Ljava/nio/file/FileSystem;", "nioFileSystem", "<init>", "(Ljava/nio/file/FileSystem;)V", "Lokio/Path;", "path", "canonicalize", "(Lokio/Path;)Lokio/Path;", "Lokio/FileMetadata;", "metadataOrNull", "(Lokio/Path;)Lokio/FileMetadata;", "dir", "", "list", "(Lokio/Path;)Ljava/util/List;", "listOrNull", UtilsKt.SCHEME_FILE, "Lokio/FileHandle;", "openReadOnly", "(Lokio/Path;)Lokio/FileHandle;", "", "mustCreate", "mustExist", "openReadWrite", "(Lokio/Path;ZZ)Lokio/FileHandle;", "Lokio/Source;", "source", "(Lokio/Path;)Lokio/Source;", "Lokio/Sink;", "sink", "(Lokio/Path;Z)Lokio/Sink;", "appendingSink", "", "createDirectory", "(Lokio/Path;Z)V", TypedValues.AttributesType.S_TARGET, "atomicMove", "(Lokio/Path;Lokio/Path;)V", "delete", "createSymlink", "close", "()V", "", "toString", "()Ljava/lang/String;", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nNioFileSystemWrappingFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NioFileSystemWrappingFileSystem.kt\nokio/NioFileSystemWrappingFileSystem\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,196:1\n1628#2,3:197\n1#3:200\n37#4:201\n36#4,3:202\n37#4:205\n36#4,3:206\n37#4:209\n36#4,3:210\n*S KotlinDebug\n*F\n+ 1 NioFileSystemWrappingFileSystem.kt\nokio/NioFileSystemWrappingFileSystem\n*L\n77#1:197,3\n104#1:201\n104#1:202,3\n125#1:205\n125#1:206,3\n138#1:209\n138#1:210,3\n*E\n"})
/* loaded from: classes3.dex */
public final class NioFileSystemWrappingFileSystem extends NioSystemFileSystem {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final java.nio.file.FileSystem f3627xfbe0c504;

    public NioFileSystemWrappingFileSystem(@NotNull java.nio.file.FileSystem nioFileSystem) {
        Intrinsics.checkNotNullParameter(nioFileSystem, "nioFileSystem");
        this.f3627xfbe0c504 = nioFileSystem;
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    @NotNull
    public Sink appendingSink(@NotNull Path file, boolean mustExist) {
        Intrinsics.checkNotNullParameter(file, "file");
        List createListBuilder = AbstractC0586x968d4673.createListBuilder();
        createListBuilder.add(StandardOpenOption.APPEND);
        if (!mustExist) {
            createListBuilder.add(StandardOpenOption.CREATE);
        }
        List build = AbstractC0586x968d4673.build(createListBuilder);
        java.nio.file.Path m2666x75d576dc = m2666x75d576dc(file);
        StandardOpenOption[] standardOpenOptionArr = (StandardOpenOption[]) build.toArray(new StandardOpenOption[0]);
        OpenOption[] openOptionArr = (OpenOption[]) Arrays.copyOf(standardOpenOptionArr, standardOpenOptionArr.length);
        OutputStream newOutputStream = Files.newOutputStream(m2666x75d576dc, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length));
        Intrinsics.checkNotNullExpressionValue(newOutputStream, "newOutputStream(...)");
        return Okio.sink(newOutputStream);
    }

    @Override // okio.NioSystemFileSystem, okio.JvmSystemFileSystem, okio.FileSystem
    public void atomicMove(@NotNull Path source, @NotNull Path target) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
        try {
            Intrinsics.checkNotNullExpressionValue(Files.move(m2666x75d576dc(source), m2666x75d576dc(target), (CopyOption[]) Arrays.copyOf(new CopyOption[]{StandardCopyOption.ATOMIC_MOVE, StandardCopyOption.REPLACE_EXISTING}, 2)), "move(...)");
        } catch (UnsupportedOperationException unused) {
            throw new IOException("atomic move not supported");
        } catch (NoSuchFileException e) {
            throw new FileNotFoundException(e.getMessage());
        }
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    @NotNull
    public Path canonicalize(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "path");
        try {
            Path.Companion companion = Path.INSTANCE;
            java.nio.file.Path realPath = m2666x75d576dc(path).toRealPath(new LinkOption[0]);
            Intrinsics.checkNotNullExpressionValue(realPath, "toRealPath(...)");
            return Path.Companion.get$default(companion, realPath, false, 1, (Object) null);
        } catch (NoSuchFileException unused) {
            throw new FileNotFoundException(AbstractC0749x8313616e.m3339xad53da1a(path, "no such file: "));
        }
    }

    @Override // okio.FileSystem, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f3627xfbe0c504.close();
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0011, code lost:
    
        if (r0.getIsDirectory() == true) goto L8;
     */
    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void createDirectory(@NotNull Path dir, boolean mustCreate) {
        boolean z;
        Intrinsics.checkNotNullParameter(dir, "dir");
        FileMetadata metadataOrNull = metadataOrNull(dir);
        if (metadataOrNull != null) {
            z = true;
        }
        z = false;
        if (z && mustCreate) {
            throw new IOException(dir + " already exists.");
        }
        try {
            Intrinsics.checkNotNullExpressionValue(Files.createDirectory(m2666x75d576dc(dir), (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0)), "createDirectory(...)");
        } catch (IOException e) {
            if (z) {
            } else {
                throw new IOException(AbstractC0749x8313616e.m3339xad53da1a(dir, "failed to create directory: "), e);
            }
        }
    }

    @Override // okio.NioSystemFileSystem, okio.JvmSystemFileSystem, okio.FileSystem
    public void createSymlink(@NotNull Path source, @NotNull Path target) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
        Intrinsics.checkNotNullExpressionValue(Files.createSymbolicLink(m2666x75d576dc(source), m2666x75d576dc(target), (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0)), "createSymbolicLink(...)");
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    public void delete(@NotNull Path path, boolean mustExist) {
        Intrinsics.checkNotNullParameter(path, "path");
        if (!Thread.interrupted()) {
            java.nio.file.Path m2666x75d576dc = m2666x75d576dc(path);
            try {
                Files.delete(m2666x75d576dc);
                return;
            } catch (NoSuchFileException unused) {
                if (!mustExist) {
                    return;
                } else {
                    throw new FileNotFoundException(AbstractC0749x8313616e.m3339xad53da1a(path, "no such file: "));
                }
            } catch (IOException unused2) {
                if (Files.exists(m2666x75d576dc, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
                    throw new IOException(AbstractC0749x8313616e.m3339xad53da1a(path, "failed to delete "));
                }
                return;
            }
        }
        throw new InterruptedIOException("interrupted");
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    @NotNull
    public List<Path> list(@NotNull Path dir) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        ArrayList m2665x1378447b = m2665x1378447b(dir, true);
        Intrinsics.checkNotNull(m2665x1378447b);
        return m2665x1378447b;
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    @Nullable
    public List<Path> listOrNull(@NotNull Path dir) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        return m2665x1378447b(dir, false);
    }

    @Override // okio.NioSystemFileSystem, okio.JvmSystemFileSystem, okio.FileSystem
    @Nullable
    public FileMetadata metadataOrNull(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "path");
        return metadataOrNull(m2666x75d576dc(path));
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    @NotNull
    public FileHandle openReadOnly(@NotNull Path file) {
        Intrinsics.checkNotNullParameter(file, "file");
        try {
            FileChannel open = FileChannel.open(m2666x75d576dc(file), StandardOpenOption.READ);
            Intrinsics.checkNotNull(open);
            return new NioFileSystemFileHandle(false, open);
        } catch (NoSuchFileException unused) {
            throw new FileNotFoundException(AbstractC0749x8313616e.m3339xad53da1a(file, "no such file: "));
        }
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    @NotNull
    public FileHandle openReadWrite(@NotNull Path file, boolean mustCreate, boolean mustExist) {
        Intrinsics.checkNotNullParameter(file, "file");
        if (mustCreate && mustExist) {
            throw new IllegalArgumentException("Cannot require mustCreate and mustExist at the same time.");
        }
        List createListBuilder = AbstractC0586x968d4673.createListBuilder();
        createListBuilder.add(StandardOpenOption.READ);
        createListBuilder.add(StandardOpenOption.WRITE);
        if (mustCreate) {
            createListBuilder.add(StandardOpenOption.CREATE_NEW);
        } else if (!mustExist) {
            createListBuilder.add(StandardOpenOption.CREATE);
        }
        List build = AbstractC0586x968d4673.build(createListBuilder);
        try {
            java.nio.file.Path m2666x75d576dc = m2666x75d576dc(file);
            StandardOpenOption[] standardOpenOptionArr = (StandardOpenOption[]) build.toArray(new StandardOpenOption[0]);
            FileChannel open = FileChannel.open(m2666x75d576dc, (OpenOption[]) Arrays.copyOf(standardOpenOptionArr, standardOpenOptionArr.length));
            Intrinsics.checkNotNull(open);
            return new NioFileSystemFileHandle(true, open);
        } catch (NoSuchFileException unused) {
            throw new FileNotFoundException(AbstractC0749x8313616e.m3339xad53da1a(file, "no such file: "));
        }
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    @NotNull
    public Sink sink(@NotNull Path file, boolean mustCreate) {
        Intrinsics.checkNotNullParameter(file, "file");
        List createListBuilder = AbstractC0586x968d4673.createListBuilder();
        if (mustCreate) {
            createListBuilder.add(StandardOpenOption.CREATE_NEW);
        }
        List build = AbstractC0586x968d4673.build(createListBuilder);
        try {
            java.nio.file.Path m2666x75d576dc = m2666x75d576dc(file);
            StandardOpenOption[] standardOpenOptionArr = (StandardOpenOption[]) build.toArray(new StandardOpenOption[0]);
            OpenOption[] openOptionArr = (OpenOption[]) Arrays.copyOf(standardOpenOptionArr, standardOpenOptionArr.length);
            OutputStream newOutputStream = Files.newOutputStream(m2666x75d576dc, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length));
            Intrinsics.checkNotNullExpressionValue(newOutputStream, "newOutputStream(...)");
            return Okio.sink(newOutputStream);
        } catch (NoSuchFileException unused) {
            throw new FileNotFoundException(AbstractC0749x8313616e.m3339xad53da1a(file, "no such file: "));
        }
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    @NotNull
    public Source source(@NotNull Path file) {
        Intrinsics.checkNotNullParameter(file, "file");
        try {
            InputStream newInputStream = Files.newInputStream(m2666x75d576dc(file), (OpenOption[]) Arrays.copyOf(new OpenOption[0], 0));
            Intrinsics.checkNotNullExpressionValue(newInputStream, "newInputStream(...)");
            return Okio.source(newInputStream);
        } catch (NoSuchFileException unused) {
            throw new FileNotFoundException(AbstractC0749x8313616e.m3339xad53da1a(file, "no such file: "));
        }
    }

    @Override // okio.NioSystemFileSystem, okio.JvmSystemFileSystem
    @NotNull
    public String toString() {
        String simpleName = Reflection.getOrCreateKotlinClass(this.f3627xfbe0c504.getClass()).getSimpleName();
        Intrinsics.checkNotNull(simpleName);
        return simpleName;
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final ArrayList m2665x1378447b(Path path, boolean z) {
        java.nio.file.Path m2666x75d576dc = m2666x75d576dc(path);
        try {
            List listDirectoryEntries$default = AbstractC1035x1d2864de.listDirectoryEntries$default(m2666x75d576dc, null, 1, null);
            ArrayList arrayList = new ArrayList();
            Iterator it = listDirectoryEntries$default.iterator();
            while (it.hasNext()) {
                arrayList.add(Path.Companion.get$default(Path.INSTANCE, (java.nio.file.Path) it.next(), false, 1, (Object) null));
            }
            AbstractC0589xfe44cac1.sort(arrayList);
            return arrayList;
        } catch (Exception unused) {
            if (!z) {
                return null;
            }
            if (!Files.exists(m2666x75d576dc, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
                throw new FileNotFoundException(AbstractC0749x8313616e.m3339xad53da1a(path, "no such file: "));
            }
            throw new IOException(AbstractC0749x8313616e.m3339xad53da1a(path, "failed to list "));
        }
    }

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final java.nio.file.Path m2666x75d576dc(Path path) {
        java.nio.file.Path path2;
        path2 = this.f3627xfbe0c504.getPath(path.toString(), new String[0]);
        Intrinsics.checkNotNullExpressionValue(path2, "getPath(...)");
        return path2;
    }
}
