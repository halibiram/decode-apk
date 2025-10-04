package org.junit.rules;

import defpackage.AbstractC0362x4440ab85;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import org.junit.Assert;

/* loaded from: classes3.dex */
public class TemporaryFolder extends ExternalResource {
    private static final int TEMP_DIR_ATTEMPTS = 10000;
    private static final String TMP_PREFIX = "junit";
    private final boolean assureDeletion;
    private File folder;
    private final File parentFolder;

    /* loaded from: classes3.dex */
    public static class Builder {
        private boolean assureDeletion;
        private File parentFolder;

        public Builder assureDeletion() {
            this.assureDeletion = true;
            return this;
        }

        public TemporaryFolder build() {
            return new TemporaryFolder(this);
        }

        public Builder parentFolder(File file) {
            this.parentFolder = file;
            return this;
        }
    }

    public TemporaryFolder() {
        this((File) null);
    }

    public static Builder builder() {
        return new Builder();
    }

    private static File createTemporaryFolderIn(File file) {
        try {
            return createTemporaryFolderWithNioApi(file);
        } catch (ClassNotFoundException unused) {
            return createTemporaryFolderWithFileApi(file);
        } catch (InvocationTargetException e) {
            Throwable cause = e.getCause();
            if (!(cause instanceof IOException)) {
                if (cause instanceof RuntimeException) {
                    throw ((RuntimeException) cause);
                }
                IOException iOException = new IOException("Failed to create temporary folder in " + file);
                iOException.initCause(cause);
                throw iOException;
            }
            throw ((IOException) cause);
        } catch (Exception e2) {
            throw new RuntimeException("Failed to create temporary folder in " + file, e2);
        }
    }

    private static File createTemporaryFolderWithFileApi(File file) {
        File file2 = null;
        int i = 0;
        while (i < TEMP_DIR_ATTEMPTS) {
            File createTempFile = File.createTempFile(TMP_PREFIX, ".tmp", file);
            File file3 = new File(createTempFile.toString().substring(0, r3.length() - 4));
            if (file3.mkdir()) {
                createTempFile.delete();
                return file3;
            }
            createTempFile.delete();
            i++;
            file2 = file3;
        }
        throw new IOException("Unable to create temporary directory in: " + file.toString() + ". Tried 10000 times. Last attempted to create: " + file2.toString());
    }

    private static File createTemporaryFolderWithNioApi(File file) {
        Object invoke;
        Class<?> cls = Class.forName("java.nio.file.Files");
        Object newInstance = Array.newInstance(Class.forName("java.nio.file.attribute.FileAttribute"), 0);
        Class<?> cls2 = Class.forName("java.nio.file.Path");
        if (file != null) {
            invoke = cls.getDeclaredMethod("createTempDirectory", cls2, String.class, newInstance.getClass()).invoke(null, File.class.getDeclaredMethod("toPath", null).invoke(file, null), TMP_PREFIX, newInstance);
        } else {
            invoke = cls.getDeclaredMethod("createTempDirectory", String.class, newInstance.getClass()).invoke(null, TMP_PREFIX, newInstance);
        }
        return (File) cls2.getDeclaredMethod("toFile", null).invoke(invoke, null);
    }

    private boolean recursiveDelete(File file) {
        if (file.delete()) {
            return true;
        }
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (!recursiveDelete(file2)) {
                    return false;
                }
            }
        }
        return file.delete();
    }

    private boolean tryDelete() {
        File file = this.folder;
        if (file == null) {
            return true;
        }
        return recursiveDelete(file);
    }

    @Override // org.junit.rules.ExternalResource
    public void after() {
        delete();
    }

    @Override // org.junit.rules.ExternalResource
    public void before() {
        create();
    }

    public void create() {
        this.folder = createTemporaryFolderIn(this.parentFolder);
    }

    public void delete() {
        if (!tryDelete() && this.assureDeletion) {
            Assert.fail("Unable to clean up temporary folder " + this.folder);
        }
    }

    public File getRoot() {
        File file = this.folder;
        if (file != null) {
            return file;
        }
        throw new IllegalStateException("the temporary folder has not yet been created");
    }

    public File newFile(String str) {
        File file = new File(getRoot(), str);
        if (file.createNewFile()) {
            return file;
        }
        throw new IOException(AbstractC0362x4440ab85.m2932x95f25580("a file with the name '", str, "' already exists in the test folder"));
    }

    public File newFolder(String str) {
        return newFolder(str);
    }

    public TemporaryFolder(File file) {
        this.parentFolder = file;
        this.assureDeletion = false;
    }

    public File newFolder(String... strArr) {
        if (strArr.length != 0) {
            File root = getRoot();
            int i = 0;
            for (String str : strArr) {
                if (new File(str).isAbsolute()) {
                    throw new IOException(AbstractC0362x4440ab85.m2932x95f25580("folder path '", str, "' is not a relative path"));
                }
            }
            int length = strArr.length;
            boolean z = true;
            File file = null;
            File file2 = root;
            while (i < length) {
                File file3 = new File(file, strArr[i]);
                File file4 = new File(root, file3.getPath());
                boolean mkdirs = file4.mkdirs();
                if (!mkdirs && !file4.isDirectory()) {
                    if (file4.exists()) {
                        throw new IOException("a file with the path '" + file3.getPath() + "' exists");
                    }
                    throw new IOException("could not create a folder with the path '" + file3.getPath() + "'");
                }
                i++;
                file2 = file4;
                z = mkdirs;
                file = file3;
            }
            if (z) {
                return file2;
            }
            throw new IOException("a folder with the path '" + file.getPath() + "' already exists");
        }
        throw new IllegalArgumentException("must pass at least one path");
    }

    public TemporaryFolder(Builder builder) {
        this.parentFolder = builder.parentFolder;
        this.assureDeletion = builder.assureDeletion;
    }

    public File newFile() {
        return File.createTempFile(TMP_PREFIX, null, getRoot());
    }

    public File newFolder() {
        return createTemporaryFolderIn(getRoot());
    }
}
