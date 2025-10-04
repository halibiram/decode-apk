package androidx.camera.video;

import android.location.Location;
import android.os.ParcelFileDescriptor;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.video.FileDescriptorOutputOptions;
import defpackage.AbstractC0362x4440ab85;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class AutoValue_FileDescriptorOutputOptions_FileDescriptorOutputOptionsInternal extends FileDescriptorOutputOptions.FileDescriptorOutputOptionsInternal {
    private final long durationLimitMillis;
    private final long fileSizeLimit;
    private final Location location;
    private final ParcelFileDescriptor parcelFileDescriptor;

    /* loaded from: classes.dex */
    public static final class Builder extends FileDescriptorOutputOptions.FileDescriptorOutputOptionsInternal.Builder {
        private Long durationLimitMillis;
        private Long fileSizeLimit;
        private Location location;
        private ParcelFileDescriptor parcelFileDescriptor;

        @Override // androidx.camera.video.FileDescriptorOutputOptions.FileDescriptorOutputOptionsInternal.Builder
        public FileDescriptorOutputOptions.FileDescriptorOutputOptionsInternal.Builder setParcelFileDescriptor(ParcelFileDescriptor parcelFileDescriptor) {
            if (parcelFileDescriptor != null) {
                this.parcelFileDescriptor = parcelFileDescriptor;
                return this;
            }
            throw new NullPointerException("Null parcelFileDescriptor");
        }

        @Override // androidx.camera.video.FileDescriptorOutputOptions.FileDescriptorOutputOptionsInternal.Builder, androidx.camera.video.OutputOptions.OutputOptionsInternal.Builder
        public FileDescriptorOutputOptions.FileDescriptorOutputOptionsInternal build() {
            String str;
            if (this.fileSizeLimit == null) {
                str = " fileSizeLimit";
            } else {
                str = "";
            }
            if (this.durationLimitMillis == null) {
                str = AbstractC0362x4440ab85.m2931x34271fae(str, " durationLimitMillis");
            }
            if (this.parcelFileDescriptor == null) {
                str = AbstractC0362x4440ab85.m2931x34271fae(str, " parcelFileDescriptor");
            }
            if (str.isEmpty()) {
                return new AutoValue_FileDescriptorOutputOptions_FileDescriptorOutputOptionsInternal(this.fileSizeLimit.longValue(), this.durationLimitMillis.longValue(), this.location, this.parcelFileDescriptor);
            }
            throw new IllegalStateException("Missing required properties:".concat(str));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.camera.video.OutputOptions.OutputOptionsInternal.Builder
        public FileDescriptorOutputOptions.FileDescriptorOutputOptionsInternal.Builder setDurationLimitMillis(long j) {
            this.durationLimitMillis = Long.valueOf(j);
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.camera.video.OutputOptions.OutputOptionsInternal.Builder
        public FileDescriptorOutputOptions.FileDescriptorOutputOptionsInternal.Builder setFileSizeLimit(long j) {
            this.fileSizeLimit = Long.valueOf(j);
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.camera.video.OutputOptions.OutputOptionsInternal.Builder
        public FileDescriptorOutputOptions.FileDescriptorOutputOptionsInternal.Builder setLocation(@Nullable Location location) {
            this.location = location;
            return this;
        }
    }

    public boolean equals(Object obj) {
        Location location;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof FileDescriptorOutputOptions.FileDescriptorOutputOptionsInternal)) {
            return false;
        }
        FileDescriptorOutputOptions.FileDescriptorOutputOptionsInternal fileDescriptorOutputOptionsInternal = (FileDescriptorOutputOptions.FileDescriptorOutputOptionsInternal) obj;
        if (this.fileSizeLimit == fileDescriptorOutputOptionsInternal.getFileSizeLimit() && this.durationLimitMillis == fileDescriptorOutputOptionsInternal.getDurationLimitMillis() && ((location = this.location) != null ? location.equals(fileDescriptorOutputOptionsInternal.getLocation()) : fileDescriptorOutputOptionsInternal.getLocation() == null) && this.parcelFileDescriptor.equals(fileDescriptorOutputOptionsInternal.getParcelFileDescriptor())) {
            return true;
        }
        return false;
    }

    @Override // androidx.camera.video.OutputOptions.OutputOptionsInternal
    @IntRange(from = 0)
    public long getDurationLimitMillis() {
        return this.durationLimitMillis;
    }

    @Override // androidx.camera.video.OutputOptions.OutputOptionsInternal
    @IntRange(from = 0)
    public long getFileSizeLimit() {
        return this.fileSizeLimit;
    }

    @Override // androidx.camera.video.OutputOptions.OutputOptionsInternal
    @Nullable
    public Location getLocation() {
        return this.location;
    }

    @Override // androidx.camera.video.FileDescriptorOutputOptions.FileDescriptorOutputOptionsInternal
    @NonNull
    public ParcelFileDescriptor getParcelFileDescriptor() {
        return this.parcelFileDescriptor;
    }

    public int hashCode() {
        int hashCode;
        long j = this.fileSizeLimit;
        long j2 = this.durationLimitMillis;
        int i = (((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003;
        Location location = this.location;
        if (location == null) {
            hashCode = 0;
        } else {
            hashCode = location.hashCode();
        }
        return this.parcelFileDescriptor.hashCode() ^ ((i ^ hashCode) * 1000003);
    }

    public String toString() {
        return "FileDescriptorOutputOptionsInternal{fileSizeLimit=" + this.fileSizeLimit + ", durationLimitMillis=" + this.durationLimitMillis + ", location=" + this.location + ", parcelFileDescriptor=" + this.parcelFileDescriptor + "}";
    }

    private AutoValue_FileDescriptorOutputOptions_FileDescriptorOutputOptionsInternal(long j, long j2, @Nullable Location location, ParcelFileDescriptor parcelFileDescriptor) {
        this.fileSizeLimit = j;
        this.durationLimitMillis = j2;
        this.location = location;
        this.parcelFileDescriptor = parcelFileDescriptor;
    }
}
