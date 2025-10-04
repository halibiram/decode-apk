package coil3.content;

import android.os.StatFs;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.FileSystem;
import okio.Path;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0000¨\u0006\u0005"}, d2 = {"remainingFreeSpaceBytes", "", "Lokio/FileSystem;", "directory", "Lokio/Path;", "coil-core_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nfileSystems.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 fileSystems.android.kt\ncoil3/util/FileSystems_androidKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,11:1\n1#2:12\n*E\n"})
/* loaded from: classes.dex */
public final class FileSystems_androidKt {
    public static final long remainingFreeSpaceBytes(@NotNull FileSystem fileSystem, @NotNull Path path) {
        File file = path.toFile();
        file.mkdir();
        StatFs statFs = new StatFs(file.getAbsolutePath());
        return statFs.getBlockSizeLong() * statFs.getBlockCountLong();
    }
}
