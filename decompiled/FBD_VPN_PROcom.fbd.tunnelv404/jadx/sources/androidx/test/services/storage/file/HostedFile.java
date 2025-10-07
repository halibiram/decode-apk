package androidx.test.services.storage.file;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.UserManager;
import androidx.annotation.RestrictTo;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import androidx.test.services.storage.TestStorageConstants;
import defpackage.AbstractC0362x4440ab85;
import java.io.File;
import java.util.concurrent.atomic.AtomicBoolean;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public final class HostedFile {
    private static final String TAG = "HostedFile";
    private static final AtomicBoolean loggedOutputDir = new AtomicBoolean(false);

    /* loaded from: classes.dex */
    public enum FileHost {
        TEST_FILE(TestStorageConstants.TEST_RUNFILES_PROVIDER_AUTHORITY, false),
        EXPORT_PROPERTIES(TestStorageConstants.OUTPUT_PROPERTIES_PROVIDER_AUTHORITY, true),
        OUTPUT(TestStorageConstants.TEST_OUTPUT_PROVIDER_AUTHORITY, true),
        INTERNAL_USE_ONLY(TestStorageConstants.INTERNAL_USE_PROVIDER_AUTHORITY, true);

        private final String authority;
        private final boolean writeable;

        FileHost(String str, boolean z) {
            this.authority = (String) HostedFile.checkNotNull(str);
            this.writeable = z;
        }

        public String getAuthority() {
            return this.authority;
        }

        public boolean isWritable() {
            return this.writeable;
        }
    }

    /* loaded from: classes.dex */
    public enum FileType {
        FILE("f"),
        DIRECTORY("d");

        private String type;

        FileType(String str) {
            this.type = (String) HostedFile.checkNotNull(str);
        }

        public static FileType fromTypeCode(String str) {
            for (FileType fileType : values()) {
                if (fileType.getTypeCode().equals(str)) {
                    return fileType;
                }
            }
            throw new IllegalArgumentException(AbstractC0362x4440ab85.m2952x5ac5058d("unknown type: ", str));
        }

        public String getTypeCode() {
            return this.type;
        }
    }

    /* loaded from: classes.dex */
    public enum HostedFileColumn {
        NAME("name", String.class, 3, 0),
        TYPE(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, String.class, 3, 1),
        SIZE("size", Long.class, 1, 2),
        DATA("_data", Byte[].class, 4, 3),
        DISPLAY_NAME("_display_name", String.class, 3, 4),
        SIZE_2("_size", Long.class, 2, 5);

        private final int androidType;
        private final String columnName;
        private final Class<?> columnType;
        private final int position;

        HostedFileColumn(String str, Class cls, int i, int i2) {
            this.columnName = (String) HostedFile.checkNotNull(str);
            this.columnType = (Class) HostedFile.checkNotNull(cls);
            this.androidType = i;
            this.position = i2;
        }

        public static String[] getColumnNames() {
            HostedFileColumn[] values = values();
            int length = values.length;
            String[] strArr = new String[length];
            for (int i = 0; i < length; i++) {
                strArr[i] = values[i].getColumnName();
            }
            return strArr;
        }

        public int getAndroidType() {
            return this.androidType;
        }

        public String getColumnName() {
            return this.columnName;
        }

        public Class<?> getColumnType() {
            return this.columnType;
        }

        public int getPosition() {
            return this.position;
        }
    }

    private HostedFile() {
    }

    public static Uri buildUri(FileHost fileHost, String str) {
        return new Uri.Builder().scheme("content").authority(fileHost.getAuthority()).path(str).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> T checkNotNull(T t) {
        t.getClass();
        return t;
    }

    public static File getInputRootDirectory(Context context) {
        return Environment.getExternalStorageDirectory();
    }

    public static File getOutputRootDirectory(Context context) {
        boolean isSystemUser;
        UserManager userManager = (UserManager) context.getSystemService("user");
        if (Build.VERSION.SDK_INT >= 23) {
            isSystemUser = userManager.isSystemUser();
            if (isSystemUser) {
                return Environment.getExternalStorageDirectory();
            }
            if (!loggedOutputDir.getAndSet(true)) {
                context.getCacheDir().getAbsolutePath();
            }
            return context.getCacheDir();
        }
        return Environment.getExternalStorageDirectory();
    }
}
