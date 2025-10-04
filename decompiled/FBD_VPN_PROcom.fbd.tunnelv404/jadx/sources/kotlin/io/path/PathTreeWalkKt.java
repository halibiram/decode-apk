package kotlin.io.path;

import defpackage.C1021xdbc1ef91;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlin-stdlib-jdk7"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class PathTreeWalkKt {
    public static final boolean access$createsCycle(C1021xdbc1ef91 c1021xdbc1ef91) {
        boolean isSameFile;
        Object obj;
        for (C1021xdbc1ef91 c1021xdbc1ef912 = c1021xdbc1ef91.f5226x1378447b; c1021xdbc1ef912 != null; c1021xdbc1ef912 = c1021xdbc1ef912.f5226x1378447b) {
            Object obj2 = c1021xdbc1ef912.f5225x3271d0aa;
            if (obj2 == null || (obj = c1021xdbc1ef91.f5225x3271d0aa) == null) {
                try {
                    isSameFile = Files.isSameFile(c1021xdbc1ef912.f5224xfbe0c504, c1021xdbc1ef91.f5224xfbe0c504);
                    if (isSameFile) {
                        return true;
                    }
                } catch (IOException | SecurityException unused) {
                    continue;
                }
            } else if (Intrinsics.areEqual(obj2, obj)) {
                return true;
            }
        }
        return false;
    }

    public static final Object access$keyOf(Path path, LinkOption[] linkOptionArr) {
        try {
            LinkOption[] linkOptionArr2 = (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length);
            BasicFileAttributes readAttributes = Files.readAttributes(path, (Class<BasicFileAttributes>) BasicFileAttributes.class, (LinkOption[]) Arrays.copyOf(linkOptionArr2, linkOptionArr2.length));
            Intrinsics.checkNotNullExpressionValue(readAttributes, "readAttributes(...)");
            return readAttributes.fileKey();
        } catch (Throwable unused) {
            return null;
        }
    }
}
