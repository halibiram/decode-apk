package androidx.camera.video;

import android.util.Range;
import androidx.annotation.NonNull;
import androidx.camera.video.VideoSpec;
import defpackage.AbstractC0362x4440ab85;

/* loaded from: classes.dex */
final class AutoValue_VideoSpec extends VideoSpec {
    private final int aspectRatio;
    private final Range<Integer> bitrate;
    private final Range<Integer> frameRate;
    private final QualitySelector qualitySelector;

    /* loaded from: classes.dex */
    public static final class Builder extends VideoSpec.Builder {
        private Integer aspectRatio;
        private Range<Integer> bitrate;
        private Range<Integer> frameRate;
        private QualitySelector qualitySelector;

        @Override // androidx.camera.video.VideoSpec.Builder
        public VideoSpec build() {
            String str;
            if (this.qualitySelector == null) {
                str = " qualitySelector";
            } else {
                str = "";
            }
            if (this.frameRate == null) {
                str = AbstractC0362x4440ab85.m2931x34271fae(str, " frameRate");
            }
            if (this.bitrate == null) {
                str = AbstractC0362x4440ab85.m2931x34271fae(str, " bitrate");
            }
            if (this.aspectRatio == null) {
                str = AbstractC0362x4440ab85.m2931x34271fae(str, " aspectRatio");
            }
            if (str.isEmpty()) {
                return new AutoValue_VideoSpec(this.qualitySelector, this.frameRate, this.bitrate, this.aspectRatio.intValue());
            }
            throw new IllegalStateException("Missing required properties:".concat(str));
        }

        @Override // androidx.camera.video.VideoSpec.Builder
        public VideoSpec.Builder setAspectRatio(int i) {
            this.aspectRatio = Integer.valueOf(i);
            return this;
        }

        @Override // androidx.camera.video.VideoSpec.Builder
        public VideoSpec.Builder setBitrate(Range<Integer> range) {
            if (range != null) {
                this.bitrate = range;
                return this;
            }
            throw new NullPointerException("Null bitrate");
        }

        @Override // androidx.camera.video.VideoSpec.Builder
        public VideoSpec.Builder setFrameRate(Range<Integer> range) {
            if (range != null) {
                this.frameRate = range;
                return this;
            }
            throw new NullPointerException("Null frameRate");
        }

        @Override // androidx.camera.video.VideoSpec.Builder
        public VideoSpec.Builder setQualitySelector(QualitySelector qualitySelector) {
            if (qualitySelector != null) {
                this.qualitySelector = qualitySelector;
                return this;
            }
            throw new NullPointerException("Null qualitySelector");
        }

        public Builder() {
        }

        private Builder(VideoSpec videoSpec) {
            this.qualitySelector = videoSpec.getQualitySelector();
            this.frameRate = videoSpec.getFrameRate();
            this.bitrate = videoSpec.getBitrate();
            this.aspectRatio = Integer.valueOf(videoSpec.getAspectRatio());
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof VideoSpec)) {
            return false;
        }
        VideoSpec videoSpec = (VideoSpec) obj;
        if (this.qualitySelector.equals(videoSpec.getQualitySelector()) && this.frameRate.equals(videoSpec.getFrameRate()) && this.bitrate.equals(videoSpec.getBitrate()) && this.aspectRatio == videoSpec.getAspectRatio()) {
            return true;
        }
        return false;
    }

    @Override // androidx.camera.video.VideoSpec
    public int getAspectRatio() {
        return this.aspectRatio;
    }

    @Override // androidx.camera.video.VideoSpec
    @NonNull
    public Range<Integer> getBitrate() {
        return this.bitrate;
    }

    @Override // androidx.camera.video.VideoSpec
    @NonNull
    public Range<Integer> getFrameRate() {
        return this.frameRate;
    }

    @Override // androidx.camera.video.VideoSpec
    @NonNull
    public QualitySelector getQualitySelector() {
        return this.qualitySelector;
    }

    public int hashCode() {
        return ((((((this.qualitySelector.hashCode() ^ 1000003) * 1000003) ^ this.frameRate.hashCode()) * 1000003) ^ this.bitrate.hashCode()) * 1000003) ^ this.aspectRatio;
    }

    @Override // androidx.camera.video.VideoSpec
    public VideoSpec.Builder toBuilder() {
        return new Builder(this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("VideoSpec{qualitySelector=");
        sb.append(this.qualitySelector);
        sb.append(", frameRate=");
        sb.append(this.frameRate);
        sb.append(", bitrate=");
        sb.append(this.bitrate);
        sb.append(", aspectRatio=");
        return AbstractC0362x4440ab85.m2935x1db10c9d(sb, "}", this.aspectRatio);
    }

    private AutoValue_VideoSpec(QualitySelector qualitySelector, Range<Integer> range, Range<Integer> range2, int i) {
        this.qualitySelector = qualitySelector;
        this.frameRate = range;
        this.bitrate = range2;
        this.aspectRatio = i;
    }
}
