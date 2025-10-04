package androidx.test.platform.io;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import androidx.annotation.RestrictTo;
import androidx.test.platform.app.InstrumentationRegistry;
import defpackage.AbstractC0919x86d1e2e2;
import java.io.File;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\f\u001a\u00020\u0004H\u0002J\b\u0010\r\u001a\u00020\u0004H\u0002J\b\u0010\u000e\u001a\u00020\u0004H\u0002R\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\b\u001a\u0004\b\n\u0010\u0006¨\u0006\u000f"}, d2 = {"Landroidx/test/platform/io/TestDirCalculator;", "", "()V", "inputDir", "Ljava/io/File;", "getInputDir", "()Ljava/io/File;", "inputDir$delegate", "Lkotlin/Lazy;", "outputDir", "getOutputDir", "outputDir$delegate", "calculateDefaultRootDir", "calculateInputDir", "calculateOutputDir", "runner_monitor_java_androidx_test-monitor_kt"}, k = 1, mv = {1, 8, 0}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public final class TestDirCalculator {

    /* renamed from: outputDir$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy outputDir = AbstractC0919x86d1e2e2.lazy(new Function0<File>() { // from class: androidx.test.platform.io.TestDirCalculator$outputDir$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final File invoke() {
            File calculateOutputDir;
            calculateOutputDir = TestDirCalculator.this.calculateOutputDir();
            return calculateOutputDir;
        }
    });

    /* renamed from: inputDir$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy inputDir = AbstractC0919x86d1e2e2.lazy(new Function0<File>() { // from class: androidx.test.platform.io.TestDirCalculator$inputDir$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final File invoke() {
            File calculateInputDir;
            calculateInputDir = TestDirCalculator.this.calculateInputDir();
            return calculateInputDir;
        }
    });

    private final File calculateDefaultRootDir() {
        Context targetContext = InstrumentationRegistry.getInstrumentation().getTargetContext();
        if (Build.VERSION.SDK_INT >= 29) {
            File[] externalMediaDirs = targetContext.getExternalMediaDirs();
            Intrinsics.checkNotNullExpressionValue(externalMediaDirs, "context.externalMediaDirs");
            for (File mediaDir : externalMediaDirs) {
                if (Intrinsics.areEqual(Environment.getExternalStorageState(mediaDir), "mounted")) {
                    Intrinsics.checkNotNullExpressionValue(mediaDir, "mediaDir");
                    return mediaDir;
                }
            }
        }
        if (targetContext.getExternalCacheDir() != null) {
            File externalCacheDir = targetContext.getExternalCacheDir();
            Intrinsics.checkNotNull(externalCacheDir);
            return externalCacheDir;
        }
        File cacheDir = targetContext.getCacheDir();
        Intrinsics.checkNotNullExpressionValue(cacheDir, "context.cacheDir");
        return cacheDir;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final File calculateInputDir() {
        String string = InstrumentationRegistry.getArguments().getString("testInputDir");
        if (string != null) {
            return new File(string);
        }
        return new File(calculateDefaultRootDir(), "testInputDir");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final File calculateOutputDir() {
        String string = InstrumentationRegistry.getArguments().getString("additionalTestOutputDir");
        if (string != null) {
            return new File(string);
        }
        return new File(calculateDefaultRootDir(), "additionalTestOutputDir");
    }

    @NotNull
    public final File getInputDir() {
        return (File) this.inputDir.getValue();
    }

    @NotNull
    public final File getOutputDir() {
        return (File) this.outputDir.getValue();
    }
}
