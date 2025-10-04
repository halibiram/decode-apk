package defpackage;

import java.io.File;
import kotlin.io.FileTreeWalk;
import kotlin.io.FileWalkDirection;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* renamed from: 뒬땧땀듐뒼듰딄뒝둑땃돳둡듼됨땸뒉될뒛딽땍땻됩됨땻땨뎽땹돳둥땃딅됫듼됨뒘땻땄땍듰땋됐땍둑땫땐땐디돸땯땬됐된딜땵둣뒵뒤디들돨됨땫딠듟디딃돰돵땄땝듽돛땡됩돨딀둬뎨땧둘뒹땐돠딽뎽땸딅땁땮듽딞듼뎽딐뒝돸둬땤뎽돠땬땦됴딅땬됐듐땟땥듰둑땧듔됨둬둠땲땣딨땥듟뒬뒬드듸딌됨돰땣딌, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC0742x13a0e4fc extends AbstractC0741xc99a73a4 {
    @NotNull
    public static final FileTreeWalk walk(@NotNull File file, @NotNull FileWalkDirection direction) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(direction, "direction");
        return new FileTreeWalk(file, direction);
    }

    public static /* synthetic */ FileTreeWalk walk$default(File file, FileWalkDirection fileWalkDirection, int i, Object obj) {
        if ((i & 1) != 0) {
            fileWalkDirection = FileWalkDirection.TOP_DOWN;
        }
        return walk(file, fileWalkDirection);
    }

    @NotNull
    public static final FileTreeWalk walkBottomUp(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        return walk(file, FileWalkDirection.BOTTOM_UP);
    }

    @NotNull
    public static final FileTreeWalk walkTopDown(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        return walk(file, FileWalkDirection.TOP_DOWN);
    }
}
