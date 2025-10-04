package androidx.camera.video;

import android.location.Location;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.video.AutoValue_FileOutputOptions_FileOutputOptionsInternal;
import androidx.camera.video.OutputOptions;
import androidx.core.util.Preconditions;
import com.google.auto.value.AutoValue;
import java.io.File;

/* loaded from: classes.dex */
public final class FileOutputOptions extends OutputOptions {
    private final FileOutputOptionsInternal mFileOutputOptionsInternal;

    /* loaded from: classes.dex */
    public static final class Builder extends OutputOptions.Builder<FileOutputOptions, Builder> {
        private final FileOutputOptionsInternal.Builder mInternalBuilder;

        public Builder(@NonNull File file) {
            super(new AutoValue_FileOutputOptions_FileOutputOptionsInternal.Builder());
            Preconditions.checkNotNull(file, "File can't be null.");
            FileOutputOptionsInternal.Builder builder = (FileOutputOptionsInternal.Builder) this.mRootInternalBuilder;
            this.mInternalBuilder = builder;
            builder.setFile(file);
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [androidx.camera.video.FileOutputOptions$Builder, java.lang.Object] */
        @Override // androidx.camera.video.OutputOptions.Builder
        @NonNull
        public /* bridge */ /* synthetic */ Builder setDurationLimitMillis(@IntRange(from = 0) long j) {
            return super.setDurationLimitMillis(j);
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [androidx.camera.video.FileOutputOptions$Builder, java.lang.Object] */
        @Override // androidx.camera.video.OutputOptions.Builder
        @NonNull
        public /* bridge */ /* synthetic */ Builder setFileSizeLimit(@IntRange(from = 0) long j) {
            return super.setFileSizeLimit(j);
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [androidx.camera.video.FileOutputOptions$Builder, java.lang.Object] */
        @Override // androidx.camera.video.OutputOptions.Builder
        @NonNull
        public /* bridge */ /* synthetic */ Builder setLocation(@Nullable Location location) {
            return super.setLocation(location);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.camera.video.OutputOptions.Builder
        @NonNull
        public FileOutputOptions build() {
            return new FileOutputOptions(this.mInternalBuilder.build());
        }
    }

    @AutoValue
    /* loaded from: classes.dex */
    public static abstract class FileOutputOptionsInternal extends OutputOptions.OutputOptionsInternal {

        @AutoValue.Builder
        /* loaded from: classes.dex */
        public static abstract class Builder extends OutputOptions.OutputOptionsInternal.Builder<Builder> {
            @Override // androidx.camera.video.OutputOptions.OutputOptionsInternal.Builder
            @NonNull
            public abstract FileOutputOptionsInternal build();

            @NonNull
            public abstract Builder setFile(@NonNull File file);
        }

        @NonNull
        public abstract File getFile();
    }

    public FileOutputOptions(@NonNull FileOutputOptionsInternal fileOutputOptionsInternal) {
        super(fileOutputOptionsInternal);
        this.mFileOutputOptionsInternal = fileOutputOptionsInternal;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FileOutputOptions)) {
            return false;
        }
        return this.mFileOutputOptionsInternal.equals(((FileOutputOptions) obj).mFileOutputOptionsInternal);
    }

    @NonNull
    public File getFile() {
        return this.mFileOutputOptionsInternal.getFile();
    }

    public int hashCode() {
        return this.mFileOutputOptionsInternal.hashCode();
    }

    @NonNull
    public String toString() {
        return this.mFileOutputOptionsInternal.toString().replaceFirst("FileOutputOptionsInternal", "FileOutputOptions");
    }
}
