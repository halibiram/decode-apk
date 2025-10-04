package coil3.disk;

import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.ForwardingFileSystem;
import okio.Path;
import okio.Sink;

@Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"coil3/disk/DiskLruCache$fileSystem$1", "Lokio/ForwardingFileSystem;", "sink", "Lokio/Sink;", coil3.content.UtilsKt.SCHEME_FILE, "Lokio/Path;", "mustCreate", "", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDiskLruCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiskLruCache.kt\ncoil3/disk/DiskLruCache$fileSystem$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,869:1\n1#2:870\n*E\n"})
/* loaded from: classes.dex */
public final class DiskLruCache$fileSystem$1 extends ForwardingFileSystem {
    @Override // okio.ForwardingFileSystem, okio.FileSystem
    public Sink sink(Path file, boolean mustCreate) {
        Path parent = file.parent();
        if (parent != null) {
            createDirectories(parent);
        }
        return super.sink(file, mustCreate);
    }
}
