package androidx.camera.core.streamsharing;

import android.util.Range;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.internal.ThreadConfig;
import androidx.camera.core.resolutionselector.ResolutionSelector;
import defpackage.AbstractC0876x8cbbf918;
import defpackage.AbstractC0878x546518ba;
import defpackage.AbstractC1064x6e5ec593;
import defpackage.AbstractC1225xeeea649c;
import defpackage.AbstractC1231x78f434de;
import defpackage.AbstractC1275x4479f3e9;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class StreamSharingConfig implements UseCaseConfig<StreamSharing>, ImageOutputConfig, ThreadConfig {
    static final Config.Option<List<UseCaseConfigFactory.CaptureType>> OPTION_CAPTURE_TYPES = Config.Option.create("camerax.core.streamSharing.captureTypes", List.class);
    private final OptionsBundle mConfig;

    public StreamSharingConfig(@NonNull OptionsBundle optionsBundle) {
        this.mConfig = optionsBundle;
    }

    @Override // androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.Config
    public final /* synthetic */ boolean containsOption(Config.Option option) {
        return AbstractC1064x6e5ec593.m3774xfbe0c504(this, option);
    }

    @Override // androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.Config
    public final /* synthetic */ void findOptions(String str, Config.OptionMatcher optionMatcher) {
        AbstractC1064x6e5ec593.m3775x3271d0aa(this, str, optionMatcher);
    }

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public final /* synthetic */ int getAppTargetRotation(int i) {
        return AbstractC0878x546518ba.m3443xfbe0c504(this, i);
    }

    @Override // androidx.camera.core.internal.ThreadConfig
    public final /* synthetic */ Executor getBackgroundExecutor() {
        return AbstractC1231x78f434de.m3974xfbe0c504(this);
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public final /* synthetic */ CaptureConfig.OptionUnpacker getCaptureOptionUnpacker() {
        return AbstractC1275x4479f3e9.m4241xfbe0c504(this);
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public final /* synthetic */ UseCaseConfigFactory.CaptureType getCaptureType() {
        return AbstractC1275x4479f3e9.m4243x1378447b(this);
    }

    @NonNull
    public List<UseCaseConfigFactory.CaptureType> getCaptureTypes() {
        return (List) AbstractC1064x6e5ec593.m3779x9e171bf9(this, OPTION_CAPTURE_TYPES);
    }

    @Override // androidx.camera.core.impl.ReadableConfig
    @NonNull
    public Config getConfig() {
        return this.mConfig;
    }

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public final /* synthetic */ List getCustomOrderedResolutions() {
        return AbstractC0878x546518ba.m3444x3271d0aa(this);
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public final /* synthetic */ CaptureConfig getDefaultCaptureConfig() {
        return AbstractC1275x4479f3e9.m4244x75d576dc(this);
    }

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public final /* synthetic */ Size getDefaultResolution() {
        return AbstractC0878x546518ba.m3446x75d576dc(this);
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public final /* synthetic */ SessionConfig getDefaultSessionConfig() {
        return AbstractC1275x4479f3e9.m4246x9e171bf9(this);
    }

    @Override // androidx.camera.core.impl.ImageInputConfig
    public final /* synthetic */ DynamicRange getDynamicRange() {
        return AbstractC0876x8cbbf918.m3440xfbe0c504(this);
    }

    @Override // androidx.camera.core.impl.ImageInputConfig
    public final /* synthetic */ int getInputFormat() {
        return AbstractC0876x8cbbf918.m3441x3271d0aa(this);
    }

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public final /* synthetic */ Size getMaxResolution() {
        return AbstractC0878x546518ba.m3448x9e171bf9(this);
    }

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public final /* synthetic */ int getMirrorMode(int i) {
        return AbstractC0878x546518ba.m3450x95f25580(this, i);
    }

    @Override // androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.Config
    public final /* synthetic */ Config.OptionPriority getOptionPriority(Config.Option option) {
        return AbstractC1064x6e5ec593.m3776x1378447b(this, option);
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public final /* synthetic */ int getPreviewStabilizationMode() {
        return AbstractC1275x4479f3e9.m4248x95f25580(this);
    }

    @Override // androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.Config
    public final /* synthetic */ Set getPriorities(Config.Option option) {
        return AbstractC1064x6e5ec593.m3777x75d576dc(this, option);
    }

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public final /* synthetic */ ResolutionSelector getResolutionSelector() {
        return AbstractC0878x546518ba.m3451x3db60231(this);
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public final /* synthetic */ SessionConfig.OptionUnpacker getSessionOptionUnpacker() {
        return AbstractC1275x4479f3e9.m4249x3db60231(this);
    }

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public final /* synthetic */ List getSupportedResolutions() {
        return AbstractC0878x546518ba.m3453x1db10c9d(this);
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public final /* synthetic */ int getSurfaceOccupancyPriority() {
        return AbstractC1275x4479f3e9.m4251x1db10c9d(this);
    }

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public final /* synthetic */ int getTargetAspectRatio() {
        return AbstractC0878x546518ba.m3455x8c6fc18a(this);
    }

    @Override // androidx.camera.core.internal.TargetConfig
    public final /* synthetic */ Class getTargetClass() {
        return AbstractC1225xeeea649c.m3968xfbe0c504(this);
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public final /* synthetic */ Range getTargetFrameRate() {
        return AbstractC1275x4479f3e9.m4253x8c6fc18a(this);
    }

    @Override // androidx.camera.core.internal.TargetConfig
    public final /* synthetic */ String getTargetName() {
        return AbstractC1225xeeea649c.m3970x1378447b(this);
    }

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public final /* synthetic */ Size getTargetResolution() {
        return AbstractC0878x546518ba.m3456x1aebc6d9(this);
    }

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public final /* synthetic */ int getTargetRotation() {
        return AbstractC0878x546518ba.m3458x85f0360e(this);
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public final /* synthetic */ int getVideoStabilizationMode() {
        return AbstractC1275x4479f3e9.m4255xab142723(this);
    }

    @Override // androidx.camera.core.impl.ImageInputConfig
    public final /* synthetic */ boolean hasDynamicRange() {
        return AbstractC0876x8cbbf918.m3442x1378447b(this);
    }

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public final /* synthetic */ boolean hasTargetAspectRatio() {
        return AbstractC0878x546518ba.m3460x952a0a9e(this);
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public final /* synthetic */ boolean isHighResolutionDisabled(boolean z) {
        return AbstractC1275x4479f3e9.m4256x85f0360e(this, z);
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public final /* synthetic */ boolean isZslDisabled(boolean z) {
        return AbstractC1275x4479f3e9.m4257xad53da1a(this, z);
    }

    @Override // androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.Config
    public final /* synthetic */ Set listOptions() {
        return AbstractC1064x6e5ec593.m3778x9738a56c(this);
    }

    @Override // androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.Config
    public final /* synthetic */ Object retrieveOption(Config.Option option) {
        return AbstractC1064x6e5ec593.m3779x9e171bf9(this, option);
    }

    @Override // androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.Config
    public final /* synthetic */ Object retrieveOptionWithPriority(Config.Option option, Config.OptionPriority optionPriority) {
        return AbstractC1064x6e5ec593.m3781x95f25580(this, option, optionPriority);
    }

    @Override // androidx.camera.core.internal.ThreadConfig
    public final /* synthetic */ Executor getBackgroundExecutor(Executor executor) {
        return AbstractC1231x78f434de.m3975x3271d0aa(this, executor);
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public final /* synthetic */ CaptureConfig.OptionUnpacker getCaptureOptionUnpacker(CaptureConfig.OptionUnpacker optionUnpacker) {
        return AbstractC1275x4479f3e9.m4242x3271d0aa(this, optionUnpacker);
    }

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public final /* synthetic */ List getCustomOrderedResolutions(List list) {
        return AbstractC0878x546518ba.m3445x1378447b(this, list);
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public final /* synthetic */ CaptureConfig getDefaultCaptureConfig(CaptureConfig captureConfig) {
        return AbstractC1275x4479f3e9.m4245x9738a56c(this, captureConfig);
    }

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public final /* synthetic */ Size getDefaultResolution(Size size) {
        return AbstractC0878x546518ba.m3447x9738a56c(this, size);
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public final /* synthetic */ SessionConfig getDefaultSessionConfig(SessionConfig sessionConfig) {
        return AbstractC1275x4479f3e9.m4247x34271fae(this, sessionConfig);
    }

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public final /* synthetic */ Size getMaxResolution(Size size) {
        return AbstractC0878x546518ba.m3449x34271fae(this, size);
    }

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public final /* synthetic */ ResolutionSelector getResolutionSelector(ResolutionSelector resolutionSelector) {
        return AbstractC0878x546518ba.m3452x9d12c1f4(this, resolutionSelector);
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public final /* synthetic */ SessionConfig.OptionUnpacker getSessionOptionUnpacker(SessionConfig.OptionUnpacker optionUnpacker) {
        return AbstractC1275x4479f3e9.m4250x9d12c1f4(this, optionUnpacker);
    }

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public final /* synthetic */ List getSupportedResolutions(List list) {
        return AbstractC0878x546518ba.m3454xd2bcb0cf(this, list);
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public final /* synthetic */ int getSurfaceOccupancyPriority(int i) {
        return AbstractC1275x4479f3e9.m4252xd2bcb0cf(this, i);
    }

    @Override // androidx.camera.core.internal.TargetConfig
    public final /* synthetic */ Class getTargetClass(Class cls) {
        return AbstractC1225xeeea649c.m3969x3271d0aa(this, cls);
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public final /* synthetic */ Range getTargetFrameRate(Range range) {
        return AbstractC1275x4479f3e9.m4254x1aebc6d9(this, range);
    }

    @Override // androidx.camera.core.internal.TargetConfig
    public final /* synthetic */ String getTargetName(String str) {
        return AbstractC1225xeeea649c.m3971x75d576dc(this, str);
    }

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public final /* synthetic */ Size getTargetResolution(Size size) {
        return AbstractC0878x546518ba.m3457xab142723(this, size);
    }

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public final /* synthetic */ int getTargetRotation(int i) {
        return AbstractC0878x546518ba.m3459xad53da1a(this, i);
    }

    @Override // androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.Config
    public final /* synthetic */ Object retrieveOption(Config.Option option, Object obj) {
        return AbstractC1064x6e5ec593.m3780x34271fae(this, option, obj);
    }
}
