package androidx.camera.core.impl;

import androidx.annotation.NonNull;
import androidx.camera.core.impl.Config;
import defpackage.AbstractC0497x739271c6;
import defpackage.AbstractC1064x6e5ec593;
import java.util.Set;

/* loaded from: classes.dex */
public class CameraConfigs {
    private static final CameraConfig DEFAULT_CAMERA_CONFIG = new DefaultCameraConfig();

    /* loaded from: classes.dex */
    public static final class DefaultCameraConfig implements CameraConfig {
        private final Identifier mIdentifier = Identifier.create(new Object());

        @Override // androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.Config
        public final /* synthetic */ boolean containsOption(Config.Option option) {
            return AbstractC1064x6e5ec593.m3774xfbe0c504(this, option);
        }

        @Override // androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.Config
        public final /* synthetic */ void findOptions(String str, Config.OptionMatcher optionMatcher) {
            AbstractC1064x6e5ec593.m3775x3271d0aa(this, str, optionMatcher);
        }

        @Override // androidx.camera.core.impl.CameraConfig
        @NonNull
        public Identifier getCompatibilityId() {
            return this.mIdentifier;
        }

        @Override // androidx.camera.core.impl.ReadableConfig
        @NonNull
        public Config getConfig() {
            return OptionsBundle.emptyBundle();
        }

        @Override // androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.Config
        public final /* synthetic */ Config.OptionPriority getOptionPriority(Config.Option option) {
            return AbstractC1064x6e5ec593.m3776x1378447b(this, option);
        }

        @Override // androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.Config
        public final /* synthetic */ Set getPriorities(Config.Option option) {
            return AbstractC1064x6e5ec593.m3777x75d576dc(this, option);
        }

        @Override // androidx.camera.core.impl.CameraConfig
        public final /* synthetic */ SessionProcessor getSessionProcessor() {
            return AbstractC0497x739271c6.m3122xfbe0c504(this);
        }

        @Override // androidx.camera.core.impl.CameraConfig
        public final /* synthetic */ int getUseCaseCombinationRequiredRule() {
            return AbstractC0497x739271c6.m3124x1378447b(this);
        }

        @Override // androidx.camera.core.impl.CameraConfig
        public final /* synthetic */ UseCaseConfigFactory getUseCaseConfigFactory() {
            return AbstractC0497x739271c6.m3125x75d576dc(this);
        }

        @Override // androidx.camera.core.impl.CameraConfig
        public final /* synthetic */ boolean isCaptureProcessProgressSupported() {
            return AbstractC0497x739271c6.m3126x9738a56c(this);
        }

        @Override // androidx.camera.core.impl.CameraConfig
        public final /* synthetic */ boolean isPostviewSupported() {
            return AbstractC0497x739271c6.m3127x9e171bf9(this);
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

        @Override // androidx.camera.core.impl.CameraConfig
        public final /* synthetic */ SessionProcessor getSessionProcessor(SessionProcessor sessionProcessor) {
            return AbstractC0497x739271c6.m3123x3271d0aa(this, sessionProcessor);
        }

        @Override // androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.Config
        public final /* synthetic */ Object retrieveOption(Config.Option option, Object obj) {
            return AbstractC1064x6e5ec593.m3780x34271fae(this, option, obj);
        }
    }

    private CameraConfigs() {
    }

    @NonNull
    public static CameraConfig defaultConfig() {
        return DEFAULT_CAMERA_CONFIG;
    }
}
