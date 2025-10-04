package androidx.test.core.graphics;

import android.graphics.Bitmap;
import androidx.annotation.RestrictTo;
import androidx.test.platform.io.PlatformTestStorage;
import androidx.test.platform.io.PlatformTestStorageRegistry;
import java.io.IOException;
import java.io.OutputStream;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.io.CloseableKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"writeToTestStorage", "", "Landroid/graphics/Bitmap;", "testStorage", "Landroidx/test/platform/io/PlatformTestStorage;", "name", "", "core_java_androidx_test_core-core_internal_kt"}, k = 2, mv = {1, 8, 0}, xi = 48)
@JvmName(name = "BitmapStorage")
/* loaded from: classes.dex */
public final class BitmapStorage {
    public static final void writeToTestStorage(@NotNull Bitmap bitmap, @NotNull String name) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        PlatformTestStorage platformTestStorageRegistry = PlatformTestStorageRegistry.getInstance();
        Intrinsics.checkNotNullExpressionValue(platformTestStorageRegistry, "getInstance()");
        writeToTestStorage(bitmap, platformTestStorageRegistry, name);
    }

    @Deprecated(message = "use  PlatformTestStorageRegistry.setInstance in the rare cases where you want to override the PlatformTestStorage to use", replaceWith = @ReplaceWith(expression = "writeToTestStorage()", imports = {}))
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final void writeToTestStorage(@NotNull Bitmap bitmap, @NotNull PlatformTestStorage testStorage, @NotNull String name) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        Intrinsics.checkNotNullParameter(testStorage, "testStorage");
        Intrinsics.checkNotNullParameter(name, "name");
        OutputStream openOutputFile = testStorage.openOutputFile(name + ".png");
        try {
            if (bitmap.compress(Bitmap.CompressFormat.PNG, 0, openOutputFile)) {
                CloseableKt.closeFinally(openOutputFile, null);
                return;
            }
            throw new IOException("Failed to compress bitmap");
        } finally {
        }
    }
}
