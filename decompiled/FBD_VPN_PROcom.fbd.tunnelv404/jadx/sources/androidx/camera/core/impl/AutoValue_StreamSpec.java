package androidx.camera.core.impl;

import android.util.Range;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.impl.StreamSpec;
import defpackage.AbstractC0362x4440ab85;

/* loaded from: classes.dex */
final class AutoValue_StreamSpec extends StreamSpec {
    private final DynamicRange dynamicRange;
    private final Range<Integer> expectedFrameRateRange;
    private final Config implementationOptions;
    private final Size resolution;
    private final boolean zslDisabled;

    /* loaded from: classes.dex */
    public static final class Builder extends StreamSpec.Builder {
        private DynamicRange dynamicRange;
        private Range<Integer> expectedFrameRateRange;
        private Config implementationOptions;
        private Size resolution;
        private Boolean zslDisabled;

        @Override // androidx.camera.core.impl.StreamSpec.Builder
        public StreamSpec build() {
            String str;
            if (this.resolution == null) {
                str = " resolution";
            } else {
                str = "";
            }
            if (this.dynamicRange == null) {
                str = AbstractC0362x4440ab85.m2931x34271fae(str, " dynamicRange");
            }
            if (this.expectedFrameRateRange == null) {
                str = AbstractC0362x4440ab85.m2931x34271fae(str, " expectedFrameRateRange");
            }
            if (this.zslDisabled == null) {
                str = AbstractC0362x4440ab85.m2931x34271fae(str, " zslDisabled");
            }
            if (str.isEmpty()) {
                return new AutoValue_StreamSpec(this.resolution, this.dynamicRange, this.expectedFrameRateRange, this.implementationOptions, this.zslDisabled.booleanValue());
            }
            throw new IllegalStateException("Missing required properties:".concat(str));
        }

        @Override // androidx.camera.core.impl.StreamSpec.Builder
        public StreamSpec.Builder setDynamicRange(DynamicRange dynamicRange) {
            if (dynamicRange != null) {
                this.dynamicRange = dynamicRange;
                return this;
            }
            throw new NullPointerException("Null dynamicRange");
        }

        @Override // androidx.camera.core.impl.StreamSpec.Builder
        public StreamSpec.Builder setExpectedFrameRateRange(Range<Integer> range) {
            if (range != null) {
                this.expectedFrameRateRange = range;
                return this;
            }
            throw new NullPointerException("Null expectedFrameRateRange");
        }

        @Override // androidx.camera.core.impl.StreamSpec.Builder
        public StreamSpec.Builder setImplementationOptions(Config config2) {
            this.implementationOptions = config2;
            return this;
        }

        @Override // androidx.camera.core.impl.StreamSpec.Builder
        public StreamSpec.Builder setResolution(Size size) {
            if (size != null) {
                this.resolution = size;
                return this;
            }
            throw new NullPointerException("Null resolution");
        }

        @Override // androidx.camera.core.impl.StreamSpec.Builder
        public StreamSpec.Builder setZslDisabled(boolean z) {
            this.zslDisabled = Boolean.valueOf(z);
            return this;
        }

        public Builder() {
        }

        private Builder(StreamSpec streamSpec) {
            this.resolution = streamSpec.getResolution();
            this.dynamicRange = streamSpec.getDynamicRange();
            this.expectedFrameRateRange = streamSpec.getExpectedFrameRateRange();
            this.implementationOptions = streamSpec.getImplementationOptions();
            this.zslDisabled = Boolean.valueOf(streamSpec.getZslDisabled());
        }
    }

    public boolean equals(Object obj) {
        Config config2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof StreamSpec)) {
            return false;
        }
        StreamSpec streamSpec = (StreamSpec) obj;
        if (this.resolution.equals(streamSpec.getResolution()) && this.dynamicRange.equals(streamSpec.getDynamicRange()) && this.expectedFrameRateRange.equals(streamSpec.getExpectedFrameRateRange()) && ((config2 = this.implementationOptions) != null ? config2.equals(streamSpec.getImplementationOptions()) : streamSpec.getImplementationOptions() == null) && this.zslDisabled == streamSpec.getZslDisabled()) {
            return true;
        }
        return false;
    }

    @Override // androidx.camera.core.impl.StreamSpec
    @NonNull
    public DynamicRange getDynamicRange() {
        return this.dynamicRange;
    }

    @Override // androidx.camera.core.impl.StreamSpec
    @NonNull
    public Range<Integer> getExpectedFrameRateRange() {
        return this.expectedFrameRateRange;
    }

    @Override // androidx.camera.core.impl.StreamSpec
    @Nullable
    public Config getImplementationOptions() {
        return this.implementationOptions;
    }

    @Override // androidx.camera.core.impl.StreamSpec
    @NonNull
    public Size getResolution() {
        return this.resolution;
    }

    @Override // androidx.camera.core.impl.StreamSpec
    public boolean getZslDisabled() {
        return this.zslDisabled;
    }

    public int hashCode() {
        int hashCode;
        int i;
        int hashCode2 = (((((this.resolution.hashCode() ^ 1000003) * 1000003) ^ this.dynamicRange.hashCode()) * 1000003) ^ this.expectedFrameRateRange.hashCode()) * 1000003;
        Config config2 = this.implementationOptions;
        if (config2 == null) {
            hashCode = 0;
        } else {
            hashCode = config2.hashCode();
        }
        int i2 = (hashCode2 ^ hashCode) * 1000003;
        if (this.zslDisabled) {
            i = 1231;
        } else {
            i = 1237;
        }
        return i2 ^ i;
    }

    @Override // androidx.camera.core.impl.StreamSpec
    public StreamSpec.Builder toBuilder() {
        return new Builder(this);
    }

    public String toString() {
        return "StreamSpec{resolution=" + this.resolution + ", dynamicRange=" + this.dynamicRange + ", expectedFrameRateRange=" + this.expectedFrameRateRange + ", implementationOptions=" + this.implementationOptions + ", zslDisabled=" + this.zslDisabled + "}";
    }

    private AutoValue_StreamSpec(Size size, DynamicRange dynamicRange, Range<Integer> range, @Nullable Config config2, boolean z) {
        this.resolution = size;
        this.dynamicRange = dynamicRange;
        this.expectedFrameRateRange = range;
        this.implementationOptions = config2;
        this.zslDisabled = z;
    }
}
