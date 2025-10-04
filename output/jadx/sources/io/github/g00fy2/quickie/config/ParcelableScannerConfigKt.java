package io.github.g00fy2.quickie.config;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000¨\u0006\u0003"}, d2 = {"toParcelableConfig", "Lio/github/g00fy2/quickie/config/ParcelableScannerConfig;", "Lio/github/g00fy2/quickie/config/ScannerConfig;", "quickie-foss_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ParcelableScannerConfigKt {
    @NotNull
    public static final ParcelableScannerConfig toParcelableConfig(@NotNull ScannerConfig scannerConfig) {
        Intrinsics.checkNotNullParameter(scannerConfig, "<this>");
        return new ParcelableScannerConfig(scannerConfig.getFormats(), scannerConfig.getStringRes(), scannerConfig.getDrawableRes(), scannerConfig.getHapticFeedback(), scannerConfig.getShowTorchToggle(), scannerConfig.getHorizontalFrameRatio(), scannerConfig.getUseFrontCamera(), scannerConfig.getShowCloseButton(), scannerConfig.getKeepScreenOn());
    }
}
