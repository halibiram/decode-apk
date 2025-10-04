package androidx.camera.video.internal.encoder;

import android.util.Size;
import androidx.annotation.NonNull;
import androidx.camera.core.impl.Timebase;
import androidx.camera.video.internal.encoder.VideoEncoderConfig;
import defpackage.AbstractC0362x4440ab85;

/* loaded from: classes.dex */
final class AutoValue_VideoEncoderConfig extends VideoEncoderConfig {
    private final int IFrameInterval;
    private final int bitrate;
    private final int colorFormat;
    private final VideoEncoderDataSpace dataSpace;
    private final int frameRate;
    private final Timebase inputTimebase;
    private final String mimeType;
    private final int profile;
    private final Size resolution;

    /* loaded from: classes.dex */
    public static final class Builder extends VideoEncoderConfig.Builder {
        private Integer IFrameInterval;
        private Integer bitrate;
        private Integer colorFormat;
        private VideoEncoderDataSpace dataSpace;
        private Integer frameRate;
        private Timebase inputTimebase;
        private String mimeType;
        private Integer profile;
        private Size resolution;

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public VideoEncoderConfig build() {
            String str;
            if (this.mimeType == null) {
                str = " mimeType";
            } else {
                str = "";
            }
            if (this.profile == null) {
                str = AbstractC0362x4440ab85.m2931x34271fae(str, " profile");
            }
            if (this.inputTimebase == null) {
                str = AbstractC0362x4440ab85.m2931x34271fae(str, " inputTimebase");
            }
            if (this.resolution == null) {
                str = AbstractC0362x4440ab85.m2931x34271fae(str, " resolution");
            }
            if (this.colorFormat == null) {
                str = AbstractC0362x4440ab85.m2931x34271fae(str, " colorFormat");
            }
            if (this.dataSpace == null) {
                str = AbstractC0362x4440ab85.m2931x34271fae(str, " dataSpace");
            }
            if (this.frameRate == null) {
                str = AbstractC0362x4440ab85.m2931x34271fae(str, " frameRate");
            }
            if (this.IFrameInterval == null) {
                str = AbstractC0362x4440ab85.m2931x34271fae(str, " IFrameInterval");
            }
            if (this.bitrate == null) {
                str = AbstractC0362x4440ab85.m2931x34271fae(str, " bitrate");
            }
            if (str.isEmpty()) {
                return new AutoValue_VideoEncoderConfig(this.mimeType, this.profile.intValue(), this.inputTimebase, this.resolution, this.colorFormat.intValue(), this.dataSpace, this.frameRate.intValue(), this.IFrameInterval.intValue(), this.bitrate.intValue());
            }
            throw new IllegalStateException("Missing required properties:".concat(str));
        }

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public VideoEncoderConfig.Builder setBitrate(int i) {
            this.bitrate = Integer.valueOf(i);
            return this;
        }

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public VideoEncoderConfig.Builder setColorFormat(int i) {
            this.colorFormat = Integer.valueOf(i);
            return this;
        }

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public VideoEncoderConfig.Builder setDataSpace(VideoEncoderDataSpace videoEncoderDataSpace) {
            if (videoEncoderDataSpace != null) {
                this.dataSpace = videoEncoderDataSpace;
                return this;
            }
            throw new NullPointerException("Null dataSpace");
        }

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public VideoEncoderConfig.Builder setFrameRate(int i) {
            this.frameRate = Integer.valueOf(i);
            return this;
        }

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public VideoEncoderConfig.Builder setIFrameInterval(int i) {
            this.IFrameInterval = Integer.valueOf(i);
            return this;
        }

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public VideoEncoderConfig.Builder setInputTimebase(Timebase timebase) {
            if (timebase != null) {
                this.inputTimebase = timebase;
                return this;
            }
            throw new NullPointerException("Null inputTimebase");
        }

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public VideoEncoderConfig.Builder setMimeType(String str) {
            if (str != null) {
                this.mimeType = str;
                return this;
            }
            throw new NullPointerException("Null mimeType");
        }

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public VideoEncoderConfig.Builder setProfile(int i) {
            this.profile = Integer.valueOf(i);
            return this;
        }

