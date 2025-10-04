package androidx.camera.video;

import android.location.Location;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.video.FileOutputOptions;
import defpackage.AbstractC0362x4440ab85;
import java.io.File;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class AutoValue_FileOutputOptions_FileOutputOptionsInternal extends FileOutputOptions.FileOutputOptionsInternal {
    private final long durationLimitMillis;
    private final File file;
    private final long fileSizeLimit;
    private final Location location;

    /* loaded from: classes.dex */
    public static final class Builder extends FileOutputOptions.FileOutputOptionsInternal.Builder {
        private Long durationLimitMillis;
        private File file;
        private Long fileSizeLimit;
        private Location location;

        @Override // androidx.camera.video.FileOutputOptions.FileOutputOptionsInternal.Builder
        public FileOutputOptions.FileOutputOptionsInternal.Builder setFile(File file) {
            if (file != null) {
                this.file = file;
                return this;
            }
            throw new NullPointerException("Null file");
        }

        @Override // androidx.camera.video.FileOutputOptions.FileOutputOptionsInternal.Builder, androidx.camera.video.OutputOptions.OutputOptionsInternal.Builder
        public FileOutputOptions.FileOutputOptionsInternal build() {
            String str;
            if (this.fileSizeLimit == null) {
                str = " fileSizeLimit";
            } else {
                str = "";
            }
            if (this.durationLimitMillis == null) {
                str = AbstractC0362x4440ab85.m2931x34271fae(str, " durationLimitMillis");
            }
            if (this.file == null) {
                str = AbstractC0362x4440ab85.m2931x34271fae(str, " file");
            }
            if (str.isEmpty()) {
                return new AutoValue_FileOutputOptions_FileOutputOptionsInternal(this.fileSizeLimit.longValue(), this.durationLimitMillis.longValue(), this.location, this.file);
            }
            throw new IllegalStateException("Missing required properties:".concat(str));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.camera.video.OutputOptions.OutputOptionsInternal.Builder
        public FileOutputOptions.FileOutputOptionsInternal.Builder setDurationLimitMillis(long j) {
            this.durationLimitMillis = Long.valueOf(j);
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.camera.video.OutputOptions.OutputOptionsInternal.Builder
        public FileOutputOptions.FileOutputOptionsInternal.Builder setFileSizeLimit(long j) {
            this.fileSizeLimit = Long.valueOf(j);
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.camera.video.OutputOptions.OutputOptionsInternal.Builder
        public FileOutputOptions.FileOutputOptionsInternal.Builder setLocation(@Nullable Location location) {
            this.location = location;
            return this;
        }
    }

    public boolean equals(Object obj) {
        Location location;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof FileOutputOptions.FileOutputOptionsInternal)) {
            return false;
        }
        FileOutputOptions.FileOutputOptionsInternal fileOutputOptionsInternal = (FileOutputOptions.FileOutputOptionsInternal) obj;
        if (this.fileSizeLimit == fileOutputOptionsInternal.getFileSizeLimit() && this.durationLimitMillis == fileOutputOptionsInternal.getDurationLimitMillis() && ((location = this.location) != null ? location.equals(fileOutputOptionsInternal.getLocation()) : fileOutputOptionsInternal.getLocation() == null) && this.file.equals(fileOutputOptionsInternal.getFile())) {
            return true;
        }
        return false;
    }

    @Override // androidx.camera.video.OutputOptions.OutputOptionsInternal
    @IntRange(from = 0)
    public long getDurationLimitMillis() {
        return this.durationLimitMillis;
    }

    @Override // androidx.camera.video.FileOutputOptions.FileOutputOptionsInternal
    @NonNull
    public File getFile() {
        return this.file;
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
        return this.file.hashCode() ^ ((i ^ hashCode) * 1000003);
    }

    public String toString() {
        return "FileOutputOptionsInternal{fileSizeLimit=" + this.fileSizeLimit + ", durationLimitMillis=" + this.durationLimitMillis + ", location=" + this.location + ", file=" + this.file + "}";
    }

    private AutoValue_FileOutputOptions_FileOutputOptionsInternal(long j, long j2, @Nullable Location location, File file) {
        this.fileSizeLimit = j;
        this.durationLimitMillis = j2;
        this.location = location;
        this.file = file;
    }
}