        @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig.Builder
        public VideoEncoderConfig.Builder setResolution(Size size) {
            if (size != null) {
                this.resolution = size;
                return this;
            }
            throw new NullPointerException("Null resolution");
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof VideoEncoderConfig)) {
            return false;
        }
        VideoEncoderConfig videoEncoderConfig = (VideoEncoderConfig) obj;
        if (this.mimeType.equals(videoEncoderConfig.getMimeType()) && this.profile == videoEncoderConfig.getProfile() && this.inputTimebase.equals(videoEncoderConfig.getInputTimebase()) && this.resolution.equals(videoEncoderConfig.getResolution()) && this.colorFormat == videoEncoderConfig.getColorFormat() && this.dataSpace.equals(videoEncoderConfig.getDataSpace()) && this.frameRate == videoEncoderConfig.getFrameRate() && this.IFrameInterval == videoEncoderConfig.getIFrameInterval() && this.bitrate == videoEncoderConfig.getBitrate()) {
            return true;
        }
        return false;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig
    public int getBitrate() {
        return this.bitrate;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig
    public int getColorFormat() {
        return this.colorFormat;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig
    @NonNull
    public VideoEncoderDataSpace getDataSpace() {
        return this.dataSpace;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig
    public int getFrameRate() {
        return this.frameRate;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig
    public int getIFrameInterval() {
        return this.IFrameInterval;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig, androidx.camera.video.internal.encoder.EncoderConfig
    @NonNull
    public Timebase getInputTimebase() {
        return this.inputTimebase;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig, androidx.camera.video.internal.encoder.EncoderConfig
    @NonNull
    public String getMimeType() {
        return this.mimeType;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig, androidx.camera.video.internal.encoder.EncoderConfig
    public int getProfile() {
        return this.profile;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderConfig
    @NonNull
    public Size getResolution() {
        return this.resolution;
    }

    public int hashCode() {
        return ((((((((((((((((this.mimeType.hashCode() ^ 1000003) * 1000003) ^ this.profile) * 1000003) ^ this.inputTimebase.hashCode()) * 1000003) ^ this.resolution.hashCode()) * 1000003) ^ this.colorFormat) * 1000003) ^ this.dataSpace.hashCode()) * 1000003) ^ this.frameRate) * 1000003) ^ this.IFrameInterval) * 1000003) ^ this.bitrate;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("VideoEncoderConfig{mimeType=");
        sb.append(this.mimeType);
        sb.append(", profile=");
        sb.append(this.profile);
        sb.append(", inputTimebase=");
        sb.append(this.inputTimebase);
        sb.append(", resolution=");
        sb.append(this.resolution);
        sb.append(", colorFormat=");
        sb.append(this.colorFormat);
        sb.append(", dataSpace=");
        sb.append(this.dataSpace);
        sb.append(", frameRate=");
        sb.append(this.frameRate);
        sb.append(", IFrameInterval=");
        sb.append(this.IFrameInterval);
        sb.append(", bitrate=");
        return AbstractC0362x4440ab85.m2935x1db10c9d(sb, "}", this.bitrate);
    }

    private AutoValue_VideoEncoderConfig(String str, int i, Timebase timebase, Size size, int i2, VideoEncoderDataSpace videoEncoderDataSpace, int i3, int i4, int i5) {
        this.mimeType = str;
        this.profile = i;
        this.inputTimebase = timebase;
        this.resolution = size;
        this.colorFormat = i2;
        this.dataSpace = videoEncoderDataSpace;
        this.frameRate = i3;
        this.IFrameInterval = i4;
        this.bitrate = i5;
    }
}
